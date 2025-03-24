from typing import List

from fastapi import APIRouter

from ..models.anime import Anime
from ..core.services.anime_service import AnimeService

router = APIRouter()


@router.get("/animes", response_model=List[Anime])
async def get_animes():
    return AnimeService.get_anime_list()


@router.get("/animes/{anime_id}", response_model=Anime)
async def get_anime_by_id(anime_id: int):
    return AnimeService.get_anime_by_id(anime_id)
