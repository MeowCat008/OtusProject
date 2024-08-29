﻿#language: ru

@tree

Функционал: Проверка движения товаров

Как Администратор я хочу
проверить движение товаров в базе
чтобы исключить ошибки при формировании товарных документов   



Сценарий: Проверка наличия номенклатуры в базе
* Удаление значений переменных
	И я удаляю все глобальные переменные
* Подключение тест-клиента
	И я подключаю TestClient "Тест" логин "Администратор" пароль ""
* Проверка наличия Номенклатуры
	Дано Я открываю навигационную ссылку "e1cib/list/Справочник.Товары"
	Когда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000027" | "Ряженка"      |
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000004" | "Сметана"      |
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000021" | "Масло"        |
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000035" | "Йогурт"       |
	И я закрываю все окна клиентского приложения

Сценарий: Предварительная проверка остатков
* Открытие формы отчета
	Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	Когда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
* Формирование очета Остатки на складах по номенклатуре йогурт
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000035"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета йогурт до поступления" по шаблону
* Формирование очета Остатки на складах по номенклатуре сметана
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000004"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета сметана до поступления" по шаблону
* Формирование очета Остатки на складах по номенклатуре масло
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000021"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета масло до поступления" по шаблону
* Формирование очета Остатки на складах по номенклатуре ряженка
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000027"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета ряженка до поступления" по шаблону
*Закрытие окна формы отчет
	Когда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И Я закрываю окно "Остатки товаров (Остатки товаров с характеристиками)"
* Закрытие тест-клиента
	И я закрываю сеанс текущего клиента тестирования

Сценарий: Создание документа Поступление товаров
* Подключение тест-клиента
	И я подключаю TestClient "Тест" логин "Менеджер по закупкам" пароль ""
* Открытие формы создания документа
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.ПриходТовара"
	Когда открылось окно "Поступления товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение шапки документа
	Тогда открылось окно "Поступление товара (создание)"
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО Товары"
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
	И я нажимаю кнопку выбора у поля с именем 'Поставщик'
	Тогда открылось окно "Контрагенты"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование"             | "Код"       |
		| "Животноводство ООО"       | "000000009" |
	И в таблице 'Список' я выбираю текущую строку
* Заполнение табличной части документа
	Когда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Когда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" | "Код"       |
		| "Ряженка"      | "000000027" |
	И в таблице 'Список' я выбираю текущую строку
	Когда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "120,00"
	И в таблице 'Товары' я завершаю редактирование строки

	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Когда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" | "Код"       |
		| "Сметана"      | "000000004" |
	И в таблице 'Список' я выбираю текущую строку
	Когда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "98,00"
	И в таблице 'Товары' я завершаю редактирование строки

	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Когда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" | "Код"       |
		| "Масло"        | "000000021" |
	И в таблице 'Список' я выбираю текущую строку
	Когда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "115,00"
	И в таблице 'Товары' я завершаю редактирование строки

	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Когда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" | "Код"       |
		| "Йогурт"       | "000000035" |
	И в таблице 'Список' я выбираю текущую строку
	Когда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "48,00"
	И в таблице 'Товары' я завершаю редактирование строки
	Когда открылось окно "Поступление товара (создание) *"
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля "Номер" как "$$номердокументапоступление$$" 
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Поступление товара (создание) *" в течение 20 секунд
* Закрытие тест-клиента
	И я закрываю сеанс текущего клиента тестирования

Сценарий: Проверка остатков после ввода докумнта Поступление товаров
* Подключение тест-клиента
	И я подключаю TestClient "Тест" логин "Администратор" пароль ""
* Открытие формы отчета
	Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	Когда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
* Формирование очета Остатки на складах по номенклатуре йогурт
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000035"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета йогурт после поступления" по шаблону
* Формирование очета Остатки на складах по номенклатуре сметана
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000004"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета сметана после поступления" по шаблону
* Формирование очета Остатки на складах по номенклатуре масло
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000021"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета масло после поступления" по шаблону
* Формирование очета Остатки на складах по номенклатуре ряженка
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000027"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета ряженка после поступления" по шаблону
*Закрытие окна формы отчет
	Когда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И Я закрываю окно "Остатки товаров (Остатки товаров с характеристиками)"
* Закрытие тест-клиента
	И я закрываю сеанс текущего клиента тестирования

Сценарий: Установка цен на товары
* Подключение тест-клиента
	И я подключаю TestClient "Тест" логин "Менеджер по закупкам" пароль ""
* Открытие формы списка регистра сведений
	Дано Я открываю навигационную ссылку "e1cib/list/РегистрСведений.ЦеныТоваров"
	Когда открылось окно "Цены товаров и услуг"
* Заполнение регистра
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Цена на дату (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Товар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000035" | "Йогурт"       |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Цена на дату (создание) *"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Розничная"
	И в поле с именем 'Цена' я ввожу текст "50,00"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Цена на дату (создание) *" в течение 20 секунд

	Когда открылось окно "Цены товаров и услуг"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Цена на дату (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Товар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование"  |
		| "000000027" | "Ряженка"       |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Цена на дату (создание) *"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Розничная"
	И в поле с именем 'Цена' я ввожу текст "73,00"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Цена на дату (создание) *" в течение 20 секунд

	Когда открылось окно "Цены товаров и услуг"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Цена на дату (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Товар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование"  |
		| "000000004" | "Сметана"       |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Цена на дату (создание) *"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Розничная"
	И в поле с именем 'Цена' я ввожу текст "83,00"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Цена на дату (создание) *" в течение 20 секунд

	Когда открылось окно "Цены товаров и услуг"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Цена на дату (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Товар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000021" | "Масло"        |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Цена на дату (создание) *"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Розничная"
	И в поле с именем 'Цена' я ввожу текст "50,00"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Цена на дату (создание) *" в течение 20 секунд
* Закрытие тест-клиента
	И я закрываю сеанс текущего клиента тестирования


Сценарий: Создание документа Реализация товаров
* Подключение тест-клиента
	И я подключаю TestClient "Тест" логин "Менеджер по продажам" пароль ""
* Открытие формы создания документа
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
	Когда открылось окно "Продажи товара"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение шапки документа
	Тогда открылось окно "Продажа товара (создание)"
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО Товары"
	И я нажимаю кнопку выбора у поля с именем 'Покупатель'
	Когда открылось окно "Контрагенты"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000013"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Продажа товара (создание) *"
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Розничная"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
* Заполнение табличной части документа
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Когда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000021"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Продажа товара (создание) *"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "45,00"
	И в таблице 'Товары' я завершаю редактирование строки

	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Когда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000004"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Продажа товара (создание) *"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "70,00"
	И в таблице 'Товары' я завершаю редактирование строки

	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Когда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000035"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Продажа товара (создание) *"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "40,00"
	И в таблице 'Товары' я завершаю редактирование строки

	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Когда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000027"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Продажа товара (создание) *"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "105,00"
	И в таблице 'Товары' я завершаю редактирование строки
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля "Номер" как "$$номердокументареализации$$"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Продажа товара (создание) *" в течение 20 секунд
* Закрытие тест-клиента
	И я закрываю сеанс текущего клиента тестирования


Сценарий: Проверка формирования отчета Остатки на складах
* Подключение тест-клиента
	И я подключаю TestClient "Тест" логин "Администратор" пароль ""
* Открытие формы отчета
	Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	Когда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
* Формирование очета Остатки на складах по номенклатуре йогурт
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000035"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета йогурт" по шаблону
* Формирование очета Остатки на складах по номенклатуре сметана
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000004"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета сметана" по шаблону
* Формирование очета Остатки на складах по номенклатуре масло
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000021"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета масло" по шаблону
* Формирование очета Остатки на складах по номенклатуре ряженка
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "000000027"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент3Значение' я выбираю точное значение "Склад отдела продаж"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 5
* Сравнение отчета с эталонным макетом
	Дано Табличный документ "Результат" равен макету "макет отчета ряженка" по шаблону
*Закрытие окна формы отчет
	Когда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
	И Я закрываю окно "Остатки товаров (Остатки товаров с характеристиками)"


Сценарий: Очистка тестовых данных
* Открытие формы списка документов поступления товаров
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.ПриходТовара"
	Когда открылось окно "Поступления товаров"
* Пометка на удаление тестовых данных. Документ Поступление товаров
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "$$номердокументапоступление$$"
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем 'Список'
	Тогда открылось окно "1С:Предприятие"
	И я нажимаю на кнопку с именем 'Button0'
* Открытие формы списка документов продажи товара
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
	Когда открылось окно "Продажи товара"
* Пометка на удаление тестовых данных. Документ Продажа товара
	И в таблице 'Список' я активизирую дополнение формы с именем 'СписокСтрокаПоиска'
	И в таблице 'Список' в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст "$$номердокументареализации$$"
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем 'Список'
	Тогда открылось окно "1С:Предприятие"
	И я нажимаю на кнопку с именем 'Button0'
* Создание локальной переменной
	И Я запоминаю значение выражения 'Формат(ТекущаяДата(), "ДФ=dd.MM.yyyy")' в переменную "ТекущаяДата"
* Открытие формы списка регистра свединий Цены товаров и услуг
	Дано Я открываю навигационную ссылку "e1cib/list/РегистрСведений.ЦеныТоваров"
	Тогда открылось окно "Цены товаров и услуг"
* Удаление тестовых данных. Регистр Цены на товары и услуги
	И в таблице 'Список' я перехожу к строке:
		| "Период"       | "Товар" |
		| "$ТекущаяДата$"| "Масло" |
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУдалить' на элементе формы с именем 'Список'
	Тогда открылось окно "1С:Предприятие"
	И я нажимаю на кнопку с именем 'Button0'

	И в таблице 'Список' я перехожу к строке:
		| "Период"       | "Товар" |
		| "$ТекущаяДата$"| "Сметана" |
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУдалить' на элементе формы с именем 'Список'
	Тогда открылось окно "1С:Предприятие"
	И я нажимаю на кнопку с именем 'Button0'

	И в таблице 'Список' я перехожу к строке:
		| "Период"       | "Товар" |
		| "$ТекущаяДата$"| "Йогурт" |
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУдалить' на элементе формы с именем 'Список'
	Тогда открылось окно "1С:Предприятие"
	И я нажимаю на кнопку с именем 'Button0'

	И в таблице 'Список' я перехожу к строке:
		| "Период"       | "Товар" |
		| "$ТекущаяДата$"| "Ряженка" |
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУдалить' на элементе формы с именем 'Список'
	Тогда открылось окно "1С:Предприятие"
	И я нажимаю на кнопку с именем 'Button0'
*Закрытие тест-клиента
	И я закрываю сеанс текущего клиента тестирования