import os

from dotenv import load_dotenv

load_dotenv()

API_PORT = int(os.getenv("API_PORT", "8001"))
API_HOST = os.getenv("API_HOST", "0.0.0.0")
ALLOW_ORIGINS = os.getenv("ALLOWED_ORIGINS", "*")
ALLOW_METHODS = os.getenv("ALLOWED_METHODS", "*")
ALLOW_HEADERS = os.getenv("ALLOWED_HEADERS", "*")
ALLOW_CREDENTIALS = os.getenv("ALLOW_CREDENTIALS", "True")
