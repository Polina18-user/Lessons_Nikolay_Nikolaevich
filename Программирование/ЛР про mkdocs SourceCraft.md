# Лабораторная работа 
## Часть 1. mkdocs

https://github.com/Polina18-user/mkdocs-site.git



Установка Python системно, создание окружения, создание репозитория на desktop GitHub, перенесение его в GitHub

<img width="1897" height="953" alt="1" src="https://github.com/user-attachments/assets/39ef2409-f4ab-4cc2-a782-cc28298986a9" />


<img width="1351" height="692" alt="3" src="https://github.com/user-attachments/assets/fe2f5960-9d32-4433-8aed-88b2293c8cb8" />


<img width="1395" height="658" alt="image" src="https://github.com/user-attachments/assets/8bc02446-a5b2-4daa-ae9a-168b5b5ea828" />


Создание .github/workflows/deploy.yml

```
name: Deploy MkDocs to GitHub Pages

on:
  push:
    branches: [ "main" ]

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: '3.x'
      - run: pip install -r requirements.txt   # <--- Вот здесь мы используем ваш файл
      - run: mkdocs build
      - uses: actions/upload-pages-artifact@v3
        with:
          path: site

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - id: deployment
        uses: actions/deploy-pages@v4
```

requirements.txt (его создаем сначала)

```
click==8.5.0
colorama==0.4.6
ghp-import==2.1.0
Jinja2==3.1.6
Markdown==3.11.1
MarkupSafe==3.0.4
mergedeep==1.3.4
mkdocs==1.6.1
mkdocs-get-deps==0.2.2
packaging==26.3
pathspec==1.1.1
platformdirs==4.13.0
python-dateutil==2.9.0.post0
PyYAML==6.0.3
pyyaml_env_tag==1.1
six==1.17.0
watchdog==6.0.0
```


<img width="1180" height="416" alt="image" src="https://github.com/user-attachments/assets/6daecd7a-e9d4-4401-83ed-ae4c621a57b0" />




<img width="852" height="267" alt="image" src="https://github.com/user-attachments/assets/9c00352c-0f18-473f-9792-8da5e3188d81" />



<img width="1242" height="548" alt="image" src="https://github.com/user-attachments/assets/977c14d7-cd84-47b0-a5ed-defc24af3161" />


## Часть 2. Source Craft



