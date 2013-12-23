class PoliciesPdf < Prawn::Document
	def initialize(policy)
		super(top_margin: 70)
		@policy = policy
		logo
		stroke_horizontal_rule
        pad_top(30) {}
        text "Policy Report",:align => :center, :size => 30, :style => :bold

        text "Policy Name: #{@policy.Policy_name}", :size =>  20
		move_down(30)
        text "Policy Ref: #{@policy.Policy_reference}", :size =>  20
        move_down(30)
        text "Policy Scope:", :size =>  20
		text " #{@policy.Policy_scope}", :size =>  15
        move_down(30)
        text "Policy Objective:", :size =>  20
        text " #{@policy.Policy_objective}", :size =>  15


end
     def logo
     	 logopath =  "#{Rails.root}/public/images/fixnix.png"
         image logopath, :width => 197, :height => 75
         move_down 10
         draw_text "", :at => [220, 575], size: 22
  end
end