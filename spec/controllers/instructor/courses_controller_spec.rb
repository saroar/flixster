require "rails_helper"

RSpec.describe Instructor::CoursesController do
  describe "public interface" do
    it { is_expected.to respond_to(:new) }
    it { is_expected.to respond_to(:create) }
    it { is_expected.to respond_to(:show) }
    it { is_expected.to_not respond_to(:delete) }
    it { is_expected.to_not respond_to(:edit) }
    it { is_expected.to_not respond_to(:update) }
    it { is_expected.to_not respond_to(:index) }
  end

  describe "GET #new" do
    context "given an authenticated request" do
      it "responds with HTTP success" do
        sign_in create(:user)

        get :new

        expect(response).to have_http_status(:ok)
        expect(response).to render_template(:new)
      end
    end

    context "given an unauthenticated request" do
      it "responds with HTTP found and rediects to the login page" do
        get :new

        expect(response).to have_http_status(:found)
        expect(response).to redirect_to(new_user_session_url)
      end
    end
  end

  describe "POST #create" do
    context "given an authenticated request" do
    end

    context "given an unauthenticated request" do
      it "responds with HTTP found and rediects to the login page" do
        post :create, course: {
          title: "A new course",
          description: "Description",
          cost: 9900,
          user_id: 1
        }

        expect(response).to have_http_status(:found)
        expect(response).to redirect_to(new_user_session_url)
      end
    end
  end

  describe "GET #show" do
    context "given an authenticated request" do
    end

    context "given an unauthenticated request" do
      it "responds with HTTP found and rediects to the login page" do
        get :show, id: 1

        expect(response).to have_http_status(:found)
        expect(response).to redirect_to(new_user_session_url)
      end
    end
  end
end
