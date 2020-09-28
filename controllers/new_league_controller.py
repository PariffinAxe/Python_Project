from flask import Blueprint, Flask, redirect, render_template, request

new_leagues_blueprint = Blueprint("new_leagues", __name__)

#Index
@new_leagues_blueprint.route("/edit/create-new")
def leagues():
    return render_template("new_leagues/index.html", title = "Create New League", creating = True)