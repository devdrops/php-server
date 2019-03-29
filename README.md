# PHP Built-in Server

A Docker image that provides the usage for PHP built-in server.

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

