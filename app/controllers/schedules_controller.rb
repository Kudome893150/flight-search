class SchedulesController < ApplicationController
  before_action :search_schedule, only: [:index, :search]

  def index
    @schedules = Schedule.all #全スケジュールの情報を取得
    set_schedule_column
    set_departure_column
  end

  def search
    @results = @p.result.includes(:departure)
  end

  private

  def search_schedule
    @p = Schedule.ransack(params[:q]) #検索オブジェクトを生成
  end

  def set_schedule_column
    @schedule_country = Schedule.select("country").distinct #重複なくcountryカラムのデータを取り出す
    @schedule_day = Schedule.select("day").distinct
    @schedule_model = Schedule.select("model").distinct
  end

  def set_departure_column
    @departure_departure = Departure.select("departure").distinct
  end


end
