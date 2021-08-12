FROM python:3.9-alpine

## install helloworld module
#RUN pip install --upgrade pip
#RUN pip install helloworld-ajilraju

## run the script Ad hoc
#CMD ["python", "-c", "print('helloworld!');"]

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Make entrypoint.sh executable
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]