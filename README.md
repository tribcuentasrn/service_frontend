# Service for Angular app (workflow_frontend)


### Clone repo and submodules
Clone repo
```
git clone git@github.com:tribcuentasrn/service_frontend.git
```

Init submodule
```
git submodule init
git submodule update
```
Or 
```
git submodule update --init 
```

### Docker compose

Build
```
docker-compose build
```

Set port 1234 in docker-compose.yml (optional)

Up (daemon mode)
```
docker-compose up -d
```
