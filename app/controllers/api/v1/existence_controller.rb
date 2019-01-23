require 'date'
class Api::V1::ExistanceController < ApplicationController
  def post
    time = DataTime.now
    existences = params


    # existenceが[{name:'hoge', status:1},{name:'huga', status:0} ]
    existences.each do |f|
      data = Existence.find_by(name: f.name)

      if (f.status.changed?)
        if (f.status == true)
          data.update(status: true, enter_time: time)
        else
          diff = time - data.enter_time
          hour = diff.strftime("%H").to_i
          min = diff.strftime("%M").to_i
          total = hour * 60 + min
          data.update(status: false, exit_time: time,
                      total: total)
        end
      end
    end
  end
end