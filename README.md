# Setup
```shell
make up
```

### Teardown
```shell
make down
```

### Testing
#### Pongo
```shell
curl -Ls https://get.konghq.com/pongo | bash
```

#### Start Dependencies for testing - Postgres
```shell
pongo up
```

#### Kong gateway Container
```shell
pongo shell
```

#### DBMigration
````shell
kms
````

#### PluginAvailable
```shell
curl -s localhost:8001 | \
  jq '.plugins.available_on_server."header-logger"'
```
