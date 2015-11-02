#
# Author:: Taliesin Sisson (<taliesins@yahoo.com>)
# Cookbook Name:: dbamp
# Attributes:: default
# Copyright 2014-2015, Chef Software, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

default['dbamp']['name'] = 'DBAmp'
default['dbamp']['filename'] = 'dbamp'
default['dbamp']['filenameextension'] = 'zip'
default['dbamp']['url'] = 'http://www.forceamp.com/hats/' + default['dbamp']['filename'] + '.' + default['dbamp']['filenameextension'] 
default['dbamp']['checksum'] = 'e13576edc17321ab45ed8a5a1043f6bba42594bb41f6a9f51a2d8a86f95ccc04'

default['dbamp']['properties']['APPDIR'] = 'C:\\Program Files\DBAmp\\'
default['dbamp']['properties']['TARGETDIR'] = 'C:\\Program Files\DBAmp\\'
default['dbamp']['properties']['PIDKEY'] = ''
default['dbamp']['properties']['USERNAME'] = ''
default['dbamp']['properties']['COMPANYNAME'] = ''