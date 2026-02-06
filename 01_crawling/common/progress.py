import functools
import time


def progress_logger(label: str):
    """
        함수 실행의 시작/종료/에러 시점을 로그로 남기기 위한 데코레이터 팩토리

        :param label: 로그에 표시할 작업 이름 (예: 'CSV Load', 'DB Insert')
    """

    # 실제 데코레이터를 생성
    def decorator(func):
        # 원본 함수의 이름, docstring 등을 유지하기 위해 wraps 사용
        @functools.wraps(func)
        def wrapper(*args, **kwargs):

            # 함수 실행 시작 로그
            print(f"[START] {label}")

            # 실행 시간 측정을 위한 시작 시각 기록
            start = time.time()

            try:
                # 원본 함수 실행 후 실행 시간 계산 후 원본 함수 반환
                result = func(*args, **kwargs)
                elapsed = time.time() - start
                print(f"[END] {label} ({elapsed:.2f}s)")
                return result

            except Exception as e:
                # 예외 발생 시에도 경과 시간 계산
                elapsed = time.time() - start
                print(f"[ERROR] {label} failed ({elapsed:.2f}s): {e}")

                # 예외를 숨기지 않고 다시 발생시켜 상위 로직에서 처리 가능하게 함
                raise

        return wrapper

    return decorator


def register_progress_loggers_once(cls, registry: dict):
    """
    클래스의 메서드에 progress_logger 데코레이터를 '한 번만' 동적으로 적용하는 유틸 함수

    :param cls: 데코레이터를 적용할 클래스 (예: BobeCar)
    :param registry: {메서드명: 로그 라벨} 형태의 매핑
                     예: {"get_makers": "제조사 수집", "get_models": "모델 수집"}
    """

    # registry에 정의된 메서드 이름과 라벨을 순회
    for method_name, label in registry.items():
        # 클래스에서 해당 이름의 메서드 객체를 가져옴
        # 존재하지 않으면 None 반환
        method = getattr(cls, method_name, None)
        if method is None:
            # 클래스에 해당 메서드가 없으면 무시
            continue

        # 이미 데코레이터가 붙어 있으면 skip
        # functools.wraps를 사용한 함수는 __wrapped__ 속성을 가짐
        if hasattr(method, "__wrapped__"):
            continue

        # progress_logger 데코레이터를 적용하여 메서드 감싸기
        wrapped = progress_logger(label)(method)

        # 클래스의 메서드를 데코레이터가 적용된 함수로 교체
        setattr(cls, method_name, wrapped)
