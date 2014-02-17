class RelationQuestionsController < ApplicationController
  before_action :set_relation_question, only: [:show, :edit, :update, :destroy]

  # GET /relation_questions
  # GET /relation_questions.json
  def index
    @relation_questions = RelationQuestion.all
  end

  # GET /relation_questions/1
  # GET /relation_questions/1.json
  def show
  end

  # GET /relation_questions/new
  def new
    @relation_question = RelationQuestion.new
  end

  # GET /relation_questions/1/edit
  def edit
  end

  # POST /relation_questions
  # POST /relation_questions.json
  def create
    @ttest_question = current_ttest_question
    my_question = MyQuestion.find(params[:my_question_id])
    @relation_question = @ttest_question.add_my_question(my_question.id)
    #@relation_question = @ttest_question.relation_questions.build(my_question: my_question)
    #@relation_question = RelationQuestion.new(relation_question_params)

    respond_to do |format|
      if @relation_question.save
        format.html { redirect_to @relation_question.ttest_question, notice: 'Relation question was successfully created.' }
        #format.html { redirect_to @relation_question, notice: 'Relation question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @relation_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @relation_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relation_questions/1
  # PATCH/PUT /relation_questions/1.json
  def update
    respond_to do |format|
      if @relation_question.update(relation_question_params)
        format.html { redirect_to @relation_question, notice: 'Relation question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @relation_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relation_questions/1
  # DELETE /relation_questions/1.json
  def destroy
    @relation_question.destroy
    respond_to do |format|
      format.html { redirect_to relation_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relation_question
      @relation_question = RelationQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relation_question_params
      params.require(:relation_question).permit(:my_question_id, :ttest_question_id)
    end
end
