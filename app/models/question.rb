class Question < ActiveRecord::Base
  attr_accessible :text, :poll_id
  validates :text, presence: true, length: { maximum: 500 }
  validates :poll_id, presence: true

  belongs_to :poll
  has_many :answers, :dependent => :destroy

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Question destroyed'
  end
  # has_one :user, :through => :poll
  # has_one :team, :through => :user
  #
  # validate :user_check
  # # validate :team_check
  #
  # def user_check
  #   self.user.id
  # end
  #
  # def team_check
  #   self.team.id
  # end
end