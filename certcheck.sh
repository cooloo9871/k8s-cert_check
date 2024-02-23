#!/bin/bash

if [[ -d "/var/lib/rancher/rke2/server/tls" ]]; then
  rke2dir="/var/lib/rancher/rke2/server/tls"
  rke2dir2="/var/lib/rancher/rke2/agent"
elif [[ -d "/var/lib/rancher/rke2/agent" ]]; then
  rke2worker="/var/lib/rancher/rke2/agent"
elif [[ -d "/etc/kubernetes/ssl" ]]; then
  rkedir="/etc/kubernetes/ssl"
elif [[ -d "/var/lib/rancher/k3s/server/tls" ]]; then
  k3sdir="/var/lib/rancher/k3s/server/tls"
  k3sdir2="/var/lib/rancher/k3s/agent"
elif [[ -d "/var/lib/rancher/k3s/agent" ]]; then
  k3sworker="/var/lib/rancher/k3s/agent"
fi

if [[ -n "$rke2dir" ]]; then
  # Loop through each .crt file in the directory
  for file in "$rke2dir"/*.crt "$rke2dir2"/*.crt; do
    # Extract the expiry date from the certificate
    expiry=$(openssl x509 -enddate -noout -in "$file" | cut -d= -f 2-)
    # Get the file name without the path
    filename=$(basename "$file")
    # Print the filename and expiry date in a pretty format
    printf "%-30s %s\n" "$filename:" "$expiry"
  done
elif [[ -n "$rke2worker" ]]; then
  for file in "$rke2worker"/*.crt; do
    expiry=$(openssl x509 -enddate -noout -in "$file" | cut -d= -f 2-)
    filename=$(basename "$file")
    printf "%-30s %s\n" "$filename:" "$expiry"
  done
elif [[ -n "$rkedir" ]]; then
  for file in $(ls "$rkedir"/*.pem | grep -v key); do
    expiry=$(openssl x509 -enddate -noout -in "$file" | cut -d= -f 2-)
    filename=$(basename "$file")
    printf "%-30s %s\n" "$filename:" "$expiry"
  done
elif [[ -n "$k3sdir" ]]; then
  for file in "$k3sdir"/*.crt "$k3sdir2"/*.crt; do
    expiry=$(openssl x509 -enddate -noout -in "$file" | cut -d= -f 2-)
    filename=$(basename "$file")
    printf "%-30s %s\n" "$filename:" "$expiry"
  done
else
  for file in "$k3sworker"/*.crt; do
    expiry=$(openssl x509 -enddate -noout -in "$file" | cut -d= -f 2-)
    filename=$(basename "$file")
    printf "%-30s %s\n" "$filename:" "$expiry"
  done
fi
