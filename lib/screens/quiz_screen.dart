import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/quiz_model.dart';
import '../widgets/question_card.dart';
import '../widgets/primary_button.dart';

class QuizScreen extends StatelessWidget {
  static const routeName = '/quiz';
  const QuizScreen({super.key}); //constructor halaman

  @override
  Widget build(BuildContext context) {
    final quiz =
        Provider.of<QuizModel>(context); // ambil data kuis dari quiz model
    final current = quiz.questions[quiz.currentIndex]; //pertanyaan saat ini
    final mq = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Kuis - ${quiz.userName}'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(mq.size.width * 0.04),
          child: Column(
            children: [
              LinearProgressIndicator(
                  //untuk tampilin progres dalam bentuk garis
                  value: (quiz.currentIndex + 1) /
                      quiz.total), //jika soal ke-2 dari 10: (1+1)/10 = 0.2 → 20%
              const SizedBox(height: 12),

              //scroll
              Expanded(
                //untuk buat widget di dalam mengambil sisa ruang yg tersedia
                child: SingleChildScrollView(
                  // biar bisa discroll
                  child: QuestionCard(
                    //nampilin soal dari data
                    question: current,
                    questionIndex: quiz.currentIndex,
                    onSelect: (idx) => quiz.answerQuestion(
                        idx), //dipanggil fungsi answerQuestion di quiz model kalau diklik
                    selectedIndex: quiz.answers[quiz
                        .currentIndex], //kebutuhan di quenstioncard jadi ini list yang nyimpan jawaban user
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // biar tombol tetap responsif
              Row(
                children: [
                  if (quiz.currentIndex >
                      0) // hanya tampil kalau soal bukan no 1
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () =>
                            quiz.previous(), //kalau ditekan kembali
                        child: const Text('Sebelumnya'),
                      ),
                    ),
                  if (quiz.currentIndex > 0)
                    const SizedBox(
                        width:
                            8), //Menambahkan jarak 8px hanya jika tombol sebelumnya muncul.
                  Expanded(
                    child: PrimaryButton(
                      text: quiz.currentIndex ==
                              quiz.total - 1 //kalau soal terakhir selesai
                          ? 'Selesai'
                          : 'Berikutnya',
                      onPressed: () {
                        if (quiz.currentIndex == quiz.total - 1) {
                          //cek apa soal udah semua dijawab
                          bool allAnswered = true;
                          for (int i = 0; i < quiz.total; i++) {
                            if (!quiz.answers.containsKey(i)) {
                              allAnswered = false;
                              break;
                            }
                          }

                          if (allAnswered) {
                            final score = quiz.calculateScore(); //dihitung
                            showDialog(
                              //pop up
                              context: context,
                              builder: (_) => AlertDialog(
                                title: Text('Hasil - ${quiz.userName}'),
                                content:
                                    Text('Skor Anda: $score / ${quiz.total}'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      quiz.reset();
                                      Navigator.of(context)
                                          .pop(); // tutup popup
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              '/'); // kembali ke homescreen
                                    },
                                    style: TextButton.styleFrom(
                                      alignment: Alignment.center,
                                    ),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        } else {
                          quiz.next();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
