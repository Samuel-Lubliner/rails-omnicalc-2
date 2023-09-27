class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "division_templates/division_form" })
  end

  def divide_these
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f

  if @second_num == 0
    @result = "Cannot divide by zero"
  else
    @result = @first_num / @second_num
  end

    render({ :template => "division_templates/division_results" })
  end
end
