:: REMOVE BUILDER DIST -> FORMIO_JS
cd D:\FormIO\formio.js
set folder="D:\FormIO\formio.js\dist"
rd /s /q %folder%
::mkdir %folder%
:: GULP
call gulp build
call git add .
call git commit -a -m "commit prova"
call git push

:: REMOVE FORMIO_JS
cd "D:\FormIO\formio"
rd /s /q "D:\FormIO\formio\node_modules\formiojs"
call npm install
call git add .
call git commit -a -m "commit prova"
call git push
:: REMOVE BUILDER DIST -> NG2_FORMIO
::FormIO\formio-app-formio\bower_components\ng-formio-builder
cd "D:\FormIO\hsd-ng2-formio"
rd /s /q D:\FormIO\hsd-ng2-formio\node_modules\formiojs
rd /s /q D:\FormIO\hsd-ng2-formio\node_modules\formio
rd /s /q D:\FormIO\hsd-ng2-formio\dist
call npm install
::	mkdir D:\FormIO\formio-app-formio\bower_components\ng-formio-builder
::Copiare tutti i file e le cartelle (tranne bower_components e node_modeules) da ngFormBuilder a app-formio
::	ROBOCOPY D:\FormIO\ngFormBuilder D:\FormIO\formio-app-formio\bower_components\ng-formio-builder /E /xd D:\FormIO\ngFormBuilder\bower_components /xd D:\FormIO\ngFormBuilder\node_modules
:: GULP
call gulp build
call git add .
call git commit -a -m "commit prova"
call git push

cd "D:\Users\fstivanin\OneDrive\OneDrive - ICONSULTING S.p.A\Progetti\HSD\hsd-app-gestionale"
rd /s /q "D:\Users\fstivanin\OneDrive\OneDrive - ICONSULTING S.p.A\Progetti\HSD\hsd-app-gestionale\node_modules\ng2-formio"
call npm install
::	mkdir D:\FormIO\hsd-form-io\client
::Copiare tutti i file e le cartelle (tranne bower_components e node_modeules) da app-formio a formio\client
::	ROBOCOPY D:\FormIO\formio-app-formio D:\FormIO\hsd-form-io\client /E /xd D:\FormIO\formio-app-formio\bower_components /xd D:\FormIO\formio-app-formio\node_modules
taskkill /F /IM node.exe /T
call ng serve