## Project Overview

This repository contains Helm charts developed as part of various training sessions and courses. Each chart is designed to demonstrate best practices for packaging, deploying, and managing Kubernetes applications using Helm.

## Folder Structure

- `README.md` - Project documentation and usage instructions.
- `Chart.yaml` - Details about the version of the chart and application.
- `templates/` - Templates and _helpers to help manage and deploy your Nginx application with custom values and validations.
- `values.yaml` - Default values for Nginx demo application.

## Getting Started

1. Clone this repository:
    ```sh
    git clone https://github.com/your-org/helm-charts.git
    cd helm-charts
    ```
2. Navigate to the desired chart directory.
3. Install a chart using Helm:
    ```sh
    helm install <release-name> ./charts/<chart-name>
    ```

## Prerequisites

- [Helm 3.x](https://helm.sh/)
- Access to a Kubernetes cluster

## License

This project is licensed under the MIT License.