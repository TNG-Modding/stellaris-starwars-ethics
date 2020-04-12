develop: 
	cp -a ./mod/. ~/Documents/Paradox\ Interactive/Stellaris/mod/star-wars-ethics
	cp ./descriptor.mod ~/Documents/Paradox\ Interactive/Stellaris/mod/star-wars-ethics.mod

undevelop:
	rm -rf ~/Documents/Paradox\ Interactive/Stellaris/mod/star-wars-ethics
	rm ~/Documents/Paradox\ Interactive/Stellaris/mod/star-wars-ethics.mod

redevelop: undevelop develop