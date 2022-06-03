#!/usr/bin/env sh

# Return the authorize account payload
b2__authorize_account() {
  id="$1"
  key="$2"
  
  curl --no-progress-meter "$B2_URL_AUTHORIZE_ACCOUNT" -u "$id:$key"
}

# Return the api url from the authorize account payload
b2__authorize_account__api_url() {
  jq -r '.apiUrl'
}

# Return the allowed bucket id from the authorize account payload
b2__authorize_account__allowed__bucket_id() {
	jq -r '.allowed.bucketId'
}

# Return the authorization token from the authorize account payload
b2__authorize_account__authorization_token() {
  jq -r '.authorizationToken'
}

# Return the downloda url from the authorize account payload
b2__authorize_account__download_url() {
  jq -r '.downloadUrl'
}

# Return the s2 api url from the authorize account payload
b2__authorize_account__s3_api_url() {
  jq -r '.s3ApiUrl'
}

