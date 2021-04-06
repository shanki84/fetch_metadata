# fetch_metadata
To Fetch EC2 metadata details using ruby

execute the file using the command:
# ruby ec2-metadata.rb

the file here prints the below output

 {
    "instance_id" : "i-12345678"
    "ami_id" : "ami-0abcdef1234567890",
    "instance_type" : "m1.small",
    "local_hostname" : "ip-10-251-50-12.ec2.internal",
    "public_hostname" : "ec2-203-0-113-25.compute-1.amazonaws.com",
    "reservation-id : "r-0efghijk987654321"
    "security_groups" : "sg-1454"
}

we shall also use the /dynamic/instance-identity/document 
wget -q -O - http://169.254.169.254/latest/dynamic/instance-identity/document

This will get you JSON data such as this - with only a single request.
 {
    "devpayProductCodes" : null,
    "privateIp" : "10.1.2.3",
    "region" : "us-east-1",
    "kernelId" : "aki-12345678",
    "ramdiskId" : null,
    "availabilityZone" : "us-east-1a",
    "accountId" : "123456789abc",
    "version" : "2010-08-31",
    "instanceId" : "i-12345678",
    "billingProducts" : null,
    "architecture" : "x86_64",
    "imageId" : "ami-12345678",
    "pendingTime" : "2014-01-23T45:01:23Z",
    "instanceType" : "m1.small"
}

