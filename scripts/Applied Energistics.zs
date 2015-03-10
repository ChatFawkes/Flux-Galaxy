# Defined Variables
val calcpress = <appliedenergistics2:item.ItemMultiMaterial:13>;
val engpress = <appliedenergistics2:item.ItemMultiMaterial:14>;
val logipress = <appliedenergistics2:item.ItemMultiMaterial:15>;
val silipress = <appliedenergistics2:item.ItemMultiMaterial:19>;
val metironplate = <GalacticraftCore:item.meteoricIronIngot:1>;
val purecertus = <appliedenergistics2:item.ItemMultiMaterial:10>;
val gold = <ore:ingotGold>;
val diamond = <minecraft:diamond>;
val silicon = <EnderIO:itemMaterial>;
val mecontroller = <appliedenergistics2:tile.BlockController>;
val skystone = <appliedenergistics2:tile.BlockSkyStone:1>;
val purefluix = <appliedenergistics2:item.ItemMultiMaterial:12>;
val deshplate = <GalacticraftMars:item.null:5>;
val lunariumplate = <InterstellarOres:materialLunarium:1>;

# Make recipe for Calculation (Pure Certus) Press
recipes.addShaped(calcpress,
 [[metironplate, lunariumplate, metironplate],
  [lunariumplate, purecertus, lunariumplate],
  [metironplate, lunariumplate, metironplate]]);
calcpress.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
calcpress.addShiftTooltip(format.darkPurple("Requires materials"));
calcpress.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));
  
# Make recipe for Engineering (Diamond) Press
recipes.addShaped(engpress,
 [[metironplate, lunariumplate, metironplate],
  [lunariumplate, diamond, lunariumplate],
  [metironplate, lunariumplate, metironplate]]);
engpress.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
engpress.addShiftTooltip(format.darkPurple("Requires materials"));
engpress.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));
  
# Make recipe for Logic (Gold) Press
recipes.addShaped(logipress,
 [[metironplate, lunariumplate, metironplate],
  [lunariumplate, gold, lunariumplate],
  [metironplate, lunariumplate, metironplate]]);
logipress.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
logipress.addShiftTooltip(format.darkPurple("Requires materials"));
logipress.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));  

# Make recipe for Silicon Press
recipes.addShaped(silipress,
  [[metironplate, lunariumplate, metironplate],
  [lunariumplate, silicon, lunariumplate],
  [metironplate, lunariumplate, metironplate]]);
silipress.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
silipress.addShiftTooltip(format.darkPurple("Requires materials"));
silipress.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));  
  
# Change recipe for ME Controller (uses Desh from Mars)
recipes.remove(mecontroller);
recipes.addShaped(mecontroller,
 [[skystone, purefluix, skystone],
  [purefluix, deshplate, purefluix],
  [skystone, purefluix, skystone]]);
mecontroller.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
mecontroller.addShiftTooltip(format.darkPurple("Requires materials"));
mecontroller.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));
