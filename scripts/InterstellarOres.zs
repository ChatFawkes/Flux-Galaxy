# Define Variables
val mooniron = <InterstellarOres:oreMoon>;
val moongold = <InterstellarOres:oreMoon:1>;
val mooncopper  = <InterstellarOres:oreMoon:2>;
val moontin = <InterstellarOres:oreMoon:3>;
val moonlead = <InterstellarOres:oreMoon:4>;
val moonsilver = <InterstellarOres:oreMoon:5>;
val moonnickel = <InterstellarOres:oreMoon:6>;
val moonalum = <InterstellarOres:oreMoon:7>;
val moonosmium = <InterstellarOres:oreMoon:8>;
val moonlunarium = <InterstellarOres:oreMoon:9>;
val moonplatinum = <InterstellarOres:oreMoon:10>;
val marsiron = <InterstellarOres:oreMars>;
val marsgold = <InterstellarOres:oreMars:1>;
val marscopper  = <InterstellarOres:oreMars:2>;
val marstin = <InterstellarOres:oreMars:3>;
val marslead = <InterstellarOres:oreMars:4>;
val marssilver = <InterstellarOres:oreMars:5>;
val marsnickel = <InterstellarOres:oreMars:6>;
val marsalum = <InterstellarOres:oreMars:7>;
val marsosmium = <InterstellarOres:oreMars:8>;
val marsuranium = <InterstellarOres:oreMars:9>;
val marsplatinum = <InterstellarOres:oreMars:10>;
val asteroiddiamond = <InterstellarOres:oreAsteroid>;
val asteroidplatinum = <InterstellarOres:oreAsteroid:1>;
val asteroidcertus = <InterstellarOres:oreAsteroid:2>;
val asteroidcertuscharged = <InterstellarOres:oreAsteroid:3>;
val icediamond = <InterstellarOres:oreIce>;
val iceplatinum = <InterstellarOres:oreIce:1>;
val icecertus = <InterstellarOres:oreIce:2>;
val icecertuscharged = <InterstellarOres:oreIce:3>;
val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val copper = <ThermalFoundation:material:64>;
val tin = <ThermalFoundation:material:65>;
val lead = <ThermalFoundation:material:67>;
val silver = <ThermalFoundation:material:66>;
val nickel = <ThermalFoundation:material:68>;
val alum = <TConstruct:materials:11>;
val osmium = <Mekanism:Ingot:1>;
val uranium = <BigReactors:BRIngot>;
val platinum = <ThermalFoundation:material:69>;

# Add furnace recipes
furnace.addRecipe(iron, mooniron);
furnace.addRecipe(iron, marsiron);
furnace.addRecipe(gold, moongold);
furnace.addRecipe(gold, marsgold);
furnace.addRecipe(copper, mooncopper);
furnace.addRecipe(copper, marscopper);
furnace.addRecipe(tin, moontin);
furnace.addRecipe(tin, marstin);
furnace.addRecipe(lead, moonlead);
furnace.addRecipe(lead, marslead);
furnace.addRecipe(silver, moonsilver);
furnace.addRecipe(silver, marssilver);
furnace.addRecipe(nickel, moonnickel);
furnace.addRecipe(nickel, marsnickel);
furnace.addRecipe(alum, moonalum);
furnace.addRecipe(alum, marsalum);
furnace.addRecipe(osmium, moonosmium);
furnace.addRecipe(osmium, marsosmium);
furnace.addRecipe(uranium, marsuranium);
furnace.addRecipe(platinum, marsplatinum);
furnace.addRecipe(platinum, asteroidplatinum);
furnace.addRecipe(platinum, iceplatinum);

# Hide Big Reactors Yellorite in NEI
mods.nei.NEI.hide(<BigReactors:YelloriteOre>);

# Hide unused Galacticraft Ores
mods.nei.NEI.hide(<GalacticraftCore:tile.moonBlock>);
mods.nei.NEI.hide(<GalacticraftCore:tile.moonBlock:1>);
mods.nei.NEI.hide(<GalacticraftCore:tile.gcBlockCore:5>);
mods.nei.NEI.hide(<GalacticraftCore:tile.gcBlockCore:6>);
mods.nei.NEI.hide(<GalacticraftCore:tile.gcBlockCore:7>);
mods.nei.NEI.hide(<GalacticraftCore:tile.gcBlockCore:8>);

# Rename Uranium to Yellorite
# mods.nei.NEI.overrideName(marsuranium, "Uranium Ore (Yellorite)");