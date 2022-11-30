import SwiftUI

struct ComputerView: View{
    @State var w_dith=0.00
    @State var height_res=0.00
    @State var bit_tes=0.00
    var body: some View {
        
        ZStack{Rectangle()
            .fill(.clear)
            .background(
                LinearGradient(gradient: Gradient(colors: [.blue,.green,.red, .purple]), startPoint: .top, endPoint: .bottom)
            )
            VStack{Text("Bonus computer science equations")
                .font(.title)
                .padding()
                .foregroundColor(.green)
            Image("comp_sci_img")
                .resizable()
                .frame(width:150,height:150)
                .padding()
            
            ScrollView{
                VStack{
                    
                    Text("Image size calculator")
                        .font(.headline)
                    Text("Width, Height, Colour depth(in Bytes)")
                    HStack{
                        
                        TextField("Please enter the height",value: $w_dith, format: .number)
                            .textFieldStyle(.roundedBorder)
                            .border(.green, width: 5)
                        
                        TextField("Please enter the width",value: $height_res, format: .number)
                            .textFieldStyle(.roundedBorder)
                            .border(.green, width: 5)
                        
                        
                        TextField("Please enter the colour depth",value: $bit_tes, format: .number)
                            .textFieldStyle(.roundedBorder)
                            .border(.green, width: 5)
                        
                        Text("\(bit_tes*height_res*w_dith,specifier:"%.2f") Bytes")
                            .padding()
                        
                        
                    }
                    .border(Color.blue,width:2)
                }
                
            }
            }
        }
    }
}
