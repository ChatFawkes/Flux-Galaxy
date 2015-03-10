# Define variables
val router = <RouterReborn:router>;
val enderium = <ThermalFoundation:material:76>;
val viballoy = <EnderIO:itemAlloy:2>;
val pulscrystal = <EnderIO:itemMaterial:6>;

# Change recipe for Router
recipes.remove(router);
recipes.addShaped(router,
 [[viballoy, viballoy, viballoy],
  [enderium, pulscrystal, enderium],
  [viballoy, viballoy, viballoy]]);
router.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
router.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Vibrant Alloy"));
router.addShiftTooltip(format.darkPurple("and ") + format.yellow("Enderium"));