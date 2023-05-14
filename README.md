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

For POST requests you can use the following example:

    curl -X POST \
    'https://[CI_CD_DOMAIN]:3131/loki/api/v1/push' \
    --header 'Accept: */*' \
    -u root:[ADMIN_PASSWORD] \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "streams": [
            {
            "stream": {
                "test": "bar2"
            },
            "values": [
                [
                "'"$(date +%s%N)"'",
                "fizzbuzz-test"
                ]
            ]
            }
        ]
    }'

For GET requests you can use the following example:

    curl -G -s  "https://[CI_CD_DOMAIN]:3131/loki/api/v1/query_range" --data-urlencode 'query={test="bar2"}' \
    -u root:[ADMIN_PASSWORD]

For more informations: <a target="_blank" href="https://grafana.com/docs/loki/latest/api/">Loki api documentation</a>
