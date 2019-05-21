# docker-duplicity

Perform a [duplicity](http://duplicity.nongnu.org/) backups.

## Usage
```
docker run -it \
  --name=duplicity \
  --env TZ="America/Edmonton" \
  --volume <path to data>:/backups/ \
  radpenguin/duplicity
```

## Parameters
The parameters are split into two halves, separated by a colon, the left hand side representing the host and the right the container side. 
```
--volume <path to data>:/backups - We'll backup what's in /backup by default.
```

It is based on alpine linux. For shell access while the container is running, `docker exec -it duplicity /bin/bash`.

See [duplicity man page](http://duplicity.nongnu.org/duplicity.1.html) for syntax and additional options.
