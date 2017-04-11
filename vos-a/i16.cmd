## I.16  Opschonen EMS Topics en Queues met de oude prefix
  weblogic$ cd $RELEASE/<component>/vostools-deploy/bin

Opschonen deprecated topics/queues/bridges met oude prefix
  weblogic$ ./run.sh configJMS.py -d $PLATFORMCONF --clean --all-oldprefix

Opschonen topics/queues/bridges met oude prefix
  weblogic$ ./run.sh configJMS.py -d $PLATFORMCONF --remove --all-oldprefix

