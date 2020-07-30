class User < ApplicationRecord
has_many :friended_users, foreign_key: :friendee_id, class_name: 'Friendship'
has_many :frienders, through: :friended_users

has_many :friending_users, foreign_key: :friender_id, class_name: 'Friendship'
has_many :friendees, through: :friending_users

has_many :entries

has_many :sent_affirmations, foreign_key: :sender_id, class_name: "Affirmation"
has_many :recipients, through: :sent_affirmations

has_many :received_affirmations, foreign_key: :recipient_id, class_name: "Affirmation"
has_many :senders, through: :received_affirmations





  def affirmations
    self.received_affirmations + self.sent_affirmations
  end

  def friends
    self.frienders + self.friendees
  end

  def friendships
    self.friending_users + self.friended_users
  end

  def friend_requests
    self.friending_users.where(accepted == false)
  end

end
