class ReportsController < ApplicationController
  before_action :set_start_and_end_time, except: :new

  def new
  end

  def git_report
  end

  def set_start_and_end_time
    @start_time = params.key?(:start_time) ? Date.parse(params[:start_time]) : Date.new
    @end_time = params.key?(:end_time) ? Date.parse(params[:end_time]) : Time.current
  end
end
