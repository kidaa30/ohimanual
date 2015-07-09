---
title: Drawing spatial boundaries
---

**Spatial boundaries must be drawn with geographic information system (GIS) mapping software** such as ArcGIS, QGIS, or GRASS. You will need someone with GIS skills to create a **shapefile** that will be used by the Toolbox to display your information. The shapefile will also be used to extract information for each of your defined regions when data are reported in raster format for a different area. 

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

