remote_file "#{Chef::Config[:file_cache_path]}/spiff.zip" do
  source node[:spiff][:package_url]
  action :create_if_missing
end

execute "Extract spiff" do
  command "unzip -d /usr/bin #{Chef::Config[:file_cache_path]}/spiff.zip"
end
