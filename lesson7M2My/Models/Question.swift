//
//  Question.swift
//  lesson7M2My
//
//  Created by Elena Petrova on 17.02.2023.
//

struct Question {
    let title: String
    let responseType: ResponseType
    let answers: [Answer]
    
    // получить возращать вопросы
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете",
                responseType: .single,
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                responseType: .multiple,
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "спать", animal: .cat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle)
                ]
            ),
            Question(
                title: "Любители вы поездки на машине",
                responseType: .ranged,
                answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Не замечаю", animal: .turtle),
                    Answer(title: "Обажаю", animal: .dog)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

// описываем одну модель из завода
struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    // перебераем перечисление в перечислении
    
    var definition: String {
        switch self {
        case .dog:
            return "вы собака"
        case .cat:
            return "вы кошка"
        case .rabbit:
            return "вы кролик"
        case .turtle:
            return "вы черепаха"
        }
    }
}
