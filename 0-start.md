# Building a Web app using Python and Mongodb

https://kanoki.org/2019/09/25/building-a-web-app-using-python-and-mongodb/

https://github.com/min2bro/Flask_Tuts

## Upload Data

- https://raw.githubusercontent.com/mongodb/docs-assets/geospatial/restaurants.json

## Connect to Mongo

- see `.env`

## Get dependencies (w/out Docker)

`pip3 install -r requirements.txt`

- error:

  - ImportError: No module named 'XXXXX' //geopy => forgot to run `python3 _init__.py` instead of `python _init__.py` locally....2 versions installed

  `pip3 search geopy`

- error:

  - GeocoderServiceError: [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate

  ```yaml
  python3 --version
  Python 3.8.2
  ```


## Docker

- build/run flaskapp on its own:

`docker build -t docker-flask:latest .`

- run w/bindmount:

`docker run --name flaskapp -v$PWD/app:/app -p5000:5000 docker-flask:latest`

- build whole enchilada:

`docker compose up --build`

- List installed packages in container:

`apt list --installed` 


## Import data into Mongo Container

`docker cp restaurants.json <container-id>:/restaurants.json`

`docker exec -it <container-id> sh`

`mongoimport --port 27017 restaurants.json --db restaurants`
