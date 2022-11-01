
# Spark ⚡️

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Spark is an iOS app that connects electric/hybrid drivers to the nearest charging station.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Search app, Car app
- **Mobile:** iOS app
- **Story:** User is about to drive in their electric car when they notice they need a quick charge. They open up their Spark app to search for nearby stations so that they can get going.
- **Market:** Electric/Hybrid driver who drives frequently
- **Habit:** App is used weekly/monthly
- **Scope:** User can search from anywhere.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can search for nearby charger stations so they can easily charge their vehicle.
* User can search for a charging location based on an address they provide so that they can be knowledgeable of nearby stations.
* User can see description of station so that they have all the information to make an informed decision
* Users can Sign-in/Sign-up so that they can access potential features like "Saved Locations"
* User can update username and password.

**Optional Nice-to-have Stories**

* Users can save locations so that they can reference it later
* User can receive notifications when station is in a specified range so that they have continous access to information.

### 2. Screen Archetypes

* Sign-in/Signup screen
   * [list associated required story here]
   * ...
* Search current location and search specified location screen
   * [list associated required story here]
   * ...
 * Charger station details screen
   * [list associated required story here]
   * ...
 * Profile details screen
   * [list associated required story here]
   * ...
 * Saved locations screen(optional)
   * [list associated required story here]
   * ...
  
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Search Tab
* Saved Locations Tab
* Profile Tab

**Flow Navigation** (Screen to Screen)

* Sign-in/Sign-up -> Search for stations screen
* Search for stations screen -> Station details -> Profile screen -> Saved locations screen(optional)
* Station details -> Search for stations screen -> Profile screen -> Saved locations screen(optional)
* Profile screen -> Update password page->  Search for stations screen -> Saved locations screen(optional)
* Saved locations screen(optional) -> Profile screen -> Search for stations screen -> Station details

## Wireframes
![Frame 1 (1)](https://user-images.githubusercontent.com/40500769/199324214-54d07e3c-5c30-4c8f-a73c-5c4d3c461e31.png)

## Schema 
[This section will be completed in Unit 9]
### Models
- Sign-in/Sign-up
- Saved Locations

![Untitled Diagram drawio (1)](https://user-images.githubusercontent.com/40500769/199324218-b345f044-0a9a-42b6-a534-fb17ce1d1f72.png)
### Networking
- Sign-in screen
  - (Read/GET) Query user account based on unique username and password
- Sign-up screen
  - (Create/POST) Create a new Spark account using unique username
- Profile screen
  - (Update/PUT) Update username
  - (Update/PUT) Update user password
  - (Read/GET) Query user account information
- Search based on location screen
  - (Read/GET) Query all locations nearby provided address
  - (Create/POST) Create a new saved location
- Station details screen
  - (Read/GET) Query charging station details
- Saved locations screen (optional)
  - (Read/GET) Query saved location
  - (Delete) Delete existing saved charging station
