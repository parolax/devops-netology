# Домашнее задание к занятию 3. «Введение. Экосистема. Архитектура. Жизненный цикл Docker-контейнера»

1. Задача 1
  - https://hub.docker.com/repository/docker/parolaxx/05-virt-03-docker/general

2. Задача 2
  - высоконагруженное монолитное Java веб-приложение
    В этом случае лучше использовать виртуальную машину или физическую машину, так как они обеспечивают более высокую изоляцию и ресурсоемкость, чем Docker-контейнеры. Виртуальная машина обеспечивает полную изоляцию от хост-машины и возможность настройки ресурсов, таких как CPU, RAM и диск, под конкретные нужды приложения. Физическая машина также может быть использована для запуска приложения, если есть достаточно ресурсов и возможность настройки их под нужды приложения.
  - Nodejs веб-приложение
    Docker-контейнеры могут быть хорошим выбором, потому что они обеспечивают высокую портативность, масштабируемость и управляемость. Docker-контейнеры позволяют запускать приложение в изолированной среде, которая содержит все необходимые зависимости и настройки, и которая может быть легко перенесена на другие платформы и серверы. Кроме того, Docker-контейнеры позволяют масштабировать приложение горизонтально, добавляя новые экземпляры контейнеров при необходимости, и управлять всем стеком приложений с помощью оркестраторов, таких как Kubernetes или Docker Swarm.
  - мобильное приложение c версиями для Android и iOS
    Использование Docker-контейнеров может быть не самым оптимальным выбором. Это связано с тем, что мобильные приложения работают на мобильных устройствах, которые не могут запускать Docker-контейнеры напрямую.
    В этом случае, лучше всего использовать виртуальные машины или физические машины. Виртуальные машины могут быть использованы для тестирования и разработки приложения, так как они обеспечивают изоляцию и удобство управления. Физические машины могут быть использованы для развертывания приложения в производственной среде, так как они обеспечивают лучшую производительность и могут быть настроены для обеспечения высокой доступности и масштабируемости.
  - шина данных на базе Apache Kafka
    Использование Docker-контейнеров может быть хорошим выбором. Контейнеризация позволяет легко масштабировать и управлять экземплярами Kafka, а также обеспечивает высокую доступность и удобство развертывания на различных платформах.
  - Elasticsearch-кластер для реализации логирования продуктивного веб-приложения — три ноды elasticsearch, два logstash и две ноды kibana
    Использование Docker-контейнеров может быть хорошим выбором. Контейнеризация позволяет легко масштабировать и управлять экземплярами Elasticsearch, Logstash и Kibana. Контейнеризация позволяет легко управлять зависимостями и версиями каждого компонента, а также обеспечивает изоляцию и безопасность а также обеспечивает высокую доступность и удобство развертывания на различных платформах. 
  - мониторинг-стек на базе Prometheus и Grafana
    Docker-контейнеры предоставляют возможность эффективного управления и развертываниями приложений, а также обеспечивают высокую доступность и удобство развертывания на различных платформах. В данном случае, использование Docker-контейнеров для запуска Prometheus и Grafana позволит легко масштабировать и управлять экземплярами, а также ускорить процесс развертывания и обновления.
  - MongoDB как основное хранилище данных для Java-приложения
    Использование Docker-контейнеров имеет следующие преимущества:
      * Легкость управления и масштабирования экземплярами MongoDB
      * Возможность быстрого развертывания и настройки контейнеров
      * Удобство работы с различными версиями MongoDB и Java-приложения
      * Уменьшение затрат на аппаратное обеспечение и оптимизация использования ресурсов
    Однако, использование виртуальных машин или физических машин может быть более предпочтительным в следующих случаях:
      * Необходимость высокой производительности MongoDB и Java-приложения
      * Необходимость большого объема хранения данных
      * Необходимость дополнительных функций, таких как резервное копирование и восстановление данных
  - Gitlab-сервер для реализации CI/CD-процессов и приватный (закрытый) Docker Registry
    В Docker-контейнере, а приватный Docker Registry может быть использован для хранения Docker-образов, используемых в CI/CD-процессах.

3. Задача 3
  - Добавленная информация видна во втором контейнере 
  - root@13d8549c5a0c:/data# ls -l 
  - total 8 
  - -rw-r--r-- 1 root root 35 May 20 08:43 test.txt 
  - -rw-r--r-- 1 root root 29 May 20 09:37 test_host.txt
  - 
  - root@13d8549c5a0c:/data# cat test.txt 
  - I added that file in docker centos 
  - root@13d8549c5a0c:/data# cat test_host.txt 
  - Added from PC without docker
