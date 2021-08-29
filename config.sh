export CLUSTER_NAME=test1    #target cluster name
export NAMESPACE=metal3
export SERVICE_CIDR="192.169.0.0/18"
export POD_CIDR="192.168.0.0/18"
export API_ENDPOINT_PORT=6443
export PROVISIONING_POOL_RANGE_START=172.22.0.101
export PROVISIONING_POOL_RANGE_END=172.22.0.180
export PROVISIONING_CIDR=172.22.0.0/24

export BAREMETALV4_POOL_RANGE_START=172.20.17.100  
export BAREMETALV4_POOL_RANGE_END=172.20.17.200 
export EXTERNAL_SUBNET_V4_PREFIX=22
export EXTERNAL_SUBNET_V4_HOST=172.20.18.162  #Controller host ip from management network
export MAX_SURGE_VALUE=1
export NODE_DRAIN_TIMEOUT=0s
export NUM_OF_MASTER_REPLICAS=1

#image related variables. Modify according to your image 
export KUBERNETES_VERSION=v1.22.0
export IMAGE_BASE_NAME=UBUNTU_20.04_NODE_IMAGE_K8S_v1.22.0
export IMAGE_NAME=UBUNTU_20.04_NODE_IMAGE_K8S_v1.22.0.qcow2
export IMAGE_SUFFIX=qcow2
export IMAGE_URL=http://172.22.0.108/images/UBUNTU_20.04_NODE_IMAGE_K8S_v1.22.0.qcow2 
export IMAGE_RAW_NAME=UBUNTU_20.04_NODE_IMAGE_K8S_v1.22.0-raw.img
export IMAGE_RAW_URL=http://172.22.0.108/images/UBUNTU_20.04_NODE_IMAGE_K8S_v1.22.0-raw.img
export IMAGE_RAW_CHECKSUM=http://172.22.0.108/images/UBUNTU_20.04_NODE_IMAGE_K8S_v1.22.0-raw.img.md5sum
export IMAGE_CHECKSUM=http://172.22.0.108/images/UBUNTU_20.04_NODE_IMAGE_K8S_v1.22.0.qcow2.md5sum
#export IMAGE_LOCATION=https://artifactory.nordix.org/artifactory/airship/images/k8s_${KUBERNETES_VERSION}/} //modify this if you are not using default image 
export IMAGE_CHECKSUM_TYPE='md5'
export IMAGE_FORMAT='raw'   #can be qcow2,raw,vdi,vmdk,live-iso. Deafult is raw.
export IMAGE_USERNAME=metal3    #username to be used to ssh to baremetal nodes. 

export VM_EXTRADISKS=false

export BMO_RUN_LOCAL="false"
export IRONIC_IMAGE="quay.io/shweta50/metalkube_ironic"
export CLUSTER_PROVISIONING_INTERFACE="ironicendpoint"



export NUM_OF_WORKER_REPLICAS=1
export IRONIC_HOST_IP=172.22.0.108
export DEPLOY_KERNEL_URL=http://172.22.0.108:6180/images/ironic-python-agent.kernel
export DEPLOY_RAMDISK_URL=http://172.22.0.108:6180/images/ironic-python-agent.initramfs
export IRONIC_INSPECTOR_URL=https://172.22.0.108:5050/v1/
export IRONIC_URL=https://172.22.0.108:6385/v1/
export WORKING_DIR=/opt/metal3-dev-env

#basic tls and auth related variables
export IRONIC_AUTH_DIR=/opt/metal3-dev-env/ironic/auth/
export MARIADB_HOST_IP=127.0.0.1
export MARIADB_HOST=mariaDB
export IRONIC_TLS_SETUP=true
export IRONIC_BASIC_AUTH=true

export PROVISIONING_URL_HOST=172.22.0.108
export CLUSTER_URL_HOST=172.22.0.108
export IRONIC_HOST=172.22.0.108
export IRONIC_HOST_IP=172.22.0.108
export WORKING_DIR=/opt/metal3-dev-env
export IRONIC_DATA_DIR=/opt/metal3-dev-env/ironic
export IRONIC_URL=https://172.22.0.108:6385/v1/


export IRONIC_IMAGE_DIR=/opt/metal3-dev-env/ironic/html/images
export CLUSTER_PROVISIONING_IP=172.22.0.108


#Authentication related variables 
export IRONIC_CACERT_FILE=/opt/metal3-dev-env/certs/ironic-ca.pem
IRONIC_CA_CERT_B64="${IRONIC_CA_CERT_B64:-"$(base64 -w 0 < "${IRONIC_CACERT_FILE}")"}"
export IRONIC_CA_CERT_B64
export IRONIC_BASE_URL="https://${CLUSTER_URL_HOST}"
export IRONIC_CACERT_FILE=/opt/metal3-dev-env/certs/ironic-ca.pem
export IRONIC_CAKEY_FILE=/opt/metal3-dev-env/certs/ironic-ca.key
export IRONIC_CERT_FILE=/opt/metal3-dev-env/certs/ironic.crt
export IRONIC_KEY_FILE=/opt/metal3-dev-env/certs/ironic.key
export IRONIC_INSPECTOR_CACERT_FILE=/opt/metal3-dev-env/certs/ironic-ca.pem
export IRONIC_INSPECTOR_CAKEY_FILE=/opt/metal3-dev-env/certs/ironic-ca.key
export IRONIC_INSPECTOR_CERT_FILE=/opt/metal3-dev-env/certs/ironic-inspector.crt
export IRONIC_INSPECTOR_KEY_FILE=/opt/metal3-dev-env/certs/ironic-inspector.key
export MARIADB_CACERT_FILE=/opt/metal3-dev-env/certs/ironic-ca.pem
export MARIADB_CAKEY_FILE=/opt/metal3-dev-env/certs/ironic-ca.key
export MARIADB_CERT_FILE=/opt/metal3-dev-env/certs/mariadb.crt
export MARIADB_KEY_FILE=/opt/metal3-dev-env/certs/mariadb.key


export IRONIC_USERNAME="$(cat "${IRONIC_AUTH_DIR}ironic-username")"
export IRONIC_PASSWORD="$(cat "${IRONIC_AUTH_DIR}ironic-password")"
export IRONIC_INSPECTOR_USERNAME="${IRONIC_INSPECTOR_USERNAME:-"${IRONIC_USERNAME}"}"
export IRONIC_INSPECTOR_PASSWORD="${IRONIC_INSPECTOR_PASSWORD:-"${IRONIC_PASSWORD}"}"


export IRONIC_INSPECTOR_NO_BASIC_AUTH="false"
export IRONIC_NO_CA_CERT="false"
export NODES_FILE=/opt/metal3-dev-env/ironic_nodes.json
export IRONIC_NO_BASIC_AUTH="false"


export BMC_DRIVER="mixed"


export CONTAINER_RUNTIME=docker
export M3PATH=/home/ubuntu/go/src/github.com/metal3-io
export PROVISIONING_IP=172.22.0.108
export CLUSTER_PROVISIONING_IP=172.22.0.108
export CLUSTER_APIENDPOINT_IP=172.20.16.249
export CLUSTER_DHCP_RANGE=172.22.0.190,172.22.0.200
export BMOPATH=/home/ubuntu/go/src/github.com/metal3-io/baremetal-operator

export IRONIC_ENDPOINT=https://172.22.0.108:6385/v1/
export IRONIC_INSPECTOR_ENDPOINT=https://172.22.0.108:5050/v1/
export CONTAINER_RUNTIME=docker


export IRONIC_CA_CERT_B64="$(cat /opt/metal3-dev-env/certs/ironic-ca.pem | base64 -w 0)"

export PROVISIONING_IPV6=false
export METAL3_DIR=/home/ubuntu/metal3-dev-env


#This SSH key will be automatically injected into the provisioned host
export SSH_KEY=/home/ubuntu/.ssh/id_rsa
export SSH_PUB_KEY=/home/ubuntu/.ssh/id_rsa.pub
export IRONIC_RAMDISK_SSH_KEY=/home/ubuntu/.ssh/id_rsa.pub

export IRONIC_FAST_TRACK="false"
export IMAGE_OS=Ubuntu

#export CAPI_VERSION=v1alpha3
#export CAPM3_VERSION=v1alpha4
export NUM_NODES=2
export NUM_OF_MASTER_REPLICAS=1
export NUM_OF_WORKER_REPLICAS=1
export VM_EXTRADISKS=false
export VBMC_IMAGE=quay.io/metal3-io/vbmc
export IPA_DOWNLOADER_IMAGE=quay.io/metal3-io/ironic-ipa-downloader
export IRONIC_CLIENT_IMAGE=quay.io/metal3-io/ironic-client

export IRONIC_NAMESPACE=capm3-system
export BAREMETAL_OPERATOR_IMAGE=quay.io/shweta50/bmo 
export OPENSTACK_CONFIG=/home/ubuntu/.config/openstack/clouds.yaml

export CAPM3_VERSION="v1alpha5"
export CAPI_VERSION="v1alpha4"

export CLUSTER_APIENDPOINT_HOST=172.20.16.249


export EXTERNAL_SUBNET_V4=172.20.16.0/22
export IRONIC_INSPECTOR_PORT=5050
export IRONIC_API_PORT=6385
export ROOT_DISK_NAME=/dev/vda


export IRONIC_RAMDISK_SSH_KEY=/home/ubuntu/.ssh/id_rsa.pub
