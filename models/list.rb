class List
  attr_reader :all_tasks

  def initialize
    @all_tasks = []
  end

  def add(task)
    @all_tasks << task
  end

  def show
    all_tasks.map.with_index { |task, i| "#{i.next}): #{task}" }
  end

  def write_to_file(filename = 'defaultFilename')
    IO.write(filename, @all_tasks.map(&:to_s).join("\n"))
  end

  def read_from_file(filename = 'defaultFilename')
    IO.readlines(filename).each do |line|
      add(Task.new(line.chomp))
    end
  end
end
