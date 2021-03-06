# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  deadline_at :datetime
#  detail      :text
#  position    :integer
#  priority    :integer
#  status      :integer
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  project_id  :uuid             not null
#
# Indexes
#
#  index_tasks_on_project_id  (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_id => projects.id)
#

require "rails_helper"

RSpec.describe Task, type: :model do
  it { should belong_to(:project) }

  it { is_expected.to validate_presence_of(:title) }
end
