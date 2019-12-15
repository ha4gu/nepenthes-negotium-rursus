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

FactoryBot.define do
  factory :project do
    name { Faker::Lorem.sentence }
    description
  end
end
