print(" ");
int cijfer = 9;

String beoordeling;

switch (cijfer) {
case 1:
case 2:
case 3:
  beoordeling = "slecht";
  break;
case 4:
  beoordeling = "onvoldoende";
  break;
case 5:
  beoordeling = "matig";
  break;
case 6:
case 7:
  beoordeling = "voldoende";
  break;
case 8:
case 9:
case 10:
  beoordeling = "goed";
  break;
default:
  beoordeling = "Verkeerd cijfer ingevoerd";
  break;
}
println("Beoordeling: " + beoordeling);
