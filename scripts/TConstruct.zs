# Define variables
val gold = <minecraft:gold_ingot>;
val goldnugget = <ore:nuggetGold>;
val mcgoldnugget = <minecraft:gold_nugget>;
val aluminum = <TConstruct:materials:11>;
val aluminumnugget = <ore:nuggetAluminum>;
val tcaluminumnugget = <TConstruct:materials:22>;

# Fix oreberry -> ingot recipe for Gold
recipes.removeShaped(gold,
 [[mcgoldnugget, mcgoldnugget, mcgoldnugget],
  [mcgoldnugget, mcgoldnugget, mcgoldnugget],
  [mcgoldnugget, mcgoldnugget, mcgoldnugget]]);
recipes.addShaped(gold,
 [[goldnugget, goldnugget, goldnugget],
  [goldnugget, goldnugget, goldnugget],
  [goldnugget, goldnugget, goldnugget]]);

# Fix oreberry -> ingot recipe for Aluminum
recipes.removeShaped(aluminum,
 [[tcaluminumnugget, tcaluminumnugget, tcaluminumnugget],
  [tcaluminumnugget, tcaluminumnugget, tcaluminumnugget],
  [tcaluminumnugget, tcaluminumnugget, tcaluminumnugget]]);
recipes.addShaped(aluminum,
 [[aluminumnugget, aluminumnugget, aluminumnugget],
  [aluminumnugget, aluminumnugget, aluminumnugget],
  [aluminumnugget, aluminumnugget, aluminumnugget]]);