import uvicorn
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from .config import CONFIG
from .routers.anime_router import router as anime_router

app = FastAPI(title="Aniflow Anime Microservice")

app.add_middleware(
    CORSMiddleware,
    allow_origins=[CONFIG.ALLOW_ORIGINS],
    allow_methods=[CONFIG.ALLOW_METHODS],
    allow_headers=[CONFIG.ALLOW_HEADERS],
    allow_credentials=CONFIG.ALLOW_CREDENTIALS,
)

app.include_router(anime_router)


@app.get("/")
async def root():
    return {"message": "Anime microservice is running"}


if __name__ == "__main__":
    uvicorn.run(
        "app.main:app",
        host=CONFIG.API_HOST,
        port=CONFIG.API_PORT,
        reload=True
    )
