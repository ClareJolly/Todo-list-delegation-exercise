require "todo_printer"

describe TodoPrinter do
  # let(:todo) { double(:todo) }
  # let(:todo_class) { double(:todo_class, new: todo) }

  describe "showing todos as a string" do
    it "shows a list of 3 todos" do
      list2 = TodoList.new
      list2.add("say hi")
      list2.add("say howdy")
      list2.add("say yo")

      expect(subject.printer(list2))
        .to eq("1. say hi not complete\n2. say howdy not complete\n3. say yo not complete")
    end

    # subject { described_class.new("say hi") }

    it "returns 1 todo" do
      list2 = TodoList.new
      list2.add("say hi")
      # list2.todos
      expect(subject.todo_to_string(list2.todos[0]))
        .to eq("1. say hi not complete")
    end
  end


end
