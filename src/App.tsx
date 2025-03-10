import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import k8sLogo from './assets/kubernetes.svg'
import './App.css'

function App() {
  return (
    <>
      <div>
        <a href="https://kubernetes.io/" target="_blank">
          <img src={k8sLogo} className="logo react" alt="Kubernetes logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>Kubernetes + React</h1>
      <p className="read-the-docs">
        Click on the Kubernetes and React logos to learn more
      </p>
    </>
  )
}

export default App
