# php-demo

PHP demo application which does not use any database.

To test php functions locally:
```
$ php ./app/helloworld.php
```

## Nginx + PHP-FPM

A `docker-compose` file is provided for running the application behind Nginx.

PHP application resides in a container where php-fpm runs in listens on port
`9000`. php-fpm is FastCGI daemon which handles php requests.

Nginx runs in its own container where it listens port `80`.

To start both containers:

```
$ docker compose up
```

Optionally, we can request re-building images and re-creating containers:
```
$ docker compose up --build --force-recreate
```

To test PHP, in your browser, go to `http://localhost:8081/helloworld.php`:

<img src="./img/php-demo-hello-world.png"  width="1200">


To inspect e.g. nginx container:

```
$ docker exec -it <container> /bin/bash
```

We can use container id or name.

To stop both containers:
```
$ docker compose down
```