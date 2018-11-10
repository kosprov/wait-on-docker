# A simple `wait-on` docker wrapper

Wraps the wonderful Node.js utility [wait-on](https://github.com/jeffbski/wait-on) as a Docker image.

## Usage

Same API as `wait-on`, so just run:

    docker run --rm -t kosprov/wait-on {OPTIONS} resource [...resource]

More info on [`wait-on` documentation](https://github.com/jeffbski/wait-on/blob/master/README.md) 

If you're passing a config file, use Docker mount facility to bind to the host file system. Assuming a `config.json` file in the current directory:

    docker run --rm -t \
        --mount type=bind,source=$(pwd)/config.json,target=/tmp/config.json \
        kosprov/wait-on \
        --config /tmp/config.json \
        http://www.google.com/

## License

 - [MIT license](http://github.com/kosprov/wait-on-docker/raw/master/LICENSE)    