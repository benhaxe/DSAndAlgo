//Print stair case of size n.
void stariCase(int n) {
  for (int i = 1; i <= n; i++) {
    print(' ' * (n - 1) + "#" * i);
  }
}
