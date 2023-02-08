#! /bin/bash



helm upgrade --install --atomic --namespace=casestudy=ns -f values.yaml  sample-application --wait --history=max 1 --timeout 120s --debug
