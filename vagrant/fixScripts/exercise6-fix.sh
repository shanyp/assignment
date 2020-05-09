#!/bin/bash
#add fix to exercise6-fix here
if [ $# -lt 2 ]; then
    echo the script should be run with at least two arguments file_to_copy dest_dir
    exit 1
fi

target_server=$([ $HOSTNAME == 'server1' ] && echo "server2" || echo "server1")

echo target_server=$target_server

target_dir=${@: -1}

echo target_dir=$target_dir

ssh $target_server "mkdir -p $target_dir"

size=0

while test ${#} -gt 1
do
  echo copying $1
  file_size=$(stat -c %s $1)
  ((size=size+$file_size))
  scp -q $1 $target_server:$target_dir
  shift
done

echo $size