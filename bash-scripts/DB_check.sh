#! /bin/bash                                               
                                                           
function is_database() {                                   
  sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $1
}                                                          
                                                           
echo database:                                             
read                                                       
if is_database $REPLY                                      
then                                                       
  echo $REPLY exists                                       
else                                                       
  echo $REPLY does not exist                               
fi                                                         