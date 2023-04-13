#TERRAFORM CREATE LIST OF OBJECTS FROM MERGING MAPS
locals {
  map1 = {
    "Ironman"         = "Artificial Intelligence"
    "Captain America" = "Sheild"
    "Hulk"            = "Muscle Power"
    "Black widow"     = "Martial Arts"
    "Thor"            = "Hammer"
    "Spider Man"      = "Web"
    "Black Panther"   = "Vibranium suit"
  }

  map2 = {
    "Gino"  = "uno"
    "Marco" = "due"
  }

  merged_maps = merge(local.map1, local.map2)

  flattened_maps = flatten([
    for g, k in local.merged_maps : [
      { name : g, value : k }
    ]
  ])
}

output "out_maps" {
  value = local.flattened_maps
}
