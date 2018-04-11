# install nmon

# export /pot/perf_share on hadoop2

# cat /etc/exports
/opt/perf_share *(rw,sync,no_root_squash

# mount for nmon share
mkdir -p /home/hadoop/perf_share && mount hadoop2:/opt/perf_share /home/hadoop/perf_share

# nmonchart
cd $(pwd)
files=`ls`
for file in ${files[@]}
do
    if [[ $file =~ .*nmon$ ]]
    nmonchart $file $file.html
done