variable "prefix" {
  description = "Prefix fuer alle Ressourcennamen"
  type        = string
  default     = "rd2"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "West US 3"
}

variable "sku_name" {
  description = "App Service Plan SKU"
  type        = string
  default     = "B1" # Basic
}

variable "node_version" {
  description = "Node.js Version fuer den App Service"
  type        = string
  default     = "22-lts"
}

variable "github_org" {
  description = "GitHub Benutzer- oder Orga-Name, z.B. radoelker"
  type        = string
}

variable "github_repo" {
  description = "Name des GitHub Repos, z.B. noderino_js"
  type        = string
}

variable "github_branch" {
  description = "Branch, der deployen darf"
  type        = string
  default     = "main"
}
