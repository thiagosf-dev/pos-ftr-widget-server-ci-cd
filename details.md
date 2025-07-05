# Instructions

- buildar imagem com tageamento:

```bash
docker build -t imagename:tag .
```

- buildar quando o Dockerfile não estiver na raiz:

```bash
docker build -t imagename:tag -f ./path/to/Dockerfile .
```

- subir um container:

```bash
docker run -d -p host_port:container_port --name container_name imagename:tag
```

- ver os containers em execução:

```bash
docker ps
```

- ver os containers parados:

```bash
docker ps -a
```

- ver as imagens:

```bash
docker images
```

- ver logs de um container em execução:

```bash
docker logs -f container_id
```

- parar um container:

```bash
docker stop container_id
```

- remover um container:

```bash
docker rm container_id
```

- remover uma imagem:

```bash
docker rmi imagename:tag
```

- remover todos os containers:

```bash
docker rm $(docker ps -a -q)
```

- remover todas as imagens:

```bash
docker rmi $(docker images -q)
```
