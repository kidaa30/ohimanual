## Modifying goals with categories

Several goals have categories that are assessed within them. In global assessments, these goals are:

Goal | Category
-----|---------
NP   | product types
CS   | habitat types
CP   | habitat types
HAB  | habitat types
LIV  | industry sectors
ECO  | industry sectors

These goal categories are identified in the file `config.r` located in the `conf` folder. The Toolbox uses `config.r` to identify the appropriate categories when pressures and resilience dimensions are calculated.

When you open `config.r`, you'll see that the `pressures_components` variable identifies which data layer indicates the category types. For global assessments, the following data layers are used:

Goal | Category         | Pressures Layer in `config.r`
-----|------------------|---------------
NP   | product types    | np_harvest_product_weight
CS   | habitat types    | cs_habitat_extent
CP   | habitat types    | cp_habitat_extent_rank
HAB  | habitat types    | le_sector_weight
LIV  | industry sectors | le_sector_weight
ECO  | industry sectors | hab_presence

If you have modified any of the categories for any goal, you will likely need to update the layer indicated in `config.r` in addition to updating the categories as unique rows in `pressures_matrix.csv`.

### Example 1: Pressures
For example, there are three product types for Natural Products in the China assessment (seasalt, sea chemicals, and sea medicine), differ from those assessed in the global assessments (corals, fish_oil, ornamentals, seaweeds, sponges). To modify this goal in the Toolbox, input layers were updated, saved in the `layers` folder, and registered in `layers.csv`;  the NP function in `functions.r` was updated, and new categories replaced the old in `pressures_matrix.csv`. The only remaining step to finalize the new NP goal is to update `config.r` to ensure it looks for the correct data layer and therefore categories. If you do not update `config.r` before running `calculate_scores.r`, you will get the following warning:


```
Calculating Pressures...
The following components for NP are not in the
aggregation layer np_harvest_product_weight categories
(corals, fish_oil, ornamentals, seaweeds, sponges):
seasalt, sea_chemicals, sea_medicine
```

This message indicates that the `np_harvest_product_weight` layer identifies five categories (corals, fish_oil, ornamentals, seaweeds,
sponges) but the `pressures_matrix.csv` indicates three (seasalt, sea_chemicals, sea_medicine).

To ensure that pressures are calculated correctly for the categories in your assessment, you will need to change the layer identified in `config.r`.

### Example 2: Pressures

More subtle examples of these mismatch between the categories identified in `pressures_matrix.csv` and `config.r` can also occur. For example, after updating the CS layers and goal in the China assessment, the following warning message appeared when running `calculate_scores.r`:

```
Calculating Pressures...
The following components for CS are not in the aggregation layer
cs_extent categories (saltmarshes, seagrasses, mangroves):
mangrove, saltmarsh, seagrass
```

The problem here is that the categories identified in `config.r` (saltmarshes, seagrasses, mangroves) are plural, whereas the categories identified in the pressures matrix (mangrove, saltmarsh, seagrass) are singular, and the Toolbox needs exact matches. To fix this warning, you need to update the pressures matrix with the plural names.


### Example 3: Resilience

For resilience, the proper categories also need to be identified both in `resilience_matrix.csv` and `config.r`. If neither are updated, you will see the following message:

```
Calculating Resilience...
Note: each goal in resilience_matrix.csv
must have at least one resilience field
Based on the following components for NP:
corals
fish_oil
ornamentals
seaweeds
shells
sponges
```

With resilience, if we update only the `resilience_matrix.csv` but not `config.r`, we get the following error message instead of the warning message we saw for pressures above.

```
Based on the following components for NP:
  seasalt
  sea_chemicals
  sea_medicine
Error in subset.default(SelectLayersData(layers, layers = lyrs),
id_num ==  : object 'id_num' not found
In addition: Warning messages:
1: Grouping rowwise data frame strips rowwise nature
2: In left_join_impl(x, y, by$x, by$y) :
  joining factors with different levels, coercing to character vector
  ```

This error can be fixed by updating `config.r` with a layer identifying the appropriate categories. NOTE: the file identified in `config.r` cannot contain any NA values.  
