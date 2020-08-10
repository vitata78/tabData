//
//  TabViews.swift
//  tabData
//
//  Created by Andrew Tolstov on 8/10/20.
//

import SwiftUI

struct TabViews: View {
	
	@State private var tabSelection = 0
	@State var myView: AnyView
	
	var body: some View {
		TabView(selection: $tabSelection) {
			ShapeView(myView: $myView)
				.tabItem {
					Image(systemName: "stop.fill")
					Text("Shape View")
				}
				.tag(0)
			
			ShapesView(tabSelection: $tabSelection, myView: $myView)
				.tabItem {
					Image(systemName: "square.grid.2x2.fill")
					Text("Shapes Library")
				}
				.tag(1)
		}
	}
}

struct TabView_Previews: PreviewProvider {
	static var previews: some View {
		TabViews(myView: AnyView(PathView()))
	}
}
