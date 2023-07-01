case $1 in
    "-d" | "--date") date;;
    "-l" | "--logs")
        if [ -n $2 ]
        then
            n=$2
        else
            n=100
        fi

        for ((i=1; i<=n; i++))
        do
            echo "log$i.txt skrypt.sh $(date)" > "log$i.txt"
        done
        ;;
    "-h" | "--help")
        echo "Dostępne opcje:"
        echo "-d, --date           -  Wyświetla obecną datę"
        echo "-e, --error [n=100]  -  Generuje n plików error{n}/error{n}.txt (domyślnie 100)"
        echo "-l, --logs [n=100]   -  Generuje n plików log{n}.txt (domyślnie 100)"
        echo "-h, --help           -  Wyświetla tę wiadomość"
        echo "--init               -  Klonuje repozytorium i dodaje ścieżkę do PATH"
esac
