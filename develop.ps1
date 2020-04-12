# develop: 
# 	cp -a ./mod/. C:/Users/Oliver/Documents/Paradox\ Interactive/Stellaris/mod/star-wars-ethics
# 	cp ./descriptor.mod C:/Users/Oliver/Documents/Paradox\ Interactive/Stellaris/mod/star-wars-ethics.mod

# undevelop:
# 	rm -rf C:/Users/Oliver//Documents/Paradox\ Interactive/Stellaris/mod/star-wars-ethics
# 	rm C:/Users/Oliver/Documents/Paradox\ Interactive/Stellaris/mod/star-wars-ethics.mod

# redevelop: undevelop develop


function develop {
    Copy-Item "./descriptor.mod" -Destination "C:\Users\Oliver\Documents\Paradox Interactive\Stellaris\mod\star-wars-ethics.mod"
    Copy-Item -Path "./mod" -Destination "C:\Users\Oliver\Documents\Paradox Interactive\Stellaris\mod\star-wars-ethics" -Recurse
}

function undevelop {
    Remove-Item -Path "C:\Users\Oliver\Documents\Paradox Interactive\Stellaris\mod\star-wars-ethics.mod"
    Remove-Item -Recurse -Force -Path "C:\Users\Oliver\Documents\Paradox Interactive\Stellaris\mod\star-wars-ethics"
}

function redevelop {
    Remove-Item -Path "C:\Users\Oliver\Documents\Paradox Interactive\Stellaris\mod\star-wars-ethics.mod"
    Remove-Item -Recurse -Force -Path "C:\Users\Oliver\Documents\Paradox Interactive\Stellaris\mod\star-wars-ethics"
    Copy-Item "./descriptor.mod" -Destination "C:\Users\Oliver\Documents\Paradox Interactive\Stellaris\mod\star-wars-ethics.mod"
    Copy-Item -Path "./mod" -Destination "C:\Users\Oliver\Documents\Paradox Interactive\Stellaris\mod\star-wars-ethics" -Recurse
}
