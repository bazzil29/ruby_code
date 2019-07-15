namespace :admin do     
    desc "Interactively delete all file in /tmp" #description for this task
    task :clean_tmp do #declares aclean_tmp task
        Dir["./tmp/*"].each do |f|
            next unless File.file?(f) #sure all things deleted are files
            print "delete #{f}"
            answer = $stdin.gets
            case answer
            when /^y/
                File.unlink(f)
            when /^q/
                break
            end
        end
    end
end

desc "Delete name"
task :delete_file_by_path do
    print "Enter filename: "
    name = $stdin.gets
    puts File.file?(name)
    if File.exist?(name)
        print "Do you want to delete #{name} (y/n)"
        answer = $stdin.gets
        case answer
        when /^y/
            File.delete(name)
        when /^n/
            print "No delete #{name}! Exit"
        end
    end
end


