import 'package:flutter/material.dart';

class StaticText {
  final eventDescription =
      """É um evento que reúne mulheres da área da computação com o objetivo de criar soluções para desafios voltados para a mulher, além de servir de uma forma de integração entre as participantes.\n\n
      Em 2023 será a primeira vez que o projeto Meninas na Ciência da Computação realiza este evento e ele acontecera de maneira precensial no Centro de informatica da Universidade Federal da Paraíba(a confirmar).\n\n
      As ferramentas a serem utilizadas são as comuns de programação e que a equipe decida qual será a melhor. Para compartilhamento de informações e conversas entre as participantes usaremos o servidor no Discord do evento.\n\n
      O desafio tera foco nas mulheres com o tema divulgado no dia do evento.\n\n
      Serão prêmiadas as equipes que ficarem em 1 2 e 3 lugar.\n\n 
      Lembrando que é um evento voltado para mulheres e todas as participantes do evento serão mulheres ou que se considerem com gênero feminino, assim como a maioria equipe por trás do evento.\n\n""";

  final List<Map<String, dynamic>> detailsEvent = [
    {
      "title": "INSCRIÇÃO",
      "icon": Icons.account_box,
      "details": [
        "Forme uma equipe com seus amigos",
        "Ou após a inscrição forme uma equipe com outras inscritas",
      ],
      "buttonText": "Increver-se",
      "buttonLink": "https://forms.gle/gdJohGUDoD14VG1V6"
    },
    {
      "title": "HACKA POWER",
      "icon": Icons.group,
      "details": [
        "Compareça no dia 25/03/2023 e desenvolva uma ideia legal com sua equipe",
        "Mesa redonda interessante na programação",
      ],
      "buttonText": "Como chegar",
      "buttonLink": ""
    },
    {
      "title": "PREMIAÇÃO",
      "icon": Icons.military_tech_outlined,
      "details": [
        "Equipes vencedoras serão prêmiadas dia 31/03/2023 e todas as outras equipes podem participar",
        "Palestras com mulheres relevantes da tecnologia",
      ],
      "buttonText": "Como chegar",
      "buttonLink": ""
    }
  ];
}
