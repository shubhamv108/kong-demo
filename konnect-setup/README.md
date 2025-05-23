#### Upgrade
```shell
terraform init -upgrade
```


#### Apply for workspace
```shell
terraform workspace new dev
terraform apply -var-file="dev.tfvars"
```
