describe Chitter do
  it 'should allow accessing the home page' do
    get '/'
    expect(last_response).to be_ok
  end
  it 'should insert the peep into the database' do
    get '/'

  end
end

