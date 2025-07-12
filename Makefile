all: contanki.ankiaddon

contanki.ankiaddon:
	cd contanki; zip -r ../contanki.ankiaddon ./*; cd ..

clean:
	-rm contanki.ankiaddon
	-rm -rf contanki/__pycache__
