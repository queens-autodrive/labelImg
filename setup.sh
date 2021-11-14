pyv=$(python -V 2>&1 | grep -Po '(?<=Python )(.+)');

echo ${pyv:2:1};
