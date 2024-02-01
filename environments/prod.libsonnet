
local base = import './base.libsonnet';

base {
  components +: {
    monitoring: {
      chart_name: 'kube-prometheus-stack',
      repo: 'https://prometheus-community.github.io/helm-charts/',
      kube_config: '/root/.kube/config'
    }
  }
}
