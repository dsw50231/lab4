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
        help-flags
        echo "-d, --date           -  Wyświetla obecną datę"
        echo "-e, --error [n=100]  -  Generuje n plików error{n}/error{n}.txt (domyślnie 100)"
        echo "-l, --logs [n=100]   -  Generuje n plików log{n}.txt (domyślnie 100)"
        echo "-h, --help           -  Wyświetla tę wiadomość"
        echo "--init               -  Klonuje repozytorium i dodaje ścieżkę do PATH"
        echo "--date          -  Wyświetla obecną datę"
        echo "--logs [n=100]  -  Generuje n plików log{n}.txt (domyślnie 100)"
        echo "--help          -  Wyświetla tę wiadomość"
        ;;
    "--init")
        git clone https://github.com/dsw50231/lab4.git
        export PATH=$PATH:$(pwd)
        ;;
    "-e" | "-error")
        if [ -n $2 ]
        then
            n=$2
        else
            n=100
        fi

        for ((i=1; i<=n; i++))
        do
            mkdir -p "error$i"
            echo "error$i.txt skrypt.sh $(date)" > "error$i/error$i.txt"
        done
        ;;
esac
