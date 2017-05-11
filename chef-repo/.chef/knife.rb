# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "praagar"
client_key               "#{current_dir}/praagar.pem"
chef_server_url          "https://api.chef.io/organizations/oraclehsgbu"
cookbook_path            ["#{current_dir}/../cookbooks"]
# http_proxy					'http://www-proxy.jp.oracle.com'
# https_proxy					'http://www-proxy.jp.oracle.com'
knife[:editor] = "notepad"