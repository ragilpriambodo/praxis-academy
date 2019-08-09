 import 'dart:async';


// Synchronous code

// <<<<<<<<<<<<<<contoh soal.>>>>>>>>>

// void printDailyNewsDigest() {
//   var newsDigest = gatherNewsReports(); // Can take a while.
//   print(newsDigest);
// }

// main() {
//   printDailyNewsDigest();
//   printWinningLotteryNumbers();
//   printWeatherForecast();
//   printBaseballScore();
// }

// jawaban


Future<void> printSekumpulanBeritaHarian() async{
   try {
  var newsDigest = await gatherNewsReports(); // Can take a while.
  print(newsDigest);
  } catch (e) {
    // Handle error...
  }
}

main() {
  printSekumpulanBeritaHarian();
  printMemenangkanNomorLotre();
  printRamalanCuaca();
  printSkorBaseball();
}
printMemenangkanNomorLotre() {
  print('memenangkan nomor lotre: [23, 63, 87, 26, 2]');
}

printRamalanCuaca() {
  print("Cuaca Besok hari: 70F, cerah.");
}

printSkorBaseball() {
  print('Skor Baseball: Red Sox 10, Yankees 0');
}

const news = '<gathered news goes here>';
const oneSecond = Duration(seconds: 1);

// Bayangkan bahwa fungsi ini lebih kompleks dan lambat. :)
Future<String> gatherNewsReports() =>
    Future.delayed(oneSecond, () => news);

