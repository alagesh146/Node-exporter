for i in `cat list`
do

echo scanning $i
export OUTP=$(grep $i serverlist-excel)
if [ -z "$OUTP" ]
then
      echo "$i NOT_FOUND" >> host_scan_result
else
#      echo "\$var is NOT empty"
 echo $OUTP >> host_scan_result
fi
done
