http://localhost:3000/feedback/srianjaneyam.txt

Named Volumes can not be created via "Dockerfile" Have to run in command line only.

bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ docker run -p 3000:80 -d --name raju-feedback-app --rm -v feedback:/app/feedback bharathkumarraju/bkr-feedback-node:volumes 
adbb4bc8f7d0d983d455ad35a14a3cc79ab58a16fd05f406ff88c2bd7cb9fe1e
bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ docker ps
CONTAINER ID        IMAGE                                        COMMAND                  CREATED             STATUS              PORTS                  NAMES
adbb4bc8f7d0        bharathkumarraju/bkr-feedback-node:volumes   "docker-entrypoint.s…"   9 seconds ago       Up 8 seconds        0.0.0.0:3000->80/tcp   raju-feedback-app
bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ 



Bind mounts mainly useful for development
Even Bindmounts we should specify when we run a container.




bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ docker run -p 3000:80 -d --name raju-feedback-app --rm -v feedback:/app/feedback -v "/Users/bharathdasaraju/git/know-docker-well/module_2_docker_data_volumes/Demo1_volumes_dockerfile:/app"   bharathkumarraju/bkr-feedback-node:volumes 
fba0eeb754a0c3c1fc7a94809577895b172ba4296352a77f851bd962c1428883
bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ 

shortcut for Bindmounts:
I
f you dont always want to copy and use the full path, you can use these shortcuts: 

macOS / Linux: -v $(pwd):/app
Windows: -v "%cd%":/app


bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ docker run -p 3000:80 -d --name raju-feedback-app --rm -v feedback:/app/feedback -v "/Users/bharathdasaraju/git/know-docker-well/module_2_docker_data_volumes/Demo1_volumes_dockerfile:/app"  -v /app/node_modules  bharathkumarraju/bkr-feedback-node:volumes 
af3cecf5c206c455e7d2b303396ec7cf9efaca4888ed84388b4139689bd9bdef
bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ docker ps
CONTAINER ID        IMAGE                                        COMMAND                  CREATED             STATUS              PORTS                  NAMES
af3cecf5c206        bharathkumarraju/bkr-feedback-node:volumes   "docker-entrypoint.s…"   4 seconds ago       Up 2 seconds        0.0.0.0:3000->80/tcp   raju-feedback-app
bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ docker ps
CONTAINER ID        IMAGE                                        COMMAND                  CREATED             STATUS              PORTS                  NAMES
af3cecf5c206        bharathkumarraju/bkr-feedback-node:volumes   "docker-entrypoint.s…"   5 seconds ago       Up 4 seconds        0.0.0.0:3000->80/tcp   raju-feedback-app
bharathdasaraju@MacBook-Pro Demo1_volumes_dockerfile (main) $ 

