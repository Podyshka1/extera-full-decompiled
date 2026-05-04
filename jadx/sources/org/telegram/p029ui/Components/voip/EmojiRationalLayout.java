package org.telegram.p029ui.Components.voip;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.widget.LinearLayout;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public class EmojiRationalLayout extends LinearLayout {
    private final VoIPBackgroundProvider backgroundProvider;
    private final RectF bgRect;

    public EmojiRationalLayout(Context context, VoIPBackgroundProvider voIPBackgroundProvider) {
        super(context);
        this.bgRect = new RectF();
        this.backgroundProvider = voIPBackgroundProvider;
        voIPBackgroundProvider.attach(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.bgRect.set(0.0f, 0.0f, getWidth(), getHeight());
        this.backgroundProvider.setDarkTranslation(getX(), getY());
        canvas.drawRoundRect(this.bgRect, AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(20.0f), this.backgroundProvider.getDarkPaint());
        super.dispatchDraw(canvas);
    }
}
