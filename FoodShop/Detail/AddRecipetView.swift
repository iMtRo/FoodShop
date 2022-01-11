import SwiftUI

struct AddRecipetView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.mampar
    @State private var Description: String = ""
    @State private var Ingredients: String = ""
    
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationView{
            
            Form {
                
                Section(header: Text("Nema")){
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory){
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("Description")){
                    TextEditor(text: $Description)
                }
                
                Section(header: Text("Ingredients")){
                    TextEditor(text: $Ingredients)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem{
                    NavigationLink(isActive: $navigateToRecipe){
                        RecipeView(recipe: recipeVM.recipes.sorted{ $0.datePublished > $1.datePublished }[0])
                    } label: {
                        Button{
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct AddRecipetView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipetView()
    }
}

extension AddRecipetView {
    private func saveRecipe() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.mm.yyyy"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        let recipe = Recipe(
            name: name,
            image: "",
            desription: Description,
            ingredients: Ingredients,
            category: selectedCategory.rawValue,
            datePublished: datePublished,
            url: "")
        recipeVM.addRecipe(recipe: recipe)
    }
}
