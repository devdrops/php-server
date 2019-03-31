# PHP Built-in Server

[![](https://images.microbadger.com/badges/image/devdrops/php-server.svg)](https://microbadger.com/images/devdrops/php-server "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/devdrops/php-server.svg)](https://microbadger.com/images/devdrops/php-server "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/devdrops/php-server.svg)](https://microbadger.com/images/devdrops/php-server "Get your own commit badge on microbadger.com")

A Docker image that provides the usage for PHP built-in server. Available at [Docker Hub](https://hub.docker.com/r/devdrops/php-server).

## How to Use?

1. Add the image to your project.
2. Run the following:

```bash
docker run -ti \
  -v $(pwd):/code \
  -w /code \
  -p 8080:8080 \
  devdrops/php-server:latest \
  php -S 0.0.0.0:8080
```

3. You can access the project content at `http://0.0.0.0:8080/` on the host machine.

