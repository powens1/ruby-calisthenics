class Dessert
  #getter/setter
  attr_accessor :name, :calories
  
  #constructor takes two parameters
  def initialize(name, calories)
    #set @name to equal the name parameter
    @name = name
    #set @calories to equal the calories parameter
    @calories = calories
  end
  
  #cheak if dessert is healthy
  def healthy?
    #its healthy if @calories is less than 200
    @calories < 200
  end
  
  #check if dessert is delicious
  def delicious?
    #its automattically true
    true
  end
end

#the class JellyBean is an extention of class Dessert, it possesses all the default 
class JellyBean < Dessert
  #getter/setter
  attr_accessor :flavor
  #constructor takes one parameter
  
  def initialize (flavor)
    #set @flavor equal to the flavor
    @flavor = flavor
    #override @calories to equal 5
    @calories = 5
    #set name to equal the flavor + " jelly bean"
    @name = flavor + " jelly bean"
  end
  
  #find out if the jelly bean is delicious
  def delicious?
    #check if the flavor is licorice
    if flavor == "licorice"
      #if it is then return that its not delicious
      return false
    #for all other cases
    else
      #return that it is delicous
      return true
    #end of check for flavor
    end
  end
  
end
