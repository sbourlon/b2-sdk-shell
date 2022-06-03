#!/usr/bin/env sh
B2_API_VERSION="${B2_API_VERSION:-"v2"}"
B2_URL_AUTHORIZE_ACCOUNT="${B2_URL_AUTHORIZE_ACCOUNT:-"https://api.backblazeb2.com/b2api/v2/b2_authorize_account"}"

# Return the base url api
#
# Parameters:
# - url_api: the url api from authorize_account
# - version: the api version, usually $B2_API_VERSION
b2__url_base() {
  url_api="$1"
  version="$2"

  echo "${url_api}/b2api/${version}"
}
