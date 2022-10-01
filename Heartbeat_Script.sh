apt-get	update
apt-get	install heartbeat
cat << EOF > /etc/heartbeat/ha.cf
logfile /var/log/ha-log
logfacility local0
keepalive 2
deadtime 10
bcast eth0
node nom_serveur1 nom_serveur2
auto_failback no
respawn hacluster /usr/lib/heartbeat/ipfail
apiauth ipfail gid=haclient uid=hacluster
EOF

cat << EOF > /etc/heartbeat/haresources
Nom-de-la-machine IPaddr::adresse_ip/masque/interface
EOF

cat << EOF > /etc/heartbeat/authkeys
auth 3
3 md5 eve
EOF

chmod 600 /etc/heartbeat/authkeys

/etc/init.d/heartbeat stop

update-rc.d -f heartbeat remove

/etc/init.d/heartbeat start
