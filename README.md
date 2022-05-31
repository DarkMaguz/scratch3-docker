# scratch3-docker

Dockerized version of Scratch 3 editor from: https://github.com/LLK/scratch-gui

Build the container:
```
docker build . -t darkmagus/scratch3
```

Then use the following command to launch the server(editor):
```
docker run -p 8601:80 -d --name scratch3 darkmagus/scratch3
```

When it is up and running, type http://localhost:8601/ in a browser to access the editor.<br>
Google Chrome is recommended as a good browser that works well with this software.

Thanks to all the developers that have worked on the Scratch project over the years.
