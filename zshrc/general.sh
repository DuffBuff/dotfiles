# Function to proxy rdp connections through the jumphost.
sshrdp() {
  if [ -z "$1" ]; then
    echo "No host supplied"
  else
    ssh -L 33389:$1:3389 -o RequestTTY=no ibm-jump
  fi
}

export no_proxy="*"

##########################################################
# Aliases                                                #
##########################################################
alias cl='clear'

alias ansible-hosts="vim ~/src/ansible/hosts"

alias ic="ibmcloud"
