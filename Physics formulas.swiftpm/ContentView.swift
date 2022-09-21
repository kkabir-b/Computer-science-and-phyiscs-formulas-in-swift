import SwiftUI

struct ContentView: View {
    @State var w=0.00
    @State var m=0.00
    @State var r_1_potential=0.00
    @State var r_2_potential=0.00
    @State var V_in_potential=0.00
    @State var work_done_volt=0.00
    @State var number_c_volts=0.00
    @State var w_dith=0.00
    @State var height_res=0.00
    @State var bit_tes=0.00
    var body: some View {
        Text("Physics formulas")
            .font(.title)
            .padding()
            .foregroundColor(.blue)
        Image("physics_img")
            .resizable()
            .frame(width:150,height:150)
            .padding()
        VStack{
        Text("Mass to weight converter")
                .font(.headline)
            Text("Mass(in Kg)")
        HStack{
        TextField("0",value: $m, format: .number)
                .textFieldStyle(.roundedBorder)
                .border(.blue, width: 5)
        Text("\(m*9.8,specifier:"%.2f") Newtons")
                .padding()
                .padding()
            
            
        }
            Text("Potential divider calculator")
                .font(.headline)
            Text("Resistance 1(Ohms) , Resistance 2(Ohms), V_in(Volts)")
            
            HStack{
                TextField("Please enter resistance 1",value: $r_1_potential, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(.blue, width: 5)
                
                TextField("Please enter resistance 2",value: $r_2_potential, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(.blue, width: 5)
                
                TextField("Please enter the input voltage",value: $V_in_potential, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(.blue, width: 5)
                
                Text("\((r_1_potential/(r_1_potential+r_2_potential))*V_in_potential,specifier:"%.2f") Volts")
                    .padding()
                    
                
                
            }
            Text("Potential difference calculator")
                .font(.headline)
            Text("Work done(Joules) Unit, charge(Couloumbs)")
            HStack{
                TextField("Please enter work done",value: $work_done_volt, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(.blue, width: 5)
                
                
                TextField("Please enter the number of coulombs of charge",value: $number_c_volts, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(.blue, width: 5)
                
                Text("\(work_done_volt/number_c_volts,specifier:"%.2f") Volts")
                    .padding()
                
                
            }
            
            
    }
        Text("Bonus computer science equations")
            .font(.title)
            .padding()
            .foregroundColor(.green)
        Image("comp_sci_img")
            .resizable()
            .frame(width:150,height:150)
            .padding()
        
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
        }
    }
    
}



