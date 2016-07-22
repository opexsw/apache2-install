
default['apache2-install']['version'] = '2.4' #optional '2.2'
default['apache2-install']['default_site_port']    = '80'
default['apache2-install']['listen']['*']    = ['80']
default['apache2-install']['timeout']           = 300
default['apache2-install']['contact']           = 'ops@example.com'
default['apache2-install']['default_site_enabled'] = false