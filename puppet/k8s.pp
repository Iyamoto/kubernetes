
$binfolder = '/usr/bin'
$kubectl_uri = 'https://storage.googleapis.com/kubernetes-release/release/v1.8.3/bin/linux/amd64/kubectl'

exec { 'download kubectl':
  command => "${binfolder}/curl -s -L ${kubectl_uri} -o ${binfolder}/kubectl",
  creates => "${binfolder}/kubectl",
} ->
file { "${binfolder}/kubectl":
  mode   => '0111',
}

# $minikube_uri = 'https://storage.googleapis.com/minikube/releases/v0.23.0/minikube-linux-amd64'
#
# exec { 'download minikube':
#   command => "${binfolder}/curl -s -L ${minikube_uri} -o ${binfolder}/minikube",
#   creates => "${binfolder}/minikube",
# } ->
# file { "${binfolder}/minikube":
#   mode   => '0111',
# }
