variable "gke_machine_type" {
  default = "f1-micro"
}

variable gcp_project_id {
  default = "resonant-fiber-253208"
}

variable gcp_project_name {
  default = "My First Project"
}

variable "gcp_billing_accpint_name" {
  default = "Kapil Gidwani"
}

variable region {
  default = "asia-south1"
}

variable zone {
  default = "asia-south1-a"
}

variable network_name {
  default = "tf-gke-k8s-my-network"
}
