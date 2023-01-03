#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8b716ff3-6e58-494d-8f54-a540367d78f8"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

