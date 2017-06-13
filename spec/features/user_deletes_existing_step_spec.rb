require "rails_helper"

feature "user deletes existing step" do
	before(:each) do
		@list = List.create(title: "list", desc: "dummylist")
		@task = Task.create(content: "dummytask", list_id: 1)
		@step = Step.create(content: "dummystep", task_id: 1)
	end

	scenario "successfully" do
		visit list_task_path(@list,@task)
		click_on "Remove"
		click_on "OK"
		@step.should be_nil
	end

	after(:each) do
		Step.destroy_all
		Task.destroy_all
		List.destroy_all
	end
end
