# IaC
## Terraform
I couldn't find any Terraform templates I could refer to while building mine, so I built this one to help others in the same situation. This template is provided for training and is not designed for production. 

It contains some basic confirmations that apply once you've set up your Trunks, DID numbers, Phones, Locations, etc.

### Using the template
>*** This template is provided for training purposes and should only be used in a lab or dev environment ***<br>

Ensure you have Terraform [installed](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) on your machine. 
Clone the repo `git clone https://github.com/genesysedge/IaC.git`<br>
Open a terminal window inside the Terraform directory or cd into it.<br>
copy the [terraform.tfvars.example](./Terraform/terraform.tfvars.example) file to terraform.tfvsars<br>
In the new terraform.tfvars file, add your Client ID, Client Secret, and region to the corresponding variables, replacing the 'XXXXXXXXXXXX' that is present.<br>
Run `terraform init` follows by Run `terraform plan`<br>
Assuming the above completes without errors, run `terraform apply` to apply the configuration. You can also use `terraform apply --auto-approve` if you call the plan from a script to avoid the confirmation. 

### Modifying the template
Documentation for the Genesys Cloud Terraform provider can be found [here](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest/docs). You can also use the [API Explorer](https://developer.genesys.cloud/devapps/api-explorer) to help determine how to configure the resource. On each resource page, there is a list of the API endpoints it uses. Use these hyperlinks to access the API explorer for that endpoint. From there, you can turn off pro mode under the request body. This will give you a semi-guided process to populate the needed fields. Then, copy the JSON schema shown on the right into your Terraform resource. In most cases, the copied schema can be directly pasted after the resource name in your configuration file. Example 
```hcl
resource "genesys_cloud_routing_queue" "example_queue" {
    COPIED_SCHEMA_GOES_HERE
}
```

The usage examples provided do not show the full JSON for most resources. To see the full JSON schema, you can use the API Explorer. While on the Terraform provider page for the resource you want to use, look under the "API Usage" section to see the APIs it will call. Determine which API call and method is relevant to your needs, then use the hyperlink to access the API explorer for that endpoint. For example, I want to see the full JSON schema for the genesyscloud_architect_datatable resource. I'll go to that section on the provider page, then look at the API Usage. I'm going to create a table, so I'll want the [POST method](https://developer.genesys.cloud/routing/architect/#post-api-v2-flows-datatables)
