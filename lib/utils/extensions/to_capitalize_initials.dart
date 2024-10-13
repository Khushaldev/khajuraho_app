extension CapitalizeInitials on String {
  String toCapitalizeInitials() {
    return toLowerCase()
        .split(' ')
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }
}
