ssh-keyscan -H 10.85.8.146 >> ~/.ssh/known_hosts
virsh pool-define-as mypool --type dir --target /var/lib/libvirt/storage
virsh pool-start mypool
virsh pool-autostart mypool
terraform apply

On Ubuntu distros SELinux is enforced by qemu even if it is disabled globally, this might cause unexpected `Could not open '/var/lib/libvirt/images/<FILE_NAME>': Permission denied` errors. Double check that `security_driver = "none"` is uncommented in `/etc/libvirt/qemu.conf` and issue `sudo systemctl restart libvirt-bin` to restart the daemon

 ssh-keygen

 id_rsa
 id_rsa.pub to host's /root/.ssh/authorized_keys 
 
 
 
 
 
 
 
 ssh -i /root/.ssh/id_rsa root@vm

