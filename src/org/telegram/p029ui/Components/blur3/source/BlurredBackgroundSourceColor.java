package org.telegram.p029ui.Components.blur3.source;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawableSource;
import org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSource;

/* JADX INFO: loaded from: classes3.dex */
public class BlurredBackgroundSourceColor implements BlurredBackgroundSource {
    private final Paint paint = new Paint(1);

    @Override // org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSource
    public /* synthetic */ void dispatchOnDrawablesRelativePositionChange() {
        BlurredBackgroundSource.CC.$default$dispatchOnDrawablesRelativePositionChange(this);
    }

    @Override // org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSource
    public BlurredBackgroundDrawable createDrawable() {
        return new BlurredBackgroundDrawableSource(this);
    }

    public void setColor(int i) {
        this.paint.setColor(i);
    }

    public int getColor() {
        return this.paint.getColor();
    }

    @Override // org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSource
    public void draw(Canvas canvas, float f, float f2, float f3, float f4) {
        canvas.drawRect(f, f2, f3, f4, this.paint);
    }
}
