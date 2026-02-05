import re
from re import Pattern

RE_MAKER_CODE: Pattern[str] = re.compile(r"car_depth_lite\('(\d+)'")  # 제조사 코드 파싱
RE_MODEL_CODE: Pattern[str] = re.compile(r"modelSel\(\s*(\d+)\s*,")  # 차량 모델 코드 파싱
