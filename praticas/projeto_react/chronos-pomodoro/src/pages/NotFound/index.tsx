import { useEffect } from 'react';
import { Container } from '../../components/Container';
import { GenericHtml } from '../../components/GenericHtml';
import { Heading } from '../../components/Heading';
import { MainTemplate } from '../../templates/MainTemplate';

export function NotFound() {
  useEffect(() => {
    document.title = 'Página não encontrada - Chronos Pomodoro';
  }, []);

 return (
  <MainTemplate>
    <Container>
      <GenericHtml>
        <Heading>404 - Página não encontrada 🧭</Heading>
        {/* Exemplo de uso do RouterLink */}
        <RouterLink to="/">Voltar para a Home</RouterLink>
      </GenericHtml>
    </Container>
  </MainTemplate>
);
}

