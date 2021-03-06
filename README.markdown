# Representations

Rails helpers, including form builders are great to allow rapid development of applications and views.

On the other hand they are procedural in nature and have hard time to adapt to complex models. They also live in a single namespace making it difficult to find which helpers apply to which models.

Representations do a paradigm switch and change syntax to object oriented and model specific.

## Example usage

Rails helpers:

    - form_for(user) do |f|
      login:
      = h(user.login)
      = f.label(:email, "Email")
      = f.text_field(:email)
      - if user.profile
        - fields_for(user.profile) do |p|
            Full name:
            = h(full_name(p))
            = f.label(:first_name, "First name")
            = f.text_field(:first_name)
            = f.label(:last_name, "Last name")
            = f.text_field(:last_name)
            = f.radio_button(:eye_color, 'blue')
            = f.label(:eye_color_blue, "Blue")
      = f.submit("ok")

Representations:

    - r(user).form do |user|
      login:
      = user.login
      = user.email.label
      = user.email.text_field
      - user.profile do |p|
        = full_name(p)
        = p.first_name.label
        = p.first_name.text_field
        = p.last_name.label
        = p.last_name.text_field
        = p.eye_color.radio_button('blue')
        = p.eye_color.radio_button_label('blue', 'Blue')

##Extensions

Representations can be altered. For example to add new method DefaultRepresentation create file app/representations/default_representation.rb with the content:
    module DefaultRepresentation
        def new_method
            some code
        end
    end

##Nested attributes

    - user.children.each do |child|
        = child.name.label
        = child.name.text_field
        = child.delete_checkbox
        = child.delete_checkbox_label

Or even:

    - user.children.build do |child|
        = child.name.label
        = child.name.text_field

## Automatic wrapping

Create file config/initializers/representations.rb

    Representations.enable_automatic_wrapping = true

if you want Representations to automatically wrap variables from the controller

