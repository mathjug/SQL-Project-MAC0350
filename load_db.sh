#! /bin/sh

cp ./aux/ScriptEP.sql /tmp

sudo -iu postgres bash << EOF
createdb bd_mac0350 
psql
\c bd_mac0350
\i /tmp/ScriptEP.sql
EOF

./aux/output_to_file.sh

sudo -iu postgres psql -d "bd_mac0350"
