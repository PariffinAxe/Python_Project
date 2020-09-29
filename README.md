# Python_Project

For my python project I was tasked with creating a sport scoring app. 

To use this app you'll have to have psql, python and flask installed on your computer.

Before running the app you will have to enter the following 3 lines into your terminal:

createdb league_organiser
psql -f league_organiser -d db/league_organiser.sql
psql -f league_organiser -d initial_entries_1.sql

You can then use flask to run the app. Optionally, if you want to see what the app looks like with some leagues/teams already added you
can input a further 4 lines into your terminal

psql -f league_organiser -d initial_entries_2.sql
python3 initial_entries_3.py
psql -f league_organiser -d initial_entries_4.sql
python3 initial_entries_5.py

Upon opening the app you can see it's split into 2 sections. Initially you will be in a view state, from here you can click through all the 
leagues/teams/players/games. You can also click the 'edit leagues' button to start adding your own or updating games as they happen. The first thing
you'll notice upon click 'edit leagues' button is your screen will turn yellow, this is to signify that you are in an editing state and some things
you do are irreversible. Clicking on 'Create League' from here will turn your background green. Make sure not to click away until you've added all 
your teams as you cant add them later.
