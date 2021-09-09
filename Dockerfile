FROM ubuntu:latest
ENV VERSION=1.2.0
RUN apt-get update
RUN apt-get -y install python3.8
RUN apt-get -y install vim
RUN apt-get -y install zip
RUN apt-get -y install unzip 
COPY zip_job.py /tmp/zip_job.py
CMD ["python3","-m", "zip_job.py" && "cat /etc/os-release","[-f /tmp/zip_job.py] && echo "Found" || echo "Not found""]

 
