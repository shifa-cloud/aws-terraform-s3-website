# AWS S3 Static Website with Terraform

A serverless static website deployed using Infrastructure-as-Code (IaC).  
**Key Features**:  
✅ S3 bucket with static website hosting  
✅ Secure public access via bucket policy  
✅ Terraform automation  

## Screenshot Proof  
| Terraform Deployment | Live Website |  
|----------------------|--------------|  
| ![Terminal Output](Screenshots/terminal-apply.png) | ![Website](Screenshots/website-live.png) |  

| AWS S3 Console | Bucket Policy |  
|----------------|---------------|  
| ![S3 Console](Screenshots/s3-console.png) | ![Policy](Screenshots/bucket-policy.png) |  

## Files  
- [`main.tf`](main.tf): Terraform configuration  
- [`index.html`](index.html): Minimal website code  

## How to Replicate  
```bash
terraform init  
terraform apply  # Destroys with `terraform destroy`  
