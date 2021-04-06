require 'rubygems'
require 'aws-sdk'
require 'net/http'

metadata_endpoint = 'http://169.254.169.254/latest/meta-data/'
  
  def  find_metadata(key)
  Net::HTTP.get( URI.parse( metadata_endpoint + key ) )
  end

instance_type = find_metadata(‘instance-type’)
ami_id = find_metadata(‘ami-id’)
instance_id = find_metadata(‘instance-id’)
local_hostname = find_metadata(‘local-hostname’)
public_hostname = find_metadata(‘public-hostname’)
reservation_id = find_metadata(‘reservation-id’)
security_groups = find_metadata(‘security-groups’)

print "{\"instance_id\": \"${instance_id}\",\"ami_id\": \"${ami_id}\",\" instance_type\": \"${instance_type}\",\" local_hostname\": \"${ local_hostname}\",\"public_hostname\": \"${public_hostname}\",\"reservation_id\": \"${reservation_id}\",\"security_groups\": \"${security_groups}\"}"
