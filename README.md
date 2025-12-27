# 📱 Calculadora de IMC

Aplicativo Flutter para cálculo do Índice de Massa Corporal (IMC) com interface intuitiva, classificação automática e dicas personalizadas de saúde.

## 📋 Sobre o Projeto

O **Calculadora de IMC** é um aplicativo móvel desenvolvido em Flutter que permite aos usuários calcularem seu Índice de Massa Corporal de forma rápida e fácil. O app fornece não apenas o valor numérico do IMC, mas também uma classificação visual com emojis, cores e dicas de saúde personalizadas para cada faixa de resultado.

## ✨ Funcionalidades

### Tela Principal
- 📝 Campos de entrada para peso (kg) e altura (m)
- ✅ Validação automática dos dados inseridos
- 🎯 Interface limpa e intuitiva
- 📱 Suporte para vírgula ou ponto decimal

### Tela de Resultados
- 🎨 Emoji grande representando a classificação
- 📊 Valor do IMC calculado com destaque visual
- 🏷️ Classificação por cores (Abaixo do peso, Normal, Sobrepeso, Obesidade)
- 💡 Dicas de saúde personalizadas para cada categoria
- 🔄 Botão para realizar novo cálculo

## 📊 Classificação do IMC

| Faixa de IMC | Classificação | Emoji | Cor | Descrição |
|--------------|---------------|-------|-----|-----------|
| < 18.5 | Abaixo do peso | 😟 | Azul | Requer atenção nutricional |
| 18.5 - 24.9 | Peso normal | 😊 | Verde | Peso saudável, mantenha! |
| 25.0 - 29.9 | Sobrepeso | 😐 | Laranja | Atenção à alimentação |
| 30.0 - 34.9 | Obesidade Grau I | 😰 | Laranja escuro | Procure orientação médica |
| 35.0 - 39.9 | Obesidade Grau II | 😨 | Vermelho | Necessário acompanhamento |
| ≥ 40.0 | Obesidade Grau III | 🚨 | Vermelho escuro | Atenção médica urgente |

## 🔧 Tecnologias Utilizadas

- **Flutter** 3.10.4+
- **Dart** 3.10.4+
- **Material Design 3** - Interface moderna e responsiva
- **flutter_lints** 6.0.0 - Boas práticas de código

## 🚀 Como Executar

### Pré-requisitos
- Flutter SDK instalado ([Guia de instalação](https://docs.flutter.dev/get-started/install))
- Android Studio ou VS Code com extensões Flutter
- Dispositivo Android/iOS ou emulador configurado

### Instalação

1. Clone o repositório:
```bash
git clone <url-do-repositorio>
cd imc
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Execute o aplicativo:
```bash
flutter run
```

## 📦 Gerando APK

### APK de Debug
```bash
flutter build apk --debug
```
O APK será gerado em: `build/app/outputs/flutter-apk/app-debug.apk`

### APK de Release
```bash
flutter build apk --release
```
O APK será gerado em: `build/app/outputs/flutter-apk/app-release.apk`

### App Bundle (para Google Play)
```bash
flutter build appbundle --release
```

## 🧪 Testes

Execute os testes automatizados:
```bash
flutter test
```

Análise de código:
```bash
flutter analyze
```

Formatação de código:
```bash
dart format .
```

## 📁 Estrutura do Projeto

```
lib/
├── core/                    # Configurações centrais
├── features/                # Funcionalidades do app
│   └── home/
│       ├── home_page.dart          # Tela principal com formulário
│       └── resultado_page.dart     # Tela de resultados do IMC
├── shared/                  # Recursos compartilhados
│   └── widgets/            # Widgets reutilizáveis
└── main.dart               # Ponto de entrada do app
```

## 💡 Como Usar o App

1. **Abra o aplicativo** e você verá a tela principal
2. **Digite seu peso** em quilogramas (ex: 70.5)
3. **Digite sua altura** em metros (ex: 1.75)
4. **Toque em "Calcular IMC"**
5. **Visualize seu resultado** com:
   - Valor do IMC
   - Classificação
   - Emoji representativo
   - Dicas de saúde personalizadas
6. **Toque em "Calcular Novamente"** para fazer um novo cálculo

## 📐 Fórmula do IMC

```
IMC = peso (kg) / altura² (m)
```

**Exemplo:**
- Peso: 70 kg
- Altura: 1.75 m
- IMC = 70 / (1.75 × 1.75) = 22.86

## 🎨 Design

O aplicativo utiliza **Material Design 3** com:
- Tema principal em índigo
- Cores adaptativas para cada classificação de IMC
- Interface responsiva e intuitiva
- Ícones e emojis expressivos

## 📱 Compatibilidade

- ✅ Android 5.0 (API 21) ou superior
- ✅ iOS 11.0 ou superior
- ✅ Web (experimental)

## 🤝 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para:
1. Fazer um fork do projeto
2. Criar uma branch para sua feature (`git checkout -b feature/NovaFuncionalidade`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/NovaFuncionalidade`)
5. Abrir um Pull Request

## 📄 Licença

Este projeto é de código aberto e está disponível para uso educacional e pessoal.

## 📞 Contato

Para dúvidas ou sugestões, sinta-se à vontade para abrir uma issue no repositório.

---

**Desenvolvido com ❤️ usando Flutter**
