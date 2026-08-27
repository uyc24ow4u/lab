# Debugging with Ephemeral Containers

Use `kubectl debug` to add an ephemeral container to a running pod:

```bash
kubectl debug -it <pod> --image=nicolaka/netshoot --target=<container>
```

The `--target` attaches to the container's process namespace. Useful when the main image lacks debugging tools.
