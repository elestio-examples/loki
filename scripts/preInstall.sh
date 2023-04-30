#set env vars
set -o allexport; source .env; set +o allexport;

# apt install jq -y

# mkdir -p ./crux-db
# mkdir -p ./kratos-data
# mkdir -p ./kratos-db

# chown -R 1000:1000 ./crux-db
# chown -R 1000:1000 ./kratos-data
# chown -R 1000:1000 ./kratos-db

# sed -i "s|EMAIL_TO_CHANGE|${SMTP_FROM_EMAIL}|g" ./docker-compose.yml