from fastapi import APIRouter

from ..models.anime import Anime

router = APIRouter()


@router.get("/animes", response_model=Anime)
async def get_animes():
    return NotImplemented


@router.get("/animes/{anime_id}", response_model=list[Anime])
async def get_anime_by_id(anime_id: int):
    return NotImplemented
