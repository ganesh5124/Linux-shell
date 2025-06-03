## Fetch Vpc Information of given regions

#!/bin/bash
# if [ $# -ge 0 ]; then
#     REGIONS=$@
#     echo "Fetching VPC information for regions: $REGIONS"
#     for REGION in $REGIONS; do
#         echo "Fetching VPCs in region: $REGION"
#         aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId" -r
#     done
# else
#     echo "No regions provided. Please provide at least one region."
#     echo "Usage: $0 <region1> <region2> ..."
#     exit 1
# fi

NAME=HELLOWORLD


for i in {0..${#NAME}}; do
  echo ${NAME:$i:1}  # Prints one character at a time
done