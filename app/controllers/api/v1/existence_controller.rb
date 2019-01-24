class Api::V1::ExistenceController < ApplicationController


  def post
    # post されるパラメータは [{"name": "kento", "status": true}]

    existence = params
    data = Existence.find_by(name: existence[:name])
    data.status = existence[:status]
    time = Time.now

    if (data.changed?)
      if (data.status == true)
        data.update(status: true, enter_time: time)
      else
        diff = time - Time.parse(data.enter_time.to_s)
        total += diff / 60
        data.update(status: false, exit_time: time,
                    total: total)
      end
    end
  end
end
