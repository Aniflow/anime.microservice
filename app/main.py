from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from .routers.anime_router import router as anime_router

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
