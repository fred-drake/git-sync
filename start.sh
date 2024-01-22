#!/bin/sh

repo=${GIT_REPO:?}
branch=${GIT_BRANCH:-master}
subdir=${GIT_SUBDIR:-.}
seconds=${GIT_SECONDS:-180}

echo "Starting"
mkdir -p /sync
git clone --depth 1 -b $branch $repo /repo
cd /repo
while true; do
	echo "Pulling and syncing..."
	git pull
	rsync -a ${subdir}/* /sync
	sleep ${seconds}
done
