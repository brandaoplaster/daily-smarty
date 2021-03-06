class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update]

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to topic_path(@topic), notice: "Topic was successfully created."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to topic_path(@topic), notice: "You topic was successfully."
    else
      render :edit, notice: "There was an error progressing your request."
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title)
  end

  def set_topic
    @topic = Topic.friendly.find(params[:id])
  end
end
