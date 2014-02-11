
require 'spec_helper'

describe TodosController do

	describe "GET new" do
		before(:each) do
			# mock_model receives a string, which is the class name of the model that will eventually be in our code
			@todo = mock_model("Todo")
			# allow the Todo active record to receive a new method and return a new object todo
			# this is a Stub -- they allow you to not need to have the new method implemented
			allow(Todo).to receive(:new).and_return(@todo)
		end

		it "should assign @todo" do
			get :new

			# Checks if @todo is some instance of a Todo
			# expect to have a new todo assignment (instance of Todo class) that returns a new todo
			expect(assigns(:todo)).to eq(@todo)

		end

		it "should render :new template" do
			get :new
			expect(response).to render_template("new")
		end

	end

	describe "POST create" do 

		# make sure that each test has predefined parameters
		before(:each) do
			@todo = mock_model("Todo")
			allow(Todo).to receive(:create)
		end

		it "should create a Todo" do

			#expect the Todo to receive a create method with the "title" params
			#here we are running the test
			expect(Todo).to receive(:create).with({"title" => "get something done!"})
			#here we are causing the tests to run
			post :create, {todo: {title: "get something done!"}}
		end

		it "should redirect_to todo_path" do
			post :create, {todo: {title: "get something done!"}} 
			expect(response).to redirect_to("todo_path")
		end

	end

end