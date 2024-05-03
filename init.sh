docker network create -d bridge --subnet 172.18.0.0/24 --gateway 172.18.0.1 chinmay_network
docker-compose -f docker-compose.yml up -d
docker-compose -f docker-compose.yml down