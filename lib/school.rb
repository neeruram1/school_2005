class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
  end_time = @start_time[0..1].to_i + @hours_in_school_day
  end_time.to_s.insert(-1, ":00")
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    standard_student_names = []
    @student_names.each do |student_name|
      standard_student_names << student_name.capitalize
    end
    @student_names = standard_student_names
  end

  def convert_end_time_to_clock_time
    clock_time = 12 - end_time[0..1].to_i
    clock_time.abs.to_s.insert(-1, ":00")
  end
end
