# React PWA

A Progressive Web App built with React and Vite. This application demonstrates modern web development practices with PWA capabilities including offline support, installability, and responsive design.

## Features

- ⚛️ **React 19** - Modern React with hooks and latest features
- ⚡ **Vite** - Fast development and build tool
- 📱 **PWA Ready** - Installable on mobile and desktop
- 🔄 **Offline Support** - Works without internet connection
- 🎯 **Responsive Design** - Looks great on all devices
- 🔔 **Install Prompt** - Native-like installation experience
- 📊 **Network Status** - Real-time online/offline detection

## PWA Capabilities

- **Service Worker**: Caches assets for offline access
- **Web App Manifest**: Defines how the app appears when installed
- **Add to Home Screen**: Prompts users to install the app
- **Offline First**: Core functionality works without internet
- **Fast Loading**: Cached resources for instant loading

## Getting Started

1. Install dependencies:
   ```bash
   npm install
   ```

2. Start the development server:
   ```bash
   npm run dev
   ```

3. Build for production:
   ```bash
   npm run build
   ```

4. Preview the production build:
   ```bash
   npm run preview
   ```

## PWA Implementation

This project implements PWA features manually without external plugins:

- **Service Worker** (`public/sw.js`): Handles caching and offline functionality
- **Manifest** (`public/manifest.json`): Defines app metadata and installation options
- **Meta Tags** (`index.html`): PWA-specific tags for installability
- **React Logic** (`src/App.jsx`): Handles install prompts and network status

## Browser Support

- Chrome/Edge (Android & Desktop)
- Firefox (Android & Desktop) 
- Safari (iOS & macOS)

## Deployment

For PWA to work properly in production:
- Must be served over HTTPS
- Service worker must be accessible at the root path
- Manifest file must be properly configured

## Learn More

- [Progressive Web Apps](https://web.dev/progressive-web-apps/)
- [Vite Documentation](https://vite.dev/)
- [React Documentation](https://react.dev/)
