class MyQuestionsController < ApplicationController
  before_action :set_my_question, only: [:show, :edit, :update, :destroy]

  # GET /my_questions
  # GET /my_questions.json
  def index
    @my_questions = MyQuestion.all
  end

  # GET /my_questions/1
  # GET /my_questions/1.json
  def show
  end

  # GET /my_questions/new
  def new
    @my_question = MyQuestion.new
  end

  # GET /my_questions/1/edit
  def edit
  end

  # POST /my_questions
  # POST /my_questions.json
  def create
    @my_question = MyQuestion.new(my_question_params)

    respond_to do |format|
      if @my_question.save
        format.html { redirect_to @my_question, notice: 'My question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @my_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @my_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_questions/1
  # PATCH/PUT /my_questions/1.json
  def update
    respond_to do |format|
      if @my_question.update(my_question_params)
        format.html { redirect_to @my_question, notice: 'My question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @my_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_questions/1
  # DELETE /my_questions/1.json
  def destroy
    @my_question.destroy
    respond_to do |format|
      format.html { redirect_to my_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_question
      @my_question = MyQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_question_params
      params.require(:my_question).permit(:question, :option_a, :option_b, :option_c, :option_d, :anwser, :question_type, :created_by, :difficulty_level)
    end
end
