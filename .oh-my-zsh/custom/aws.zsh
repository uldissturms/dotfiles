new-aws-session-token() {
  creds=$(aws sts get-session-token | jq '.Credentials')

  export AWS_ACCESS_KEY_ID=$(echo $creds | jq -r '.AccessKeyId')
  export AWS_SECRET_ACCESS_KEY=$(echo $creds | jq -r '.SecretAccessKey')
  export AWS_SESSION_TOKEN=$(echo $creds | jq -r '.SessionToken')
}
