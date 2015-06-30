require 'test_helper'

class ServiceAttachmentsControllerTest < ActionController::TestCase
  setup do
    @service_attachment = service_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_attachment" do
    assert_difference('ServiceAttachment.count') do
      post :create, service_attachment: { picture: @service_attachment.picture, service_id: @service_attachment.service_id }
    end

    assert_redirected_to service_attachment_path(assigns(:service_attachment))
  end

  test "should show service_attachment" do
    get :show, id: @service_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_attachment
    assert_response :success
  end

  test "should update service_attachment" do
    patch :update, id: @service_attachment, service_attachment: { picture: @service_attachment.picture, service_id: @service_attachment.service_id }
    assert_redirected_to service_attachment_path(assigns(:service_attachment))
  end

  test "should destroy service_attachment" do
    assert_difference('ServiceAttachment.count', -1) do
      delete :destroy, id: @service_attachment
    end

    assert_redirected_to service_attachments_path
  end
end
