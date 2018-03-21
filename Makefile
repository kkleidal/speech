
all: warp transduce

warp:
	git clone https://github.com/awni/warp-ctc.git libs/warp-ctc || echo "Pass"
	cd libs/warp-ctc; mkdir build; cd build; cmake ../ && make; \
		cd ../pytorch_binding; python build.py

# TODO, awni, put this into a package
transduce:
	git clone https://github.com/awni/transducer.git libs/transducer || echo "Pass"
	cd libs/transducer; python build.py

