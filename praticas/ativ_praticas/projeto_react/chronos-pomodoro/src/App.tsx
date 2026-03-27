import { Heading } from "./components/Heading";
import "./styles/global.css";
import "./styles/thema.css"; 
import { Timer } from "lucide-react";
import {Container } from './components/Container';


export function App() {
  return (
    <>
      {/* Seção 1: Logo */}
      <Container>
        <Heading>Logo</Heading>
      </Container>

      {/* Seção 2: Menu */}
      <Container>
        <Heading>Menu</Heading>
      </Container>
    </>
  );
}