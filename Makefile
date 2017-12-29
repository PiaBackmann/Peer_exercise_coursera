all: README.md 



README.md:  guessinggame.sh
	touch README.md
	echo "# Readme File of Project: Peer_exercise_coursera" > README.md
	echo "**make** was run at : " >> README.md
	date >> README.md
	echo ""  >> README.md
	echo "**guessinggame.sh** contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o [0-9]+ >> README.md

clean:
	rm README.md
