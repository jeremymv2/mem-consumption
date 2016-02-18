default[:test]=[{:baz => 'A', :qux => 'B'}]
default['chef']['dump_attributes'] = 'true'
default['chef']['dump']['file'] = '/tmp/dump.json' 
default['firewall']['allow_ssh'] = true

override['chef_client']['config']['log_location'] = %{Chef::Log::Syslog.new('chef-client', ::Syslog::LOG_DAEMON)}
#override['chef_client']['config']['log_location'] = %{STDOUT}
