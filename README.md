# Weather App on Kubernetes with Observability

A weather app deployed on Kubernetes (Helm, MetalLB, NGINX Ingress), built and deployed with GitHub Actions, and monitored with Prometheus and Grafana.
Built during my DevOps Master's program as a training project.

## Stack
Docker, Kubernetes (k3s), Helm, MetalLB, NGINX Ingress, GitHub Actions, Prometheus, Grafana, Ansible

## Automation
`ansible/deploy.yml` sets up a k3s server, installs Helm, creates the staging and prod namespaces, deploys the weather-app chart to both, and schedules a daily etcd backup with cron.

