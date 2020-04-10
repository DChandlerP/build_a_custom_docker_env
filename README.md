# Custom Docker Image

## Docker build and Tag

```docker build -t chandlerprince/python_git_r_hello .```

chandlerprince is my username. Replace it with your dockerhub username. python_git_r_hello is the name of the image. You could chose to name it something else. I didn't give it a tag so latest will be the defualt. The period symbol indicated that the Dockerfile is in the current directory.

## Docker run
```docker run -it chandlerprince/python_git_r_hello python3 /python-hello/hello.py```

The "-it" indicates that this session is interactive so I can see the output in the terminal. python3 is to indicated that I want to run Python3 and /python-hello/hello.py is the path to my python program which will print "Hello!" as a test.

## Docker push

```docker push chandlerprince/python_git_r_hello:latest``

I need to get this image onto Docker hub so that I can pull it down on our HPC. I'm pushing it to Docker hub. chandlerprince is my username there. You'd want to replace this with your username and if you changed the name of the image you'd want to replace it with the name you gave it.

## LSF Docker Wrapper

```bsub -G compute-ris -Is -q general-interactive -a 'docker(chandlerprince/python_git_r_hello:latest)' python3 /python-hello/hello.py```













