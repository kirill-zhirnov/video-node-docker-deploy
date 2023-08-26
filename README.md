# Code sample for a Youtube video

`docker compose up` Run

`docker compose up -d` Run on a server (daemon mode)

## Updating:

`docker compose build` - Build the images, then:

`docker compose up -d` (on the server)

## If you want to rebuild images:

`docker compose up --build`

## Removing containers and network:

`docker compose down`