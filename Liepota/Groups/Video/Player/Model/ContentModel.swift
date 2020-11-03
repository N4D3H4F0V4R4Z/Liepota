//
//  ContentModel.swift
//  Liepota
//
//  Created by Наджафов Араз on 03.11.2020.
//

import UIKit

class ContentModel: NSObject {
    
    func getVideos() -> [Video] {
        
        var videos = [Video]()
        
        let video1 = Video()
        video1.id = "E7yeDMLo3m8"
        video1.title = "Расширенные возможности Timelapse на вашем смартфоне! Moment Pro Camera."
        video1.descript = """
        Расширенные возможности съемки таймлэпсов на вашем смартфоне;
        У ребят из Moment вышло обновление и сегодня покажу, что да как там работает!
        """
        videos.append(video1)
        
        let video2 = Video()
        video2.id = "eHWIYoD6P-w"
        video2.title = "VUE. Приложение для создания динамичных сторис, покраски и монтажа"
        video2.descript = """
        Сегодня хочу рассказать про незаменимое  в моем арсенале приложение.
        В VUE постоянно монтирую видосы из путешествий для сторис, крашу и накладываю музыку.
        """
        videos.append(video2)
        
        let video3 = Video()
        video3.id = "P-WFk9JCR30"
        video3.title = "Санкт-Петербург 2019"
        video3.descript = """
        В свете последних событий и обстановки, эти кадры вызывают у меня еще больше эмоций.
        Комментарии тут излишни.
        """
        videos.append(video3)
        
        let video4 = Video()
        video4.id = "Hd3sDzjYrQI&t=6s"
        video4.title = "🦠Карантин🦠"
        video4.descript = """
        Дублирую видео из инстаграм.

        👋🏻Друзья, на самоизоляции я решил попробовать что-то новое)
        Дмитрий Ларин научил пользоваться Рипером и та-даа!)
        """
        videos.append(video4)
        
        let video5 = Video()
        video5.id = "_lTxGekB5d4"
        video5.title = "Творческий Путь. Фотографирую уже 14 лет. Лайфхаки развития."
        video5.descript = """
        Привет, с вами Станислав Лиепа ! Сегодня будет разговорное видео.
        Расскажу немного про свой творческий путь.
        От зачатков моей фотографии до советов начинающим свой путь.
        """
        videos.append(video5)
        
        let video6 = Video()
        video6.id = "Mt9DUOlkcmc"
        video6.title = "Пожалуй лучшее приложение на твой смартфон! Снимай Raw/Flat Log видео/Light Trail"
        video6.descript = """
        Легендарное приложение Moment Pro Camerа, линзы Bitplay, куча визуальной мистики и никакой магии!
        Смотри, вдохновляйся!
        """
        videos.append(video6)
        
        let video7 = Video()
        video7.id = "d8PMqWBBgjc"
        video7.title = "Качественный звук в твоих видео. Обзор годных аксессуаров"
        video7.descript = """
        Сегодня поговорим о звуке.
        А также расскажу о своих новых гаджетах для улучшения качества звука. И открытие этого года - Blink 500
        """
        videos.append(video7)
        
        let video8 = Video()
        video8.id = "5uS1GwRlo-Y"
        video8.title = "Обработка RAW на телефоне / Оптимизация при работе"
        video8.descript = """
        Как облегчить себе жизнь и не таскаться с тяжелым рюкзаком на съемки и в поездках.
        Сегодня поговорим мобильном переносе данных и приятных открытиях.
        """
        videos.append(video8)
        
        let video9 = Video()
        video9.id = "DdQx-hZMmjo"
        video9.title = "Обзор Sennheiser Ambeo"
        video9.descript = """
        Мой субъективный обзор гарнитуры Sennheiser Ambeo с возможностью бинауральной записи звука .
        Достаточно интересное устройство для разных задач.
        """
        videos.append(video9)
        
        let video10 = Video()
        video10.id = "hfT3cLO42Hg"
        video10.title = "Как я похудел на 16кг за 2 месяца."
        video10.descript = """
        Разговорное видео о том, как я похудел на 16 кг за 2 месяца с правильным питанием и систематическими тренировками.
        """
        videos.append(video10)
        
        let video11 = Video()
        video11.id = "s2YA44Mhb88"
        video11.title = "Топовые объективы для твоего IPhone"
        video11.descript = """
        Сегодня поговорим с вами о мобильной фотографии, а в частности линзы для IPhone и Android.
        """
        videos.append(video11)
        
        let video12 = Video()
        video12.id = "fHJvEEitoFw"
        video12.title = "Съемки клипа 30 лет / Лысый Ларин"
        video12.descript = """
        История о том, как проходили съемки клипа Дмитрия Ларина к его 30-летию.
        """
        videos.append(video12)
        
        let video13 = Video()
        video13.id = "BCChgO3U1jw"
        video13.title = "Вложил ВСЕ в Биткоины. (нет)"
        video13.descript = """
        Ходят слухи, что он и дальше будет расти!
        """
        videos.append(video13)
        
        let video14 = Video()
        video14.id = "pZvf8hEoclY"
        video14.title = "Лиепота-Новости. Блокировка музыка ВК. Ларин в ЛСП."
        video14.descript = """
        Фокус иногда уходил перекурить =( Исправлю.
        """
        videos.append(video14)
        
        let video15 = Video()
        video15.id = "B6_i1SoUJeQ"
        video15.title = "Зачем IPHONE X? / TOP 5 классных приложений для фото!"
        video15.descript = """
        Весь список приложений.
        Camera+
        VSCO
        FaceTune
        LD (Lens Distortion)
        Plotagraph+
        """
        videos.append(video15)
        
        let video16 = Video()
        video16.id = "Tm4dIwzmKMU"
        video16.title = "Адель 3 года/ Покупка Mavic Pro / Бургеры Ларина и Соболева"
        video16.descript = """
        Продолжение выпусков про мои #трудоВыебудни .
        Адель уже подрасла и ей 3 года.
        Я купил себе новый квадрик Mavic Pro.
        Ну и конечно дегустирую Ларин Бургер и Соболев Бургер.
        Приятного просмотра.
        """
        videos.append(video16)
        
        let video17 = Video()
        video17.id = "T4-ZnnGcTXE"
        video17.title = "Трип в Стокгольм!"
        video17.descript = """
        Заключительное видео нашей экспресс поездки Питер-Стокгольм.
        """
        videos.append(video17)
        
        let video18 = Video()
        video18.id = "jkPnnXRN_lU"
        video18.title = "Трип в Хельсинки и старые Трудовы будни."
        video18.descript = """
        Решил вставить какие то старые видео с камеры.
        А также первая часть нашего мини-трипа в Хельсинки-Стокгольм.
        """
        videos.append(video18)
        
        let video19 = Video()
        video19.id = "G4HPXIfhhcU"
        video19.title = "Покупка Phantom 4. Инстамит. ТрудоВыебудни СПб."
        video19.descript = """
        Будни в СПб, инстамит и другие приключения!
        """
        videos.append(video19)
        
        let video20 = Video()
        video20.id = "rU_jXf1vW9g"
        video20.title = "Последний Тур. Гоним домой. Приключения по России."
        video20.descript = """
        Вторая часть видео снята на Sony HDR-AS200V
        """
        videos.append(video20)
        
        let video21 = Video()
        video21.id = "YVkl-EeOFOc"
        video21.title = "Трип по России, часть 2. Стендап Ларина. Наши приключения."
        video21.descript = """
        Продолжение нашего трипа.
        Разные города, разные люди.
        Основная цель - выжить!
        """
        videos.append(video21)
        
        let video22 = Video()
        video22.id = "J6QS2rbF76k"
        video22.title = "Трип по России. АВТО авария. Стендап Ларина."
        video22.descript = """
        Начало нашего путешествия по России.
        Как мы попали в аварию и многое другое.
        """
        videos.append(video22)
        
        let video23 = Video()
        video23.id = "ym6nNhzVJwA"
        video23.title = "Прага. Лиепа на самой узкой улице! Инстаграм туризм."
        video23.descript = """
        Подписывайтесь!
        """
        videos.append(video23)
        
        let video24 = Video()
        video24.id = "eZnZnjNwcGQ"
        video24.title = "Поездка в Европу. Встречи с блогерами. 24 часа в автобусе."
        video24.descript = """
        Подписывайтесь!
        """
        videos.append(video24)
        
        let video25 = Video()
        video25.id = "PxY0JFcPk84"
        video25.title = "Лиепота - Блины"
        video25.descript = """
        Подписывайтесь!
        """
        videos.append(video25)
        
        let video26 = Video()
        video26.id = "DcrRw6yJlnY"
        video26.title = "Андрей Некрасов"
        video26.descript = """
        поэт/стихи - Андрей Некрасов
        оператор/монтаж - Станислав Лиепа
        звук - Павел Ховрачев
        """
        videos.append(video26)
        
        let video27 = Video()
        video27.id = "Za3kRtOxSTk"
        video27.title = "Kate Linde"
        video27.descript = """
        olympus omd e-m1 + zuiko d 17mm 1.8
        music - Scala and Kolacny Brothers – Nothing else matters
        """
        videos.append(video27)
        
        let video28 = Video()
        video28.id = "KmX-vScOyvU"
        video28.title = "Elena Tarry"
        video28.descript = """
        Test

        model Elena Tarry

        shooted by Stanislav Liepa

        music - John Brion -- Theme (OST Вечное сияние чистого разума)
        """
        videos.append(video28)
        
        return videos
        
    }

}
