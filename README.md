# Using Enviornement Variables for Use in Python in Docker
This is a walk through of how to use environment variables in python

### Commands

```
docker build -t "env_test:latest" .
docker run --rm env_test:latest
docker run --rm -e "test=this is new" env_test
docker run --rm -e "docker_test=this is new" env_test
docker run --rm -e "override=True" -e "test=this is new" env_test
docker run --rm -e "override=False" -e "test=this is new" env_test
docker run --rm --env-file .\docker-run.env env_test
docker-compose up
docker-compose rm -f
docker-compose -f .\docker-compose-envfile.yaml up
docker-compose rm -f
```