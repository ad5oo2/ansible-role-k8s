# Before install:
    * Check inventory
    * Check vars

# After init:
    * Untaint control-plane node(s) if it needed

# Before /bootstrap/bootstrap.sh
    * Make sure github ssh key for ArgoCD root app exists in ~/.ssh and
      have correct value **argocd_repo_sshkey_path**

