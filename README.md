### Build images
```
./build_latest
```

### Run Playbook

```
docker run -it --rm \
  -v ${PWD}:/ansible \
  ansible-alpine:2.6.6 \
  ansible-playbook -i inventory playbook.yml
```
