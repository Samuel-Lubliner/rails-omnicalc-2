class SubtractionController < ApplicationController
  def show_subtraction_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def subtract_these
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f

    @result = @first_num - @second_num


    render({ :template => "subtraction_templates/subtraction_results" })
  end
end
