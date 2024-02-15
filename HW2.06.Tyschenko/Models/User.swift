//
//  User.swift
//  HW2.06.Tyschenko
//
//  Created by Никита Тыщенко on 14.02.2024.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getPerson() -> User {
        User(
            userName: "User",
            password: "1",
            person: Person(
                name: "Nikita",
                surname: "Tyschenko",
                company: "CIT",
                jobTitle: "Systems Analyst",
                biography: """
Я родился в 1996 году в городе Челябинск. Учился в школе №67 в физико-математическом классе.
Закончил «Южно-государственный университет» по специальности «Бизнес-информатика».
В данный момент работаю в IT-компании на должности «Системный-аналитик».
Увлекаюсь футболом и хоккеем, а также видеомонтажом.
"""
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let jobTitle: String
    let biography: String
}
