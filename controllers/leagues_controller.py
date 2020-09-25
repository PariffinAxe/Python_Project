from flask import Blueprint, Flask, redirect, render_template, redirect

leagues_blueprint = Blueprint("leagues", __name__)

#Index
@leagues_blueprint.route("/leagues")
def leagues():
    return render_template("leagues/index.html")

#Show Specific League
@leagues_blueprint.route("/leagues/<id>")
def show_league(id):
    return render_template("leagues/show.html")

@leagues_blueprint.route("/leagues/<id>/stats")
def league_stats(id):
    return render_template("leagues/stats.html")