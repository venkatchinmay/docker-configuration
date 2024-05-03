#configuration server:

curl --request GET \
  --url http://localhost:8071/licensing-service/default

curl --request GET \
  --url http://localhost:8071/licensing-service/dev

curl --request GET \
  --url http://localhost:8071/licensing-service/prod

curl --request POST \
  --url http://localhost:8071/encrypt \
  --header 'Content-Type: text/plain' \
  --data chinmay

curl --request POST \
  --url http://localhost:8071/decrypt \
  --header 'Content-Type: text/plain' \
  --data b997448739a92dc37c0f769cca893985775ce56cceaface34d16fbc21fce207f

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