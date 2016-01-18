require "rails_helper"

RSpec.describe StaticPagesController, type: :controller do
  describe "public interface" do
    it { is_expected.to respond_to(:index) }
  end

  describe "GET #index" do
    context "given an unauthenticated request" do
      it "responds with HTTP success" do
        get :index

        expect(response).to have_http_status(:ok)
        expect(response).to render_template(:index)
      end
    end
  end
end
