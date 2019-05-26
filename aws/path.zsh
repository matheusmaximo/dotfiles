# AWS credentials
export AWS_ACCESS_KEY_ID=$(grep aws_access_key_id $HOME/.aws/credentials | sed 's/.*= *//g')
export AWS_SECRET_ACCESS_KEY=$(grep aws_secret_access_key $HOME/.aws/credentials | sed 's/.*= *//g')
