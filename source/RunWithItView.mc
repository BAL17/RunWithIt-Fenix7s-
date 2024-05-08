import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.Activity;
import Toybox.ActivityMonitor;

class RunWithItView extends WatchUi.WatchFace {
  function initialize() {
    WatchFace.initialize();
  }

  // Load your resources here
  function onLayout(dc as Dc) as Void {
    setLayout(Rez.Layouts.WatchFace(dc));
  }

  // Called when this View is brought to the foreground. Restore
  // the state of this View and prepare it to be shown. This includes
  // loading resources into memory.
  function onShow() as Void {}

  // Update the view
  function onUpdate(dc as Dc) as Void {
    var centerX = dc.getWidth() / 2;

    // Call the parent onUpdate function to redraw the layout
    View.onUpdate(dc);
    dc.drawRectangle(
      (centerX * 150) / 360,
      (centerX * 322) / 360,
      centerX * 1.2,
      (centerX * 35) / 360
    );
    dc.drawRectangle(
      (centerX * 170) / 360,
      (centerX * 2 * 190) / 360,
      (centerX * 80) / 360,
      (centerX * 80) / 360
    );
  }

  // Called when this View is removed from the screen. Save the
  // state of this View here. This includes freeing resources from
  // memory.
  function onHide() as Void {}

  // The user has just looked at their watch. Timers and animations may be started here.
  function onExitSleep() as Void {}

  // Terminate any active timers and prepare for slow updates.
  function onEnterSleep() as Void {}

  function drawHorizontalGridLine(dc, y) {
    // dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
    // dc.drawLine(0, y, dc.getWidth(), y);
  }

  function drawVerticalGridLine(dc, x, yStart, yEnd) {
    // dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
    // dc.drawLine(x, yStart, x, yEnd);
  }
}
