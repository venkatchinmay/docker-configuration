curl \
 --header "X-Vault-Token: myroot" \
 --request POST \
 --data '{"data": {
                    "example.property": "I am the default",
                    "management.endpoints.enabled-by-default": true,
                    "management.endpoints.web.exposure.include": "*",
                    "spring.database.driverClassName": "org.postgresql.Driver",
                    "spring.datasource.platform": "postgres",
                    "spring.datasource.testWhileIdle": true,
                    "spring.datasource.validationQuery": "SELECT 1",
                    "spring.jpa.database": "POSTGRESQL",
                    "spring.jpa.hibernate.ddl-auto": "none",
                    "spring.jpa.hibernate.naming-strategy": "org.hibernate.cfg.ImprovedNamingStrategy",
                    "spring.jpa.properties.hibernate.dialect": "org.hibernate.dialect.PostgreSQLDialect",
                    "spring.jpa.show-sql": true
                  }
          }' \
    http://vault:8200/v1/secret/data/licensing-service

curl \
 --header "X-Vault-Token: myroot" \
 --request POST \
 --data '{"data": {
                    "example.property": "I AM DEV",
                    "spring.datasource.password": "chinmay",
                    "spring.datasource.url": "jdbc:postgresql://postgres:5432/chinmay_dev",
                    "spring.datasource.username": "chinmay"
                  }
          }' \
    http://vault:8200/v1/secret/data/licensing-service,dev



#curl \
 #--header "X-Vault-Token: myroot" \
 #--request DELETE \
 # http://vault:8200/v1/secret/data/licensing-service



#curl \
 #--header "X-Vault-Token: myroot" \
 #--request GET \
 #http://vault:8200/v1/secret/data/licensing-service