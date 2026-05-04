package org.telegram.p029ui.Components.voip;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import org.telegram.messenger.LiteMode;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.SnowflakesEffect;

/* JADX INFO: loaded from: classes7.dex */
public class VoIpSnowView extends View {
    private boolean isPaused;
    private SnowflakesEffect snowflakesEffect;

    public VoIpSnowView(Context context) {
        super(context);
        if (LiteMode.isEnabled(512) && Theme.getEventType() == 0) {
            this.snowflakesEffect = new SnowflakesEffect(0);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        SnowflakesEffect snowflakesEffect;
        if (this.isPaused || (snowflakesEffect = this.snowflakesEffect) == null) {
            return;
        }
        snowflakesEffect.onDraw(this, canvas);
    }

    public void setState(boolean z) {
        this.isPaused = z;
        invalidate();
    }
}
