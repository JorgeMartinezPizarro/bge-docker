/etc/init.d/postgresql start
sudo su -c "psql -d postgres -a -f initdb.sql " psql
bitcoin -regtest -daemon
bge start&
bgeapi&

