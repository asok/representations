require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Representations::DefaultRepresentation do
  it '::text_field should create html text input tag with rails naming convention' do
    profile = stub_model(Profile, {:name => "some name"})
    user = stub_model(User, {:profile => profile})
    user = Representations::representation_for(user, nil, 'user')
    user.profile.name.text_field.should == %Q{<input type="text" id="user_profile_name" name="user[profile_attributes][name]" value="some name" />}
  end

  it '::label should create html label tag with rails naming convention' do
    profile = stub_model(Profile, {:name => "some name"})
    user = stub_model(User, {:profile => profile})
    user = Representations::representation_for(user, nil, 'user')
    user.profile.name.label.should == %Q{<label for="user_profile_name" >#{ERB::Util::h("Name")}</label>}
  end

  it "text_area method should create valid html" do
    user = stub_model(User, {:id => "5"})
    user = Representations::representation_for(user, nil, 'user')
    user.profile.characteristics.text_area(:cols => 30).should == %Q{<textarea cols="30" id="user_profile_characteristics" name="user[profile_attributes][characteristics]" rows="5" >\n\n</textarea>}
  end

end

