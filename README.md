# Docker Fast Volumes
I am trying to reach maximum performance out of docker for local development on MacOS.

Currently bottleneck is in volumes.

## Examples
- No volumes. `./run.sh vanila remote`. Same as local.
- NFS. `./run.sh nfs remote`. 3 times slower.

## Soultions
These tools send files into containers via networking. This means that we have delay between file change on guest and host:
- [Mutagen](https://mutagen.io/). Fast sync. But often got corrupted state.
- [docker-sync](http://docker-sync.io/). Very slow sync.
