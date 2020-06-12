mkdir osm_motorway osm_trunk osm_primary osm_secondary osm_tertiary osm_stream osm_river osm_railway osm_track osm_path osm_other_roads
#osm_industrial osm_town osm_forest osm_golfcourse osm_commercial osm_sand osm_construction osm_lake osm_meadow osm_scrub osm_landmass osm_dump osm_grassland osm_lava osm_rock osm_airport
#ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_motorway/osm_motorway.shp greenland_lines.shp
#ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_trunk/osm_trunk.shp greenland_lines.shp
#ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_motorwaylink.shp greenland_lines.shp
#ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_trunklink.shp greenland_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_primary.shp greenland_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primary_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_primary_link.shp greenland_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_secondary.shp greenland_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_secondarylink.shp greenland_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'tertiary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_tertiary.shp greenland_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "( highway ILIKE '%residential%' OR  highway ILIKE '%service%' OR  highway ILIKE '%unclassified%' ) AND NOT other_tags LIKE '%bridge%' AND NOT other_tags LIKE '%tunnel%'" osm_other_roads/osm_other_roads.shp greenland_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway ILIKE '%track%' AND NOT other_tags LIKE '%bridge%' AND NOT other_tags LIKE '%tunnel%'" osm_track/osm_track.shp greenland_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where " ( highway ILIKE '%path%' OR highway ILIKE '%footway%'  ) AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_path/osm_path.shp greenland_lines.shp


ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'stream'" osm_stream/osm_stream.shp greenland_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'river'" osm_river/osm_river.shp greenland_lines.shp

ogr2ogr -f "ESRI Shapefile"  -where "other_tags LIKE '%railway%'" osm_railway/osm_railway.shp greenland_lines.shp

#ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'industrial'" osm_industrial/osm_industrial.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'commercial'" osm_commercial/osm_commercial.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'residential'" osm_town/osm_town.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'forest'" osm_forest/osm_forest.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'wood'" osm_forest/osm_forest.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'golf_course'" osm_golfcourse/osm_golfcourse.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'beach'" osm_sand/osm_beach.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'construction'" osm_construction/osm_costruction.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'water'" osm_lake/osm_lake.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'meadow'" osm_meadow/osm_meadow.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'landfill'" osm_dump/osm_landfill.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'scrub'" osm_scrub/osm_scrub.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'bare_rock'" osm_rock/osm_barerock.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'grassland'" osm_grassland/osm_grassland.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'lava'" osm_lava/osm_lava.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "aeroway = 'aerodrome'" osm_airport/osm_airport.shp greenland_polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'coastline' OR place = 'island' OR place = 'islet'" osm_landmass/osm_landmass.shp greenland_polygons.shp
