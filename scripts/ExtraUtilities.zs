# Declare variables
val endquarry = <ExtraUtilities:enderQuarry>;
val quarry = <BuildCraft|Factory:machineBlock>;
val lunarium = <InterstellarOres:materialLunarium:0>;
val desh = <GalacticraftMars:item.null:2>;
val titanium = <GalacticraftMars:item.itemBasicAsteroids:5>;
val endobsidian = <ExtraUtilities:decorativeBlock1:1>;
val endcore = <ExtraUtilities:decorativeBlock1:11>;
val endpump = <ExtraUtilities:enderThermicPump>;
val compmatrix = <ExtraUtilities:decorativeBlock1:12>;
val angelrings = <ExtraUtilities:angelRing:*>;
val angelringi = <ExtraUtilities:angelRing:0>;
val angelringfe = <ExtraUtilities:angelRing:1>;
val angelringfa = <ExtraUtilities:angelRing:2>;
val angelringd = <ExtraUtilities:angelRing:3>;
val angelringg = <ExtraUtilities:angelRing:4>;
val drum = <ExtraUtilities:drum>;
val hwpressureplate = <minecraft:heavy_weighted_pressure_plate>;
val refportabletank = <ThermalExpansion:Tank:3>;
val unstable = <ExtraUtilities:unstableingot>;
val gold = <minecraft:gold_ingot>;
val nstar = <minecraft:nether_star>;
val jetpack = <Mekanism:ArmoredJetpack:1>;
val wing = <EnderIO:itemGliderWing>;
val refcan = <ExtraUtilities:watering_can:3>;
val bedblock = <ExtraUtilities:block_bedrockium>;
val yellowheart = <TConstruct:heartCanister:4>;
val redheart = <TConstruct:heartCanister:2>;
val enderpearl = <minecraft:ender_pearl>;
val redtorch = <minecraft:redstone_torch>;
val redstone = <minecraft:redstone>;
val nquartz = <minecraft:quartz>;
val endtransmitter = <ExtraUtilities:nodeUpgrade:5>;
val endreceiver = <ExtraUtilities:nodeUpgrade:6>;
val meteoriron = <GalacticraftCore:item.meteoricIronIngot>;
val decomptable = <HardcoreEnderExpansion:decomposition_table>;
val ignrock = <HardcoreEnderExpansion:igneous_rock>;
val endpowder = <HardcoreEnderExpansion:end_powder>;
val enderium = <ThermalFoundation:material:76>;
val vibcrystal = <EnderIO:itemMaterial:6>;
val fluxcrystal = <RedstoneArsenal:material:96>;
val voidmetal = <Thaumcraft:ItemResource:16>;
val upgradebase = <ExtraUtilities:enderQuarryUpgrade:0>;
val speedupgrade = <ExtraUtilities:nodeUpgrade:0>;
val stackupgrade = <ExtraUtilities:nodeUpgrade:3>;  
val speed1upgrade = <ExtraUtilities:enderQuarryUpgrade:6>;
val speed2upgrade = <ExtraUtilities:enderQuarryUpgrade:7>;
val speed3upgrade = <ExtraUtilities:enderQuarryUpgrade:8>;
val fortune1upgrade = <ExtraUtilities:enderQuarryUpgrade:3>;
val fortune2upgrade = <ExtraUtilities:enderQuarryUpgrade:4>;
val fortune3upgrade = <ExtraUtilities:enderQuarryUpgrade:5>;
val silktouchupgrade = <ExtraUtilities:enderQuarryUpgrade:2>;
val fortune1pick = <minecraft:iron_pickaxe>.withTag({ench: [{id: 35 as short, lvl: 1 as short}]});
val fortune2pick = <minecraft:golden_pickaxe>.withTag({ench: [{id: 35 as short, lvl: 2 as short}]});
val fortune3pick = <minecraft:diamond_pickaxe>.withTag({ench: [{id: 35 as short, lvl: 3 as short}]});
val silktouchpick = <minecraft:diamond_pickaxe>.withTag({ench: [{id: 33 as short, lvl: 1 as short}]});

# Remove recipe for Ender Transmitter
recipes.remove(endtransmitter);
mods.nei.NEI.hide(endtransmitter);

# Remove recipe for Ender Receiver
recipes.remove(endreceiver);
mods.nei.NEI.hide(endreceiver);

# Change recipe for Ender Quarry
recipes.remove(endquarry);
recipes.addShaped(endquarry,
 [[endobsidian, decomptable, endobsidian],
  [endcore, compmatrix, endcore],
  [endpump, quarry, endpump]]);
# endquarry.addTooltip(format.yellow("-") + format.darkPurple("MineTweaked") + format.yellow("-"));
endquarry.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
endquarry.addShiftTooltip(format.darkPurple("Requires materials"));
endquarry.addShiftTooltip(format.darkPurple("from ") + format.yellow("The End"));
 
# Remove recipes for Angel Rings
recipes.remove(angelrings);

# Add recipe for Angel Ring (Invisible)
recipes.addShaped(angelringi,
 [[vibcrystal, unstable, vibcrystal],
  [voidmetal, jetpack,  voidmetal],
  [titanium, fluxcrystal, titanium]]);

# Add shapeless recipes for other Angel Rings

recipes.addShapeless(angelringfe, [angelringi]);                    # Invisible -> Feathery

recipes.addShapeless(angelringfa, [angelringfe]);                   # Feather -> Fairy

recipes.addShapeless(angelringd, [angelringfa]);                    # Fairy -> Dragon

recipes.addShapeless(angelringg, [angelringd]);                     # Dragon -> Golden

recipes.addShapeless(angelringi, [angelringg]);                     # Golden -> Invisible
angelrings.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
angelrings.addShiftTooltip(format.darkPurple("Requires ingots"));
angelrings.addShiftTooltip(format.darkPurple("from various mods"));

# Add alternative recipe for Reinforced Watering Can
recipes.addShaped(refcan,
 [[bedblock, yellowheart, redheart],
  [bedblock, <minecraft:bowl>, bedblock],
  [null, bedblock, null]]);
refcan.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
refcan.addShiftTooltip(format.darkPurple("Alternate recipe"));
refcan.addShiftTooltip(format.darkPurple("with TiCon hearts"));

# Change recipe for Drum
recipes.remove(drum);
recipes.addShaped(drum,
 [[null, hwpressureplate, null],
  [hwpressureplate, refportabletank, hwpressureplate],
  [null, hwpressureplate, null]]);
drum.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
drum.addShiftTooltip(format.darkPurple("Requires Reinforced"));
drum.addShiftTooltip(format.darkPurple("Portable Tank"));

# Change recipe for Speed 2 Upgrade
recipes.remove(speed2upgrade);
recipes.addShaped(speed2upgrade,
 [[null, speedupgrade, null],
  [lunarium, speed1upgrade, lunarium]]);
speed2upgrade.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
speed2upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
speed2upgrade.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

# Change recipe for Speed 3 Upgrade
recipes.remove(speed3upgrade);
recipes.addShaped(speed3upgrade,
 [[stackupgrade, null, stackupgrade],
  [desh, speed2upgrade, desh]]);
speed3upgrade.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
speed3upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
speed3upgrade.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

# Change Recipe for Fortune 1 Upgrade
recipes.remove(fortune1upgrade);
recipes.addShaped(fortune1upgrade,
 [[null, fortune1pick, null],
  [lunarium, upgradebase, lunarium]]);
fortune1upgrade.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
fortune1upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
fortune1upgrade.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

# Change recipe for Fortune 2 Upgrade
recipes.remove(fortune2upgrade);
recipes.addShaped(fortune2upgrade,
 [[null, fortune2pick, null],
  [desh, fortune1upgrade, desh]]);
fortune2upgrade.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
fortune2upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
fortune2upgrade.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

# Change recipe for Fortune 3 Upgrade
recipes.remove(fortune3upgrade);
recipes.addShaped(fortune3upgrade,
 [[null, fortune3pick, null],
  [titanium, fortune2upgrade, titanium]]);
fortune3upgrade.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
fortune3upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
fortune3upgrade.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));

# Change recipe for Silk Touch Upgrade
recipes.remove(silktouchupgrade);
recipes.addShaped(silktouchupgrade,
 [[null, silktouchpick, null],
  [titanium, upgradebase, titanium]]);
silktouchupgrade.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
silktouchupgrade.addShiftTooltip(format.darkPurple("Requires materials"));
silktouchupgrade.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));