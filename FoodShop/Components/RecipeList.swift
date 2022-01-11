import SwiftUI

struct RecipeList: View {
    
    var recipes: [Recipe]
    
    var body: some View {
        
        VStack{
            HStack{
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
                ForEach(recipes){ recipes in
                    NavigationLink(destination: RecipeView(recipe: recipes)){
                        RecipeCard(recipe: recipes)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            RecipeList(recipes: Recipe.all)
        }
    }
}
