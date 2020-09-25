from flask import Blueprint, Flask, redirect, render_template, redirect

players_blueprint = Blueprint("players", __name__)

#Index
@players_blueprint.route("/players")
def players():
    return render_template("players/index.html")
