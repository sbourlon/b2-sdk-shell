#!/usr/bin/env sh

b2__upload_file() {
	upload_url="$1"
	authorization_token="$2"
	file_name="$3"
	mime_type="$4"
	sha1="$5"

	curl --no-progress-meter \
			 -H "Authorization: $authorization_token" \
			 -H "X-Bz-File-Name: $file_name" \
			 -H "Content-Type: $mime_type" \
			 -H "X-Bz-Content-Sha1: $sha1" \
			 --data-binary "@-" \
			 "$upload_url"
}
