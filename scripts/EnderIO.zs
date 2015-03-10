# Define variables
val dimtrans = <EnderIO:blockTransceiver>;
val farmstation = <EnderIO:blockFarmStation>;
val lunarium = <InterstellarOres:materialLunarium:0>;
val lunariumplate = <InterstellarOres:materialLunarium:1>;
val obsidian = <minecraft:obsidian>;
val viballoy = <EnderIO:itemAlloy:2>;
val vibcrystal = <EnderIO:itemMaterial:6>;
val octcap = <EnderIO:itemBasicCapacitor:2>;
val zlogic = <EnderIO:itemFrankenSkull:1>;
val diamond = <minecraft:diamond>;
val metironplate = <GalacticraftCore:item.meteoricIronIngot:1>;
val enchendstone = <HardcoreEnderExpansion:end_stone_terrain:2>;
val endobby = <ExtraUtilities:decorativeBlock1:1>;
val stardust = <HardcoreEnderExpansion:stardust>;
val chassis = <EnderIO:itemMachinePart:0>;
val diamondhoe = <minecraft:diamond_hoe>;

# Change recipe for Dimensional Transceiver
recipes.remove(dimtrans);
recipes.addShaped(dimtrans,
 [[endobby, octcap, endobby],
  [viballoy, stardust, viballoy],
  [endobby, octcap, endobby]]);
dimtrans.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
dimtrans.addShiftTooltip(format.darkPurple("Requires materials"));
dimtrans.addShiftTooltip(format.darkPurple("from ") + format.yellow("The End"));

chassis.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
chassis.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Steel Ingots"));

# Change recipe for Farming Station
recipes.remove(farmstation);
recipes.addShaped(farmstation,
 [[lunariumplate, diamondhoe, lunariumplate],
  [lunariumplate, chassis, lunariumplate],
  [vibcrystal, zlogic, vibcrystal]]);
farmstation.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
farmstation.addShiftTooltip(format.darkPurple("Requires materials"));
farmstation.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

# Add shapeless Enderman head conversion recipe
recipes.addShapeless(<EnderIO:blockEndermanSkull>, [<HardcoreEnderExpansion:enderman_head>]);
recipes.addShapeless(<HardcoreEnderExpansion:enderman_head>, [<EnderIO:blockEndermanSkull>]);