class TtestQuestionsController < ApplicationController
  before_action :set_ttest_question, only: [:show, :edit, :update, :destroy]

  # GET /ttest_questions
  # GET /ttest_questions.json
  def index
    @ttest_questions = TtestQuestion.all
  end

  # GET /ttest_questions/1
  # GET /ttest_questions/1.json
  def show
  end

  # GET /ttest_questions/new
  def new
    @ttest_question = TtestQuestion.new
  end

  # GET /ttest_questions/1/edit
  def edit
  end

  # POST /ttest_questions
  # POST /ttest_questions.json
  def create
    @ttest_question = TtestQuestion.new(ttest_question_params)

    respond_to do |format|
      if @ttest_question.save
        format.html { redirect_to @ttest_question, notice: 'Ttest question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ttest_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @ttest_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ttest_questions/1
  # PATCH/PUT /ttest_questions/1.json
  def update
    respond_to do |format|
      if @ttest_question.update(ttest_question_params)
        format.html { redirect_to @ttest_question, notice: 'Ttest question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ttest_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ttest_questions/1
  # DELETE /ttest_questions/1.json
  def destroy
    @ttest_question.destroy
    respond_to do |format|
      format.html { redirect_to ttest_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ttest_question
      @ttest_question = TtestQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ttest_question_params
      params.require(:ttest_question).permit(:question, :option_a, :option_b, :option_c, :option_d, :anwser, :question_type, :created_by, :difficulty_level)
    end
end
