echo [program:storm-$1] | tee -a $SUPERVISORD_CONF/storm-$1.conf
echo command=storm $1 | tee -a $SUPERVISORD_CONF/storm-$1.conf
echo directory=/home/storm | tee -a $SUPERVISORD_CONF/storm-$1.conf
echo autorestart=true | tee -a $SUPERVISORD_CONF/storm-$1.conf
echo user=root | tee -a $SUPERVISORD_CONF/storm-$1.conf
