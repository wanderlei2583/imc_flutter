import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'resultado_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();

  @override
  void dispose() {
    _pesoController.dispose();
    _alturaController.dispose();
    super.dispose();
  }

  void _calcularIMC() {
    if (_formKey.currentState!.validate()) {
      final peso = double.parse(_pesoController.text.replaceAll(',', '.'));
      final altura = double.parse(_alturaController.text.replaceAll(',', '.'));

      final imc = peso / (altura * altura);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultadoPage(imc: imc),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Descubra seu Índice de Massa Corporal',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              const Text(
                'Calcule seu IMC e receba dicas personalizadas de saúde!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              TextFormField(
                controller: _pesoController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\,?\d{0,2}')),
                ],
                decoration: const InputDecoration(
                  labelText: 'Peso (kg)',
                  hintText: 'Ex: 70.5',
                  prefixIcon: Icon(Icons.monitor_weight),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu peso';
                  }
                  final peso = double.tryParse(value.replaceAll(',', '.'));
                  if (peso == null || peso <= 0) {
                    return 'Insira um peso válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _alturaController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\,?\d{0,2}')),
                ],
                decoration: const InputDecoration(
                  labelText: 'Altura (m)',
                  hintText: 'Ex: 1.75',
                  prefixIcon: Icon(Icons.height),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira sua altura';
                  }
                  final altura = double.tryParse(value.replaceAll(',', '.'));
                  if (altura == null || altura <= 0 || altura > 3) {
                    return 'Insira uma altura válida em metros';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _calcularIMC,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Calcular IMC',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
