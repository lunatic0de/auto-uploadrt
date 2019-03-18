
for site in $(cat $1); do
if [[ $(curl -s $site | grep -o '0byteV2 - PHP Backdoor') =~ '0byteV2 - PHP Backdoor' ]];
   then
    printf "[ FOUND BOS ANDRE ! :) ] \n"
    echo "$site" | tee -a live-0bytsse.txt
    else
    printf "$site [ SERVER GOBLOG 404 ] \n"
    fi
   done
    
