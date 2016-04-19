#!/usr/bin/python2.7
import urllib2, urllib, json
baseurl = "https://query.yahooapis.com/v1/public/yql?"
yql_query = "select * from weather.forecast where woeid=2460432"
yql_url = baseurl + urllib.urlencode({'q':yql_query}) + "&format=json"
result = urllib2.urlopen(yql_url).read()
data = json.loads(result)
condition = data['query']['results']['channel']['item']['condition']['text']
temp = data['query']['results']['channel']['item']['condition']['temp'] 
print temp + "F and " + condition
