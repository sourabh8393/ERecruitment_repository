class MyQuestionsController < ApplicationController
  #before_action :set_my_question, only: [:show, :edit, :update, :destroy]

  def index
    @my_questions = My_question.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @my_questions }
    end
  end

  # GET /my_questions/1
  # GET /my_questions/1.json
  def show
    @my_question = My_question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @my_question }
    end
  end

  # GET /my_questions/new
  # GET /my_questions/new.json
  def new
    @my_question = My_question.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @my_question }
    end
  end

  # GET /my_questions/1/edit
  def edit
    @my_question = My_question.find(params[:id])
  end

  # POST /my_questions
  # POST /my_questions.json
  def create
    @my_question = My_question.new(params[:my_question])

    respond_to do |format|
      if @my_question.save
        format.html { redirect_to @my_question, notice: 'my_question was successfully created.' }
        format.json { render json: @my_question, status: :created, location: @my_question }
      else
        format.html { render action: "new" }
        format.json { render json: @my_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /my_questions/1
  # PUT /my_questions/1.json
  def update
    @my_question = My_question.find(params[:id])

    respond_to do |format|
      if @my_question.update_attributes(params[:my_question])
        format.html { redirect_to @my_question, notice: 'my_question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @my_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_questions/1
  # DELETE /my_questions/1.json
  def destroy
    @my_question = My_question.find(params[:id])
    @my_question.destroy

    respond_to do |format|
      format.html { redirect_to my_questions_url }
      format.json { head :no_content }
    end
  end
end
