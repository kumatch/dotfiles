# -*- mode: shell-script -*-


export EC2_HOME=$HOME/Dropbox/Sync/ec2-api-tools
export PATH=$EC2_HOME/bin:$PATH
export EC2_PRIVATE_KEY=$HOME/.ec2/pk.pem
export EC2_CERT=$HOME/.ec2/cert.pem
export EC2_URL=https://ec2.ap-northeast-1.amazonaws.com

## aws cli (python)
export AWS_CONFIG_FILE=$HOME/.awscli.ini
export AWS_DEFAULT_REGION=ap-northeast-1
