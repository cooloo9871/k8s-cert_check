## This script is used to check the expiration time of k8s certificate for rke, rke2.

```
$ git clone https://github.com/cooloo9871/k8s-certcheck.git;cd k8s-certcheck/
```
### check rke2 master
```
$ sudo ./certcheck.sh
client-admin.crt:              Nov  7 05:48:02 2024 GMT
client-auth-proxy.crt:         Nov  7 05:48:02 2024 GMT
client-ca.crt:                 Nov  5 05:48:02 2033 GMT
client-ca.nochain.crt:         Nov  5 05:48:02 2033 GMT
client-controller.crt:         Nov  7 05:48:02 2024 GMT
client-kube-apiserver.crt:     Nov  7 05:48:02 2024 GMT
client-kube-proxy.crt:         Nov  7 05:48:02 2024 GMT
client-rke2-cloud-controller.crt: Nov  7 05:48:02 2024 GMT
client-rke2-controller.crt:    Nov  7 05:48:02 2024 GMT
client-scheduler.crt:          Nov  7 05:48:02 2024 GMT
client-supervisor.crt:         Nov  7 05:48:02 2024 GMT
request-header-ca.crt:         Nov  5 05:48:02 2033 GMT
server-ca.crt:                 Nov  5 05:48:02 2033 GMT
server-ca.nochain.crt:         Nov  5 05:48:02 2033 GMT
serving-kube-apiserver.crt:    Nov  7 05:48:02 2024 GMT
client-ca.crt:                 Nov  5 05:48:02 2033 GMT
client-kubelet.crt:            Feb 20 00:03:08 2025 GMT
client-kube-proxy.crt:         Nov  7 05:48:02 2024 GMT
client-rke2-controller.crt:    Nov  7 05:48:02 2024 GMT
server-ca.crt:                 Nov  5 05:48:02 2033 GMT
serving-kubelet.crt:           Feb 20 00:03:08 2025 GMT
```
### check rke2 worker
```
$ sudo ./certcheck.sh
client-ca.crt:                 Sep  2 06:07:14 2033 GMT
client-kubelet.crt:            Feb 20 01:53:24 2025 GMT
client-kube-proxy.crt:         Feb 20 01:51:59 2025 GMT
client-rke2-controller.crt:    Feb 20 01:51:59 2025 GMT
server-ca.crt:                 Sep  2 06:07:14 2033 GMT
serving-kubelet.crt:           Feb 20 01:53:24 2025 GMT
```
### check rke master
```
$ sudo ./check.sh
kube-apiserver.pem:            Feb 18 01:30:32 2034 GMT
kube-apiserver-proxy-client.pem: Feb 18 01:30:35 2034 GMT
kube-apiserver-requestheader-ca.pem: Nov 24 04:08:20 2033 GMT
kube-ca.pem:                   Nov 24 04:08:20 2033 GMT
kube-controller-manager.pem:   Feb 18 01:30:33 2034 GMT
kube-etcd-192-168-11-70.pem:   Feb 18 01:30:37 2034 GMT
kube-etcd-192-168-11-72.pem:   Feb 18 01:30:37 2034 GMT
kube-etcd-192-168-11-73.pem:   Feb 18 01:30:36 2034 GMT
kube-node.pem:                 Feb 18 01:30:35 2034 GMT
kube-proxy.pem:                Feb 18 01:30:34 2034 GMT
kube-scheduler.pem:            Feb 18 01:30:34 2034 GMT
kube-service-account-token.pem: Nov 24 04:08:21 2033 GMT
```
### check rke worker
```
$ sudo ./certcheck.sh
kube-ca.pem:                   Feb 18 09:21:23 2034 GMT
kube-node.pem:                 Feb 18 09:21:25 2034 GMT
kube-proxy.pem:                Feb 18 09:21:25 2034 GMT
```
