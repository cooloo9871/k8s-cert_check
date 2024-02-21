## This script is used to check the expiration time of k8s certificate for rke, rke2.

```
$ git clone https://github.com/cooloo9871/k8s-certcheck.git;cd k8s-certcheck/
```
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
