//
//  ShapesView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ShapesView: View {
	
	
	@Binding var tabSelection: Int
	@Binding var myView: AnyView
	
	var body: some View {
		NavigationView {
			VStack {

				ScrollView {
					
					Button(action: {
						self.tabSelection = 0
						self.myView = AnyView(GradientRectangles())
					} ) {
						GradientRectangles()
							.frame(width: 250, height: 250)
					}
					
					Button(action: {
						self.tabSelection = 0
						self.myView = AnyView(PathView())
					} ) {
						PathView()
							.frame(width: 250, height: 250)
					}
					
					Button(action: {
						self.tabSelection = 0
						self.myView = AnyView(CurvesView())
					} ) {
						CurvesView()
							.frame(width: 250, height: 250)
					}
				}
				
			}.navigationBarTitle("Shapes")
			
		}
	}
}


struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
		ShapesView(tabSelection: .constant(1), myView: .constant(AnyView(CurvesView())))
    }
}
