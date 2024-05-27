import "dart:math";

class RandomNumberGenerator {
  static int generateRandomNumber() {
    final Random random = Random();
    return random.nextInt(6) + 1;
  }
}
