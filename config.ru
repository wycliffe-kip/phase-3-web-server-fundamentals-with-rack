require 'rack'
require 'pry'

class App 
    def call(env)
        path = env["PATH_INFO"]

        if path == "/"
            [200, { "Content-Type" => "text/htm" }, ["<h2>Hello <em>World</em>!</h2>"]]
        elsif path == "/potato"
            [200, { "Content-Type" => "text/html" }, ["<h> Boil 'em, stick 'em in a stew</p>"]] 
        else 
            [404, { "Content-Type" => "text/html" }, ["Page Not Found" ]]
        end 
    end 
end 

run App.new

