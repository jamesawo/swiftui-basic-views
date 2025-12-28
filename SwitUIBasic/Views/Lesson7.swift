//
//  Lesson7.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/27/25.
//

import SwiftUI

// List & Navigations

struct Lesson7: View {
    var body: some View {
        List {
            Label(
                "Default",
                systemImage: "heart"
            )
            Label(
                "Fill",
                systemImage: "heart.fill"
            )
            Label(
                "Circle",
                systemImage: "heart.circle"
            )
            Label(
                "Circle Fill",
                systemImage: "heart.circle.fill"
            )

        }
    }
}

struct Lesson7b: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    WorkFolder(
                        folderTitle: "My Courses",
                        folderDescription:
                            "Store downloaded courses resources here"
                    )
                } label: {
                    Label(
                        "Work Folder",
                        systemImage: "folder"
                    )
                }

                NavigationLink(
                    "Mint"
                ) {
                    ColorDetail(
                        color: .mint
                    )
                }
                NavigationLink(
                    "Pink"
                ) {
                    ColorDetail(
                        color: .pink
                    )
                }
                NavigationLink(
                    "Teal"
                ) {
                    ColorDetail(
                        color: .teal
                    )
                }

            }
            .navigationTitle(
                "Colors"
            )
        }
    }
}

#Preview {
    Lesson7b()
}

struct ColorDetail: View {
    var color: Color

    var body: some View {
        color
            .navigationTitle(
                color.description
            )
    }
}

struct WorkFolder: View {
    var folderTitle: String
    var folderDescription: String

    var body: some View {
        VStack() {
            Text(folderDescription)
        }
        .frame(maxHeight: .infinity, alignment: .topLeading)
        .navigationTitle(folderTitle)
    }
}
