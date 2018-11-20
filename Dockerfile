FROM tatk_base:latest

COPY . /usr/src/app
COPY outputs /usr/src/app/outputs
# Pull the environment name out of the environment.yml

RUN echo $PATH
# Setup application
COPY app.py /
COPY entrypoint.sh /
COPY __init__.py /
COPY cert.pem /
COPY key.pem /

ENTRYPOINT ["/bin/bash", "-c", "source activate tatk-env && exec /miniconda/envs/tatk-env/bin/python __init__.py"]
#ENTRYPOINT ["/miniconda/bin/python", "/__init__.py"]
#ENTRYPOINT ["/entrypoint.sh"]
