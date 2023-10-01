# pyflask

This simple code allows you to build a docker image that embeds:

- python 3.11
- numpy
- pandas
- pip3
- flask
- SQLAlchemy

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
