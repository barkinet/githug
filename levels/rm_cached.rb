difficulty 2

description "A file (deleteme.rb) has accidentally been added to your staging area, find out which file and remove it from the staging area.  *NOTE* Do not remove the file system, only from git."

setup do
  repo.init(false)
  FileUtils.touch("deleteme.rb")
  repo.add(".gitignore")
  repo.add("deleteme.rb")
end

solution do
  (repo.status.files["deleteme.rb"].nil? || repo.status.files["deleteme.rb"].stage.nil?) && File.exists?("deleteme.rb")
end

hints ["You may need to use more than one command to complete this.  You have checked your staging area in a previous level.  Don't forget to run `git` for a list of commands."]
