float lengteInMeters = 1.80;
float gewichtInKg = 77;

float bmi = gewichtInKg / (lengteInMeters * lengteInMeters);

bmi = Math.round(bmi);

String zin = "Met een gewicht van " + gewichtInKg + " kg en een lengte van " + (lengteInMeters * 100) + " cm, is jouw BMI " + bmi + ".";
println(zin);
