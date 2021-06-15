require 'highline'
require 'cli-console'
require 'daslabs'


class ShellUI
    private
    extend CLI::Task

    public

    usage 'Usage: ls'
    desc 'List file information about current directory'
    def ls(params)
        Dir.foreach(Dir.pwd) do |file|
            puts file
        end
    end

    usage 'Usage: pwd'
    desc 'Display current directory'

    def pwd(params)
        puts "Current directory: #{Dir.pwd}"
    end

    usage 'Usage: cd <Directory>'
    desc 'Change current directory'

    def cd(params)
        Dir.chdir(params[0]) unless params.empty?
    end
end

io = HighLine.new
shell = ShellUI.new
console = CLI::Console.new(io)
puts "Current directory: #{Dir.pwd}"
daslabs = Daslabs.new
daslabs.bootstrapandroid("Testing Android Bootstrap")

