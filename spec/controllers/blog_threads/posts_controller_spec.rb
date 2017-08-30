require 'rails_helper'

RSpec.describe BlogThreads::PostsController, type: :controller do
    describe 'GET #index' do

      let(:posts) { create_list(:post, 2)}
      let(:blog_thread) { create(:blog_thread)}
      before { get :index}

      it 'returns array of posts' do
        expect(assigns(:posts)).to match_array(@posts)
      end

      it 'renders index view' do
         expect(response).to render_template :index
      end
    end

    describe 'GET #show' do
      let(:post) { create(:post)}
      before { get :show, blog_thread_id: 1}
      it 'assigns the requested post to @post' do

      end

      it 'renders show view' do
        expect(response).to render_template :show
      end
    end
end
