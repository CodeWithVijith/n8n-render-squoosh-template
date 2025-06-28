# n8n + Squoosh CLI Docker Image

## Build

```sh
docker build -t my-n8n-squoosh .
```

## Run

```sh
docker run -it --rm -p 5678:5678 my-n8n-squoosh
```

## Use Squoosh CLI

Inside the container, you can use `squoosh-cli` in n8n workflows via the Execute Command node.
