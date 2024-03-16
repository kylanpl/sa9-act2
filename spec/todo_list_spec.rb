require 'todo_list'
RSpec.describe TodoList do
  let(:todo) { TodoList.new() }

  describe "#add" do
    it "adds a todo to the list" do
      todo.add("test")
      expect(todo.todos[0]).to eq("test")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo.add("test")
      todo.remove("test")
      expect(todo.todos).to be_empty
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo.add("test1")
      todo.add("test2")
      expect(todo.todos).to eq(["test1", "test2"])
    end
  end
end
