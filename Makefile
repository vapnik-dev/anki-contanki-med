all: contanki.ankiaddon

.venv:
	python3 -m venv .venv
	./.venv/bin/pip install --upgrade pip
	./.venv/bin/pip install --upgrade --pre aqt

contanki.ankiaddon:
	cd contanki; zip -r ../contanki.ankiaddon ./*; cd ..

clean:
	-rm contanki.ankiaddon
	-rm -rf contanki/__pycache__
	-rm -rf .venv/
