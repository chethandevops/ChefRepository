#
# Cookbook:: apache-cookbook
# Recipe:: robofile-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.


file '/roboFile' do
  content "This is a small script to get attributes
  HOSTNAME = #{node['hostname']}
  IP-ADDRESS = #{node['ipaddress']}
  CPU = #{node['cpu']['0']['mhz']}
  MEMORY = #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action:create
end
 
