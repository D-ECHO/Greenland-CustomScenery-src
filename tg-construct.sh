case $1 in
	1) geo='--min-lon=-53 --max-lon=-50 --min-lat=63.5 --max-lat=64.7';; # BGGH
	2) geo='--min-lon=-51 --max-lon=-50 --min-lat=66.5 --max-lat=67.5';; #Kangerlussuaq (BGSF)
	3) geo='--min-lon=-74 --max-lon=-11 --min-lat=78 --max-lat=84';; #northern part (almost no airports, no cities)
	4) geo='--min-lon=-49 --max-lon=-30 --min-lat=69 --max-lat=78';; #inner, glacier part (almost no airports, no cities)
	5) geo='--min-lon=-49 --max-lon=-43 --min-lat=62 --max-lat=69';; #southern inner, glacier part (almost no airports, no cities)
	6) geo='--min-lon=-17 --max-lon=-16 --min-lat=81 --max-lat=82';; # (part of 3): Station Nord (BGNO)
	7) geo='--min-lon=-48 --max-lon=-45 --min-lat=59 --max-lat=62';; # Region: (west to east, north to south): 
				#Qassimiut (BGQT), Narsaq (BGNS), Narsarsuaq (BGBW), Nanortalik (BGNN), Alluitsup Paa (BGAP), Qaqortok (BGJH), Eqalugaarsuit (BGET)
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
