class Foo < Settingslogic
  source "#{Rails.root}/config/settings/foo.yml"
  # namespace Rails.env
end