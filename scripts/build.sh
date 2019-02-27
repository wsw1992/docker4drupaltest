#!/bin/bash

echo "$HOME/"
echo "$PWD"

#!/bin/bash

set -eo pipefail

# Install merge plugin.
docker run -v "$PWD":/app composer/composer:alpine update -n
