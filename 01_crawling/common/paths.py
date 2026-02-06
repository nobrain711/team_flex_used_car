from pathlib import Path

# 현재 파일 기준 (예: run.py, app.py)
PROJECT_ROOT = Path(__file__).resolve().parent

DATA_DIR = PROJECT_ROOT / "data"
DATA_DIR.mkdir(exist_ok=True)