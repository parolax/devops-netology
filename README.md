# devops-netology

Неотслеживаемые файлы:
- Все директории с именем .terraform со всеми вложениями внутри, где бы директория не находилась в проекте
- Все файлы с расширениями: 
  - .tfstate
  - .tfvars
  - .tfvars.json
  - .terraformrc
- Все файлы содержащие в имени:
  - .tfstate.
- Все файлы:
  - crash.log
  - override.tf 
  - override.tf.json
  - terraform.rc
- Все файлы с названием начинающемся на crash. с любым именем после точки и расширением .log
- Все файлы заканчивающиеся на:
  - _override.tf
  - _override.tf.json
