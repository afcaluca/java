
int dagNummer = 1;
String dagVanDeWeek;

switch (dagNummer) {
case 1:
  dagVanDeWeek = "Maandag";
  break;
case 2:
  dagVanDeWeek = "Dinsdag";
  break;
case 3:
  dagVanDeWeek = "Woensdag";
  break;
case 4:
  dagVanDeWeek = "Donderdag";
  break;
case 5:
  dagVanDeWeek = "Vrijdag";
  break;
case 6:
  dagVanDeWeek = "Zaterdag";
  break;
case 7:
  dagVanDeWeek = "Zondag";
  break;
default:
  dagVanDeWeek = "Ongeldige dag";
  break;
}

println("Dag van de week: " + dagVanDeWeek);
