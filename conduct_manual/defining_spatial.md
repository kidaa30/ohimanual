# Defining spatial boundaries

Defining spatial boundaries for the study area and all regions is a very important step in the assessment process. Boundary definitions should match the purpose of the assessment and be informed by the scale at which information is available. **It is possible to redefine the spatial boundaries for your study area and regions.** The boundaries displayed in your WebApp** are provided by default using subcountry region definitions from Global Administrative Areas (GADM: www.gadm.org).

Having regions appropriately defined is important for your assessment because tabular data are often repo
Tabular and spatial data, clipping.

<!---BB's clipping fig--->

<!---fig of clipping spatial data--->

There is no limit to the number of regions that can exist within the study area; the size and number are only constrained by data availability and the utility of having scores calculated for a particular region. Although it is possible to assess only one region in the study area (i.e. the region is the assessment area, this might not be ideal because it eliminates the possibility of making comparisons or identifying geographic priorities within the study area.

## Drawing spatial boundaries

**Spatial boundaries must be drawn with geographic information system (GIS) mapping software** such as ArcGIS, QGIS, or GRASS. You will need someone with GIS skills to create a **shapefile** that will be used by the Toolbox to display your information. The shapefile will also be used to extract information for each of your defined regions when data are reported in raster format for a different area. For more information see https://en.wikipedia.org/wiki/Geographic_information_system and  http://en.wikipedia.org/wiki/Shapefile.

Regions must be unique (non-overlapping), and boundaries must be drawn offshore, extending to the exclusive economic zone (EEZ) edge in most cases. Offshore boundaries should be made with spatial methods in order to extend boundaries from those designated on land. One possible method is to create boundaries with Thiessen Polygons, and we provide a Python script that can be used, but it requires ArcGIS. The Python script and further details can be found at http://ohi-science.org/pages/create_regions.html. Using Thiessen Polygons, offshore boundaries are created with the following steps.

1. Start with land-based boundaries
2. Draw offshore buffers for each region  
3. But the buffers overlap
4. For the Thiessen Polygon approach, the overlap is divided
5. To produce the borders between the regions
![image](https://docs.google.com/drawings/d/17qXZ8Ah6WPYhP1_RQOsIA5gHBNlP8mGAFcDIxkizM58/pub?w=960&h=720)


### Updating the map in your WebApp

**Once you have created your boundaries with GIS software, you will need to send them to us.** Please send us a .zip file of all files produced. Files with the following extensions are required (but you can send all files):

- `.dbf`
- `.shp`
- `.shx`
- `.prj`

The `.dbf` file needs the following in its attribute table:

- **rgn_id** (unique numeric region identifier)
- **rgn_name** (unique named region identifier)
- **area_km2** or **area_hectare** (area in km2 or hectares)

Note that we can send you the shapefiles used to create your WebApp if you would like to modify them.

<!---From Mel: I just looked at what R produces for shapefiles, and it is: .dbf, .prj, .shp, .shx
shp = boundaries
dbf = database (attribute table)
prj = projection information
not sure what shx is....
So I am guessing that is all that is really needed.--->

### Buffers

When drawing your regions, it is also a good idea to create inland and offshore buffers that will be used to extract data in your assessment. For example, the global assessment used coastal population information, and raster data were available for entire countries. This meant that 'coastal' had to be defined: for global assessments it was defined as 25 miles from the coast. To extract just the coastal population from the population raster file, we created a 25 mile inland buffer for each reporting region. But to extract mangrove data for each region from raster files, global assessments used 1km inland and 1km offshore as the buffer.  

At this point, you may not know which buffers you will need, as they depend on the data available, your goal models and definitions. Some buffers used in the global assessments were 1 km inland, 25 miles inland, 1km offshore, 3 nm offshore.


<!---these aren't necessary for the WebApp but they will be important for later analyses--->

## Steps to change spatial boundaries






But if not, you'll have to do the following steps with the help of a spatial analyst.

ArcGIS, QGIS, R.


One of the first steps of performing a regional Ocean Health Index analysis is determining the boundaries for the reporting regions.  This is important because all data, analyses, and results will be at this spatial scale.

It is important to think about which spatial regions to use when conducing your assessment. You should consider some of the questions from the planning phase before you begin to involve GIS or other spatial analysts. If managers or policy makers are going to be involved, at what scale do they work? Where are the political and administrative boundaries in your area? How will political boundaries affect your ability to gather and discover data and indicators? Will the regions change in the future? These questions are important for the future relevance of the assessment.

There are several spatial considerations you should have prepared before moving forward with the Toolbox later the process. One is your map definitions for use in the assessment itself and for display in the WebApps. You must check the definitions of your map regions and boundaries even when they have been pre-prepared for you the default OHI Toolbox setup. You should have your spatial analyst prepare the files that best suit your needs. If political boundaries are not appropriate in all areas, there might be other boundaries like biomes or biogeographic considerations you can use. These may be useful when there are disputed territories or undefined border regions in your area.

> Note that the OHI+ tools do not intend to take a stance on disputed territories. The boundaries defer to the judgment of the original map data providers. It is up to you to decide on the quality of the maps.

You may need to prepare spatial data files for your assessment. Not all goals will require spatial data. When considering it, you should be conscientious of how it is presented: is it in square kilometers, or by a kind of region such as an EEZ or other identifier? Do you have better local data than global satellite or modeled data?
