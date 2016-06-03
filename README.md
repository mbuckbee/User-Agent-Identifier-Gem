
<p align="center">
  <img src="https://app.expeditedaddons.com/useragentidentifier.png"/>
  
</p>

<h1 align='center'>User Agent Identifier</h1>

## Boost User Agent identification with our always up to date UA parsing

## Requirements

- An API Key from Heroku
    - Add from: https://elements.heroku.com/addons/useragentidentifier

- Ruby v2.x or greater

## Usage

### Input Parameter Descriptions

| Index       | Name    | Example | Description |
| --------------- | ------- | -------- |--------|
|0|`user_agent`|string|A user-agent string|



### Making a Request

```ruby
$ > require 'user_agent_identifier'

# Note: the 'Controller' here is not a reference to Rails controllers
# but an internal structure, won't interfere with your Rails app and will 
# work fine in a standalone ruby app or another framework

$ > uae = UserAgentIdentifier::APIController.new
=> #<UserAgentIdentifier::APIController:0x007f80b53c2700>

$ > result = uae.lookup("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36")

=> #<UserAgentIdentifier::Result:0x007f80b5188818 @mobile_screen_height=0, @is_mobile=false, @type="desktop-browser", @mobile_brand="", @mobile_model="", @version="50.0.2661.102", @is_android=false, @browser_name="Chrome", @operating_system_family="OS X", @operating_system_version="10.9.5", @is_ios=false, @producer="Google Inc.", @operating_system="OS X", @mobile_screen_width=0, @mobile_browser="">

```
### Using Results

```ruby
$ > result.type
=> "desktop-browser"

$ > result.is_mobile
=> false

$ > result.is_android
=> false

$ > result.is_ios
=> false

$ > result.mobile_brand
=> ""

$ > result.mobile_browser
=> ""

$ > result.mobile_model
=> ""

$ > result.mobile_screen_width
=> 0

$ > result.mobile_screen_height
=> 0

$ > result.browser_name
=> "Chrome"

$ > result.operating_system
=> "OS X"

$ > result.operating_system_family
=> "OS X"

$ > result.producer
=> "Google Inc."

$ > result.version
=> "50.0.2661.102"

```






## Installation

```
# In your Gemfile
gem 'useragentidentifier', git: 'https://github.com/mbuckbee/User-Agent-Identifier-Gem.git'
```    


## Result Attribute Descriptions

| Attribute       | Type    | Description |
| --------------- | ------- | -------- |
|`type`|string|The user-agent type, possible values are: desktop-browser, email-client, feed-reader, software-library, media-player, mobile-browser, robot, unknown|
|`is_mobile`|boolean|True if this is a mobile user-agent|
|`is_android`|boolean|True if this is an Android based mobile user-agent|
|`is_ios`|boolean|True if this is an iOS based mobile user-agent|
|`mobile_brand`|string|Mobile device brand|
|`mobile_browser`|string|Mobile device browser name (this is usually the same as the browser name)|
|`mobile_model`|string|Mobile device model|
|`mobile_screen_width`|integer|Mobile device screen width (in px)|
|`mobile_screen_height`|integer|Mobile device screen height (in px)|
|`browser_name`|string|Browser software name|
|`operating_system`|string|The full operating system name which may include the major version number and code name|
|`operating_system_family`|string|The operating system family name, that is the OS name without any version or code names appended|
|`operating_system_version`|string|The operating system version number (if detectable)|
|`producer`|string|Producer or manufacturer|
|`version`|string|User-agent software version|



## Live Interactive Testing

Doublecheck results, use a Live Proxy and check your API Key with the interactive documentation at:

http://docs.useragentidentifierexp.apiary.io/

You will need your `USERAGENTIDENTIFIER_API_KEY` from the setup screen where you've provisioned the User Agent Identifier add-on.

## Troubleshooting

As a sanity check it is sometimes useful to bypass your app stack and check the endpoint, your API Key and parameters directly.

*Test with your browser*

```
# Modify the following to use your actual API Key
'https://useragentidentifier.expeditedaddons.com/?api_key=REPLACE_WITH_YOUR_USERAGENTIDENTIFIER_API_KEY&user_agent=Mozilla'
```

A successful call will return your requested data with a HTTP result code of `200` and be in `JSON` format. We recommend the [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) extension as a useful tool. 

## In Development

The User Agent Identifier gem relies upon the environment variable `ENV['USERAGENTIDENTIFIER_API_KEY']` being present and correctly configured to authenticate to the service. You will need to have this variable present in your local environment for the gem to work correctly.

If you're using Heroku, please read their [Guide to Heroku Local](https://devcenter.heroku.com/articles/heroku-local) which has instructions on easily copying your config values to your development environment.

**DOTENV**

[https://github.com/bkeepers/dotenv](https://github.com/bkeepers/dotenv)

If you're trying to use User Agent Identifier in your local development or test environment with the [dotenv](https://github.com/bkeepers/dotenv) gem be sure that you are loading the `dotenv-rails` gem with the `rails-now` requirement. 

```ruby
# Example Gemfile excerpt

gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem 'iptoearth'
```

**FOREMAN**

[https://github.com/ddollar/foreman](https://github.com/ddollar/foreman)

If you're having issues with configuring `dotenv`, you might want to try [foreman](https://github.com/ddollar/foreman) which will also autoload `.env` files in your local environment.


**Test in the Rails console**

Launch `rails c` in your development project directory and at the prompt enter `ENV[USERAGENTIDENTIFIER_API_KEY]` which, if you've configured your development environment correctly should display your API Key.

## Issues and Security Concerns

Please email [support@expeditedaddons.com](mailto:support@expeditedaddons.com)

## License

The User Agent Identifier gem is licensed under the MIT license.

## Additional Add-ons

If you found User Agent Identifier useful, please check out our other similarly structured services and gems.

<table>
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/qrackajack_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/qrackajack'>QRACKAJACK</a></h5>
      <p>Generate QR codes for use anywhere.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/weightsandmeasures_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/weightsandmeasures'>WEIGHTS & MEASURES</a></h5>
      <p>Conversational interface to convert between units of measure.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/scrapetastic_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>SCRAPETASTIC</a></h5>
      <p>Pull structured data from any website.</p>
    </td>

  </tr>
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/useragentidentifier_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/useragentidentifier'>USER AGENT IDENTIFIER</a></h5>
      <p>Boost User Agent identification with our always up to date UA parsing.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/ipinvestigator_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/ipinvestigator'>IP INVESTIGATOR</a></h5>
      <p>Check if an IP address is hosting Proxies, Bots or Malware.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/resizer_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>RESIZER</a></h5>
      <p>Resize images for Retina use, thumbnails and social promotion.</p>
    </td>

  </tr>  
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/urlxray_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/urlxray'>URL X-RAY</a></h5>
      <p>Pull website status and domain information for any URL.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/webtopdf_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/webtopdf'>WEB TO PDF</a></h5>
      <p>Generate PDF Documents from Webpages.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/watermarker_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/watermarker'>WATERMARKER</a></h5>
      <p>Identify and protect images by adding a watermark to them.</p>
    </td>

  </tr>    
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/iptoearth_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/iptoearth'>IP TO EARTH</a></h5>
      <p>Find the Country and City of origin for an IP Address.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/geocody_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/geocody'>GEOCODY</a></h5>
      <p>Convert mailing addresses into Lat,Long Coordinates.</p>
    </td>
    
    <td align='center' width='33%' cellpadding='10'>
       <img src="https://app.expeditedaddons.com/realemail_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/realemail'>REAL EMAIL</a></h5>
      <p>Reduce bounced emails and errors by validating emails against MX records.</p>
    </td>

  </tr>    

</table>





