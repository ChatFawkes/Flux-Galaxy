# Define variables
val chisel = <chisel:chisel>;
val stick = <minecraft:stick>;
val iron = <minecraft:iron_ingot>;

#Change recipe for the chisel to prevent conflict with Bluepower screwdriver
recipes.remove(chisel);
recipes.addShaped(chisel,
 [[null, null, iron],
  [null, stick, null],
  [stick, null, null]]);