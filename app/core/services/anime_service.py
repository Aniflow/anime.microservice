from typing import List
from ..data.anime_repository import AnimeRepository
from ...models.anime import Anime


class AnimeService:
    """Handles business logic related to anime."""

    @staticmethod
    def get_anime_by_id(anime_id: int) -> Anime:
        """Service method to get anime by ID."""
        try:
            anime = AnimeRepository.get_anime_by_id(anime_id)

            if anime:
                return Anime(**anime)
            else:
                print(f"Service: Anime with ID {anime_id} not found.")

                return Anime(
                    anime_id=None,
                    name="",
                    episodes=0,
                    description="Not found",
                    type="Unknown"
                )

        except Exception as e:
            print(f"Service error: {e}")

            return Anime(
                anime_id=0,
                name="Error",
                episodes=0,
                description="Error occurred",
                type="Unknown"
            )

    @staticmethod
    def get_anime_list() -> List[Anime]:
        """Service method to fetch all anime."""
        try:
            animes = AnimeRepository.get_all_anime()

            anime_list = [Anime(**anime) for anime in animes]

            return anime_list

        except Exception as e:
            print(f"Service error: {e}")

            return [
                Anime(
                    anime_id=None,
                    name="",
                    episodes=0,
                    description="Not found",
                    type="Unknown"
                )
            ]
