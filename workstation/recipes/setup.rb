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

template '/etc/motd' do
    manage_symlink_source true
    source 'motd.erb'
    action :create
end

