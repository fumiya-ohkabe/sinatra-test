root = "#{Dir.getwd}"

bind "tcp://0.0.0.0:7890"
# bind "tcp://127.0.0.0:7890"
# bind "unix://#{root}/tmp/sockets/puma.sock"

pidfile "#{root}/tmp/puma/pid"
state_path "#{root}/tmp/puma/state"
rackup "#{root}/config.ru"
threads 4, 8

# daemonize true

activate_control_app
