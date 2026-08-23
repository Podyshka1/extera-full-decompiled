package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class PlayingGameDrawable extends StatusDrawable {
    private final boolean isDialogScreen;
    private float progress;
    Theme.ResourcesProvider resourcesProvider;
    private boolean isChat = false;
    private Paint paint = new Paint(1);
    private int currentAccount = UserConfig.selectedAccount;
    private long lastUpdateTime = 0;
    private boolean started = false;
    private RectF rect = new RectF();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void setColor(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public PlayingGameDrawable(boolean z, Theme.ResourcesProvider resourcesProvider) {
        this.isDialogScreen = z;
        this.resourcesProvider = resourcesProvider;
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void setIsChat(boolean z) {
        this.isChat = z;
    }

    private void update() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = jCurrentTimeMillis;
        if (j > 16) {
            j = 16;
        }
        if (this.progress >= 1.0f) {
            this.progress = 0.0f;
        }
        float f = this.progress + (j / 300.0f);
        this.progress = f;
        if (f > 1.0f) {
            this.progress = 1.0f;
        }
        invalidateSelf();
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void start() {
        this.lastUpdateTime = System.currentTimeMillis();
        this.started = true;
        invalidateSelf();
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void stop() {
        this.progress = 0.0f;
        this.started = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iM1124dp = AndroidUtilities.m1124dp(10.0f);
        int intrinsicHeight = getBounds().top + ((getIntrinsicHeight() - iM1124dp) / 2);
        if (!this.isChat) {
            intrinsicHeight += AndroidUtilities.m1124dp(1.0f);
        }
        int i = intrinsicHeight;
        this.paint.setColor(Theme.getColor(this.isDialogScreen ? Theme.key_chats_actionMessage : Theme.key_chat_status, this.resourcesProvider));
        this.rect.set(0.0f, i, iM1124dp, i + iM1124dp);
        float f = this.progress;
        int i2 = (int) (f < 0.5f ? (1.0f - (f / 0.5f)) * 35.0f : ((f - 0.5f) * 35.0f) / 0.5f);
        for (int i3 = 0; i3 < 3; i3++) {
            float fM1124dp = (AndroidUtilities.m1124dp(5.0f) * i3) + AndroidUtilities.m1124dp(9.2f);
            float fM1124dp2 = AndroidUtilities.m1124dp(5.0f);
            float f2 = this.progress;
            float f3 = fM1124dp - (fM1124dp2 * f2);
            if (i3 == 2) {
                this.paint.setAlpha(Math.min(255, (int) ((f2 * 255.0f) / 0.5f)));
            } else if (i3 != 0) {
                this.paint.setAlpha(255);
            } else if (f2 > 0.5f) {
                this.paint.setAlpha((int) ((1.0f - ((f2 - 0.5f) / 0.5f)) * 255.0f));
            } else {
                this.paint.setAlpha(255);
            }
            canvas.drawCircle(f3, (iM1124dp / 2) + i, AndroidUtilities.m1124dp(1.2f), this.paint);
        }
        this.paint.setAlpha(255);
        canvas.drawArc(this.rect, i2, 360 - (i2 * 2), true, this.paint);
        this.paint.setColor(Theme.getColor(this.isDialogScreen ? Theme.key_windowBackgroundWhite : Theme.key_actionBarDefault));
        canvas.drawCircle(AndroidUtilities.m1124dp(4.0f), (i + (iM1124dp / 2)) - AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(1.0f), this.paint);
        checkUpdate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUpdate() {
        if (this.started) {
            if (!NotificationCenter.getInstance(this.currentAccount).isAnimationInProgress()) {
                update();
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PlayingGameDrawable$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.checkUpdate();
                    }
                }, 100L);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m1124dp(20.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m1124dp(18.0f);
    }
}
