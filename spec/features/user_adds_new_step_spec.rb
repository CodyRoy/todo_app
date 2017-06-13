require "rails_helper"

feature "user creates a new step" do
	scenario "successfully" do
		list = List.create(title: "list1", desc: "dummylist")
		task = Task.create(content: "dummytask", list_id:1)
		visit list_task_path(list, task) 
		click_on "New Step"
		fill_in "step_content", with: "next step"
		fill_in "step_task_id", with: 1
		click_on "Create Step"

		expect(page).to have_css "p", text: "next step"
	end
end
