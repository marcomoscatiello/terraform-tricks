# terraform-tricks
Examples of complex terraform operations

## create_objects_from_merged_maps.tf 
Given 2 maps of strings, it merges maps into 1 single map and then creates a map of objects with an output like:

out_maps = [
  {
    "name" = "Black Panther"
    "value" = "Vibranium suit"
  },
  {
    "name" = "Black widow"
    "value" = "Martial Arts"
  },
  {
    "name" = "Captain America"
    "value" = "Sheild"
  },
]

Where the values are taken from the 2 input maps that are merged.