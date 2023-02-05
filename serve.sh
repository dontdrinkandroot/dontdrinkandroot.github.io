#/bin/bash
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --publish [::1]:8000:4000 \
  --env JEKYLL_UID=$(id -u) \
  --env JEKYLL_GID=$(id -g) \
  jekyll/jekyll:4.2.0 \
  jekyll serve
