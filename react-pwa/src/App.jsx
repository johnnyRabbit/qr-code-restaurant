import { useState, useEffect } from 'react'
import './App.css'

function App() {
  const [installPrompt, setInstallPrompt] = useState(null);
  const [isOffline, setIsOffline] = useState(!navigator.onLine);

  // Handle install prompt
  useEffect(() => {
    const handleBeforeInstallPrompt = (e) => {
      // Prevent the mini-infobar from appearing on mobile
      e.preventDefault();
      // Stash the event so it can be triggered later
      setInstallPrompt(e);
    };

    window.addEventListener('beforeinstallprompt', handleBeforeInstallPrompt);

    // Check network status
    const handleOnline = () => setIsOffline(false);
    const handleOffline = () => setIsOffline(true);

    window.addEventListener('online', handleOnline);
    window.addEventListener('offline', handleOffline);

    // Clean up
    return () => {
      window.removeEventListener('beforeinstallprompt', handleBeforeInstallPrompt);
      window.removeEventListener('online', handleOnline);
      window.removeEventListener('offline', handleOffline);
    };
  }, []);

  const handleInstallClick = () => {
    if (installPrompt) {
      installPrompt.prompt();
      installPrompt.userChoice.then((choiceResult) => {
        if (choiceResult.outcome === 'accepted') {
          console.log('User accepted the install prompt');
        }
        setInstallPrompt(null);
      });
    }
  };

  return (
    <div className="App">
      <header className="App-header">
        <h1>React PWA</h1>
        <p>A Progressive Web App built with React and Vite</p>
        
        {isOffline && (
          <div className="offline-status">
            <p>⚠️ You are currently offline</p>
          </div>
        )}
        
        {installPrompt && (
          <div className="install-prompt">
            <button onClick={handleInstallClick} className="install-btn">
              Install App
            </button>
          </div>
        )}
        
        <div className="pwa-features">
          <h2>PWA Features:</h2>
          <ul>
            <li>✅ Works offline</li>
            <li>✅ Installable on mobile and desktop</li>
            <li>✅ Fast loading with caching</li>
            <li>✅ Responsive design</li>
          </ul>
        </div>
      </header>
    </div>
  );
}

export default App
