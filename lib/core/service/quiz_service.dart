import 'package:benar_salah/core/model/quiz.dart';

class QuizService {
  const QuizService();

  List<Quiz> getQuiz() {
    return _dummyQuiz;
  }
}

List<Quiz> _dummyQuiz = [
  const Quiz(
    id: 1,
    question: "Sungai Nil adalah sungai terpanjang di dunia",
    isTrue: true,
  ),
  const Quiz(
    id: 2,
    question:
        "Vatikan adalah negara yang memiliki luas wilayah terkecil di dunia",
    isTrue: true,
  ),
  const Quiz(
    id: 3,
    question: "Gunung Slamet adalah gunung tertinggi di Pulau Jawa",
    isTrue: false, // Gunung Semeru
  ),
  const Quiz(
    id: 4,
    question: "Mamasa adalah ibu kota provinsi Sulawesi Barat",
    isTrue: false, // Mamuju
  ),
  const Quiz(
    id: 5,
    question: "Perang dunia ke-2 berakhir pada tahun 1945",
    isTrue: true,
  ),
  const Quiz(
    id: 6,
    question: "Sasando adalah alat musik tradisional asal NTT",
    isTrue: true,
  ),
  const Quiz(
    id: 7,
    question: "Patung Liberty dibuat di negara Amerika Serikat",
    isTrue: false, // prancis
  ),
  const Quiz(
    id: 8,
    question: "Lagu Indonesia Raya diciptakan oleh WR Supratman",
    isTrue: true,
  ),
  const Quiz(
    id: 9,
    question: "Lagu bendera Merah Putih diciptakan oleh WR Supratman",
    isTrue: false, // Ibu Soed
  ),
  const Quiz(
    id: 10,
    question: "Kitab Negara kertagama ditulis oleh Empu Prapanca",
    isTrue: true,
  ),
  const Quiz(
    id: 11,
    question:
        "Kerja paksa pada zaman pendudukan Jepang terkenal dengan nama Romusha",
    isTrue: true,
  ),
  const Quiz(
    id: 12,
    question:
        "Satelit buatan manusia yang pertama kali diluncurkan bernama Sputnik I",
    isTrue: true,
  ),
  const Quiz(
    id: 13,
    question: "Benfica adalah ibu kota negara Portugal",
    isTrue: false, // Lisbon
  ),
  const Quiz(
    id: 14,
    question: "Bola Voli diciptakan oleh James Naismith pada tahun 1891",
    isTrue: false, // Bola Basket
  ),
  const Quiz(
    id: 15,
    question: "Liverpool adalah tim yang memenangkan Piala FA 1986",
    isTrue: true,
  ),
  const Quiz(
    id: 16,
    question: "Martin Luther meluncurkan Reformasi pada tahun 1517",
    isTrue: true,
  ),
  const Quiz(
    id: 17,
    question: "Angkor Wat berada di negara Myanmar",
    isTrue: false, // Kamboja
  ),
  const Quiz(
    id: 18,
    question: "Marah Rusli adalah penulis roman Siti Nurbaya",
    isTrue: true,
  ),
  const Quiz(
    id: 19,
    question: "SEA Games diadakan setiap 4 tahun sekali",
    isTrue: false, // 2
  ),
  const Quiz(
    id: 20,
    question: "Tangerang adalah ibukota provinsi Banten",
    isTrue: false, // Serang
  ),
];
