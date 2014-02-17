require 'test_helper'

class RelationQuestionsControllerTest < ActionController::TestCase
  setup do
    @relation_question = relation_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relation_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relation_question" do
    assert_difference('RelationQuestion.count') do
      post :create, relation_question: { my_question_id: @relation_question.my_question_id, ttest_question_id: @relation_question.ttest_question_id }
    end

    assert_redirected_to relation_question_path(assigns(:relation_question))
  end

  test "should show relation_question" do
    get :show, id: @relation_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relation_question
    assert_response :success
  end

  test "should update relation_question" do
    patch :update, id: @relation_question, relation_question: { my_question_id: @relation_question.my_question_id, ttest_question_id: @relation_question.ttest_question_id }
    assert_redirected_to relation_question_path(assigns(:relation_question))
  end

  test "should destroy relation_question" do
    assert_difference('RelationQuestion.count', -1) do
      delete :destroy, id: @relation_question
    end

    assert_redirected_to relation_questions_path
  end
end
