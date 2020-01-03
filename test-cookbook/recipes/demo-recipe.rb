#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'tree' do
  action:install
end

file '/myFile2' do
  content 'test-cookbook: No AWS No IT Job. No DevOps No Survival in Industry'
  action:create
  owner 'root'
  group 'root'
end

%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
   action:install
  end
end

%w(chethan akshay manash nilesh abhishek).each do |u|
 user u do
  action:create
  password 'chef123'
 end
end
