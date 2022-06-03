#!/usr/bin/env sh

b2__list_file_names() {
  base_url="$1"
  bucket_id="$2"

  # Optional parameter
  authorization_token="${3:-""}"

  set --
  if [ "$authorization_token" != "" ]; then
    set -- "-H" "Authorization: $authorization_token"
  fi

	curl --no-progress-meter "$@" \
       -d "{\"bucketId\": \"$bucket_id\"}" \
       "${base_url}/b2_list_file_names"
}

b2__list_file_names__format() {
  format="$1"
  join="${2:-" "}"
  jq -r ".files[] | {${format}} | join(\"${join}\")"
}
