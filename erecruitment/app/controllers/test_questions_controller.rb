class TestQuestionsController < ApplicationController
  before_action :set_test_question, only: [:show, :edit, :update, :destroy]
  
  # GET /test_questions
  # GET /test_questions.json
  def index
    @my_questions= My_question.paginate(:page => params[:page], :per_page => 1).order(:created_by)
    #@test_questions = TestQuestion.create(@my_questions.attributes).paginate(:page => params[:page], :per_page => 1).order(:created_by)
    
  end

  # GET /test_questions/1
  # GET /test_questions/1.json
  def show
  end

  # GET /test_questions/new
  def new
    @test_question = TestQuestion.new
  end

  # GET /test_questions/1/edit
  def edit
  end

  # POST /test_questions
  # POST /test_questions.json
  def create
    @test_question = TestQuestion.new(test_question_params)

    respond_to do |format|
      if @test_question.save
        format.html { redirect_to @test_question, notice: 'Test question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @test_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_questions/1
  # PATCH/PUT /test_questions/1.json
  def update
    respond_to do |format|
      if @test_question.update(test_question_params)
        format.html { redirect_to @test_question, notice: 'Test question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_questions/1
  # DELETE /test_questions/1.json
  def destroy
    @test_question.destroy
    respond_to do |format|
      format.html { redirect_to test_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_question
      @test_question = TestQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_question_params
      params.require(:test_question).permit(:question, :option_a, :option_b, :option_c, :option_d, :anwser, :question_type, :created_by, :difficulty_level)
    end
end
