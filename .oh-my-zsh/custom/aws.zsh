aws-new-session-token() {
  creds=$(aws sts get-session-token | jq '.Credentials')

  export AWS_ACCESS_KEY_ID=$(echo $creds | jq -r '.AccessKeyId')
  export AWS_SECRET_ACCESS_KEY=$(echo $creds | jq -r '.SecretAccessKey')
  export AWS_SESSION_TOKEN=$(echo $creds | jq -r '.SessionToken')
}

aws-unset-session-token() {
  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_SESSION_TOKEN
}

aws-gateway-key() {
  aws apigateway get-api-keys --name-query $1 --include-value --query 'items[0].value' --output text
}

aws-detach-iot-policy() {
  policy=$1
  aws iot list-policy-principals --policy-name $policy --query 'principals' \
    | jq -r '.[]' \
    | while read id
      do
        echo "$policy: $id"
        aws iot detach-principal-policy --policy-name $policy --principal $id
      done
}
