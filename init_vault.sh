docker network create -d bridge --subnet 172.18.0.0/24 --gateway 172.18.0.1 chinmay_network
docker-compose -f docker-compose-with-vault.yml up -d
bash vault-api.sh
docker-compose -f docker-compose-with-vault.yml down