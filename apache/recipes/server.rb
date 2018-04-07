package 'httpd'

service 'httpd' do
    action [:enable, :start]
end

file '/var/www/html/index.html' do
    content "<html> <title>Welcome</title><h1> This is an Apache webserver installed via Chef receipe</h1> 
             <body> Hostname = #{node['hostname']} <br>
                    Ipaddress = #{node['ipaddress']} <br>
                    Total Memory = #{node['memory']['total']} <br>
                    Cpu Size = #{node['cpu']['0']['mhz']}
"
    mode "655"
    action :create
end


