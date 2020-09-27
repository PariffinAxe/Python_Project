from flask import Flask, render_template

from controllers.leagues_controller import leagues_blueprint
from controllers.teams_controller import teams_blueprint
from controllers.players_controller import players_blueprint
from controllers.games_controller import games_blueprint

app = Flask(__name__)

app.register_blueprint(leagues_blueprint)
app.register_blueprint(teams_blueprint)
app.register_blueprint(players_blueprint)
app.register_blueprint(games_blueprint)

@app.route('/')
def home():
    return render_template('index.html', title="League Organiser")

if __name__ == '__main__':
    app.run(debug=True)