class ClassifiedAdsController < ApplicationController
  # GET /classified_ads
  # GET /classified_ads.json
  def index
    @classified_ads = ClassifiedAd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @classified_ads }
    end
  end

  # GET /classified_ads/1
  # GET /classified_ads/1.json
  def show
    @classified_ad = ClassifiedAd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @classified_ad }
    end
  end

  # GET /classified_ads/new
  # GET /classified_ads/new.json
  def new
    @classified_ad = ClassifiedAd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @classified_ad }
    end
  end

  # GET /classified_ads/1/edit
  def edit
    @classified_ad = ClassifiedAd.find(params[:id])
  end

  # POST /classified_ads
  # POST /classified_ads.json
  def create
    @classified_ad = ClassifiedAd.new(params[:classified_ad])

    respond_to do |format|
      if @classified_ad.save
        format.html { redirect_to classified_ads_path, notice: 'Classified ad was successfully created.' }
        format.json { render json: @classified_ad, status: :created, location: @classified_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @classified_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /classified_ads/1
  # PUT /classified_ads/1.json
  def update
    @classified_ad = ClassifiedAd.find(params[:id])

    respond_to do |format|
      if @classified_ad.update_attributes(params[:classified_ad])
        format.html { redirect_to @classified_ad, notice: 'Classified ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @classified_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classified_ads/1
  # DELETE /classified_ads/1.json
  def destroy
    @classified_ad = ClassifiedAd.find(params[:id])
    @classified_ad.destroy

    respond_to do |format|
      format.html { redirect_to classified_ads_url }
      format.json { head :no_content }
    end
  end
end
