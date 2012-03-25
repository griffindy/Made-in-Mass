MadeInMass.controllers :companies do
  get :index, :map => '/' do
    to_be_sorted = Company.all
    # to sort the companies by name, regardless of capitalization
    @companies = to_be_sorted.sort {|a,b| a.name.downcase <=> b.name.downcase}
    render 'companies/index'
  end

  get :show, :with => :id do
    @company = Company.find_by_id(params[:id])
    render 'companies/show'
  end

  get :about, :map => '/about' do
    render 'companies/about'
  end

  get :faqs, :map => '/faqs' do
    render 'companies/faqs'
  end

end
