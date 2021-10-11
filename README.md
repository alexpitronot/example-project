INT final project - David Gitman, Yossi Shalumov, Gleb Tyunikov.

This prject consists of three different branches:

### *Main branch*

Consists of our infrastructure terraform script, that we use to build our kubernetes cluster. 
It needs to be run manually or it will run automatically when there is a change to the branch. 
If the main branch triggers at a pull request the terraform will perform: 

    terraform init && plan
If its a merge/push that has no syntax errors it will perform: 
    
    terraform apply

Which will build the kubernetes cluster in GC environment.

### *Inf branch* 

Is our testing branch in which, we try and see different approaches, 
after we decide to go live with anything from the infra and the app we merge it to one of the other branches. (CI Branch).

### *App branch* 

 Is our main application branch which consists of our "TEMP-CONV" app and the deployment pipeline. (CD branch).

### *Tools that we are using:*
Google Cloud - Our cloud infra provider

Kubernetes (GKE) - Our cluster

Networking - The connectivity of our cluster & app to the world and between themself

Linux - The OS the app runs on, and some bash commands

Terraform - The infrastructure management tool

Github actions - CI/CD manager tool

Docker - App wraping environmnet

Python - The app language

### *Prerequisites:*

GC account with the following:

 - Two service accounts with owner permissions (Not best practice):
 
    1 - Cluster
    
    2 - Terraform
 








