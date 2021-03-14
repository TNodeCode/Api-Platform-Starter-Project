HOST=localhost
PORT=8080

if [ ! -z $APP_HOST ]
then
    HOST="$APP_HOST"
fi

if [ ! -z $APP_PORT ]
then
    PORT="$APP_PORT"
fi

php -S "$HOST":"$PORT" -t public