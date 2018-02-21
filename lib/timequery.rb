module Timequery

  module ClassMethods
    def between_range_column column_name, begin_at, end_at
      self.where("#{self.table_name}.#{column_name} BETWEEN ? AND ?", begin_at, end_at)
    end

    def day_range_column column_name, time = Time.current
      between_range_column(column_name, time.beginning_of_day, time.end_of_day)
    end

    def week_range_column column_name, time = Time.current
      between_range_column(column_name, time.beginning_of_week, time.end_of_week)
    end

    def month_range_column column_name, time = Time.current
      between_range_column(column_name, time.beginning_of_month, time.end_of_month)
    end

    def year_range_column column_name, time = Time.current
      between_range_column(column_name, time.beginning_of_year, time.end_of_year)
    end
  end

  # module InstanceMethods
  # end

  def self.included klass
    klass.send :extend, ClassMethods
    # klass.send :include, InstanceMethods
  end
end

class ActiveRecord::Base
  include Timequery
end