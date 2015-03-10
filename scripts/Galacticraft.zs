# Define variables
val basicsolar = <GalacticraftCore:tile.solar:0>;
val advsolar = <GalacticraftCore:tile.solar:4>;
val copper = <ThermalFoundation:material:64>;
val tin = <ThermalFoundation:material:65>;
val aluminum = <TConstruct:materials:11>;
val steel = <Railcraft:ingot>;
val bronze = <Forestry:ingotBronze>;
val bronze2 = <TConstruct:materials:13>;
val bronze3 = <ThermalFoundation:material:73>;
val bronze4 = <Mekanism:Ingot:2>;
val iron = <minecraft:iron_ingot>;
val metiron = <GalacticraftCore:item.meteoricIronIngot>;
val lunarium = <InterstellarOres:materialLunarium:0>;
val desh = <GalacticraftMars:item.null:2>;
val titanium = <GalacticraftMars:item.itemBasicAsteroids:5>;
val copperplate = <GalacticraftCore:item.basicItem:6>;
val tinplate = <GalacticraftCore:item.basicItem:7>;
val aluminumplate = <GalacticraftCore:item.basicItem:8>;
val steelplate = <GalacticraftCore:item.basicItem:9>;
val bronzeplate = <GalacticraftCore:item.basicItem:10>;
val ironplate = <GalacticraftCore:item.basicItem:11>;
val metironplate = <GalacticraftCore:item.meteoricIronIngot:1>;
val lunariumplate = <InterstellarOres:materialLunarium:1>;
val deshplate = <GalacticraftMars:item.null:5>;
val titaniumplate = <GalacticraftMars:item.itemBasicAsteroids:6>;
val tier1plate = <GalacticraftCore:item.heavyPlating>;
val tier2plate = <GalacticraftMars:item.null:3>;
val tier3plate = <GalacticraftMars:item.itemBasicAsteroids>;
val basicwafer = <GalacticraftCore:item.basicItem:13>;
val advwafer = <GalacticraftCore:item.basicItem:14>;
val redalloy = <EnderIO:itemAlloy:3>;

# Remove recipe for Basic Solar Panel
recipes.remove(basicsolar);
mods.nei.NEI.hide(basicsolar);

# Remove recipe for Advanced Solar Panel
recipes.remove(advsolar);
mods.nei.NEI.hide(advsolar);

# Remove recipes for Compressor and Electric Compressor
recipes.remove(<GalacticraftCore:tile.machine:12>);
recipes.remove(<GalacticraftCore:tile.machine2>);
mods.nei.NEI.hide(<GalacticraftCore:tile.machine:12>);
mods.nei.NEI.hide(<GalacticraftCore:tile.machine2>);

# Remove recipe for Circuit Fabricator
recipes.remove(<GalacticraftCore:tile.machine2:4>);
mods.nei.NEI.hide(<GalacticraftCore:tile.machine2:4>);

# Add Rolling Machine recipes for Compressed Metals
mods.railcraft.Rolling.addShaped(aluminumplate, [[aluminum, aluminum]]);                                        # Compressed Aluminum
mods.railcraft.Rolling.addShaped(bronzeplate, [[bronze, bronze]]);                                              # Compressed Bronze
mods.railcraft.Rolling.addShaped(bronzeplate, [[bronze2, bronze2]]);                                            # Compressed Bronze
mods.railcraft.Rolling.addShaped(bronzeplate, [[bronze3, bronze3]]);                                            # Compressed Bronze
mods.railcraft.Rolling.addShaped(bronzeplate, [[bronze4, bronze4]]);                                            # Compressed Bronze
mods.railcraft.Rolling.addShaped(metironplate, [[metiron, metiron]]);                                           # Compressed Meteoric Iron
mods.railcraft.Rolling.addShaped(lunariumplate, [[lunarium, lunarium]]);                                        # Compressed Lunarium
mods.railcraft.Rolling.addShaped(deshplate, [[desh, desh]]);                                                    # Compressed Desh
mods.railcraft.Rolling.addShaped(titaniumplate, [[titanium, titanium]]);                                        # Compressed Titanium
mods.railcraft.Rolling.addShaped(tier1plate, [[steelplate, aluminumplate, bronzeplate],
 [steelplate, aluminumplate, bronzeplate]]);                                                                    # Heavy-Duty Plate Tier 1
mods.railcraft.Rolling.addShaped(tier2plate, [[tier1plate, metironplate, lunariumplate]]);                      # Heavy-Duty Plate Tier 2
mods.railcraft.Rolling.addShaped(tier3plate, [[tier2plate, deshplate, deshplate]]);                             # Heavy-Duty Plate Tier 3

# Add shapeless Railcraft Plates -> Compressed Metals (Cheaper than original amount)
recipes.addShapeless(ironplate, [<Railcraft:part.plate>, <Railcraft:part.plate>]);                              # Compressed Iron
recipes.addShapeless(steelplate, [<Railcraft:part.plate:1>, <Railcraft:part.plate:1>]);                         # Compressed Steel
recipes.addShapeless(tinplate, [<Railcraft:part.plate:2>, <Railcraft:part.plate:2>]);                           # Compressed Tin
recipes.addShapeless(copperplate, [<Railcraft:part.plate:3>, <Railcraft:part.plate:3>]);                        # Compressed Copper

# Add Metallurgic Infuser recipes for Wafers
mods.mekanism.Infuser.addRecipe("DIAMOND", 20, redalloy * 2, basicwafer);                                       # Basic Wafer (uses Diamond)
mods.mekanism.Infuser.addRecipe("OBSIDIAN", 20, redalloy * 2, advwafer);                                        # Advanced Wafer (uses Obsidian)
