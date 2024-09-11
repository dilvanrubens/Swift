//
//  ContentView.swift
//  Denuncia01
//
//  Created by Turma01-2 on 11/09/24.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) private var presentationMode
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @Binding var selectedImage: UIImage

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.selectedImage = image
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView: View {
    @State private var image = UIImage()
    @State private var showSheet = false
    @State private var showActionSheet = false
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary

    @State private var cidade: String = ""
    @State private var rua: String = ""
    @State private var bairro: String = ""
    @State private var ref: String = ""

    var body: some View {
        VStack {
            Text("Denunciar queimada")
                .font(.system(size: 25))
                .bold()
                .padding(.bottom)

            Image(uiImage: self.image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 350, height: 200)
                .background(Color.black.opacity(0.2))
                .scaledToFill()
                .clipped()
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)

            HStack {
                Text("Adicionar imagem")
                    .frame(width: 100, height: 50)
                    .font(.headline)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .onTapGesture {
                        showActionSheet = true
                    }
            }

            VStack(alignment: .leading, spacing: 10) {
                Text("Local:")
                    .font(.system(size: 20))
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("Cidade:")
                            .font(.system(size: 15))
                        TextField("...", text: $cidade)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }

                    HStack {
                        Text("Rua:")
                            .font(.system(size: 15))
                        TextField("...", text: $rua)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }

                    HStack {
                        Text("Bairro:")
                            .font(.system(size: 15))
                        TextField("...", text: $bairro)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }

                    HStack {
                        Text("Ponto de referência:")
                            .font(.system(size: 15))
                        TextField("...", text: $ref)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                .padding(.horizontal, 20)
            }
            .padding(.bottom, 20)

            Button(action: {
                // AAcao
                print("Formulário enviado")
            }) {
                Text("Enviar")
                    .font(.headline)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
            }

            Spacer()
        }
        .padding()
        .sheet(isPresented: $showSheet) {
            ImagePicker(sourceType: self.sourceType, selectedImage: self.$image)
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Escolha a fonte da imagem"), buttons: [
                .default(Text("Galeria")) {
                    self.sourceType = .photoLibrary
                    self.showSheet = true
                },
                .default(Text("Câmera")) {
                    self.sourceType = .camera
                    self.showSheet = true
                },
                .cancel()
            ])
        }
    }
}

#Preview {
    ContentView()
}
