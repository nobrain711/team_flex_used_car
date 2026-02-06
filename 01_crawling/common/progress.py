import functools
import time

def progress_logger(label: str):
    def decorator(func):
        @functools.wraps(func)
        def wrapper(*args, **kwargs):
            print(f"[START] {label}")
            start = time.time()
            try:
                result = func(*args, **kwargs)
                elapsed = time.time() - start
                print(f"[END] {label} ({elapsed:.2f}s)")
                return result
            except Exception as e:
                elapsed = time.time() - start
                print(f"[ERROR] {label} failed ({elapsed:.2f}s): {e}")
                raise
        return wrapper
    return decorator


def register_progress_loggers_once(cls, registry: dict):
    """
    cls: 데코레이터를 등록할 클래스 (예: BobeCar)
    registry: {method_name: label}
    """

    for method_name, label in registry.items():
        method = getattr(cls, method_name, None)
        if method is None:
            continue

        # 이미 데코레이터가 붙어 있으면 skip
        if hasattr(method, "__wrapped__"):
            continue

        wrapped = progress_logger(label)(method)
        setattr(cls, method_name, wrapped)