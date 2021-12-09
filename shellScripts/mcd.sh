mcd() {
    echo "This script is called $0 and the first arg is $1";
    mkdir "$1";
    cd "$1";
}
# foobar
