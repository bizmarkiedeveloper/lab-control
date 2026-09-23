# 🧪 Lab Control - Sistema de Análises Laboratoriais (DevSecOps)

[![Security & DevSecOps Checks](https://github.com/bizmarkiedeveloper/lab-control/actions/workflows/security-scan.yml/badge.svg)](https://github.com/bizmarkiedeveloper/lab-control/actions/workflows/security-scan.yml)

Sistema automatizado para controlo e rastreio de análises laboratoriais, desenvolvido com foco em **Cloud Security** e **DevSecOps**.

## 🛡️ Práticas de Segurança Implementadas

* **Análise Estática de Segurança (SAST):** Monitorização contínua do código Python com a ferramenta **Bandit**.
* **Prevenção de Fuga de Credenciais:** Varredura automática em commits com **Gitleaks** para impedir a exposição de chaves e segredos.
* **Segurança de Containers (Hardening):** `Dockerfile` otimizado e configurado para execução com utilizador não-root (`appuser`), reduzindo a superfície de ataque.
* **Gestão de Dependências (SCA):** Análise automatizada de vulnerabilidades conhecidas com **Safety**.

## 🚀 Estrutura do Projeto

```text
lab-control/
├── .github/workflows/  # Pipelines de CI/CD para testes automatizados de segurança
├── src/                # Código-fonte da aplicação
├── .gitignore          # Proteção contra envio inadvertido de credenciais e ficheiros sensíveis
├── Dockerfile          # Containerização hardened da aplicação
└── requirements.txt    # Dependências com versões explícitas
