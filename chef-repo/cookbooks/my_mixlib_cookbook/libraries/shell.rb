require 'mixlib/shellout'
class MyMixLib
	def self.getLSOutput
		obj = Mixlib::ShellOut.new("ls -lart")
		obj.run_command
		obj.stdout
	end	
end