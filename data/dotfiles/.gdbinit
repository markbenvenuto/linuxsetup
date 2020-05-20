add-auto-load-safe-path /data/mongo/.gdbinit

python
import sys
sys.path.insert(1, '/home/ubuntu/repo/Boost-Pretty-Printer')
import boost
boost.register_printers(boost_version=(1,69,0))
end

