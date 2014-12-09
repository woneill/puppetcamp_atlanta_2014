task :default do
    system 'rake -T'
end

desc 'build slides'
task :build do
    Dir.chdir(File.dirname(File.realdirpath(__FILE__))) do
        system "reveal-ck generate"
    end
end

desc 'rebuild slides on changes'
task :guard do
    Dir.chdir(File.dirname(File.realdirpath(__FILE__))) do
        system "guard"
    end
end

desc 'serve presentation'
task :serve do
    Dir.chdir(File.dirname(File.realdirpath(__FILE__))) do
        system "reveal-ck serve"
    end
end

desc 'Fix pdf generation'
task :fix_pdf do
    Dir.chdir(File.dirname(File.realdirpath(__FILE__))) do
        system "patch -d slides < pdf_fix.diff"
    end
end
