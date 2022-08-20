import 'dart:ffi';

class NumberText {
  String numberIntext = '';
  List unity = [
    "um",
    "dois",
    "três",
    "quatro",
    "cinco",
    "seis",
    "sete",
    "oito",
    "nove"
  ];
  List tenToNineteen = [
    "dez",
    "onze",
    "doze",
    "treze",
    "quartoze",
    "quize",
    "dezesseis",
    "dezessete",
    "dezoito",
    "dezenove"
  ];
  List decimal = [
    "vinte",
    "trinta",
    "quarenta",
    "cinquenta",
    "sessenta",
    "setenta",
    "oitenta",
    "noventa"
  ];
  List hundreds = [
    "cem",
    "duzentos",
    "trezentos",
    "quatrocentos",
    "quinhentos",
    "seiscentos",
    "setecentos",
    "oitocentos",
    "novecentos"
  ];

  String TransformNumberInText(number) {
    var figures = number.toString().split('');
    switch (figures.length) {
      case 1:
        numberIntext = MountyUnity(figures[0]);
        return numberIntext.toUpperCase();
      case 2:
        numberIntext = MountyDecimal(figures);
        return numberIntext.toUpperCase();
      case 3:
        numberIntext = MountyHundred(figures);
        return numberIntext.toUpperCase();
      case 4:
        numberIntext = MountyThousand(figures);
        return numberIntext.toUpperCase();
      default:
        return numberIntext.toUpperCase();
    }
  }

  String MountyUnity(String number) {
    var text = '';
    var num = int.parse(number);
    if (num > 0) {
      text = unity[num - 1];
      return text;
    } else {
      return text;
    }
  }

  MountyDecimal(List<String> number) {
    var text = '';
    List<int> num = number.map(int.parse).toList();
    if (num[0] == 0) {
      text = MountyUnity(num[1].toString());
      return text;
    } else if (num[0] == 1) {
      text = tenToNineteen[num[1]];
      return text;
    } else {
      text = decimal[num[0] - 2];
      if (num[1] == 0) {
        return text;
      } else {
        text += " e ${MountyUnity(num[1].toString())}";
      }
    }
  }

  MountyHundred(List number) {}

  MountyThousand(List Number) {}
}
