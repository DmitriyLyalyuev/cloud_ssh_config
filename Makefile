clean:
	rm -rf build
	rm -rf *.egg-info
	rm -rf dist

build: clean
	python3 setup.py sdist bdist_wheel

upload:
	python3 -m twine upload  dist/*`cat cloud_ssh_config/__init__.py | awk '{print $$3}' | tr -d '"'`*
