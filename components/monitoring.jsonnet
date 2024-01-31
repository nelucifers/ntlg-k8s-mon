local parseYaml = std.native("parseYaml");
local helm = importstr 'data://helmInstall';

// [
//   {
//     apiVersion: 'v1',
//     kind: 'Namespace',
//     metadata: {
//         name: std.extVar('qbec.io/env'),
//     },
//   },
  parseYaml(helm)
// ]

// local ns = std.extVar('qbec.io/defaultNs');
// local parsed = parseYaml(m);

// std.parseYaml(std.strReplace(m, 'namespace: "default"', 'namespace: "%s"' % ns))

// [
//   {
//     apiVersion: 'v1',
//     kind: 'Namespace',
//     metadata: {
//         name: env.namespace,
//     },
//   },
//   parseYaml(m),
// ]

// local p = import '../params.libsonnet';
// local params = p.components.kube_prometheus_stack;

// std.native('expandHelmTemplate')(
//   '../helm-charts/charts/kube-prometheus-stack',
//   params.values,
//   {
//     nameTemplate: params.name,
//     namespace: env.namespace,
//     thisFile: std.thisFile,
//     verbose: true,
//   }
// )