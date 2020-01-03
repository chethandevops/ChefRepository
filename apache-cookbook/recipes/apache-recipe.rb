#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'httpd' do
  action:install
end

file '/var/www/html/index.html' do
  content "<html>
	      <title>DevOps:Chef</title>
		<body bgcolor='violet'>
		<b><i>Hi guys, welcome to DevOps :: Chef Classes::Updated Website</i></b>
		</body>
	   </html>"
  action:create
end

service 'httpd' do
  action [:enable, :start]
end
