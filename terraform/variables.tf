variable "project_id" {
  type        = string
  description = "ID du projet GCP"
}

variable "region" {
  type        = string
  default     = "europe-west1-b"
  description = "Région du cluster GKE"
}

variable "grafana_admin_password" {
  type        = string
  description = "Mot de passe admin pour Grafana"
  sensitive   = true
}
