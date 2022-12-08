project     = "gcp=project"
region      = "europe-west1"
namespace   = "proxy-md"
env         = "west1-dev"
kms_project = "kms-project-dev"
zone        = "europe-west1-b"

machine_type = "n1-standard-1"

firewall_tags = [
  "t-all-dev-in-drn-jumpservers",
  "add-firewall-tags-list-here"
]
boot_disk_auto_delete = "true"
boot_disk_image       = "projects/gcp-projet/global/images/family/gke-proxy-type3-image"
boot_disk_size        = "150"
boot_disk_type        = "pd-standerd"



network    = "default"

instance_service_account = "gke-proxy@gcp-account.com"
instance_scopes = [
  "https://www.googleapis.com/auth/cloud-platform"
]
