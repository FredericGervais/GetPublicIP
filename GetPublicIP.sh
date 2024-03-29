AMAZON=$(curl -s https://checkip.amazonaws.com)
CISCO=$(dig +short myip.opendns.com @resolver1.opendns.com)
GOOGLE=$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}')
DUCKDUCKGO=$(curl -s "https://api.duckduckgo.com/?q=ip&format=json" | grep -oP '\d+.\d+.\d+.\d+')
ICANHAZIP=$(curl -s icanhazip.com)
TORPROJECT=$(curl -s https://check.torproject.org/ | grep -oP '\d+.\d+.\d+.\d+')

cat << EndOfMessage
Here is your Public IP according to these organisations
-------------------------------------------------------
AMAZON     = $AMAZON
CISCO      = $CISCO
GOOGLE     = $GOOGLE
DUCKDUCKGO = $DUCKDUCKGO
ICANHAZIP  = $ICANHAZIP
TORPROJECT = $TORPROJECT
EndOfMessage
