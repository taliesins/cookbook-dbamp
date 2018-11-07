#
# Author:: Taliesin Sisson (<taliesins@yahoo.com>)
# Cookbook Name:: dbamp
# Recipe:: default
#
# Copyright (C) 2015 Taliesin Sisson
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

::Chef::Recipe.send(:include, Windows::Helper)
is_dbamp_installed = is_package_installed?(node['dbamp']['name'])
extract_path = "#{Chef::Config['file_cache_path']}/#{node['dbamp']['filename']}/#{node['dbamp']['checksum']}"

if node['dbamp']['properties']['PIDKEY'] == ''
  raise 'Please configure dbamp serial key in PIDKEY attribute'
end

windows_zipfile extract_path do
  source node['dbamp']['url']
  checksum node['dbamp']['checksum']
  action :unzip
  not_if { is_dbamp_installed || ::File.directory?(extract_path) }
end

windows_package node['dbamp']['name'] do
  source "#{extract_path}/DBAmpInstall.exe"
  installer_type :custom
  options "/quiet APPDIR=\"#{node['dbamp']['properties']['APPDIR']}\" TARGETDIR=\"#{node['dbamp']['properties']['TARGETDIR']}\" PIDKEY=\"#{node['dbamp']['properties']['PIDKEY']}\" USERNAME=\"#{node['dbamp']['properties']['USERNAME']}\" COMPANYNAME=\"#{node['dbamp']['properties']['COMPANYNAME']}\""
  not_if { is_dbamp_installed }
end
