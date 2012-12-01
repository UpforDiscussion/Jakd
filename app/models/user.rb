# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  username             :string(255)
#  password_digest      :string(255)
#  photo                :string(255)
#  account_balance      :integer          default(1000)
#  games_won            :integer
#  games_lost           :integer
#  lifetime_amount_won  :integer
#  lifetime_amount_lost :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class User < ActiveRecord::Base
    belongs_to :game
    has_secure_password

    mount_uploader :avatar, AvatarUploader
    validates :username, :avatar, :presence => true
    scope :online_users, where(:logged_in => true)

    def set_login(status)
        self.logged_in = status
        self.save
    end
end
