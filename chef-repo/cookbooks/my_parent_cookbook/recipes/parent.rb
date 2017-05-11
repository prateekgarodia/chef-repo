include_recipe'my_child_cookbook::child'

Chef::Log.info("I'm inside Parent!")
Chef::Log.info("Parent Attribute = #{node['my_parent_cookbook']['parent_behaviour']}")
Chef::Log.info("Child Attribute = #{node['my_child_cookbook']['child_behaviour']}")
Chef::Log.info("Test Child Attribute = #{node['my_child_cookbook']['test_behaviour']}")