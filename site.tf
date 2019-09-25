provider "google" {
 credentials = "${file("cred.json")}"
 project     = "${var.project_id}"
 region      = "${var.region}"

 scopes = [
    # Default scopes
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
    "https://www.googleapis.com/auth/devstorage.full_control",

    # Required for google_client_openid_userinfo
    "https://www.googleapis.com/auth/userinfo.email",
  ]
}

module "gke-cluster" {
  source = "./cluster"

  gcp_project_id   = "${var.project_id}"
  gcp_project_name = "${var.project_name}"
}

output cluster_zone {
  value = "${module.gke-cluster.cluster_zone}"
}

output "cluster_name" {
  value = "${module.gke-cluster.cluster_name}"
}
