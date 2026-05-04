package org.telegram.p029ui.Components.glass;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes7.dex */
public abstract class GlassTabsView extends FrameLayout {
    private final Rect lensBounds;
    private final Rect lensBoundsForeground;
    private int lensColorBackground;
    private int lensColorForeground;
    private final Paint lensPaint;
    private float lensVisibility;
    public final LinearLayout linearLayout;

    public GlassTabsView(Context context) {
        super(context);
        this.lensBounds = new Rect();
        this.lensBoundsForeground = new Rect();
        this.lensPaint = new Paint(1);
        setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(0);
        addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f));
    }

    protected void setLensColor(int i, int i2) {
        this.lensColorBackground = i;
        this.lensColorForeground = i2;
        this.lensPaint.setColor(i);
    }

    protected void setLensBounds(int i, int i2, int i3, int i4) {
        this.lensBounds.set(i, i2, i3, i4);
        checkBounds();
    }

    protected void setLensVisibility(float f) {
        this.lensVisibility = f;
        checkBounds();
    }

    private void checkBounds() {
        int iM1124dp = AndroidUtilities.m1124dp(this.lensVisibility * 7.0f);
        this.lensBoundsForeground.set(this.lensBounds);
        int i = -iM1124dp;
        this.lensBoundsForeground.inset(i, i);
    }
}
