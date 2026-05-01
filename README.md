# Before install:
* Check inventory
* Check vars

# After init:
* Copy cluster config to ~/.kube from ./bootstrap/admin.conf
* Untaint control-plane node(s) if needed

# Before /bootstrap/bootstrap.sh
* Make sure github ssh key for ArgoCD repository placed
  at `argocd_repo_sshkey_path` variable

* Restore sealed-secrets master key from backup if exists
  * backup:
    ```
    kubectl get secret -n kube-system \
    -l sealedsecrets.bitnami.com/sealed-secrets-key \
    -o yaml > ./backup/sealed-secrets.key
    ```
  * restore:
    ```
    kubectl apply -f ./backup/sealed-secret.key
    ```
