#!/bin/bash

# shellcheck disable=SC2164
cd ../second-infrastructure/infra/

terraform init

terraform destroy digitalocean_droplet.s1

read -p "La destruction de s1 est terminée. Appuyez sur Entrée pour continuer..."

terraform destroy digitalocean_droplet.s0
terraform destroy digitalocean_droplet.s2

read -p "La destruction de s2 est terminée. Appuyez sur Entrée pour continuer..."

echo "Demo avant de faire la création des machines"
read -p "La création des machines. Appuyez sur Entrée pour continuer..."

terraform apply -auto-approve