# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup

  	@user = User.new(email: 'shiou@abc.com', name: 'Shiou', password: 'welcome123', password_confirmation: 'welcome123')
  	
  end

  test "user should be valid" do
    assert @user.valid?
  end


  test "user password should have content" do
  	@user.password = ""

    assert_not @user.valid?
  end

  test "user is invalid without an email" do
  	@user.email = nil

  	assert_not @user.valid?
  end

  test "user email should not be empty" do
  	@user.email = ""

    assert_not @user.valid?
  end

  test "user email is unique" do

    @user.save!
  	user2 = @user.dup

  	assert_not user2.save
  	
  end


  test "user email is case incensitive" do

    @user.save!

  	user2 = @user.dup

  	user2.email = user2.email.upcase

  	assert_not user2.save
  	
  end

  test "user should have a name" do

  	@user.name = nil

  	assert_not @user.valid?
  	
  end


  test "user name should be under limit length" do

  	@user.name = 'a' * 41

  	assert_not @user.valid?
  	
  end

  test "user email have valid format" do

  	@user.email = 'yong@abc'
  	assert_not @user.valid?

  end

  test "user email have valid format 2" do

  	@user.email = 'yong'
  	assert_not @user.valid?

  	
  end

  test "user email have valid format 3" do

  	@user.email = 'yong.abc.com'
  	assert_not @user.valid?

  	

  end

  test "user email have valid format 4" do

  	@user.email = 'yonglee2@abc.com'
  	assert @user.valid?

  end

  test "user email have valid format 5" do

    @user.email = '123yong@abc.com'
  	assert @user.valid?

  end

  test "user email have valid format 6" do

    @user.email = 'yong.abc@abc.com'
  	assert @user.valid?

  end



  test "user email should " do
  	
  end


  test "c2" do
  	
  end
  
  test "c3" do
  	
  end


  test "bb" do
  	
  end
  
  test "b" do
  	
  end











end
