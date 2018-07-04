readme.md: guessinggame.sh
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub" > readme.md
	echo "Guessing Game" >> readme.md
	date  >> readme.md
	echo "The number of lines of code contained in guessinggame.sh:">> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+"  >> readme.md

