kubectl-1.9.3 -n demo delete -f rocket.yml -f rocket-pv.yml
kubectl-1.9.3 -n demo delete pvc data-rocket-server-0 data-rocket-server-1 data-rocket-server-2
sleep 5
ssh -A goblin@proximus.ifresearch.org -- ssh -A root@10.10.110.248 -- rm -rf /tmp/pv*
