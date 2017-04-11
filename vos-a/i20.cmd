## I.20	verwijder deprecated queue's, topic en bridges
  weblogic$ cd $RELEASE/<component>/vostools-deploy/bin
verwijder deprecated topics/queues/bridges
  weblogic$ ./run.sh configJMS.py -d $PLATFORMCONF --clean --all

