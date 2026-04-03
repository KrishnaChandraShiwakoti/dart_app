void main() {
  List<int> arr = [10, 50, 60, 80, 90, 1, 20, 3];
  sumOfArray(arr);
  int secondHighestNum = secondHighest(arr);
  print(secondHighestNum);
}

int sumOfArray(List<int> arr) {
  int sum = 0;
  for (var i = 0; i < arr.length; i++) {
    sum = sum + arr[i];
  }
  return sum;
}

int secondHighest(List<int> arr) {
  int highest = 0;
  int secondHighest = 0;

  for (var i in arr) {
    if (i > highest) highest = i;
  }
  for (var i in arr) {
    if (i < highest && i > secondHighest) secondHighest = i;
  }

  return secondHighest;
}
