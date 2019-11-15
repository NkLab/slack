Перем fallback Экспорт;
Перем color Экспорт;
Перем pretext Экспорт;

Перем author_name Экспорт;
Перем author_link Экспорт;
Перем author_icon Экспорт;

Перем title Экспорт;
Перем title_link Экспорт;

Перем text Экспорт;

Перем fields Экспорт;

Перем image_url Экспорт;
Перем thumb_url Экспорт;

Перем footer Экспорт;
Перем footer_icon Экспорт;

Перем ts Экспорт;


Процедура ПриСозданииОбъекта(Знач КраткийТекст = "", Знач Текст = "", Знач Претекст = "", Знач Цвет = "")
	
	fallback = КраткийТекст;
	text = Текст;
	pretext = Претекст;
	color = Цвет;
	fields = Новый Массив;
	
КонецПроцедуры

Функция НовоеПоле(Знач title, Знач value, Знач short)

	Структура = Новый Структура;
	Структура.Вставить("title", title);
	Структура.Вставить("value", value);
	Структура.Вставить("short", short);
	Возврат Структура;
	
КонецФункции

#Область ПрограммныйИнтерфейс

Функция ОбъектныеСвойства() Экспорт
	Свойства = Новый Массив;
	Возврат Свойства;
КонецФункции

Функция ДобавитьПоле(Знач Заголовок, Знач Значение = "", Знач Кратко = Ложь) Экспорт
	
	fields.Добавить(НовоеПоле(Заголовок, Значение, Кратко));
	
	Возврат ЭтотОбъект;
	
КонецФункции

Функция КраткийТекст(Знач Значение) Экспорт
	fallback = Значение;
	Возврат ЭтотОбъект;
КонецФункции

Функция Текст(Знач Значение) Экспорт
	text = Значение;
	Возврат ЭтотОбъект;
КонецФункции

Функция Претекст(Знач Значение) Экспорт
	pretext = Значение;
	Возврат ЭтотОбъект;
КонецФункции

Функция Цвет(Знач Значение) Экспорт
	color = Значение;
	Возврат ЭтотОбъект;
КонецФункции

#КонецОбласти
