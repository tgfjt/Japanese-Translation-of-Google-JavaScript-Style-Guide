curl -s http://google-styleguide.googlecode.com/svn/trunk/javascriptguide.xml -o /tmp/gjssg.1
  && diff -u /tmp/gjssg /tmp/gjssg.1 > /tmp/diff
  || cat /tmp/diff | mail cou929@example.com -s "[DIFF] Google JavaScript Style Guide"
  ; mv /tmp/gjssg.1 /tmp/gjssg

# You can set this up to crontab like this:
# 0 0 * * * curl -s http://google-styleguide.googlecode.com/svn/trunk/javascriptguide.xml -o /tmp/gjssg.1 && diff -u /tmp/gjssg /tmp/gjssg.1 > /tmp/diff || cat /tmp/diff | mail cou929@example.com -s "[DIFF] Google JavaScript Style Guide" ; mv /tmp/gjssg.1 /tmp/gjssg