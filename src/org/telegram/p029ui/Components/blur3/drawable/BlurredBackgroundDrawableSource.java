package org.telegram.p029ui.Components.blur3.drawable;

import android.graphics.Canvas;
import org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSource;

/* JADX INFO: loaded from: classes3.dex */
public class BlurredBackgroundDrawableSource extends BlurredBackgroundDrawable {
    private final BlurredBackgroundSource source;

    public BlurredBackgroundDrawableSource(BlurredBackgroundSource blurredBackgroundSource) {
        this.source = blurredBackgroundSource;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        drawSource(canvas, this.source);
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public BlurredBackgroundSource getSource() {
        return this.source;
    }
}
