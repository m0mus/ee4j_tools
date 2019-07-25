#!/bin/bash
repos=(jsonb-api jsonp servlet-api jsp-api jstl-api el-ri websocket-api jta-api saaj-api jws-api ejb-api jms-api jax-ws-api jaxb-api security-api jca-api management-api javamail jpa-api concurrency-api common-annotations-api jaxrs-api jaxr-api jax-rpc-api interceptor-api jacc jaspic mojarra)
issue_file="issue.md"

for r in "${repos[@]}"
do
    if [ ! -d "$r" ]; then
        hub clone "eclipse-ee4j/$r"
    fi

    cd "$r"
    echo "[$r] creating issue"
    hub issue create -F "../$issue_file"
    cd ..
done
