#used by s3 sbt dist targets
export AWS_S3_ACCESS_KEY="AKIAJGWO2QVF5K2WLK3A"
export AWS_S3_SECRET_KEY="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"



#alias ssh-ec2='ssh -i ~/Downloads/evadnoob.pem ec2-user@ec2-50-16-89-137.compute-1.amazonaws.com'
#alias ssh-ec2='ssh -i ~/.ec2/mtrx.pem $@'

#export JAVA_HOME="$(/usr/libexec/java_home)"
#export PATH=${JAVA_HOME}/bin:$PATH

# export EC2_API_TOOLS="/usr/local/Cellar/ec2-api-tools/1.6.9.0"
# export EC2_HOME="${EC2_API_TOOLS}/jars"
# export PATH="${EC2_API_TOOLS}/bin:${PATH}"
# export EC2_URL=https://ec2.us-east-1.amazonaws.com

# export AWS_ELB_ROOT="/Users/evadnoob/Applications/ElasticLoadBalancing-1.0.17.0"
# export AWS_ELB_HOME="${AWS_ELB_ROOT}"
# export PATH="${AWS_ELB_ROOT}/bin:${PATH}"


# export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
# export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
# export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"


ssh-ec2() { command  ssh -i ~/.ec2/mtrx.pem "$@" }