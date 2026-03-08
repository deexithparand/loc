```text
███████╗██╗   ██╗ ██████╗
██╔════╝██║   ██║██╔════╝
█████╗  ██║   ██║██║     
██╔══╝  ██║   ██║██║     
██║     ╚██████╔╝╚██████╗
╚═╝      ╚═════╝  ╚═════╝

Forge Your Cloud — Learn Terraform Locally
```

---
## LOC — Local Ops Cloud

LOC is a **developer-focused CLI** for learning Terraform the fun way — **completely locally**, with **no cloud bills**.

It allows you to spin up, manage, and destroy infrastructure environments like `dev` and `prod` using **Terraform** and **Docker** containers. This project is a **hobby playground**, not a production tool, designed to let you experiment freely while learning Terraform concepts and Golang CLI development.

With LOC, you can:

* Pull and run container images dynamically from configuration.
* Start, stop, and manage environments with simple commands:

  * `loc up <env>` — Start a specified environment
  * `loc down <env>` — Tear down an environment
  * `loc shell` — Access a running container shell
* Learn Terraform concepts such as:

  * Modules
  * Variables and TFVARS
  * `for_each` loops
  * `count` for multiple resources
  * Remote state and backend configs
  * Environment-specific provisioning

---

## Project Structure

```text
├── cli               # Golang CLI code (Cobra commands)
├── terraform
│   ├── environments  # Environment-specific tfvars and backend configs
│   └── infra         # Terraform modules and main configurations
│       ├── 01_global
│       └── 02_core
```

* `cli/` — Contains the LOC CLI written in Golang.
* `terraform/environments/` — Separate `dev` and `prod` directories, each with TFVARS and backend configs.
* `terraform/infra/` — Terraform modules and main configurations, demonstrating `for_each`, `count`, and modular structure.

---

## Prerequisites

* **Docker** installed on your machine.
* **Terraform CLI** installed.
* Golang only if you want to **build the CLI** from source.

---

## Contributing & Build Your Own CLI

LOC is a **weekend hobby project** to learn Terraform locally in a fun and safe way — no cloud bills required.

You’re welcome to **fork this project and build your own version** of the CLI. Experiment with infrastructure, containers, and environments while learning Terraform and Go. Happy to see interesting contributions, ideas, and improvements!

> **Fork LOC on GitHub:** [https://github.com/deexithparand/loc/fork](https://github.com/deexithparand/loc/fork)

---
## Terraform Folder Structure Script

Manually creating the Terraform folder structure for every project can be tedious. I’ve written a **shell script** to automate it. You can **pull and run it directly**:

```bash
curl -L https://gist.githubusercontent.com/deexithparand/cfc0c7020e8ffc4d0d843bf573e0d60c/raw/terraform-setup.sh -o terraform-setup.sh 
chmod +x terraform-setup.sh
./terraform-setup.sh
rm terraform-setup.sh
```

This script will automatically set up:

This script sets up the full project skeleton, so you can **start learning Terraform immediately** without worrying about folder structures.

---


