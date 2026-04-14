# Mobile PWA - Flutter Application

Um aplicativo Flutter moderno com arquitetura profissional e suporte a PWA.

## 🚀 Features

- ✅ **Arquitetura Limpa**: Separação clara de responsabilidades
- ✅ **Gerenciamento de Estado**: Provider para estado global
- ✅ **Navegação Moderna**: GoRouter para navegação declarativa
- ✅ **Temas**: Suporte completo a modo claro/escuro
- ✅ **Armazenamento Local**: SharedPreferences para dados persistentes
- ✅ **HTTP Client**: ApiService para comunicação com backend
- ✅ **UI Moderna**: Material 3 com design responsivo
- ✅ **PWA Ready**: Configurado para Progressive Web App

## 📁 Estrutura do Projeto

```
lib/
├── config/           # Configurações do app
│   ├── app_config.dart
│   └── theme_config.dart
├── models/           # Modelos de dados
│   └── user_model.dart
├── providers/        # Gerenciamento de estado
│   ├── auth_provider.dart
│   └── theme_provider.dart
├── routes/           # Configuração de rotas
│   └── app_router.dart
├── screens/          # Telas do aplicativo
│   ├── splash_screen.dart
│   ├── login_screen.dart
│   └── home_screen.dart
├── services/         # Serviços e APIs
│   ├── api_service.dart
│   └── storage_service.dart
├── utils/            # Utilitários
├── widgets/          # Widgets reutilizáveis
└── main.dart         # Punto de entrada
```

## 🛠️ Dependências Principais

- `provider` - Gerenciamento de estado
- `go_router` - Navegação
- `http` - Cliente HTTP
- `shared_preferences` - Armazenamento local
- `google_fonts` - Fontes personalizadas
- `equatable` - Comparação de objetos

## 🏃‍♂️ Como Rodar

### Pré-requisitos
- Flutter SDK >= 2.17.0
- Dart SDK >= 2.17.0

### Instalação

```bash
# Instalar dependências
flutter pub get

# Rodar em modo debug
flutter run

# Rodar em dispositivo específico
flutter run -d chrome  # Para web
flutter run -d <device_id>  # Para mobile
```

### Build

```bash
# Build para web (PWA)
flutter build web

# Build para Android
flutter build apk --release

# Build para iOS
flutter build ios --release
```

## 🎨 Personalização

### API Base
Edite `lib/config/app_config.dart` para configurar a URL da sua API:

```dart
static const String baseUrl = 'https://sua-api.com';
```

### Tema
Edite `lib/config/theme_config.dart` para personalizar cores e temas.

## 📝 Próximos Passos

- [ ] Implementar autenticação real com API
- [ ] Adicionar testes unitários
- [ ] Configurar CI/CD
- [ ] Implementar funcionalidades específicas do domínio
- [ ] Adicionar mais telas e features

## 📄 Licença

Este projeto está sob a licença MIT.

---

Desenvolvido com ❤️ usando Flutter
