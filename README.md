# Diy Json Serializer

## Objectives

  1. Understand what JSON is
  2. Create and Return simple JSON Objects
  3. Load those objects with AJAX into HTML

## Outline

  * Grab the code from previous readme.
  * Goal here is to re-do the post show page to be data backed by JS
  * Previously, we just dumped data out at different routes. This isn't sustainable. We need a way to hit just one route, and get structured data back.
  * Traditionally this was solved with HTML. HTML has both data and formatting, not good
  * Just want pure data, used to be given via XML. XML was annoying
  * Then came JSON
  * Show them what JSON looks like. Just a dictionary or array of dictionaries!
  * JSON is a way of "serializing" data. Remember we need to send everything as strings. Serialization means convert from the ruby format of an object, to a string format of an object. 
  * Let's write our own JSON post serializer.
  * Make it a separate class with a single class method that takes in the post object and returns a string of JSON
  * don't use `to_json` or anything like that. Have them by hand build up a JSON dictionary of the important bits of the post
  * The show page, make it backed by JSON.
