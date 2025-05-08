int countingValley(int steps, String path) {
  int valleyCounter = 0;
  int altitude = 0;

  for (int i = 0; i < steps; i++) {
    String step = path[i];
    if (step == 'U') {
      altitude++;
      //We just came up to see level from a valley.
      if (altitude == 0) valleyCounter++;
    } else if (step == "D") {
      altitude--;
    }
  }

  return valleyCounter;
}

void main() {
  print(countingValley(8, "UDDDUDUU"));
}
