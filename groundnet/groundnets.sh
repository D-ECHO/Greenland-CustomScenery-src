cd groundnet
if [ $1 = "big" ]
then
	for i in ../data/airports/big_airports/*.dat; do cp $i .; rm apt.dat; mv *.dat apt.dat; python aptdat2sqlite.py; python sqlite2xml.py; done
else
	for i in ../data/airports/region$1/*.dat; do cp $i .; rm apt.dat; mv *.dat apt.dat; python aptdat2sqlite.py; python sqlite2xml.py; done
fi
cp -r Airports ../output/
