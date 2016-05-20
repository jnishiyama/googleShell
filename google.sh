# courtesy http://superuser.com/questions/47192/google-search-from-linux-terminal
# and http://stackoverflow.com/questions/3466166/how-to-check-if-running-in-cygwin-mac-or-linux
google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    if [ "$(uname)" == "Darwin" ]; then
        open "http://www.google.com/search?q=$search"
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        xdg-open "http://www.google.com/search?q=$search"
    fi
}