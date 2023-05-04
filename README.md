#Exemple Readme:

# terraform-init-gcp

## Description

This project is the foundation for a gcp infrastructure.

## Configure project

### Credentials

- In IAM, create a service account and generate a key.
- Get the credentials into a json file.
- Add this json file in ./credentials/
- update the variable credentials_file_name with the json file name in variables.tf

### Variables

- in variables.tf :
    - update project_id with your project id ( you can find it on your dashboard )
    - update suffix for all your resources

### Warning

You may have to enable api services when you try to run this project.

## Run the project

```shell
terraform init
```

```shell
terraform plan
```

```shell
terraform apply --auto-approve
```

## Test the project

- On [this page](https://console.cloud.google.com/functions/list?env=gen1&cloudshell=false&hl=fr&project=gothic-state-294710&tab=testing) you can see your function
- Click on it and go to the test section
- You should output :

```text
Hello, World!
```