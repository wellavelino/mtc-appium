require "appium_lib"

def caps
  { caps: { deviceName: 'Droid25',
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "app-debug.apk")),
            appPackage: "pao.de.queijo.omdbmtc",
            appActivity: "pao.de.queijo.omdbmtc.ui.activity.MainActivity",
            newCommandTimeout: "3600",
            appium_lib: {
                wait: 0,
                debug: false
            }
  }
  }
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Object