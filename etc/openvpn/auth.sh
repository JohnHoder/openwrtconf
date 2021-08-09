#!/bin/ash

userpass=`cat $1`
password=`echo 1337code`

if [ "$password" = "$userpass" ]
then
	exit 0
fi

echo "ok"
exit 0

