
sudo apt-get -y update

sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    jq

echo "########### Installing AWS Stuff with Docker ###############" 


sudo usermod -aG docker $USER

docker info


cat << EOF

"#####################################################"
"Install Python instllation Manager "
"#####################################################"

EOF

apt-get update
apt-get -y install python3-pip


cat << EOF

"#####################################################"
"Installing AWCLI "
"#####################################################"

EOF

pip3 install awscli

cat << EOF

"#####################################################"
"AWC CLI verion "
"#####################################################"

EOF

aws --version

cat << EOF

"#####################################################"
"Installing boto3 "
"#####################################################"

EOF

pip3 install boto3

cat << EOF

"#####################################################"
"Installing JQ "
"#####################################################"

EOF

cd ~

wget http://stedolan.github.io/jq/download/linux64/jq
chmod +x ./jq
cp jq /usr/bin
jq --version
