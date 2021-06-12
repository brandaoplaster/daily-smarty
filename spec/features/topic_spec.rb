require 'rails_helper'

describe 'navigate' do
  before do
    @topic = Topic.create(title: "Ruby")
  end

  describe '#index' do
    it 'can be reached sucessfully' do
      visit topics_path
      expect(page.status_code).to eq(200)
    end

    it 'renders the list of topics' do
      Topic.create(title: "Coding")
      visit topics_path
      expect(page).to have_content(/Ruby|Coding/)
    end

    it 'each topic to its show page' do
      visit topics_path
      expect(page).to have_link(@topic.title, href: topic_path(@topic))
    end
  end
end
