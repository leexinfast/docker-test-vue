DOCKER_IMAGE=registry.cn-hangzhou.aliyuncs.com/leexinfast/docker-test-vue:latest
DOCKER_REGISTRY=registry.cn-hangzhou.aliyuncs.com
DOCKER_REGISTRY_USERNAME=leeyasuo
DOCKER_REGISTRY_PASSWORD=716leexin.

yarn build
docker build . -t ${DOCKER_IMAGE}
docker login ${DOCKER_REGISTRY} -u ${DOCKER_REGISTRY_USERNAME} -p ${DOCKER_REGISTRY_PASSWORD}
docker push ${DOCKER_IMAGE}