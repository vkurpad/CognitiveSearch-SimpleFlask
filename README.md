# CognitiveSearch-SimpleFlasktainer 
This is a single docker container to take a python model exported from a notebook as a pickle and run it as a web service in flask app. The flask app snaps to the cognitive search <a href="https://docs.microsoft.com/en-us/azure/search/cognitive-search-create-custom-skill-example">custom skill</a> api. 

The Dockerfile is where most of the configuration happens. To run this repo here are the steps you will need to follow:
<ol>
  <li> Move the Dockerfile to Dockerfile.final</li>
  <li> Move the Dockerfile.base to Dockerfile</li>
  <li> Run the docker build command <em>sudo docker build . -t <some tag> </em></li>
