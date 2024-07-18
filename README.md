# MyFirstStaticWebpageUsingS3bucket

Hi all this is was my first project which i have create few months back, i am uploading this late. 

In this small project i have deploy an Index.html page using the S3 bucket Services > enable the static website hosting. I have allow the public access so any one with my static website link (http://pawans3buckethostingwebsite09.s3-website-ap-southeast-1.amazonaws.com) can access my webpage. 

So, i have made this infrastructure using the terraform, i have write the terraform file with the help of terraform AWS refference there you can get to know about the code required to build the AWS infrastructure using terraform. 

1--- First i have created the main.tf file where i have written the tf file to create S3 bucket. 
2--- I have add owernership rule 
3--- I have allow the public access 
4--- I have allow ACLs to give control over buckets AND objects, policies are only at the bucket level.
5--- i have uploaded the Index.html file and images used in that webpage in the S3 bucket
6--- in last i have add the website_configure code this has enable the the static website hosting. 

Commands used-
            terraform init --- to initialize the terraform file 
            terraform plan --- for dry run this is used before apply command to check our TF file is working fine or not. 
            terraform apply --- this command will going to create the infrastructure on the CLOUD provide in my case it was AWS

In this project i have used Virtual Studio to write my TF file and Index.html file and also i have configure my AWS account with my local machine without configure your AWS account you will not able to create an Infrastructure. 
