void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 88, 8];
  // (int, int, int, int) oddEven = calculateOddEven(arr);
  ({int odd, int even, int sumOfOdd, int sumOfEven}) oddEven = calculateOddEven(
    arr,
  );
  print(
    "odd: ${oddEven.odd} and even: ${oddEven.even} sum of odd:${oddEven.sumOfOdd} and sum of even:${oddEven.sumOfEven}  ",
  );
}

//Named return
({int odd, int even, int sumOfOdd, int sumOfEven}) calculateOddEven(
  List<int> arr,
) {
  int odd = 0;
  int even = 0;
  int sumOfOdd = 0;
  int sumOfEven = 0;
  for (int i in arr) {
    if (i % 2 == 0) {
      even++;
      sumOfEven += i;
    } else {
      odd++;
      sumOfOdd += i;
    }
  }
  return (odd: odd, even: even, sumOfOdd: sumOfOdd, sumOfEven: sumOfEven);
}

//Record
// (int, int, int, int) calculateOddEven(List<int> arr) {
//   int odd = 0;
//   int even = 0;
//   int sumOfOdd = 0;
//   int sumOfEven = 0;
//   for (int i in arr) {
//     if (i % 2 == 0) {
//       even++;
//       sumOfEven += i;
//     } else {
//       odd++;
//       sumOfOdd += i;
//     }
//   }
//   return (odd, even, sumOfOdd, sumOfEven);
// }
