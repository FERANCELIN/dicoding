import 'package:toma_bird_dicoding_project/story.dart';

class StoryData {
  late int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
        storyTitle:
            'Hi!\n\nPerkenalkan namaku, Toma! Aku adalah seekor burung Tokhtor dan aku berasal dari Sumatera. Aku juga dikenal dalam bahasa Inggris dengan nama "Sumatran Ground-cuckoo" dan juga bahasa latin, "Carpococcyx viridis".\n\n '
            'Aku memiliki dua saudara spesies, yang satu ("Carpococcyx radiceus") tersebar di Kalimantan dan sisanya ("Carpococcyx renauldi") tersebar di Thailand dan Vietnam. Jauh ya...\n\n'
            'Ngomong-ngomong, aku dan saudara-saudaraku sedang membutuhkan bantuan, apa kalian bisa bantu?',
        choice1: 'Tanya Toma bantuan apa yang dia butuhkan.',
        choice2: 'Langsung bantu Toma dengan memberi makan coklat.'),
    Story(
        storyTitle:
            'Terima kasih, inisiatif kamu baik sekali, tapi tahukah kamu bahwa cokelat berbahaya bagi hampir semua burung? Termasuk aku.\n\nMenariknya makanan kesukaanku adalah hewan vertebrata kecil dan invertebrata besar, seperti serangga, kodok, ulat, dan lain-lain.\n\n'
            'Kalau kalian mau tahu lebih jauh, kalian bisa mencari tahu di buku pelajaran Biologi kalian.',
        choice1: 'Kenapa coklat berbahaya?',
        choice2: 'Pergi cari serangga untuk Toma!'),
    Story(
        storyTitle:
            'Aku dan kedua saudaraku terancam punah.\n\nDi Sumatera, kami berjumlah hanya sekitar 50 sampai 250 ekor. Dengan jumlah total populasi yang sedikit sementara penggundulan hutan semakin sering terjadi, kami dengan cepat akan kehilangan habitat tinggal alami dan akhirnya punah.\n\n'
            'Sedihnya lagi, PP. No. 7 Tahun 1999, yang merupakan peraturan perlindungan satwa, tidak menyebutkan kami sebagai satwa yang harus dilindungi.',
        choice1:
            'Kamu memutuskan untuk rajin belajar agar dapat membuat peraturan baru untuk melindungi Toma dan satwa liar lainnya',
        choice2:
            'Kamu langsung membuat sarang burung untuk tempat tinggal Toma.'),
    Story(
        storyTitle:
            'Kamu berhasil mengumpulkan 5 serangga kecil dan memberikannya ke Toma. Ia tersenyum dan mulai mematuk makanannya dengan lahap.\n\nSetelah semuanya habis, Toma berterima kasih dan memberikan kepada kamu misi untuk menjaga kelestarian lingkungan dengan tidak membuang sampah sembarangan, tidak merusak dan membakar hutan, tidak mengurung satwa liar di dalam sarang dan mengajak teman-teman kamu lainnya untuk ikut membantu kamu dalam misi yang diberikan oleh Toma.\n\n'
            'Toma berterimakasih dan mengucapkan selamat tinggal.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Sarang burung yang kamu belikan untuk Toma sangat indah, bersih dan banyak makanan. Tapi kamu sadar ketika melihat Toma sedih.\n\n'
            'Toma tidak ingin berada di dalam sarang kecil, ia ingin terbang bebas dan berkumpul dengan keluarganya. Kamu mengerti dan akhirnya berjanji kepada Toma akan memberitahukan kepada semua orang bahwa burung tidak bahagia berada di dalam sarang.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Setelah belajar dengan tekun dan serius, kamu berhasil menyelesaikan sekolahmu dan bersiap untuk melanjutkan pendidikan ke tingkat yang lebih tinggi.\n\n'
            'Kamu telah berjanji kepada Toma kamu akan menjadi salah satu pembuat hukum di Indonesia yang akan melindungi Toma dan Satwa Liar lainnya serta lingkugan hidup.',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    _storyNumber;
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    _storyNumber;
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    _storyNumber;
    return _storyData[_storyNumber].choice2;
  }

  void restart() {
    _storyNumber = 0;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
