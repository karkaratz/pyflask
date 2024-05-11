# pyflask

This simple code allows you to build a docker image for AMD64 that embeds:

- python 3.11
- numpy
- pandas
- pip3
- flask
- SQLAlchemy
- langflow (as a separate image in the langflow folder. The approach to build and run is the same.)

Just download the repo, enter the directory and execute:

<pre> 
  
  docker build -t $YOURREPO:$YOURTAG .
  
  THEN 
  
  docker image list

  and you should see something similar to this (where repository is $YOURREPO and TAG is $YOURTAG.
  
  REPOSITORY            TAG            IMAGE ID       CREATED          SIZE
  karkaratz/pyflask     1.0            70c173460be2   3 hours ago      729MB

</pre>

Now, if you execute the container and enter its command line you can run the "Hello World!" Service in port 5000.

From /installation run <pre> python hello.py </pre> and connect on port 5000 using your browser or any other client.


If you just want to run the image: <pre> docker pull karkaratz/pyflask:1.0 </pre>

Then <pre> docker run -p 5000:5000 --cap-add=NET_ADMIN karkaratz/pyflask:arm sleep infinity </pre> and visit http://localhost:5000
