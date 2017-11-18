
$kubectl_uri = 'https://storage.googleapis.com/kubernetes-release/release/v1.8.3/bin/linux/amd64/kubectl'

exec { 'download kubectl':
  command => "curl -s -L ${kubectl_uri} -o ${boxen::config::bindir}/kubectl",
  creates => "${boxen::config::bindir}/kubectl",
} ->
file { "${boxen::config::bindir}/kubectl":
  mode   => '0111',
}

$minikube_uri = 'https://storage.googleapis.com/kubernetes-release/release/v1.8.3/bin/linux/amd64/kubectl'

exec { 'download minikube':
  command => "curl -s -L ${minikube_uri} -o ${boxen::config::bindir}/minikube",
  creates => "${boxen::config::bindir}/minikube",
} ->
file { "${boxen::config::bindir}/minikube":
  mode   => '0111',
}