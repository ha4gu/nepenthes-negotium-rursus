# == Schema Information
#
# Table name: projects
#
#  id          :uuid             not null, primary key
#  description :text
#  name        :string           default(""), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ApplicationRecord
  validates :name, presence: true
end
