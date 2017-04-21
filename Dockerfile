FROM vladtroinich/devenvbase:latest
RUN apt-get update && apt-get install python python3 curl wget python-ipcalc python-six iw --force-yes --assume-yes 
RUN apt-get update && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1484120AC4E9F8A1A577AEEE97A80C63C9D8B80B &&\
add-apt-repository "deb [arch=amd64] https://osquery-packages.s3.amazonaws.com/xenial xenial main" && \
apt-get update && apt-get install osquery
VOLUME /home/dev/
CMD ["bash"]
EXPOSE 5901
