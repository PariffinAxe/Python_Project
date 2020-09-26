from db.run_sql import run_sql
from models.playlist import Playlist
import repositories.league_type_repo as league_type_repo


# save an instance
def save(playlist):
    sql = "INSERT INTO playlists(league_type_id, no_of_teams, round_no, id) VALUES (%s, %s, %s, %s)"
    values = [playlist.league_type.id, playlist.no_of_teams, playlist.round_no, playlist.id]
    run_sql(sql, values)
    return playlist


# select all instances within table
def select_all():
    playlists = []

    sql = "SELECT * FROM playlists"
    results = run_sql(sql)

    for result in results:
        league_type = league_type_repo.select(result['league_type_id'])
        playlist = Playlist(league_type, result['round_no'])
        playlists.append(playlist)
    return playlists


# select singular instance from table by id
def select(id):
    playlist = None
    sql = "SELECT * FROM playlists WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        league_type = league_type_repo.select(result['league_type_id'])
        playlist = Playlist(league_type, result['round_no'])
    return playlist


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM playlists"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM playlists WHERE id = %s"
    values = [id]
    run_sql(sql, values)