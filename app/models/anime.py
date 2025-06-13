from pydantic import BaseModel


class Anime(BaseModel):
    anime_id: int
    name: str
    episodes: int
    description: str
    type: str

    class Config:
        from_attributes = True
