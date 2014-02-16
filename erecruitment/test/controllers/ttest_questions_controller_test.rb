require 'test_helper'

class TtestQuestionsControllerTest < ActionController::TestCase
  setup do
    @ttest_question = ttest_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ttest_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ttest_question" do
    assert_difference('TtestQuestion.count') do
      post :create, ttest_question: { anwser: @ttest_question.anwser, created_by: @ttest_question.created_by, difficulty_level: @ttest_question.difficulty_level, option_a: @ttest_question.option_a, option_b: @ttest_question.option_b, option_c: @ttest_question.option_c, option_d: @ttest_question.option_d, question: @ttest_question.question, question_type: @ttest_question.question_type }
    end

    assert_redirected_to ttest_question_path(assigns(:ttest_question))
  end

  test "should show ttest_question" do
    get :show, id: @ttest_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ttest_question
    assert_response :success
  end

  test "should update ttest_question" do
    patch :update, id: @ttest_question, ttest_question: { anwser: @ttest_question.anwser, created_by: @ttest_question.created_by, difficulty_level: @ttest_question.difficulty_level, option_a: @ttest_question.option_a, option_b: @ttest_question.option_b, option_c: @ttest_question.option_c, option_d: @ttest_question.option_d, question: @ttest_question.question, question_type: @ttest_question.question_type }
    assert_redirected_to ttest_question_path(assigns(:ttest_question))
  end

  test "should destroy ttest_question" do
    assert_difference('TtestQuestion.count', -1) do
      delete :destroy, id: @ttest_question
    end

    assert_redirected_to ttest_questions_path
  end
end
