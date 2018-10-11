require "todo"

describe Todo do
  describe "adding a todo" do
    subject { described_class.new("say hi") }

    it "creates a todo" do
      expect(subject).to be_instance_of described_class
    end

    it "creates a todo with a description" do
      expect(subject.description).to eq("say hi")
    end
  end

  describe "setting a todo to be complete" do
    subject { described_class.new("say hi") }

    it "creates todos that are initially incomplete" do
      expect(subject.complete?).to eq(false)
    end

    it "sets a todo to be complete" do
      subject.set_complete
      expect(subject.complete?).to eq(true)
    end
  end

  

end
