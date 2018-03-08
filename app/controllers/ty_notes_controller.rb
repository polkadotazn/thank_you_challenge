class TyNotesController < ApplicationController
  before_action :set_ty_note, only: [:show, :edit, :update, :destroy]

  # GET /ty_notes
  # GET /ty_notes.json
  def index
    @ty_notes = TyNote.all
  end

  # GET /ty_notes/1
  # GET /ty_notes/1.json
  def show
  end

  # GET /ty_notes/new
  def new
    @ty_note = TyNote.new
  end

  # GET /ty_notes/1/edit
  def edit
  end

  # POST /ty_notes
  # POST /ty_notes.json
  def create
    @ty_note = TyNote.new(ty_note_params)

    respond_to do |format|
      if @ty_note.save
        format.html { redirect_to @ty_note, notice: 'Ty note was successfully created.' }
        format.json { render :show, status: :created, location: @ty_note }
      else
        format.html { render :new }
        format.json { render json: @ty_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ty_notes/1
  # PATCH/PUT /ty_notes/1.json
  def update
    respond_to do |format|
      if @ty_note.update(ty_note_params)
        format.html { redirect_to @ty_note, notice: 'Ty note was successfully updated.' }
        format.json { render :show, status: :ok, location: @ty_note }
      else
        format.html { render :edit }
        format.json { render json: @ty_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ty_notes/1
  # DELETE /ty_notes/1.json
  def destroy
    @ty_note.destroy
    respond_to do |format|
      format.html { redirect_to ty_notes_url, notice: 'Ty note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ty_note
      @ty_note = TyNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ty_note_params
      params.require(:ty_note).permit(:gifter_id, :first_name, :last_name, :subject, :body)
    end
end
