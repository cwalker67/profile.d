function docker-rmi-untagged { docker images -q --filter "dangling=true" | xargs -n1 -r docker rmi }
