#configuration server:

curl --request GET \
  --url http://localhost:8071/licensing-service/default

curl --request GET \
  --url http://localhost:8071/licensing-service/dev

curl --request GET \
  --url http://localhost:8071/licensing-service/prod

#licensing server :

curl --request POST \
  --url http://localhost:8080/v1/organisation/d898a142-de44-466c-8c88-9ceb2c2429d3/license \
  --header 'Accept-Language: es' \
  --header 'Content-Type: application/json' \
  --data '{

	"licenseId":"6c4e05b5-054c-4efb-b0c3-499617ef88d8",
	"description":"Software Growth",
	"organizationId": "d898a142-de44-466c-8c88-9ceb2c2429d3",
	"productName": "chinmay",
	"licenseType": "full",
	"comment": "comment_chinmay"
}'

curl --request GET \
  --url http://localhost:8080/v1/organisation/d898a142-de44-466c-8c88-9ceb2c2429d3/license/6c4e05b5-054c-4efb-b0c3-499617ef88d8