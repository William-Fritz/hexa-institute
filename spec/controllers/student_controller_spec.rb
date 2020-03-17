require 'rails_helper'

RSpec.describe StudentsController do
  describe 'GET #index' do
    before { get :index }

    it 'assigns @student' do
      student = create(:student)
      expect(assigns(:students)).to eq([student])
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET #new' do
    before { get :new }

    context 'when initialized' do
      subject(:student) { Student.new }
    end

    it 'assigns @student' do
      expect(assigns(:student)).to be_a_new(Student)
    end

    it 'renders the new template' do
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    context 'valid params' do
      subject { post :create, params: params }
      let(:params) { { student: { name: 'Erick', program: 4 } } }
      
      it 'creates new students' do
        expect { subject }.to change(Student, :count).
          from(0).to(1)
      end
    end
  end

  describe 'GET #show' do
    before { get :show, params: params }

    let(:params) do
      { id: student.id }
    end
    let!(:student) { create(:student) }

    it 'assigns @student' do
      expect(assigns(:student)).to eq(student)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end
  end

  describe 'DELETE #destroy' do
    subject { delete :destroy, params: params }

    let!(:student) { create(:student) }
    let(:student) do
      { id: student.id }
    end

    it 'deletes the product' do
      expect { subject }.to change(Student, :count)
        .from(1).to(0)
    end
  end
end

