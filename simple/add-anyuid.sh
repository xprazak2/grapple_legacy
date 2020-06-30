#!/bin/bash
oc adm policy add-scc-to-user anyuid system:serviceaccount:vanilla:vanilla-anyuid
oc adm policy add-scc-to-user anyuid system:serviceaccount:vanilla:vanilla-operator
