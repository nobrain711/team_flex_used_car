from pathlib import Path
# common/paths.py 기준
# __file__ = .../01/common/paths.py
# PROJECT_ROOT = 상위 디렉터리 (data/와 01/이 위치한 루트)
PROJECT_ROOT = Path(__file__).resolve().parents[2]

DATA_DIR = PROJECT_ROOT / "06_data"
DATA_DIR.mkdir(exist_ok=True)