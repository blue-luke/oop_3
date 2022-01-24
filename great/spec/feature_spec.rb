require "todo_list"

describe "TodoList features" do
  it "can create a todo" do
    list = TodoList.new
    todo_double = double("Todo", :new => true)
    list.add("say hi", todo_double)

    expect(todo_double).to have_received(:new).with("say hi")
  end

  it "can complete a todo" do
    list = TodoList.new
    todo_double = double("TodoInstance", :complete => true)
    todo_class_double = double("TodoClass", :new => todo_double)
    list.add("say hi", todo_class_double)

    list.set_complete(0)

    expect(todo_double).to have_received(:complete)
  end

  it "can print some todos" do
    list = TodoList.new
    list.add("say hi")
    list.add("say howdy")
    expect(list.to_string)
      .to eq("1. say hi not complete\n2. say howdy not complete")
  end
end
