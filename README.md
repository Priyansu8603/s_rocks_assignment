# 🎵 S.Rocks.Music – The Key to Completing Your Songs.

S.Rocks.Music is your go-to destination for professional music services online. From Music Production and Lyrics Writing to Mixing, Mastering, and Vocal Composition, we deliver creative excellence tailored to your vision.

- 🎧 Music Production  
- ✍️ Lyrics Writing  
- 🎚️ Mixing & Mastering  
- 🎤 Vocal Composition  

---

## 🚀 Features

- 🔥 Firebase Firestore integration
- 🛠️ MVVM architecture 
- ⌛ `Provider` State Management . 
- 🖼️ Dynamic service cards with custom background images
- 📱 Responsive layout using `Stack`, `Column`, `Align`
- 🎨 Custom theming and gradients
- 📦 Easy navigation to detail screens
  
---

## 📹 App Preview (Video)

https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen_recording.mp4

---

## Screenshots
<p>
<img alt="S_Rocks_Assignment" height="450px" src="https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen1.png" />
<img alt="S_Rocks_Assignment" height="450px" src="https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen2.png" />  
<img alt="S_Rocks_Assignment" height="450px" src="https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen3.png" />
<img alt="S_Rocks_Assignment" height="450px" src="https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen4.png" />
<img alt="S_Rocks_Assignment" height="450px" src="https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen5.png" />
<img alt="S_Rocks_Assignment" height="450px" src="https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen6.png" />
<img alt="S_Rocks_Assignment" height="450px" src="https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen7.png" />
<img alt="S_Rocks_Assignment" height="450px" src="https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen8.png" />
<img alt="S_Rocks_Assignment" height="450px" src="https://raw.githubusercontent.com/Priyansu8603/s_rocks_assignment/master/Screenshots/Screen9.png" />

</p>

---

## Project Structure

The app follows a feature-wise segregation inside the `lib/` directory, ensuring modularity and scalability. Each feature follows the MVVM (Model-View-ViewModel) architecture.

```
lib/
|-- features/
|   |-- home/  (Home screen and dashboard)
|       |-- View (UI Screens)
|       |-- View Model (bridge b/w UI and Business logic)
|       |-- Model (Business Logic)    
|
|-- core/
|   |-- utils/  ( Appcolors, Helper classes, constants, and common widgets)
|
|-- main.dart  (Entry point of the app)
```


---
<p align="center">
<img alt="mvvm-architecture" height= "600px" width="600px"  src="https://user-images.githubusercontent.com/15169743/219938204-45d0f055-602f-4f80-9bd4-1d614b8d6497.png">
</p>

---

## 🛠️ Follow These Steps to Set Up the Project

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

1. Clone the repository:
   ```sh
   git clone https://github.com/Priyansu8603/s_rocks_assignment.git
   cd s_rocks_assignment
   ```
2. Open the project in **Android Studio**.
3. Sync Gradle dependencies by clicking **Sync Now**.
4. Configure Firebase:
    - Set up Firebase in your project by following [Firebase documentation](https://firebase.google.com/docs/android/setup).
    - Add your `google-services.json` file to the `app/` folder.
5. Run the app:
   ```sh
   ./gradlew assembleDebug
   ```
   Or use **Run > Run 'app'** in Android Studio.

---

## Contributing

Contributions are welcome! If you'd like to contribute, please follow these steps:

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a pull request.


For any issues or queries, feel free to open an issue or contact the project maintainer.

Happy Coding! 🚀



