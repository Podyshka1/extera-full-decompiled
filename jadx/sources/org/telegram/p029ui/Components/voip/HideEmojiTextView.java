package org.telegram.p029ui.Components.voip;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;

/* JADX INFO: loaded from: classes7.dex */
public class HideEmojiTextView extends TextView {
    private final VoIPBackgroundProvider backgroundProvider;
    private final RectF bgRect;

    public HideEmojiTextView(Context context, VoIPBackgroundProvider voIPBackgroundProvider) {
        super(context);
        this.bgRect = new RectF();
        this.backgroundProvider = voIPBackgroundProvider;
        voIPBackgroundProvider.attach(this);
        setText(LocaleController.getString(C2888R.string.VoipHideEmoji));
        setContentDescription(LocaleController.getString(C2888R.string.VoipHideEmoji));
        setTextColor(-1);
        setTypeface(AndroidUtilities.bold());
        setPadding(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(4.0f));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.bgRect.set(0.0f, 0.0f, getWidth(), getHeight());
        this.backgroundProvider.setDarkTranslation(getX() + ((View) getParent()).getX(), getY() + ((View) getParent()).getY());
        canvas.drawRoundRect(this.bgRect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), this.backgroundProvider.getDarkPaint());
        super.onDraw(canvas);
    }
}
