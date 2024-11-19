resource "google_cloudbuild_trigger" "trigger" {
  name = var.name
  location = "us-central1"
  project  = var.project
  disabled = var.disabled
  # git_file_source {
  #   uri = var.uri
  #   path = var.path
  #   repo_type = var.repo_type
  #   revision  = var.revision
  #   }
  github {
    owner = var.owner
    name  = var.github_reponame
    push {
      branch       = var.branch
      invert_regex = var.invert_regex
    }
  }
  substitutions = {
    _TFACTION = "apply"
  }

  service_account = "projects/${var.project}/serviceAccounts/${var.service_account}"
  filename = var.path
}
