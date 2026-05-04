package com.exteragram.messenger.drawer;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesStorage;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes.dex */
final class DrawerArchiveUnreadBadge {
    private int badgeWidth;
    private String text;
    private int textWidth;
    private boolean visible;
    private final RectF rect = new RectF();
    private int account = -1;
    private int defaultTextPaddingEnd = Integer.MIN_VALUE;

    DrawerArchiveUnreadBadge() {
    }

    void bind(boolean z, int i, TextView textView) {
        if (!z) {
            i = -1;
        }
        this.account = i;
        update(textView);
    }

    void update(TextView textView) {
        rememberDefaultTextPadding(textView);
        this.visible = false;
        this.text = null;
        this.textWidth = 0;
        this.badgeWidth = 0;
        int i = this.account;
        if (i < 0) {
            restoreTextPadding(textView);
            return;
        }
        int archiveUnreadCount = MessagesStorage.getInstance(i).getArchiveUnreadCount();
        if (archiveUnreadCount <= 0) {
            restoreTextPadding(textView);
            return;
        }
        this.visible = true;
        this.text = Integer.toString(archiveUnreadCount);
        this.textWidth = (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(r0));
        int iMax = Math.max(AndroidUtilities.m1124dp(10.0f), this.textWidth) + AndroidUtilities.m1124dp(14.0f);
        this.badgeWidth = iMax;
        applyTextPadding(textView, this.defaultTextPaddingEnd + iMax + AndroidUtilities.m1124dp(12.0f));
    }

    void draw(View view, Canvas canvas) {
        if (this.visible) {
            float fM1124dp = AndroidUtilities.m1124dp(12.5f);
            int measuredWidth = view.getMeasuredWidth() - AndroidUtilities.m1124dp(16.5f);
            int i = this.badgeWidth;
            float f = measuredWidth - i;
            this.rect.set(f, fM1124dp, i + f, AndroidUtilities.m1124dp(23.0f) + fM1124dp);
            canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(11.5f), AndroidUtilities.m1124dp(11.5f), Theme.dialogs_countGrayPaint);
            String str = this.text;
            RectF rectF = this.rect;
            canvas.drawText(str, rectF.left + ((rectF.width() - this.textWidth) / 2.0f), fM1124dp + AndroidUtilities.m1124dp(16.0f), Theme.dialogs_countTextPaint);
        }
    }

    private void rememberDefaultTextPadding(TextView textView) {
        if (this.defaultTextPaddingEnd != Integer.MIN_VALUE) {
            return;
        }
        this.defaultTextPaddingEnd = textView.getPaddingEnd();
    }

    private void restoreTextPadding(TextView textView) {
        int i = this.defaultTextPaddingEnd;
        if (i == Integer.MIN_VALUE) {
            i = 0;
        }
        applyTextPadding(textView, i);
    }

    private void applyTextPadding(TextView textView, int i) {
        if (textView.getPaddingEnd() == i) {
            return;
        }
        textView.setPaddingRelative(textView.getPaddingStart(), textView.getPaddingTop(), i, textView.getPaddingBottom());
    }
}
