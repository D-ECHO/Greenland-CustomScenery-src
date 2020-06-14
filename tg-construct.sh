case $1 in
	1) geo='--min-lon=-53 --max-lon=-50 --min-lat=63.5 --max-lat=64.7';; # Nuuk (BGGH)		(test region)
	2) geo='--min-lon=-51 --max-lon=-50 --min-lat=66.5 --max-lat=67.5';; #Kangerlussuaq (BGSF)	(test region)
	3) geo='--min-lon=-74 --max-lon=-11 --min-lat=78 --max-lat=84';; #northern part (almost no airports, no cities)
	4) geo='--min-lon=-49 --max-lon=-30 --min-lat=69 --max-lat=78';; #inner, glacier part (almost no airports, no cities)
	5) geo='--min-lon=-49 --max-lon=-43 --min-lat=62 --max-lat=69';; #southern inner, glacier part (almost no airports, no cities)
	6) geo='--min-lon=-17 --max-lon=-16 --min-lat=81 --max-lat=82';; # (part of 3): Station Nord (BGNO)
	7) geo='--min-lon=-48 --max-lon=-42 --min-lat=59 --max-lat=62';; # South Region: (west to east, north to south): 
				#Qassimiut (BGQT), Narsaq (BGNS), Qaqortok (BGJH), Eqalugaarsuit (BGET),  Narsarsuaq (BGBW), Ammassivik (BGAS), 
				#Alluitsup Paa (BGAP), Nanortalik (BGNN), ?! Nalunaq (BGNL), Tasiusaq (BGTQ), Narsaq Kujalleq (BGFD), Aappilattoq(BGAQ), ?!Ikerasassuaq (BGPC)
				#(BGSO)
	8) geo='--min-lon=-74 --max-lon=-58 --min-lat=74 --max-lat=78';; # Thule Region: (north to south): Siorapaluk Heliport (BGSI), Qaanaaq (BGQQ), Thule AFB (BGTL), Savissivik Heliport (BGSV)
	9) geo='--min-lon=-30 --max-lon=-17 --min-lat=68 --max-lat=78';; # West Coast - Northern Part Region: (north to south): ?!Danmarkshavn (BGDH), Mestersvig (BGMV), Nerlerit Inaat (BGCO), Ittoqqortoormiit Heliport (BGSC)
	10) geo='--min-lon=-43 --max-lon=-30 --min-lat=62 --max-lat=69';; # West Coast - Southern Part Region: (north to south, west to east): (BGTN), ?(BGKM), (BGSG), (BGIS), ?(BGAM), (BGKK)
	11) geo='--min-lon=-52 --max-lon=-48 --min-lat=60 --max-lat=62';; # South-Eastern Region: BGAR, ?!BGGD, ?!"Groennedal Heliport"
	12) geo='--min-lon=-58 --max-lon=-49 --min-lat=69 --max-lat=78';; # East Coast - Northern Part Region: !!BGKQ, !!BGNU, !!BGTA, !!BGIN, BGAG, BGUK, !!BGKS, !!BGKL, !!BGNQ, !!BGLL, !!BGUT, !!BGST, !!BGNT, BGUQ, !!BGUM, !!BGIA, !!BGAT, !!BGSQ, !!BGQE, !!BGGN, BGJN, !!BGIL
	13) geo='--min-lon=-54 --max-lon=-49 --min-lat=62 --max-lat=69';; # East Coast - Southern Part Region: !!BGKT, !!BGCH, (Akunnaq), BGAA, (Iginniarfiq), !!BGIT, !!BGKA, !!BGNK, !!BGIK, !!BGIG, BGSF, BGSS, BGMQ, BGGH, BGPT, !!BGFH
	14) geo='--min-lon=-52.8 --max-lon=-52.7 --min-lat=68.7 --max-lat=68.8';; # only BGAA for test
	15) geo='--min-lon=-53.0 --max-lon=-52.8 --min-lat=65.3 --max-lat=65.5';; # only BGMQ for test
	16) geo='--min-lon=-69.0 --max-lon=-68.5 --min-lat=76.4 --max-lat=76.6';; # only BGTL for test
	17) geo='--min-lon=-56.2 --max-lon=-56.1 --min-lat=72.7 --max-lat=72.8';; # only BGUK for test
esac
echo $1
echo $geo
if [ ! -z "$2" ]  && [ $2 = "light" ]
then
	echo "Light built: Not building Asphalt, Railroad, Strem";
	arg="";
else
	arg="Asphalt Railroad Stream";
fi
tg-construct --work-dir=./work --output-dir=./output/Terrain `echo $geo` --threads=3 --priorities=priorities.txt AirportArea SRTM-3 AirportObj Default Ocean Hole Freeway Road Road-Motorway Road-Trunk Road-Residential Road-Primary Road-Secondary Road-Tertiary Road-Service Road-Pedestrian Road-Steps Road-Unclassified Airport Pond Lake DryLake Reservoir IntermittentLake IntermittentStream Watercourse Canal Cliffs Glacier PackIce PolarIce Ocean Estuary Urban SubUrban Town Fishing Construction Industrial Port Dump FloodLand Lagoon Bog Marsh SaltMarsh Sand Saline Littoral Dirt Rock Lava OpenMining BuiltUpCover Transport Cemetery DryCrop IrrCrop Rice MixedCrop Vineyard Bamboo Mangrove ComplexCrop NaturalCrop CropGrass CropWood AgroForest Olives GolfCourse Greenspace GrassCover Grassland ScrubCover Scrub ShrubGrassCover SavannaCover Orchard DeciduousForest DeciduousBroadCover EvergreenForest EvergreenBroadCover MixedForest RainForest BarrenCover HerbTundra Sclerophyllous Heath Burnt SnowCover Island Default Void Null Unknown River $arg
