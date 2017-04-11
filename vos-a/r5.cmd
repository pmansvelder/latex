## R.5	Weblogic rollback deploy vorige versie  
  weblogic$ cd $VORIGERELEASE/<component>/vostools-deploy/bin
Installeer topics/queues/bridges (alleen voor EE5 component)
  weblogic$ ./run.sh configJMS.py -d $PLATFORMCONF --install --all
Deploy de vorige versie
  weblogic$ ./run.sh configEAR.py -d $PLATFORMCONF --deploy

