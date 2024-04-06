const EC2 = {
  name: 'test',
  instanceType: 't2-micro',
  monitoring: true,
  tags: {
    terraform: 'true',
    environment: 'dev'
  }
}