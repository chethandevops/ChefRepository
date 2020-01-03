#
# Cookbook:: apache-cookbook
# Recipe:: linux-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

=begin
Script to Run Linux Commands
execute "script to run linux commands" do
  command <<-EOH
  mkdir /home/auTasks
  touch /home/auTasks/automation-{1..10}.txt
  EOH
end
=end

user "chetan" do
  action:create
end

group "devops" do
  action:create
  members 'chetan'
end
