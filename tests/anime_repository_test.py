import pytest
from unittest.mock import MagicMock
from mysql.connector import Error
from app.core.data.anime_repository import AnimeRepository


@pytest.fixture
def mock_db_connection(monkeypatch):
    mock_connection = MagicMock()

    mock_cursor = MagicMock()
    mock_connection.cursor.return_value = mock_cursor

    monkeypatch.setattr(
        'app.core.data.database.db.get_connection',
        lambda: mock_connection
    )

    return mock_connection, mock_cursor


def test_get_all_anime_success(mock_db_connection):
    mock_connection, mock_cursor = mock_db_connection

    mock_cursor.fetchall.return_value = [
        {"anime_id": 1, "title": "Naruto"},
        {"anime_id": 2, "title": "One Piece"}
    ]

    result = AnimeRepository.get_all_anime()

    assert result == [
        {"anime_id": 1, "title": "Naruto"},
        {"anime_id": 2, "title": "One Piece"}
    ]
    mock_cursor.execute.assert_called_once_with("SELECT * FROM animes")
    mock_cursor.fetchall.assert_called_once()


def test_get_all_anime_no_data(mock_db_connection):
    mock_connection, mock_cursor = mock_db_connection

    mock_cursor.fetchall.return_value = []

    result = AnimeRepository.get_all_anime()

    assert result == []
    mock_cursor.execute.assert_called_once_with("SELECT * FROM animes")
    mock_cursor.fetchall.assert_called_once()


def test_get_anime_by_id_success(mock_db_connection):
    mock_connection, mock_cursor = mock_db_connection

    mock_cursor.fetchone.return_value = {"anime_id": 1, "title": "Naruto"}

    result = AnimeRepository.get_anime_by_id(1)

    assert result == {"anime_id": 1, "title": "Naruto"}
    mock_cursor.execute.assert_called_once_with(
        "SELECT * FROM animes WHERE id = %s", (1,)
    )
    mock_cursor.fetchone.assert_called_once()


def test_get_anime_by_id_not_found(mock_db_connection):
    mock_connection, mock_cursor = mock_db_connection

    mock_cursor.fetchone.return_value = None

    result = AnimeRepository.get_anime_by_id(999)

    assert result == {}
    mock_cursor.execute.assert_called_once_with(
        "SELECT * FROM animes WHERE id = %s", (999,)
    )
    mock_cursor.fetchone.assert_called_once()


def test_get_anime_by_id_error(mock_db_connection):
    mock_connection, mock_cursor = mock_db_connection

    mock_cursor.execute.side_effect = Error("Database error")

    result = AnimeRepository.get_anime_by_id(1)

    assert result == {}
    mock_cursor.execute.assert_called_once_with(
        "SELECT * FROM animes WHERE id = %s", (1,)
    )


def test_get_all_anime_error(mock_db_connection):
    mock_connection, mock_cursor = mock_db_connection

    mock_cursor.execute.side_effect = Error("Database error")

    result = AnimeRepository.get_all_anime()

    assert result == []
    mock_cursor.execute.assert_called_once_with("SELECT * FROM animes")
    mock_cursor.fetchall.assert_not_called()
