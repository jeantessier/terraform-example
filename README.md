# Terraform Tutorial

Based on https://learn.hashicorp.com/terraform/getting-started/install.html

And influenced by this series of articles by GruntWork:

- [Why Terraform?](https://blog.gruntwork.io/why-we-use-terraform-and-not-chef-puppet-ansible-saltstack-or-cloudformation-7989dad2865c)
- [Terraform Basics](https://blog.gruntwork.io/an-introduction-to-terraform-f17df9c6d180)
- [Isolation (workspaces and folders)](https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa)
- [Modules](https://blog.gruntwork.io/how-to-create-reusable-infrastructure-with-terraform-modules-25526d65f73d)

## Staging

Start it with:

    $ cd stage
    $ terraform init
    $ terraform apply

It will print out the name of the Docker container and the HTTP port to connect
to it.

Then point your browser to `http://localhost:_<port>_`.

Stop it with:

    $ terraform destroy

## Production

Start it with:

    $ cd prod
    $ terraform init
    $ terraform apply

It will print out the name of the Docker container and the HTTP port to connect
to it.

Then point your browser to `http://localhost:_<port>_`.

Stop it with:

    $ terraform destroy
