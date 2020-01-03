#
# Cookbook:: apache-cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe "apache-cookbook::apache-recipe"
include_recipe "apache-cookbook::robofile-recipe"

file '/def_apache' do
  content "Include Recipe from default recipe from apache cook book successfull"
  action:create
end
