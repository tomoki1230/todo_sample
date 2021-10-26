class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    puts "【追加】 #{task.info}"
    @tasks << task
  end

  def info
    if @tasks == []
      puts "【！】タスクはありません。"
    else
      puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
      @tasks.each do |task|
        puts task.info.to_s
      end
      puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
    end
  end

  def delete(id:)
    task = @tasks.find { |task| task.id == id }
    if task
      @tasks.delete(task)
      puts "【削除】 #{task.info}"
    else
      puts "【！】該当idのタスクはありません。"
    end
  end
end
