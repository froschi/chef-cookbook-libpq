include_recipe "libssl"
include_recipe "libldap"
include_recipe "libgssapi-krb5"
include_recipe "libkrb5"
include_recipe "libcomerr"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libpq5
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
