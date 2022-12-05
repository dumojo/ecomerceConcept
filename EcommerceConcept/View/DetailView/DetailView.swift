//
//  DetailView.swift
//  EcommerceConcept
//
//  Created by Артем Дорожкин on 03.12.2022.
//

import SwiftUI
import NukeUI

struct DetailView: View {
    let namespace: Namespace.ID
    @EnvironmentObject var viewModel: DetailData
    var body: some View {
        if viewModel.showDetails {
            VStack {
                HStack {
                    Button {
                        viewModel.imageId = ""
                        withAnimation(.spring()) {
                            viewModel.showDetails = false
                        }
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color("SecondColor"))
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                        }
                    }.frame(width: 37, height: 37)
                    Spacer()
                    Text("Product Details")
                        .font(.custom("MarkPro-Medium", size: 18))
                        .foregroundColor(Color("SecondColor"))
                    Spacer()
                    Button {
    //                        Bag
                    } label: {
                        HStack {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.accentColor)
                                Image(systemName: "Bag")
                                    .foregroundColor(.white)
                            }.frame(width: 37, height: 37)
                        }
                    }
                }.padding()
                LazyImage(url: URL(string: viewModel.imageId))
                    .matchedGeometryEffect(id: viewModel.imageId, in: namespace)
                    .aspectRatio(3/4, contentMode: .fit)
                .frame(height: 300.0)
                .cornerRadius(15)
                
                .padding()
                RoundedRectangle(cornerRadius: 30)
                    .matchedGeometryEffect(id: "\(viewModel.imageId)description", in: namespace)
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                    
            }.background(Color("BackgroundColor").matchedGeometryEffect(id: "\(viewModel.imageId)background", in: namespace))
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    @Namespace static var ns
    static var previews: some View {
        DetailView(namespace: ns)
            .environmentObject(DetailData())
    }
}
