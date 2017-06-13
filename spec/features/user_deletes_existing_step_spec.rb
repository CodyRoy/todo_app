require "rails_helper"

feature "user deletes existing step" do
	before(:each) do
		@list = List.create(title: "list", desc: "dummylist")
		@task = Task.create(content: "dummytask", list_id: 1)
		@step = Step.create(content: "dummystep", task_id: 1)
	end

	scenario "successfully" do
		visit list_task_path(@list,@task)
		expect { click_on("Remove") }.to change(Step, :count).by(-1)
	end

	after(:each) do
		Step.destroy_all
		Task.destroy_all
		List.destroy_all
	end
end
