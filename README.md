# Terraform - Infrastruktura na Azure

Witaj w repozytorium zawierającym kod źródłowy do automatycznego tworzenia i zarządzania infrastrukturą na platformie Microsoft Azure przy użyciu Terraform.

## Zawartość repozytorium

W tym repozytorium znajdują się:
- Pliki konfiguracyjne Terraform (`*.tf`), które definiują zasoby infrastruktury w Azure.
- Plik `variables.tf` zdefiniowany dla parametrów dynamicznych.
- Plik `outputs.tf` zawierający wartości wyjściowe, pomocne do integracji z innymi systemami.
- Plik `terraform.tfstate` (nie powinien być śledzony w repozytorium, upewnij się, że jest na liście `.gitignore`).

## Wymagania wstępne

- Konto Microsoft Azure z odpowiednimi uprawnieniami do tworzenia zasobów.
- Zainstalowany [Terraform](https://www.terraform.io/downloads.html) (w wersji zgodnej z `terraform-version` w pliku `.terraform-version`, jeśli jest obecny).
- Zainstalowany [Azure CLI](https://learn.microsoft.com/pl-pl/cli/azure/install-azure-cli), aby zalogować się do Azure i skonfigurować dostęp.
