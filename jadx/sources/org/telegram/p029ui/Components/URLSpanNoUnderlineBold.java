package org.telegram.p029ui.Components;

import android.text.TextPaint;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes3.dex */
public class URLSpanNoUnderlineBold extends URLSpanNoUnderline {
    public URLSpanNoUnderlineBold(String str) {
        super(str != null ? str.replace((char) 8238, ' ') : str);
    }

    @Override // org.telegram.p029ui.Components.URLSpanNoUnderline, android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint.setUnderlineText(false);
    }
}
