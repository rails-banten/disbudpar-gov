class CaseinAdminUser < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end
