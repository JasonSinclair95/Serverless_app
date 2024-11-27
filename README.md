# Serverless Application Deployment

This project enables the deployment of a scalable serverless HTTP application leveraging **AWS Lambda** and **API Gateway**, managed via **Terraform**.

### Remote State Configuration

The Terraform configuration utilizes a **remote backend** for state management, with an **Amazon S3 bucket** configured as the storage backend. This ensures centralized, consistent state tracking across deployment environments.

---

## Automated Deployment Workflow

The deployment process is automated using **GitHub Actions**, streamlining testing and deployment to designated environments based on branch activity.

### Pull Request Workflow (Test/Dev Environment)

- When a pull request (PR) is opened, the following steps are executed to ensure quality and maintain best practices:

1. **Terraform Initialization and Deployment**:
   - Runs `terraform init`, `terraform plan`, and `terraform apply` to provision infrastructure in a **test environment**.

2. **API Gateway Validation**:
   - Verifies the functionality of the API Gateway endpoint to confirm the deployed resources work as expected.

3. **Unit Testing**:
   - Executes unit tests for the `hello_world` Lambda function to validate its logic and behavior and produces a coverage repot.

4. **Documentation Generation**:
   - Generates Terraform documentation to keep the configuration understandable and maintainable. This step ensures all resources and modules are well-documented for future reference.

5. **Linting and Formatting**:
   - Runs linting and formatting checks for both Terraform and Python files, enforcing code quality standards and consistency across the project.

6. **Environment Cleanup**:
   - Destroys the test environment after validation, ensuring that resources are ephemeral and isolated for every PR, minimizing costs and avoiding resource conflicts.


### Main Branch Workflow (Production Environment)
- Once a PR is approved and merged into `main`, the application is deployed to the **production environment**. This ensures only validated changes impact the production deployment.

---

## Manual Deployment: Adding a New Python Lambda Function

Follow these steps to manually deploy a new **Python Lambda function**:

### Prerequisites
Ensure the following tools are installed:
- **Terraform v1.3.9**
- **Pre-commit v0.19.0**

### Steps

1. **Create Lambda Function Directory**
   Add your Lambda function to the `lambda_function_files` directory, ensuring the directory name matches the function file. For example:

2. **Maintain Environment Consistency**
To add a new environment:
- Copy the files from the `test` environment directory to a new folder named after the environment.
- Update `main.tf` to adjust any hardcoded values specific to the new environment.
- Modify `provider.tf` to configure the backend for the new environment. For guidance, refer to the [Terraform Backend Documentation](https://developer.hashicorp.com/terraform/language/backend).

3. **Deploy the Lambda Function**
Once the directory structure and configuration are prepared, deploy the Lambda function using the following commands:
```bash
terraform init
terraform plan
terraform apply
