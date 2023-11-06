{
  int n = 10;

  int n1st = 0;
  int n2st = 1;

  print("Fibonacci " + n + " getallen: ");

  for (int i = 0; i < n; i++) {
    print(n1st + " ");

    int next = n1st + n2st;
    n1st = n2st;
    n2st = next;
  }

  println();
}
