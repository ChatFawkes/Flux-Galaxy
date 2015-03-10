# Declare variables
val elevator = <OpenBlocks:elevator>;
val slimeball = <ore:slimeball>;
val travelanchor = <EnderIO:blockTravelAnchor>;
val levitator = <Thaumcraft:blockLifter>;
val tank = <OpenBlocks:tank>;

# Change recipe for Elevator
recipes.remove(elevator);
recipes.addShaped(elevator,
 [[<ore:dyeWhite>, slimeball, <ore:dyeWhite>],
  [<ore:blockCloth>, travelanchor, <ore:blockCloth>],
  [<ore:dyeWhite>, levitator, <ore:dyeWhite>]]);
elevator.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
elevator.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Travel Anchor"));
elevator.addShiftTooltip(format.darkPurple("and ") + format.yellow("Arcane Levitator"));

# Change recipe for Tank to output 1 tank instead of 2
recipes.remove(tank);
recipes.addShaped(tank,
 [[<minecraft:obsidian:*>, <minecraft:glass_pane:*>, <minecraft:obsidian:*>],
  [<minecraft:glass_pane:*>, <minecraft:glass_pane:*>, <minecraft:glass_pane:*>],
  [<minecraft:obsidian:*>, <minecraft:glass_pane:*>, <minecraft:obsidian:*>]]);