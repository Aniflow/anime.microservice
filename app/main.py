import os

import uvicorn
from dotenv import load_dotenv
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from .routers.anime_router import router as anime_router

load_dotenv()

api_port = int(os.getenv("API_PORT", "8001"))
api_host = os.getenv("API_HOST", "0.0.0.0")

app = FastAPI(title="Aniflow Anime Microservice")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
    allow_credentials=True,
)

app.include_router(anime_router)


@app.get("/")
async def root():
    return {"message": "Anime microservice is running"}


if __name__ == "__main__":
    uvicorn.run("app.main:app", host=api_host, port=api_port, reload=True)
