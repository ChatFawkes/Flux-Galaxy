# Define variables
val resizecube = <CompactMachines:resizingcube>;
val resizeinterface = <CompactMachines:interfaceitem>;
val compactmachine0 = <CompactMachines:machine:0>;
val compactmachine1 = <CompactMachines:machine:1>;
val compactmachine2 = <CompactMachines:machine:2>;
val compactmachine3 = <CompactMachines:machine:3>;
val compactmachine4 = <CompactMachines:machine:4>;
val compactmachine5 = <CompactMachines:machine:5>;
val netherstar = <minecraft:nether_star>;
val endercrystal = <EnderIO:itemMaterial:8>;
val moonrock = <GalacticraftCore:tile.moonBlock:4>;
val marsstone = <GalacticraftMars:tile.mars:9>;
val meteoriron = <GalacticraftCore:item.meteoricIronIngot>;
val lunarium = <InterstellarOres:materialLunarium:0>;
val lunariumplate = <InterstellarOres:materialLunarium:1>;
val deshingot = <GalacticraftMars:item.null:2>;
val deshplate = <GalacticraftMars:item.null:5>;
val titaniumingot = <GalacticraftMars:item.itemBasicAsteroids:5>;
val titaniumplate = <GalacticraftMars:item.itemBasicAsteroids:6>;

# Asteroid Rock Ore Dictionary Entry
val asteroidrock = <ore:asteroidRock>;
asteroidrock.add(<GalacticraftMars:tile.asteroidsBlock:0>);
asteroidrock.add(<GalacticraftMars:tile.asteroidsBlock:1>);
asteroidrock.add(<GalacticraftMars:tile.asteroidsBlock:2>);

# Change recipe for World Resizing Cube
recipes.remove(resizecube);
recipes.addShaped(resizecube,
 [[resizeinterface, resizeinterface, null],
  [resizeinterface, lunariumplate, resizeinterface],
  [null, resizeinterface, resizeinterface]]);
resizecube.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
resizecube.addShiftTooltip(format.darkPurple("Requires materials"));
resizecube.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

# Change recipe for Compact Machine 0 (Tiny)
recipes.remove(compactmachine0);
recipes.addShaped(compactmachine0,
 [[moonrock, moonrock, moonrock],
  [moonrock, resizecube, moonrock],
  [moonrock, moonrock, moonrock]]);
compactmachine0.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
compactmachine0.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine0.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

# Change recipe for Compact Machine 1 (Small)
recipes.remove(compactmachine1);
recipes.addShaped(compactmachine1,
 [[meteoriron, lunarium, meteoriron],
  [lunarium, compactmachine0, lunarium],
  [meteoriron, lunarium, meteoriron]]);
compactmachine1.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
compactmachine1.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine1.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

# Change recipe for Compact Machine 2 (Normal Size)
recipes.remove(compactmachine2);
recipes.addShaped(compactmachine2,
 [[marsstone, deshingot, marsstone],
  [deshingot, compactmachine1, deshingot],
  [marsstone, deshingot, marsstone]]);
compactmachine2.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
compactmachine2.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine2.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

# Change recipe for Compact Machine 3 (Big)
recipes.remove(compactmachine3);
recipes.addShaped(compactmachine3,
 [[deshplate, deshplate, deshplate],
  [deshplate, compactmachine2, deshplate],
  [deshplate, deshplate, deshplate]]);
compactmachine3.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
compactmachine3.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine3.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

# Change recipe for Compact Machine 4 (Giant)
recipes.remove(compactmachine4);
recipes.addShaped(compactmachine4,
 [[asteroidrock, titaniumingot, asteroidrock],
  [titaniumingot, compactmachine3, titaniumingot],
  [asteroidrock, titaniumingot, asteroidrock]]);
compactmachine4.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
compactmachine4.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine4.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));

# Change recipe for Compact Machine 5 (Maximum Size)
recipes.remove(compactmachine5);
recipes.addShaped(compactmachine5,
 [[titaniumplate, netherstar, titaniumplate],
  [netherstar, compactmachine4, netherstar],
  [titaniumplate, netherstar, titaniumplate]]);
compactmachine5.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
compactmachine5.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine5.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));