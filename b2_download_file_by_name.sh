#!/usr/bin/env sh

b2__download_file_by_name() {
  download_url="$1"
  bucket_name="$2"
  file="$3"

  # Optional parameter
  authorization_token="${4:-""}"

  set --
  if [ "$authorization_token" != "" ]; then
    set -- "-H" "Authorization: $authorization_token"
  fi

	curl --no-progress-meter "$@" \
       "${download_url}/file/${bucket_name}/${file}"
}
