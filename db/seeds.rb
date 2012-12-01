

['sarah', 'sally', 'jenny', 'francis'].each_with_index do |person, index|
User.create(:username => person, :password => 'a', :password_confirmation => 'a', :remote_avatar_url => urls[index])
end