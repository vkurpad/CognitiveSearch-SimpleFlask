FROM tatk_base:latest
MAINTAINER Vinod Kurpad <vkurpad@gmail.com>
COPY . /usr/src/app
COPY outputs /usr/src/app/outputs
# Pull the environment name out of the environment.yml

RUN echo $PATH
# Setup application
COPY app.py /
COPY entrypoint.sh /
COPY __init__.py /

ENTRYPOINT ["/bin/bash", "-c", "source activate tatk-env && exec /miniconda/envs/tatk-env/bin/python __init__.py"]
#ENTRYPOINT ["/miniconda/bin/python", "/__init__.py"]
#ENTRYPOINT ["/entrypoint.sh"]
