

all:
		fpc -Mtp tpoop.pas
		fpc -Mobjfpc objfpcoop.pas
		fpc -Mobjfpc -Madvancedrecords advrecoop.pas
		fpc -Mobjfpc -Madvancedrecords test_advrecoop.pas
		fpc -Miso isooop.pas
