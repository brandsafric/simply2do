if [ "$1" = "mongo" ]
	then
		if pgrep mongo
		  then
		    kill $(pgrep mongo)
		    echo "turning off mongo"
		  else
		    echo "mongo was not running"
		fi
	else
		if pgrep node
		  then
		    kill $(pgrep node)
		    echo "stopping prior node processes"
		fi
fi
