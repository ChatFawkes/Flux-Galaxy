# Define variables
val tesseract = <ThermalExpansion:Tesseract>;
val enderium = <ThermalFoundation:material:76>;
val dimtrans = <EnderIO:blockTransceiver>;
val deshingot =  <GalacticraftMars:item.null:2>;
val tessframe = <ThermalExpansion:Frame:7>;
val hardglass = <ThermalExpansion:Glass>;
val basicframe = <ThermalExpansion:Frame>;
val steel = <ore:ingotSteel>;
val glass = <ore:blockGlass>;
val tingear = <ore:gearTin>;
val salt = <harvestcraft:saltItem>;
val tankReinforced = <ore:tankReinforced>;

# Add oredict entry for Reinforced Portable Tank
tankReinforced.add(<ThermalExpansion:Tank:3>);

# Change recipe for Tesseract Frame (Empty) # Uses Desh which is obtained on Mars
recipes.remove(tessframe);
recipes.addShaped(tessframe,
 [[enderium, deshingot, enderium],
  [hardglass, <minecraft:diamond>, hardglass],
  [enderium, hardglass, enderium]]);
tessframe.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
tessframe.addShiftTooltip(format.darkPurple("Requires materials"));
tessframe.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

# Add recipe for Tesseract using Dimensional Transceiver # Uses Desh which is obtained on Mars
recipes.addShaped(tesseract,
 [[null, deshingot, null],
  [enderium, dimtrans, enderium],
  [null, enderium, null]]);
tesseract.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
tesseract.addShiftTooltip(format.darkPurple("Requires materials"));
tesseract.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));
  
# Change recipe for Basic Machine Frame to use Steel
recipes.remove(basicframe);
recipes.addShaped(basicframe,
 [[steel, glass, steel],
  [glass, tingear, glass],
  [steel, glass, steel]]);
basicframe.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
basicframe.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Steel Ingots"));