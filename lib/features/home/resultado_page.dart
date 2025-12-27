import 'package:flutter/material.dart';

class ResultadoPage extends StatelessWidget {
  final double imc;

  const ResultadoPage({super.key, required this.imc});

  Map<String, dynamic> _getClassificacao() {
    if (imc < 18.5) {
      return {
        'emoji': '😟',
        'classificacao': 'Abaixo do peso',
        'cor': Colors.blue,
        'dicas': [
          'Consulte um nutricionista para um plano alimentar adequado',
          'Aumente o consumo de alimentos nutritivos e calóricos',
          'Pratique exercícios de fortalecimento muscular',
          'Faça refeições regulares ao longo do dia',
        ],
      };
    } else if (imc >= 18.5 && imc < 25) {
      return {
        'emoji': '😊',
        'classificacao': 'Peso normal',
        'cor': Colors.green,
        'dicas': [
          'Parabéns! Mantenha seus hábitos saudáveis',
          'Continue praticando exercícios regularmente',
          'Mantenha uma alimentação equilibrada',
          'Faça check-ups médicos periódicos',
        ],
      };
    } else if (imc >= 25 && imc < 30) {
      return {
        'emoji': '😐',
        'classificacao': 'Sobrepeso',
        'cor': Colors.orange,
        'dicas': [
          'Consulte um nutricionista para orientação alimentar',
          'Aumente a prática de atividades físicas',
          'Evite alimentos processados e açúcares',
          'Beba bastante água durante o dia',
        ],
      };
    } else if (imc >= 30 && imc < 35) {
      return {
        'emoji': '😰',
        'classificacao': 'Obesidade Grau I',
        'cor': Colors.deepOrange,
        'dicas': [
          'Procure orientação médica e nutricional',
          'Inicie um programa de exercícios com supervisão',
          'Reduza o consumo de gorduras e carboidratos simples',
          'Estabeleça metas realistas de perda de peso',
        ],
      };
    } else if (imc >= 35 && imc < 40) {
      return {
        'emoji': '😨',
        'classificacao': 'Obesidade Grau II',
        'cor': Colors.red,
        'dicas': [
          'Consulte um médico urgentemente',
          'Considere um acompanhamento multidisciplinar',
          'Avalie tratamentos médicos especializados',
          'Faça exames para verificar sua saúde geral',
        ],
      };
    } else {
      return {
        'emoji': '🚨',
        'classificacao': 'Obesidade Grau III',
        'cor': Colors.red[900],
        'dicas': [
          'Procure atendimento médico imediatamente',
          'Considere tratamento hospitalar especializado',
          'Avalie opções cirúrgicas com seu médico',
          'Faça acompanhamento médico constante',
        ],
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    final resultado = _getClassificacao();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado do IMC'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              resultado['emoji'],
              style: const TextStyle(fontSize: 120),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: resultado['cor'].withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: resultado['cor'],
                  width: 2,
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Seu IMC é',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    imc.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: resultado['cor'],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    resultado['classificacao'],
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: resultado['cor'],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dicas de Saúde',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...List.generate(
                    resultado['dicas'].length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: resultado['cor'],
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              resultado['dicas'][index],
                              style: const TextStyle(
                                fontSize: 16,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  minimumSize: const Size(double.infinity, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Calcular Novamente',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
