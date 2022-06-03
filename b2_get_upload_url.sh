#!/usr/bin/env sh

b2__get_upload_url() {
  base_url="$1"
  account_authorization_token="$2"
  bucket_id="$3"

  curl --no-progress-meter \
			 -H "Authorization: ${account_authorization_token}" \
       -d "{\"bucketId\": \"${bucket_id}\"}" \
        "${base_url}/b2_get_upload_url"
}

b2__get_upload_url__upload_url() {
  jq -r '.uploadUrl'
}

b2__get_upload_url__authorization_token() {
  jq -r '.authorizationToken'
}
