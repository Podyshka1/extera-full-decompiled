package org.telegram.ui.Components;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import java.lang.ref.WeakReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.TextStyleSpan;

/* JADX INFO: loaded from: classes3.dex */
public class URLSpanMono extends MetricAffectingSpan {
    private int currentEnd;
    private CharSequence currentMessage;
    private int currentStart;
    private byte currentType;
    private WeakReference<Theme.ResourcesProvider> resourcesProvider;
    private TextStyleSpan.TextStyleRun style;

    public URLSpanMono(CharSequence charSequence, int i, int i2, byte b2) {
        this(charSequence, i, i2, b2, null);
    }

    public URLSpanMono(CharSequence charSequence, int i, int i2, byte b2, TextStyleSpan.TextStyleRun textStyleRun) {
        this.currentMessage = charSequence;
        this.currentStart = i;
        this.currentEnd = i2;
        this.currentType = b2;
        this.style = textStyleRun;
    }

    public void copyToClipboard() {
        AndroidUtilities.addToClipboard(this.currentMessage.subSequence(this.currentStart, this.currentEnd).toString());
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize - 1));
        textPaint.setFlags(textPaint.getFlags() | 128);
        TextStyleSpan.TextStyleRun textStyleRun = this.style;
        if (textStyleRun != null) {
            textStyleRun.applyStyle(textPaint);
        } else {
            textPaint.setTypeface(Typeface.MONOSPACE);
        }
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize - 1));
        WeakReference<Theme.ResourcesProvider> weakReference = this.resourcesProvider;
        Theme.ResourcesProvider resourcesProvider = weakReference != null ? weakReference.get() : null;
        byte b2 = this.currentType;
        if (b2 == 2) {
            textPaint.setColor(Theme.getColor(Theme.key_chats_message, resourcesProvider));
        } else if (b2 == 1) {
            textPaint.setColor(Theme.getColor(Theme.key_chat_messageTextOut, resourcesProvider));
        } else {
            textPaint.setColor(Theme.getColor(Theme.key_chat_messageTextIn, resourcesProvider));
        }
        TextStyleSpan.TextStyleRun textStyleRun = this.style;
        if (textStyleRun != null) {
            textStyleRun.applyStyle(textPaint);
        } else {
            textPaint.setTypeface(Typeface.MONOSPACE);
            textPaint.setUnderlineText(false);
        }
    }

    public void setCurrentType(byte b2) {
        this.currentType = b2;
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider == null ? null : new WeakReference<>(resourcesProvider);
    }
}
