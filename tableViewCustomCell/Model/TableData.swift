

import Foundation
struct TableData {
    let id: String = UUID().uuidString
    let name: String
    let photo: String
    let text: String
    
    static func getTableData() -> [TableData]{
        return [
            TableData(name: "Имя пользователя", photo: "img1", text: "Интересные факты о птицах.Птицы живут по всей планете, на всех континентах. Они есть даже в самых труднодоступных областях Антарктиды (см. интересные факты об Антарктиде).\n В настоящее время на нашей планете проживает более десяти с половиной тысяч различных видов птиц.\nСамые крохотные птицы на свете — колибри, особи некоторых их видов весят около 3 грамм. Самая маленькая птичка в мире — колибри-пчёлка, средняя длина её тела составляет около пяти с половиной сантиметров.\n Африканские страусы порой достигают веса в 150 кг, а некоторые вымершие виды нелетающих птиц весили до 400 кг. В настоящее время самая крупная из всех птиц на земле — именно африканский страус. Рост этих птиц достигает 2,7 метра.\n Масса самой маленькой птицы из живущих на земле меньше массы самой крупной примерно в 66,000 раз.\n Странствующий альбатрос может похвастать самым большим размахом крыльев — у него он может достигать трёх с четвертью метров.\n А у вымерших птиц Pelagornis Sandersi размах крыльев достигал семи метров, как установили учёные по ископаемым останкам этих существ. Есть все основания полагать, что эти создания были самыми крупными летающими птицами за всю историю нашей планеты.\n До сих пор точно не известно, от какого вида живых существ произошли птицы. Одна из самых популярных теорий гласит, что от динозавров.\n Все населяющие Северную Америку воробьи являются потомками пары этих птиц, выпущенных в Центральном парке Нью-Йорка в XIX веке (см. интересные факты о воробьях).\n Некоторые птицы ежедневно потребляют количество пищи, равное четверти массы их собственного тела."),
            TableData(name: "Имя пользователя2", photo: "img2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo "),
            TableData(name: "Имя пользователя3", photo: "img1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"),
            TableData(name: "Имя пользователя4", photo: "img2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo "),
            TableData(name: "Имя пользователя5", photo: "img1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"),
            TableData(name: "Имя пользователя6", photo: "img2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo "),
            TableData(name: "Имя пользователя2", photo: "img2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo "),
            TableData(name: "Имя пользователя3", photo: "img1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"),
            
            
        ]
    }
    
}
