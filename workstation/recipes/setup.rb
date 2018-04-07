package 'tree' do
    action :install
end

package 'ntp' do
    action :install
end

package 'git'

service 'ntpd' do
    action [:enable, :start]
end

