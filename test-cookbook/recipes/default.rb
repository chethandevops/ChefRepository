#
# Cookbook:: test-cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe "test-cookbook::test-recipe"
include_recipe "test-cookbook::demo-recipe"

file 'def_test' do
  content "Default script included test and demo recipes from test-cookbook"
  action:create
end
