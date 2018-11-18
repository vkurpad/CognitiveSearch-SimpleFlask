# CognitiveSearch-SimpleFlasktainer 
This is a single docker container to take a python model exported from a notebook as a pickle and run it as a web service in flask app. The flask app snaps to the cognitive search <a href="https://docs.microsoft.com/en-us/azure/search/cognitive-search-create-custom-skill-example">custom skill</a> api. 

The container is built to accept an environment.yml file. The build process loads the dependencies and adds the env to the PATH. Few things to note, the python executable from the env is invoked, not the miniconda version.  The docker file is split in two simply to make development and incremental changes faster.

The Dockerfile is where most of the configuration happens. To run this repo here are the steps you will need to follow:
<ol>
  <li> Move the Dockerfile to Dockerfile.final</li>
  <li> Move the Dockerfile.base to Dockerfile</li>
  <li> Run the docker build command <em>sudo docker build . -t {some tag} </em></li>
  <li> Swap the Dockerfiles again ... Move Dockerfile to Dockerfile.base, Move Dockerfile.final to Dockerfile</li>
  <li> Move the Dockerfile to Dockerfile.final</li>
  <li> Make sure you have a folder called outputs with the .pkl file needed</li>
  <li> Run the docker build command again <em>sudo docker build . -t {some other tag} </em></li>
  <li> Your container should now be ready to run </li>
  <li> Run the docker container <em>sudo docker run -p 80:5000 {some other tag} </em></li>
