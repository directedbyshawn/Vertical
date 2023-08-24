<a name="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![MIT License][license-shield]][license-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<br />
<div align="center">
  <a href="https://www.gardeners.com">
    <img src="images/logo.png" alt="Logo" width="500px">
  </a>

  <p align="center">
    Created by Ethan West, Arthur Dolimier, Nick Gibson, Shawn Rodgers, and Matt Alongi</a>
    <br />
    <br />
  </p>
</div>

<h2>About the Project</h2>

<br />
<div align="center">
    <img src="images/landing.png" width=600px></img>
</div>
<br />

For the final project in our Machine Learning class, we decided to work on software to analyze images taken by autonomous vehicles. Our goal was to annotate the images based on the results of various deep learning image processing algorithms. Since it was an introductory ML course, this was an ambitious project. We did not accomplish all that we had hoped, but I think we did very well with the time we had. 

Due to time restrictions, we decided to focus on three main ideas
* Object Detection
* Sign Classification
* Lane Detection

We wanted to detect and classify 10 classes of objects most frequently seen on the road (cars, traffic signs, pedestrians, etc). In the stills and the video demo found <a href="#demo">below</a>, red boxes identify objects that were successfully classified into one of 10 classes by our model running Faster-RCNN. Above the box is the label of the object, followed by the confidence of the model in its decision. If the object was classified as a traffic sign, it is then passed to a separate convolutional neural network (CNN) that attempts to further classify the type of traffic sign. If it is able to classify the type of traffic sign with a specified level of confidence, then the box is blue instead of red.

We learned that is quite difficult to perform accurate lane detection on most roads. There are numerous conditions such as fading lines and winding roads that lead to inconsistent results. Given more time we may have been able to find a stronger solution; However due to time restrictions, we were only able to get satisfactory results on the highway videos when running our lane detection algorithm.

<br />
<div align="center">
    <img src="images/area-profile.png" width=600px></img>
</div>
<br />

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

### Shawn

Mail - me@directedbyshawn.com

Website - [directedbyshawn.com](https://www.directedbyshawn.com)

LinkedIn - [linkedin.com/in/directedbyshawn](https://www.linkedin.com/in/directedbyshawn)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Resources


### Dependencies
* [abseil](https://swiftpackageindex.com/google/abseil-cpp-binary)
* [gRPC](https://github.com/grpc/grpc-swift)
* [firebase](https://github.com/firebase/firebase-ios-sdk)
* [GoogleAppMeasurement](https://github.com/google/GoogleAppMeasurement)
* [GoogleDataTransport](https://github.com/google/GoogleDataTransport)
* [GoogleUtilities](https://github.com/google/GoogleUtilities)
* [GTMSessionFetcher](https://github.com/google/gtm-session-fetcher)
* [leveldb](https://github.com/emilwojtaszek/leveldb-swift)
* [nanopb](https://github.com/nanopb/nanopb)
* [Promises](https://github.com/google/promises)
* [RefreshableScrollView](https://github.com/phuhuynh2411/RefreshableScrollView)
* [SDWebimageSwiftUI](https://github.com/SDWebImage/SDWebImageSwiftUI)
* [SwiftProtobuf](https://github.com/apple/swift-protobuf/releases)


### Other
* [Firebase](https://firebase.google.com/)
* [SwiftUI](https://developer.apple.com/xcode/swiftui/)
* [Figma](https://www.figma.com/)
* [Trello](https://www.trello.com)
* [MountainProject](https://www.mountainproject.com/)
* [8a](https://www.8a.nu/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/ewestthan/Vertical.svg?style=for-the-badge
[contributors-url]: https://github.com/ewestthan/Vertical/graphs/contributors
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/directedbyshawn/Hands-Free/LICENSE.txt
[forks-shield]: https://img.shields.io/github/forks/ewestthan/Vertical.svg?style=for-the-badge
[forks-url]: https://github.com/ewestthan/Vertical/network/members
[stars-shield]: https://img.shields.io/github/stars/ewestthan/Vertical.svg?style=for-the-badge
[stars-url]: https://github.com/ewestthan/Vertical/stargazers
[issues-shield]: https://img.shields.io/github/issues/ewestthan/Vertical.svg?style=for-the-badge
[issues-url]: https://github.com/ewestthan/Vertical/issues
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/directedbyshawn