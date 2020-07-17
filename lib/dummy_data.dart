import 'package:TestyUDT/models/question.dart';

import 'models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(
      name: 'Podesty ruchome przejezdne',
      description:
          'Podesty ruchome to dźwignice zaliczane do grupy maszyn budowlanych, służące do przemieszczania osób i materiałów na określone stanowisko pracy, zarówno w pionie, jak i poziomie.',
      iconName: 'ico_prp.svg'),
  Category(
      name: 'Wózki jezdniowe I',
      description:
          'Wózki jezdniowe podnośnikowe z mechanicznym napędem podnoszenia z wysięgnikiem oraz wózki jezdniowe podnośnikowe z mechanicznym napędem podnoszenia z osobą obsługującą podnoszoną.',
      iconName: 'ico_wj1.svg'),
  Category(
      name: 'Wózki jezdniowe II',
      description:
          'Wózki jezdniowe podnośnikowe z mechanicznym napędem podnoszenia z wysięgnikiem oraz wózki jezdniowe podnośnikowe z mechanicznym napędem podnoszenia z osobą obsługującą podnoszoną.',
      iconName: 'ico_wj2.svg'),
  Category(
      name: 'Żurawie',
      description:
          'Żurawie, przewoźne, przenośne i stacjonarne.',
      iconName: 'ico_zur.svg'),
  Category(
      name: 'Suwnice',
      description:
          'Suwnice, wciągniki i wciągarki ogólnego przeznaczenia.',
      iconName: 'ico_prp.svg'),
];

List<Question> DUMMY_QUESTIONS = [

  Question(
    id: 1,
    question: 'Urządzenie techniczne objęte dozorem technicznym może być eksploatowane na podstawie:',
    answers: [
    'zezwolenia ustnego lub pisemnego wydanego przez upoważnionego konserwatora',
    '!ważnej decyzji zezwalającej na eksploatację wydanej przez organ właściwej jednostki dozoru technicznego',
    'oznaczenia CE umieszczonego na urządzeniu',
    'deklaracji zgodności wystawionej przez wytwórcę'],
    correctAnswerIndex: 1,
  ),
    Question(
    id: 2,
    question: 'Które z wymienionych czynności nie należą do zakresu obowiązków obsługującego UTB:',
    answers: [
      '!wykonywanie niewielkich napraw urządzenia w ramach posiadanego wykształcenia i umiejętności',
      'przestrzeganie instrukcji eksploatacji w zakresie obsługi UTB',
      'zapoznanie się z planem pracy i wielkością przenoszonych ładunków',
      'wszystkie odpowiedzi są poprawne'
    ],
    correctAnswerIndex: 0,
  ),
    Question(
    id: 3,
    question: 'Terminy przeglądów konserwacyjnych urządzeń technicznych:',
    answers: [
      '!są zawarte w instrukcji eksploatacji urządzenia',
      'określa konserwator urządzenia',
      'określa w protokole inspektor wykonujący badanie',
      'wszystkie odpowiedzi są poprawne'
    ],
    correctAnswerIndex: 0,
  ),
    Question(
    id: 4,
    question: 'Dozorem technicznym nazywamy:',
    answers: [
      '!określone ustawą działania zmierzające do zapewnienia bezpiecznego funkcjonowania urządzeń technicznych i urządzeń do odzyskiwania par paliwa oraz działania zmierzające do zapewnienia bezpieczeństwa publicznego w tych obszarach',
      'instytucje kontrolujące stan techniczny urządzeń',
      'Urząd Dozoru Technicznego',
      'Urząd Dozoru Technicznego',
    ],
    correctAnswerIndex: 0,
  ),
    Question(
    id: 5,
    question: 'Dozór techniczny nad urządzeniami technicznymi wykonuje:',
    answers: [
      '!Urząd Dozoru Technicznego oraz specjalistyczne jednostki dozoru technicznego',
      'Urząd Dozoru Technicznego oraz upoważnione przez UDT organizacje',
      'Urząd Dozoru Technicznego i zagraniczne jednostki dozoru technicznego',
      'wszystkie odpowiedzi są poprawne'
    ],
    correctAnswerIndex: 0,
  ),

];
