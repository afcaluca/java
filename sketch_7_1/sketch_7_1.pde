//ik heb een kwartier lang gekut met een error en kwam er uiteindelijk achter dat je bij een case geen ";" maar ":" moet gebruiken.//


int leeftijd = 18;

switch(leeftijd){
  case 1:
println("Net begonnen aan het leven.");
    break;
  case 2:
  case 3:
println("Baby");
    break;
  case 4:
  case 5:
println("Kleuter");
    break;
  case 6:
  case 7:
  case 8:
  case 9:
println("Kind");
    break;
  case 10:
  case 11:
  case 12:
  case 13:
  case 14:
println("Tiener");
    break;
  case 15:
  case 16:
  case 17:
println("Adolescent");
    break;
  case 18:
println("Volwassene");
    break;
  default:
println("Onbekende leeftijd");
}
