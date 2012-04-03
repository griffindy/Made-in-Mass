Admin.controllers :submissions do

  get :index do
    @submissions = Submission.all
    render 'submissions/index', :layout => false
  end

  get :new do
    @submission = Submission.new
    render 'submissions/new', :layout => false
  end

  post :create do
    @submission = Submission.new(params[:submission])
    if @submission.save
      flash[:notice] = 'Submission was successfully created.'
      redirect url(:submissions, :edit, :id => @submission.id)
    else
      render 'submissions/new', :layout => false
    end
  end

  get :edit, :with => :id do
    @submission = Submission.find(params[:id])
    render 'submissions/edit', :layout => false
  end

  put :update, :with => :id do
    @submission = Submission.find(params[:id])
    if @submission.update_attributes(params[:submission])
      flash[:notice] = 'Submission was successfully updated.'
      redirect url(:submissions, :edit, :id => @submission.id)
    else
      render 'submissions/edit', :layout => false
    end
  end

  delete :destroy, :with => :id do
    submission = Submission.find(params[:id])
    if submission.destroy
      flash[:notice] = 'Submission was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Submission!'
    end
    redirect url(:submissions, :index)
  end
end
