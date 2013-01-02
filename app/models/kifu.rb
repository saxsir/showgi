class Kifu < ActiveRecord::Base
  attr_accessible :file_url, :owner_id, :title
  
  belongs_to :user

  def upload
    file=params[:file]['csadata']
    @filename = params[:file]['csadata'].original_filename
    File.open("public/upload/#{@filename}", "wb"){ |f|
      f.write(file.read)
    }
  end
end
