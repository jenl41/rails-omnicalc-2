class AdditionController < ApplicationController

 

  def addition_form
    render({ :template => "addition_templates/addition_form" })
  end

  def add_results
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num", "0").to_f

    @result = @first_num + @second_num


    render({ :template => "addition_templates/add_results" })
  end
end
