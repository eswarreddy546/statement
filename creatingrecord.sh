#!/bin/bash

# Config
ZONE_ID="Z0ABC123XYZ"
RECORD_NAME="www.myexample.com"
IP="54.91.9.231"
TTL=300

echo "Creating DNS record: $RECORD_NAME → $IP"

aws route53 change-resource-record-sets \
  --hosted-zone-id $ZONE_ID \
  --change-batch "{
    \"Changes\": [{
      \"Action\": \"CREATE\",
      \"ResourceRecordSet\": {
        \"Name\": \"$RECORD_NAME\",
        \"Type\": \"A\",
        \"TTL\": $TTL,
        \"ResourceRecords\": [{ \"Value\": \"$IP\" }]
      }
    }]
  }"

if [ $? -eq 0 ]; then
    echo "✅ DNS record created: $RECORD_NAME → $IP"
else
    echo "❌ Failed to create DNS record"
fi
