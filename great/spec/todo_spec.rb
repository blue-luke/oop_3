require "todo"

describe Todo do
  describe "creation" do
    subject { described_class.new("say hi") }

    it "creates a todo" do
      expect(subject).to be_instance_of described_class
    end
  end

  describe "added tests" do
    subject { described_class.new("say hi") }
    it 'marks a todo as complete' do
      subject.complete=(true)
      expect(subject.complete).to eq true
    end
  end
end
