test -d /tmp/raw || mkdir /tmp/raw
test -d /tmp/tagged || mkdir /tmp/tagged
perl -p -e 's|\$([A-Z_]+)|${ENV{$1}}|eg' /root/lftp.cmds.tpl > /root/lftp.cmds
while :
do
    cd /root
    /usr/bin/get_iplayer --refresh --pvr 
    cd /tmp/raw
    # ~/conversion.pl *.ts 
    # rm *.ts
    # cd ../tagged
    lftp -f /root/lftp.cmds 
    sleep 86400
done
