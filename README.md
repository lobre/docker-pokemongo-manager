# Docker image for PokemonGo Manager

https://github.com/Blossomforth/BlossomsPokemonGoManager

To start, first clone the repo and then launch.

    docker-compose up

## Mount x11 error

You may need to launch the following command to accept external use of display.

    sudo xhost +

## Google authentication

If you use Google authentication, the browser will not start automatically. You need to use the following URL instead.

    https://accounts.google.com/o/oauth2/auth?client_id=848232511240-73ri3t7plvk96pj4f85uj8otdat2alem.apps.googleusercontent.com&redirect_uri=urn%3Aietf%3Awg%3Aoauth%3A2.0%3Aoob&response_type=code&scope=openid%20email%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email
