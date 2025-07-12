.PHONY: package
package: contanki.ankiaddon

.venv:
	python3 -m venv .venv
	./.venv/bin/pip install --upgrade pip
	./.venv/bin/pip install --upgrade --pre aqt
	./.venv/bin/pip install --upgrade black isort 

.PHONY: format 
format: .venv
	./.venv/bin/black . 
	./.venv/bin/isort . 

contanki.ankiaddon:
	cd contanki; zip -r ../contanki.ankiaddon ./*; cd ..

.PHONY: clean 
clean:
	-rm contanki.ankiaddon
	-rm -rf contanki/__pycache__
	-rm -rf .venv/
