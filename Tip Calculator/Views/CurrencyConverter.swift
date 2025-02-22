import SwiftUI

struct CurrencyConverter: View {
    @ObservedObject private var viewModel = CalculatorViewModel()
    @State private var valueField = "0.0"
    @State private var fromCurrency: Currency = currencies[0]
    @State private var toCurrency: Currency = currencies[1]
    @State private var isLoading = false  // State variable to track loading

    var body: some View {
        NavigationStack {
            ZStack {
                // Background color
                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.purple.opacity(0.3)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 30) {
                    Section(header: Text("\(viewModel.result)")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(10)) {
                            
                            // Picker for "From" currency
                            Picker("From", selection: $fromCurrency) {
                                ForEach(currencies, id: \.self) { currency in
                                    Text("\(currency.name) (\(currency.country))")
                                        .foregroundColor(.white)
                                        .tag(currency)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                            
                            // Picker for "To" currency
                            Picker("To", selection: $toCurrency) {
                                ForEach(currencies, id: \.self) { currency in
                                    Text("\(currency.name) (\(currency.country))")
                                        .foregroundColor(.white)
                                        .tag(currency)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                            
                            // Convert Button with animation
                            Button(action: {
                                isLoading = true  // Start loading
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    viewModel.calculate(value: valueField,
                                                        conversionType: .currencyConversion(from: fromCurrency.name, to: toCurrency.name))
                                }
                                // Ensure loading stops after calculation, regardless of result change
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    isLoading = false  // Stop loading
                                    valueField = String(viewModel.result)
                                }
                            }) {
                                Text("Convert")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]),
                                                               startPoint: .leading,
                                                               endPoint: .trailing))
                                    .cornerRadius(10)
                                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                            }
                        }
                        .navigationTitle("Currency Converter")
                        .padding()
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
                    
                    // Display ProgressView when loading
                    if isLoading {
                        VStack {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                                .scaleEffect(2.0) // Make the progress view larger
                                .padding()
                            Text("Converting...")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding()
                        .background(Color.black.opacity(0.8))  // Darker background for contrast
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    CurrencyConverter()
}
