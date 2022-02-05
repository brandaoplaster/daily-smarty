class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update]

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(params.require(:topic).permit(:title))

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
    @topic.update(params.require(:topic).permit(:title))
    redirect_to topic_path(@topic)
  end

  private

  def set_topic
    @topic = Topic.friendly.find(params[:id])
  end
end
