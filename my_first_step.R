#Встановлюємо бібліотеку RMarkdown
install.packages("rmarkdown")
library(rmarkdown)

---
  title: "my_first_step"
author: "Vitalii Lebediuk"
date: "20 09 2020"
output: html_document
---
  
## Про функції в R
  
Кожна функція складається з 3-ох частин: name, argument(s), body. Назва функції повинна бути: short, clear, descriptive, verbs (action words), ”snake case”. Більш детальніше про функції можна прочитати [тут](https://www.tutorialspoint.com/r/r_functions.htm).

Далі ми побачимо як виглядає функція в R:
  
  ```{r}
celsius_to_fahrenheit <- function(C){
  F <- C * (9/5) + 32
  return(paste("The entered Celsius temperature is", F, "degrees Fahrenheit."))
}
```

## Тут моя перша візуалізація

Я візуалізував дані з набору mtcars:
  
  ```{r echo=FALSE}
plot(mtcars$cyl)
```

Мабуть непогано для початку.

#Створимо вайл rmarkdown
#File > New File > R Markdown
#Документи Markdown зазвичай мають одне з двох розширень файлів: .Rmd, .rmd.
#Ми можемо їх відтворити у HTML pages, PDFs, Word documents, slides та інших.
#R Markdown means reproducibility - https://rmarkdown.rstudio.com/
#Структура R Markdown: YAML (metadata), text sections, code chunks 
# Реєструємось на https://github.com/
#YAML (metadata)
---
  title: "my_first_step"
author: "Vitalii Lebediuk"
date: "20 09 2020"
output: html_document
---
#text sections
## Про себе
  ![](C:/RData/Shev_Leb.png){width=100px}
Директор аналітичного центру [**Школа політичної аналітики Поліс**](https://polis.oa.edu.ua/).
## Наукові інтереси
* Quantitative Research Methods
* SPSS and R
* Comparative Politics
## Мої проекти
### Наш перший проект
* *European Values and Identity Studies*, ***ERASMUS+ Jean Monnet Modules***
###Наш другий проект
* *The Comparative Study of Demoratization: Transition Politics in V4 countries and Ukraine*, 
International Visegrad Fund’s Visegrad University Studies Grant.
## Профілі
* [GitHub](https://github.com/vitalii-lebediuk)
## Contact
* [vitalii.lebediuk@oa.edu.ua](mailto:vitalii.lebediuk@oa.edu.ua)
## Більше про мене
#Моє CV доступне [тут](C:/RData/CV_Vitalii_Lebediuk.pdf). 
#додайте widget: https://clustrmaps.com/add
#chunk Options
#include = FALSE - запобігає появі коду та результатів у готовому файлі. 
#echo = FALSE - запобігає коду, але не появі результатам у готовому файлі. 
#message = FALSE - запобігає появі повідомлень, що генеруються кодом, у готовому файлі.
#warning = FALSE - запобігає появі попереджень, що генеруються кодом. 
#fig.cap = "..." - додає підпис до графічних результатів. 

# інші налаштування
output: 
  html_document:
  toc: true
toc_depth: 2
#або замість toc_depth: 2 ми додаємо toc_float: true або заголовки number_sections: true 
#або 
toc_float: 
  collapsed: false
smooth_scroll: false
#або
## Quarterly Results {.tabset}
### By Product
#(tab content)
### By Region
#(tab content)
#Можна додати ще .tabset-fade або .tabset-pills
## Quarterly Results {.tabset .tabset-fade}
# зовнішній вигляд theme
# За замовчуванням існують такі теми: cerulean, journal, flatly, darkly, 
#readable, spacelab, united, cosmo, lumen, paper, sandstone, simplex, and yeti. 
# theme: https://bootswatch.com/3/
#Стиль синтаксису highlight
#Розрізняють: default, tango, pygments, kate, monochrome, 
#espresso, zenburn, haddock, breezedark, і textmate

#Параметри малюнку
# fig_widthі fig_height - може використовуватися для управління типовою шириною та висотою фігури (за замовчуванням використовується 7x5).
# fig_retina - визначає масштабування для екранів сітківки (за замовчуванням 2). Якщо обираємо null, то це запобігає масштабуванню сітківки.
# fig_caption - контролює, чи відображатимуться цифри з підписами.
# dev - керує графічним пристроєм, що використовується для відтворення фігур (за замовчуванням png).
html_document:
  fig_width: 7
fig_height: 6
fig_caption: true

#*italics*
#**bold**
#`code`
#[links](rmarkdown.rstudio.com)

# додайте widget: https://clustrmaps.com/add



