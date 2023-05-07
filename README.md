# Loki CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/loki"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Loki server with CI/CD on Elestio

<img src="loki.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

You can open Grafana UI here:

    URL: https://[CI_CD_DOMAIN]
    email: root
    password: [ADMIN_PASSWORD]

You can use Loki with the following credentials:

    URL: https://[CI_CD_DOMAIN]:3131
    email: root
    password: [ADMIN_PASSWORD]

# API

for GET requests you can use the following example:

    curl -X GET \
    'https://[CI_CD_DOMAIN]:3131/loki/api/v1/query' \
    --header 'Accept: */*' \
    --header 'Authorization: Basic [ADMIN_PASSWORD]'

for POST requests you can use the following example:

    curl -X POST \
    'https://[CI_CD_DOMAIN]:3131/loki/api/v1/push' \
    --header 'Accept: */*' \
    --header 'Authorization: Basic [ADMIN_PASSWORD]' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "streams": [
            {
            "stream": {
                "test": "bar2"
            },
            "values": [
                [
                "1683007603000000000",
                "fizzbuzz-test"
                ]
            ]
            }
        ]
    }'

For more informations: <a target="_blank" href="https://grafana.com/docs/loki/latest/api/">Loki api documentation</a>
