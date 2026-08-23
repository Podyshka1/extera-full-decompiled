package org.telegram.p029ui.Components.chat;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class ChatActivityTopFadeView extends View {
    private Drawable drawable;
    private int fadeHeight;

    public ChatActivityTopFadeView(Context context) {
        super(context);
    }

    public void setFadeDrawable(Drawable drawable) {
        this.drawable = drawable;
        checkBounds();
        invalidate();
    }

    public void setFadeHeight(int i) {
        if (this.fadeHeight != i) {
            this.fadeHeight = i;
            checkBounds();
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        checkBounds();
    }

    private void checkBounds() {
        Drawable drawable = this.drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, getMeasuredWidth(), this.fadeHeight);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = this.drawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }
}
