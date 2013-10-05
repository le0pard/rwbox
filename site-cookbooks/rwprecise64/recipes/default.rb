#
# Cookbook Name:: rwprecise64
# Recipe:: default
#
# Copyright (C) 2013 Alexey Vasiliev
#
# All rights reserved - MIT
#

# CVS
package "git-core"
package "mercurial"

# Time sync
package "ntp"

# rmagick
package "imagemagick"
package "libmagickwand-dev"

# curb
package "libcurl3"
package "libcurl3-gnutls"
package "libcurl4-openssl-dev"

# utils
package "htop"


include_recipe 'rwprecise64::mysql'
include_recipe 'rwprecise64::postgresql'