require 'spec_helper'

describe Question do
  it 'should have a question' do
    q = Question.create(:text => 'this a text fieldtaglist: this is a tag list')
    expect(q.text_field).to eq("this a text field")
    expect(q.tag_list).to eq("this is a tag list")
  end

end