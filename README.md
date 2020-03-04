# fmaps - Flutter maps display options presentation companion app
</hr>

To add support for Google maps and Mapbox add tokens to ./android/app/src/main/AndroidManifest.xml

```xml
<meta-data android:name="com.google.android.geo.API_KEY"
            android:value="###"/>
<meta-data android:name="com.mapbox.token"
           android:value="###" />
```

flutter_maps should work out of the box because of free open street map provider (but it could be always changed)