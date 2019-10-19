AMAZON=$(curl -s https://checkip.amazonaws.com)
CISCO=$(dig +short myip.opendns.com @resolver1.opendns.com)
GOOGLE=$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}')
DUCKDUCKGO=$(curl -s "http://api.duckduckgo.com/?q=ip&format=json" | grep -oP '(?<=Your IP address is )(.*)(?= in )' | sed 's/ .*//')
ICANHAZIP=$(curl -s icanhazip.com)

cat << EndOfMessage
Here is your Public IP according to these organisations
-------------------------------------------------------
AMAZON     = $AMAZON
CISCO      = $CISCO
GOOGLE     = $GOOGLE
DUCKDUCKGO = $DUCKDUCKGO
ICANHAZIP  = $ICANHAZIP
EndOfMessage
