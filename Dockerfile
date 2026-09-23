# 1. Imagem base minimalista para reduzir a superfície de ataque
FROM python:3.10-slim

# 2. Criação de utilizador sem privilégios de root (Hardening)
RUN useradd -m -u 1000 appuser

WORKDIR /app

# 3. Copia e instala as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt || true

# 4. Copia o código-fonte
COPY src/ ./src/

# 5. Muda a execução para o utilizador seguro
USER appuser

# 6. Comando de execução da aplicação
CMD ["python", "src/main.py"]
