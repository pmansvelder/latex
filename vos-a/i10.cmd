## I.10	Deinstalleer EMS Topics en Queues
  weblogic$ cd $RELEASE/<component>/vostools-deploy/bin

Deinstalleer topics/queues/bridges
  weblogic$ ./run.sh configJMS.py -d $PLATFORMCONF --remove --all
  
