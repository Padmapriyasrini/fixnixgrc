require 'test_helper'

class PoliciesControllerTest < ActionController::TestCase
  setup do
    @policy = policies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policy" do
    assert_difference('Policy.count') do
      post :create, policy: { Policy_name: @policy.Policy_name, Policy_objective: @policy.Policy_objective, Policy_reference: @policy.Policy_reference, Policy_scope: @policy.Policy_scope }
    end

    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should show policy" do
    get :show, id: @policy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @policy
    assert_response :success
  end

  test "should update policy" do
    put :update, id: @policy, policy: { Policy_name: @policy.Policy_name, Policy_objective: @policy.Policy_objective, Policy_reference: @policy.Policy_reference, Policy_scope: @policy.Policy_scope }
    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should destroy policy" do
    assert_difference('Policy.count', -1) do
      delete :destroy, id: @policy
    end

    assert_redirected_to policies_path
  end
end
