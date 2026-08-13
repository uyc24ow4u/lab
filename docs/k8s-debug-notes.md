# K8s Debug Notes

Quick reference for common cluster issues.

## CrashLoopBackOff

- Check logs: `kubectl logs <pod> --previous`
- Verify resource limits: `kubectl describe pod <pod>`

## ImagePullBackOff

- Confirm image name/tag in deployment
- Test pull locally: `docker pull <image>`

## Node NotReady

- `kubectl get nodes -o wide`
- SSH to node, check kubelet: `systemctl status kubelet`

## PersistentVolume stuck

- `kubectl get pv,pvc`
- Check reclaim policy and finalizers

Always start with `kubectl get events --sort-by=.lastTimestamp`.
