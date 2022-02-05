class TopicsController < ApplicationController
  before_action :set_topic, only: [:show]

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new
  end

  def show
  end

  private

  def set_topic
    @topic = Topic.friendly.find(params[:id])
  end
end
