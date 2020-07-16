TEST_DIRECTORY=${PWD}/test-of-installation
TPL_DIRECTORY=${PWD}/template
FILES:= src public .env.development .eslintignore .eslintrc.json .gitignore Makefile README.md .prettierrc tsconfig.json

test-build: cra test build
cp: update-templates-from-test-directory


cra:
	rm -rf ${TEST_DIRECTORY}
	npx create-react-app ${TEST_DIRECTORY} --template file:./

build:
	cd ${TEST_DIRECTORY} && npm run-script build

test:
	cd ${TEST_DIRECTORY}; npm run-script test

update-templates-from-test-directory:
	for key in $(FILES) ; do \
  		rm -rf ${TPL_DIRECTORY}/$${key}; \
  		cp -rf ${TEST_DIRECTORY}/$${key} ${TPL_DIRECTORY}/$${key}; \
	done

