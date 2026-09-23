import os
import logging

# Configuração de logs para auditoria de segurança
logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

def main():
    environment = os.getenv("APP_ENV", "development")
    logging.info(f"Iniciando LAB CONTROL | Ambiente: {environment}")
    print("==================================================")
    print(" LAB CONTROL - Sistema de Rastreamento de Análises")
    print(" Status: Operacional e Monitorado")
    print("==================================================")

if __name__ == "__main__":
    main()
