packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libpq5
  /
when "precise"
  packages |= %w/
    libpq5
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
