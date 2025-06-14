
import SwiftUI

struct CalendarView: View {
    @StateObject private var foodViewModel = FoodViewModel()
    @State private var selectedDate: Date? // Cambiato da Set<DateComponents> a Date?

    var body: some View {
        NavigationView {
            VStack { // Imposta lo spacing a 0 per rimuovere spazi indesiderati
                DatePicker("Select Date", selection: Binding(
                    get: { selectedDate ?? Date() },
                    set: { selectedDate = $0 }
                ), displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
              //  .frame(height: 300) // Mantieni l'altezza desiderata
                .padding(.top) // Aggiungi un padding solo nella parte superiore se desiderato
                
                if let foodItems = foodItemsForSelectedDates() {
                    ExpiringFoodView(foodItems: foodItems)
                        .padding()
                        .background(Color.verdeChiaro.opacity(0.5))
                        .cornerRadius(10)
                        .padding()
                }
                Spacer()
            }
            .navigationTitle("Calendar")
        }
        
    }

    func foodItemsForSelectedDates() -> [String]? {
        guard let selectedDate = selectedDate else { return nil } // Controlla se è selezionata una data

        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy" // Assicurati che il formato corrisponda alla tua data

        let dateString = formatter.string(from: selectedDate) // Usa solo la data selezionata

        // Filtra gli alimenti in base alla data di scadenza
        let expiringFoods = foodViewModel.foods.filter { $0.expiringDate == dateString }
        return expiringFoods.isEmpty ? nil : expiringFoods.map { $0.name }
    }
}

struct ExpiringFoodView: View {
    let foodItems: [String]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Today's expiring food")
                .font(.headline)
                .padding(15)
                .foregroundStyle(.white)
                .background(Color.verdeScuro)
                .cornerRadius(5)
                .clipShape(RoundedRectangle(cornerRadius: 30.0))

            ForEach(foodItems, id: \.self) { foodItem in
                Text("- \(foodItem)")
                    .padding(.leading)
            }
        }
    }
}

#Preview {
    CalendarView()
}

