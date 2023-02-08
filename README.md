# Docker Fast Volumes
I am trying to reach maximum performance out of docker for local development on MacOS.

Currently bottleneck is in volumes.

## Examples
- No volumes. `./run.sh vanila remote`. Same as local. But can't edit code with IDE and troubles with [remote IDE in beta](https://www.jetbrains.com/help/go/remote-development-starting-page.html).
- Regular volumes. `./run.sh volume remote`.
  - Very slow.
  - With `virtiofs` a bit faster.
  - Volume parameters like `cache` only increase sync time.
- NFS. `./run.sh nfs remote`. 3 times slower. Close to real time file sync.

## Soultions
- [virtiofs](https://www.docker.com/blog/speed-boost-achievement-unlocked-on-docker-desktop-4-6-for-mac/). States to be fast. In beta. Requires MacOS. Has issues with file ownership.

These tools send files into containers via networking. This means that we have delay between file change on guest and host:
- [Mutagen](https://mutagen.io/). Fast sync. But often got corrupted state.
- [docker-sync](http://docker-sync.io/). Very slow sync.
