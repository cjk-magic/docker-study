#!/usr/bin/python3

import docker
client=docker.from_env()

test = client.containers.run("nginx", detach=True)
print(test.id)