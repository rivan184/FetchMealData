//
//  MealModel.swift

//  FetchMealData
//
//  Created by Muhammad Rivan Rayhan on 01/08/22.
//

import Foundation

public struct MealsData: Decodable {
    public let meals:[Meal]
    
}

public struct Meal: Decodable {
    
    public let strMeal:String?
    public let strMealThumb:String?
    public let idMeal:String?
    
    public let strArea:String?
    public let strInstructions:String?
    public let strTags:String?
    public let strYoutube:String?
    public let strIngredients1:String?
    public let strMeasure1:String?
    public let strSource:String?
}


/*

{"meals":[{"idMeal":"52777","strMeal":"Mediterranean Pasta Salad","strDrinkAlternate":null,"strCategory":"Seafood","strArea":"Italian","strInstructions":"Bring a large saucepan of salted water to the boil\r\nAdd the pasta, stir once and cook for about 10 minutes or as directed on the packet.\r\nMeanwhile, wash the tomatoes and cut into quarters. Slice the olives. Wash the basil.\r\nPut the tomatoes into a salad bowl and tear the basil leaves over them. Add a tablespoon of olive oil and mix.\r\nWhen the pasta is ready, drain into a colander and run cold water over it to cool it quickly.\r\nToss the pasta into the salad bowl with the tomatoes and basil.\r\nAdd the sliced olives, drained mozzarella balls, and chunks of tuna. Mix well and let the salad rest for at least half an hour to allow the flavours to mingle.\r\nSprinkle the pasta with a generous grind of black pepper and drizzle with the remaining olive oil just before serving.","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/wvqpwt1468339226.jpg","strTags":"Pasta,Baking","strYoutube":"https:\/\/www.youtube.com\/watch?v=e52IL8zYmaE","strIngredient1":"mozzarella balls","strIngredient2":"baby plum tomatoes","strIngredient3":"fresh basil","strIngredient4":"farfalle","strIngredient5":"extra virgin olive oil","strIngredient6":"Green Olives","strIngredient7":"tuna","strIngredient8":"salt","strIngredient9":"pepper","strIngredient10":"","strIngredient11":"","strIngredient12":"","strIngredient13":"","strIngredient14":"","strIngredient15":"","strIngredient16":null,"strIngredient17":null,"strIngredient18":null,"strIngredient19":null,"strIngredient20":null,"strMeasure1":"200 g","strMeasure2":"250 g","strMeasure3":"1  bunch","strMeasure4":"350 g","strMeasure5":"3  tablespoons","strMeasure6":"40 g","strMeasure7":"200 g","strMeasure8":"to taste","strMeasure9":"to taste","strMeasure10":"","strMeasure11":"","strMeasure12":"","strMeasure13":"","strMeasure14":"","strMeasure15":"","strMeasure16":null,"strMeasure17":null,"strMeasure18":null,"strMeasure19":null,"strMeasure20":null,"strSource":"https:\/\/thelemonsqueezy.com\/recipe\/mediterranean-pasta-salad\/","strImageSource":null,"strCreativeCommonsConfirmed":null,"dateModified":null}]}
*/

/*
 {"meals":[{"strMeal":"Baked salmon with fennel & tomatoes","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/1548772327.jpg","idMeal":"52959"},{"strMeal":"Cajun spiced fish tacos","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/uvuyxu1503067369.jpg","idMeal":"52819"},{"strMeal":"Escovitch Fish","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/1520084413.jpg","idMeal":"52944"},{"strMeal":"Fish fofos","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/a15wsa1614349126.jpg","idMeal":"53043"},{"strMeal":"Fish pie","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/ysxwuq1487323065.jpg","idMeal":"52802"},{"strMeal":"Fish Stew with Rouille","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/vptqpw1511798500.jpg","idMeal":"52918"},{"strMeal":"Garides Saganaki","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/wuvryu1468232995.jpg","idMeal":"52764"},{"strMeal":"Grilled Portuguese sardines","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/lpd4wy1614347943.jpg","idMeal":"53041"},{"strMeal":"Honey Teriyaki Salmon","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/xxyupu1468262513.jpg","idMeal":"52773"},{"strMeal":"Kedgeree","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/utxqpt1511639216.jpg","idMeal":"52887"},{"strMeal":"Kung Po Prawns","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/1525873040.jpg","idMeal":"52946"},{"strMeal":"Laksa King Prawn Noodles","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/rvypwy1503069308.jpg","idMeal":"52821"},{"strMeal":"Mediterranean Pasta Salad","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/wvqpwt1468339226.jpg","idMeal":"52777"},{"strMeal":"Mee goreng mamak","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/xquakq1619787532.jpg","idMeal":"53048"},{"strMeal":"Nasi lemak","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/wai9bw1619788844.jpg","idMeal":"53051"},{"strMeal":"Portuguese fish stew (Caldeirada de peixe)","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/do7zps1614349775.jpg","idMeal":"53045"},{"strMeal":"Recheado Masala Fish","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/uwxusv1487344500.jpg","idMeal":"52809"},{"strMeal":"Salmon Avocado Salad","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/1549542994.jpg","idMeal":"52960"},{"strMeal":"Salmon Prawn Risotto","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/xxrxux1503070723.jpg","idMeal":"52823"},{"strMeal":"Saltfish and Ackee","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/vytypy1511883765.jpg","idMeal":"52936"},{"strMeal":"Seafood fideu\u00e0","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/wqqvyq1511179730.jpg","idMeal":"52836"},{"strMeal":"Shrimp Chow Fun","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/1529445434.jpg","idMeal":"52953"},{"strMeal":"Sledz w Oleju (Polish Herrings)","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/7ttta31593350374.jpg","idMeal":"53023"},{"strMeal":"Spring onion and prawn empanadas","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/1c5oso1614347493.jpg","idMeal":"53040"},{"strMeal":"Three Fish Pie","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/spswqs1511558697.jpg","idMeal":"52882"},{"strMeal":"Tuna and Egg Briks","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/2dsltq1560461468.jpg","idMeal":"52975"},{"strMeal":"Tuna Nicoise","strMealThumb":"https:\/\/www.themealdb.com\/images\/media\/meals\/yypwwq1511304979.jpg","idMeal":"52852"}]}
 
 
 */


