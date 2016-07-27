Desde la versión 3.0 de Rails, jQuery ya viene integrado con Rails. Desde esta versión realizar funcionalidad de Ajax en links, butones y formas 
no involucra que tengas que escribir JS.

En cuanto a configuración existen dos partes principales para utilizar jQuery. La primera es la gema de jquery-rails y jquery_ujs. La segunda gema es lo que junta a Rails y a 
Jquery y significa unobtrusive JavaScript.

............ "unobtrusive JavaScript"
http://blog.teamtreehouse.com/unobtrusive-javascript-important

https://www.youtube.com/watch?v=t_MBLfrKTiE

............ jquery_ujs  Ajax en rails
https://github.com/rails/jquery-ujs/wiki/ajax
Ruby on Rails - Railscasts PRO #136 jQuery & Ajax (revised)
https://www.youtube.com/watch?v=FBxVN7U1Qsk

............ Comandos rails
http://guides.rubyonrails.org/command_line.html

............ Mensajes de error
http://edgeguides.rubyonrails.org/active_record_validations.html
3.3 :message

class Person < ApplicationRecord
  # Hard-coded message
  validates :name, presence: { message: "must be given please" }
 
  # Message with dynamic attribute value. %{value} will be replaced with
  # the actual value of the attribute. %{attribute} and %{model} also
  # available.
  validates :age, numericality: { message: "%{value} seems wrong" }

  http://api.rubyonrails.org/classes/ActiveModel/Errors.html

The above allows you to do:

person = Person.new
person.validate!            # => ["cannot be nil"]
person.errors.full_messages # => ["name cannot be nil"]
# etc..
[](attribute) Link
When passed a symbol or a name of a method, returns an array of errors for the method.

person.errors[:name]  # => ["cannot be nil"]
person.errors['name'] # => ["cannot be nil"]
Note that, if you try to get errors of an attribute which has no errors associated with it, this method will instantiate an empty error list for it and keys will return an array of error keys which includes this attribute.

person.errors.keys    # => []
person.errors[:name]  # => []
person.errors.keys    # => [:name]
Source: show | on GitHub

[]=(attribute, error) Link
Adds to the supplied attribute the supplied error message.

person.errors[:name] = "must be set"
person.errors[:name] # => ['must be set']


...... Investigar
csrf_meta_tags (Seguridad en la aplicacion)
http://stackoverflow.com/questions/9996665/rails-how-does-csrf-meta-tag-work
