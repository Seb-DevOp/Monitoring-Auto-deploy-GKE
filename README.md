# GKE Monitoring Stack 🚀

Infrastructure complète de monitoring déployée sur GKE avec :

- Terraform pour provisionner le cluster GKE
- Helm pour installer Prometheus + Grafana
- GitHub Actions pour la CI/CD
- Ingress NGINX + HTTPS via cert-manager

## 🚀 Stack technique

| Composant      | Tech |
|----------------|------|
| Cloud Provider | GCP |
| Orchestration  | GKE |
| Infra as Code  | Terraform |
| CI/CD          | GitHub Actions |
| Monitoring     | Prometheus + Grafana |
| Ingress        | NGINX + TLS Let's Encrypt |

## 📦 Déploiement automatique

Chaque push sur `main` déploie automatiquement :
1. Cluster GKE
2. Stack de monitoring
3. Ingress HTTPS

## 🔐 Sécurité

- TLS automatique via cert-manager
Nom du Secret GitHub ->	Valeur attendue
GCP_PROJECT_ID	    ->   Ton ID de projet GCP (ex: my-gcp-devops)
GCP_SA_KEY	        ->   Le contenu du fichier JSON de ta service account
GRAFANA_PASSWORD	->   Le mot de passe admin que tu souhaites pour Grafana


## 📚 TODO

- Ajouter Alertmanager
- Stockage persisté Grafana
- Autoscaling Prometheus Pods
