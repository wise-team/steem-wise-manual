
#!/usr/bin/env bash
set -e # fail on first error
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
cd "${DIR}"

#§ 'IMAGE_NAME="' + data.config.manual.docker.services.frontend.image + '"'
IMAGE_NAME="wise/manual"

docker build --no-cache -t $IMAGE_NAME .
