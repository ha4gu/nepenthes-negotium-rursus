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

require "rails_helper"

RSpec.describe Project, type: :model do
  it { is_expected.to validate_presence_of(:name) }
end
