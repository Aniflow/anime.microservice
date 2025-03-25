from typing import List, Dict

from mysql.connector import Error

from .database import db


class AnimeRepository:
    """Handles database operations related to anime."""

    @staticmethod
    def get_all_anime() -> List[Dict]:
        """Fetch all anime from the database."""
        connection = db.get_connection()
        if not connection:
            print("Error: No database connection.")
            return []

        cursor = connection.cursor(dictionary=True)
        try:
            cursor.execute("SELECT * FROM anime")
            results = cursor.fetchall()
            return results
        except Error as e:
            print(f"Error executing query: {e}")
            return []
        finally:
            try:
                cursor.close()
            except Error as e:
                print(f"Error closing cursor: {e}")
            try:
                connection.close()
            except Error as e:
                print(f"Error closing connection: {e}")

    @staticmethod
    def get_anime_by_id(anime_id: int) -> Dict:
        """Fetch anime by ID from the database."""
        connection = db.get_connection()
        if not connection:
            print("Error: No database connection.")
            return {}

        cursor = connection.cursor(dictionary=True)
        try:
            cursor.execute(
                "SELECT * FROM anime WHERE anime_id = %s",
                (anime_id,)
            )
            result = cursor.fetchone()
            if result:
                return result
            else:
                print(f"Anime with ID {anime_id} not found.")
                return {}
        except Error as e:
            print(f"Error executing query: {e}")
            return {}
        finally:
            try:
                cursor.close()
            except Error as e:
                print(f"Error closing cursor: {e}")
            try:
                connection.close()
            except Error as e:
                print(f"Error closing connection: {e}")
