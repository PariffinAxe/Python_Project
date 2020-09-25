from flask import Blueprint, Flask, redirect, render_template

teams_blueprint = Blueprint("teams", __name__)

#Index
@teams_blueprint.route("/teams")
def team():
    return render_template("teams/index.html")

#Show Team
@teams_blueprint.route("/teams/<id>")
def show_team(id):
    return render_template("teams/show.html")