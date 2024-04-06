
const VPC = {
  region: 'us-east-1',
  availabilityZone: 'us-east-1a',
  name: 'my-vpc',
  cidr: '10.1.1.0/16',
  pubicSubnet:  ["10.0.101.0/24"],
  privateSubnet: ["10.0.1.0/24"],
  enableNatGateway: true,
  enableVpnGateway: true,
  tags: {
    terraform: 'true',
    environment: 'dev'
  }
}