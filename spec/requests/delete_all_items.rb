# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'DELETE ALL ITEMS request' do
  let!(:todo) { create(:todo) }
  let!(:items) { create_list(:item, 20, todo_id: todo.id) }
  let(:todo_id) { todo.id }

  describe 'DELETE destroy' do
    before { delete api_v1_todo_delete_all_items_path(todo_id) }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
