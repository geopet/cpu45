class InfoController < ApplicationController
  caches_page :overview, :aid_stations, :course_description, :directions,
              :rules, :schedule
end
