# b2-sdk-shell

Shell library for the [Backblaze API](https://www.backblaze.com/b2/docs/).

The command `shellcheck --shell=sh` is used to verify
the POSIX compliance.

## Install
In your project:

```sh
git clone https://github.com/sbourlon/b2-sdk-shell.git
```

## Usage
Add the following to your script to load the library:

```sh
for lib in ./b2-sdk-shell/*.sh; do
  . "${lib}"
done
```

or individual files:

```sh
. ./b2-sdk-shell/b2_authorize_account.sh 
. ./b2-sdk-shell/get_upload_url.sh 
```

## Functions
Supported functions:

- `b2__url_base()`
- `b2__authorize_account()`
- `b2__authorize_account__api_url()`
- `b2__authorize_account__allowed__bucket_id()`
- `b2__authorize_account__authorization_token()`
- `b2__authorize_account__download_url()`
- `b2__authorize_account__s3_api_url()`
- `b2__download_file_by_name()`
- `b2__get_upload_url()`
- `b2__get_upload_url__upload_url()`
- `b2__get_upload_url__authorization_token()`
- `b2__list_file_names()`
- `b2__list_file_names__format()`
- `b2__upload_file()`
