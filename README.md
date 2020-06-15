Create Kubernetes cluster action
================================

This action creates a Kubernetes cluster, optimised for testing, using [Krucible](https://usekrucible.com).

Example usage
-------------
```yaml
---
jobs:
  create-and-test-cluster:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2

    - name: Create a kubernetes cluster
      uses: ./
      id: create-cluster
      with:
        duration: 1
        display-name: github-test-cluster
        krucible-account-id: ${{ secrets.KRUCIBLEACCOUNTID }}
        krucible-api-key-id: ${{ secrets.KRUCIBLEAPIKEYID }}
        krucible-api-key-secret: ${{ secrets.KRUCIBLEAPIKEYSECRET }}

    - name: Run a kubectl command
      uses: "docker://bitnami/kubectl:1.18"
      id: run-kubectl
      with:
        args: 'get pods --all-namespaces'
```

Inputs
------

All inputs are required. API keys and the account ID can be found at https://usekrucible.com/api-keys.

### `display-name`

The display name of the cluster in Krucible.

### `duration`

The length of time the cluster should persist for in hours. Must either be the
string "permanent" or an integer between one and six.

### `krucible-account-id`

The ID of the Krucible account.

### `krucible-api-key-id`

The ID of the Krucible API key.

### `krucible-api-key-secret`

The secret of the Krucible API key.

Outputs
------

### `cluster-id`

The ID of the created Kubernetes cluster in Krucible.
