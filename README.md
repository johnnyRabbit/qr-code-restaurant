# Multi-Platform Application Suite

Este repositório contém uma suíte de aplicações multi-plataforma, incluindo uma PWA em React, um aplicativo mobile PWA em Flutter e um dashboard administrativo também em Flutter.

## 📁 Estrutura do Projeto

```
/workspace
├── react-pwa/          # Aplicação PWA em React + Vite
├── mobile_pwa/         # Aplicativo Mobile PWA em Flutter
└── dashboard/          # Dashboard Administrativo em Flutter
```

## 🚀 Projetos

### 1. React PWA (`react-pwa/`)

Aplicação Progressive Web App desenvolvida com React 19 e Vite.

**Tecnologias:**
- React ^19.2.0
- Vite ^7.2.4
- ESLint ^9.39.1

**Scripts disponíveis:**
```bash
npm run dev      # Inicia servidor de desenvolvimento
npm run build    # Build para produção
npm run lint     # Executa linting
npm run preview  # Preview da build de produção
```

**Estrutura:**
```
react-pwa/
├── src/
│   ├── App.jsx
│   ├── App.css
│   ├── main.jsx
│   ├── index.css
│   ├── assets/
│   └── service-worker.js
└── package.json
```

---

### 2. Mobile PWA (`mobile_pwa/`)

Aplicativo Flutter PWA com arquitetura profissional.

**Tecnologias:**
- Flutter SDK (>=2.17.0 <4.0.0)
- Provider ^6.1.1 (Gerenciamento de Estado)
- GoRouter ^12.1.1 (Navegação)
- HTTP ^1.1.0 (Cliente HTTP)
- SharedPreferences ^2.2.2 (Armazenamento Local)
- Google Fonts ^6.1.0
- Flutter SVG ^2.0.9
- Intl ^0.18.1
- Equatable ^2.0.5

**Estrutura:**
```
mobile_pwa/
├── lib/
│   ├── main.dart
│   ├── config/
│   ├── models/
│   ├── providers/
│   ├── routes/
│   ├── screens/
│   └── services/
├── assets/
│   ├── images/
│   ├── icons/
│   └── fonts/
└── pubspec.yaml
```

**Principais recursos:**
- Arquitetura baseada em Provider para gerenciamento de estado
- Navegação declarativa com GoRouter
- Suporte a múltiplas plataformas (Web, Mobile)
- Fontes customizadas (Poppins)

---

### 3. Dashboard (`dashboard/`)

Dashboard administrativo desenvolvido em Flutter.

**Tecnologias:**
- Flutter SDK (>=2.7.0 <3.0.0)
- Fluro ^2.0.3 (Roteamento)
- Convex Bottom Bar ^3.0.0 (UI Components)

**Estrutura:**
```
dashboard/
├── lib/
│   ├── main.dart
│   ├── layout/
│   ├── models/
│   ├── pages/
│   ├── routes/
│   └── sections/
└── pubspec.yaml
```

**Principais recursos:**
- Navegação avançada com Fluro
- Interface com bottom bar convexa
- Organização por seções e páginas

---

## 🛠️ Pré-requisitos

### Para React PWA
- Node.js (versão recomendada: 18+)
- npm ou yarn

### Para Projetos Flutter
- Flutter SDK (versão recomendada: 3.x)
- Dart SDK
- Android Studio / VS Code com extensões Flutter

## 📦 Instalação

### React PWA
```bash
cd react-pwa
npm install
npm run dev
```

### Mobile PWA
```bash
cd mobile_pwa
flutter pub get
flutter run -d chrome  # Para web
# ou
flutter run            # Para dispositivo móvel
```

### Dashboard
```bash
cd dashboard
flutter pub get
flutter run -d chrome  # Para web
```

## 🌐 Plataformas Suportadas

| Projeto | Web | Mobile | Desktop |
|---------|-----|--------|---------|
| React PWA | ✅ | ✅ | ❌ |
| Mobile PWA | ✅ | ✅ | ⚠️ |
| Dashboard | ✅ | ⚠️ | ⚠️ |

✅ = Totalmente suportado | ⚠️ = Suporte limitado | ❌ = Não suportado

## 📝 Licença

Este projeto é privado e destinado para uso interno.

## 👥 Contribuição

Para contribuir com este projeto:

1. Faça fork do repositório
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

---

**Desenvolvido com ❤️ usando React, Flutter e Vite**
