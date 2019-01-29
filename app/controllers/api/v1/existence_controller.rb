class Api::V1::ExistenceController < ApplicationController
  protect_from_forgery :except => [:post]

  def post
    # post されるパラメータは [{"name": "kento", "status": true}]
    # post test
    # shell : curl -X POST -H "Content-Type: application/json" -d '{"name": "Buri", "status": true}' http://0.0.0.0:3000/api/v1/existence

    existence = params[:existence]
    data = Existence.find_or_create_by(name: existence[:name])
    data.status = existence[:status]
    time = Time.now

    if (data.changed?)
      if (data.status == true)
        data.update(status: true, enter_time: time)
        logger.debug data.errors.inspect
      else
        diff = time - Time.parse(data.enter_time.to_s)
        total = diff / 60 + data.total
        data.update(status: false, exit_time: time,
                    total: total)
      end
    end
  end
end
