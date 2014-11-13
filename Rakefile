source_files = Rake::FileList.new "**/*.adoc" do |fl|
  fl.exclude "~*"
  fl.exclude "README.adoc"
  fl.exclude %r{\Aasciidoctor-backends/}
  fl.exclude %r{\Adeck.js/}
  fl.exclude %r{\Avendor/}
end

task default: :html
task html: source_files.ext('.html')

rule '.html' => '.adoc' do |t|
  sh "bundle exec asciidoctor -T asciidoctor-backends/haml #{t.source} && open #{t.name}"
end

task :watch do
  target = ENV['TARGET'] || 'html'
  sh "bundle exec filewatcher '*.adoc' 'bundle exec rake #{target}'"
end
