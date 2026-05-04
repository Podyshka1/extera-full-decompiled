package org.telegram.p029ui.Components;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes3.dex */
public abstract class StaticLayoutEx {
    public static Layout.Alignment[] alignments = Layout.Alignment.values();

    public static Layout.Alignment ALIGN_RIGHT() {
        Layout.Alignment[] alignmentArr = alignments;
        return alignmentArr.length >= 5 ? alignmentArr[4] : Layout.Alignment.ALIGN_OPPOSITE;
    }

    public static Layout.Alignment ALIGN_LEFT() {
        Layout.Alignment[] alignmentArr = alignments;
        return alignmentArr.length >= 5 ? alignmentArr[3] : Layout.Alignment.ALIGN_NORMAL;
    }

    public static StaticLayout createStaticLayout2(CharSequence charSequence, TextPaint textPaint, int i, Layout.Alignment alignment, float f, float f2, boolean z, TextUtils.TruncateAt truncateAt, int i2, int i3) {
        return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i2).setAlignment(alignment).setLineSpacing(f2, f).setIncludePad(z).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(i2).setMaxLines(i3).setBreakStrategy(1).setHyphenationFrequency(0).build();
    }

    public static StaticLayout createStaticLayout(CharSequence charSequence, TextPaint textPaint, int i, Layout.Alignment alignment, float f, float f2, boolean z, TextUtils.TruncateAt truncateAt, int i2, int i3) {
        return createStaticLayout(charSequence, textPaint, i, alignment, f, f2, z, truncateAt, i2, i3, true);
    }

    public static StaticLayout createStaticLayout(CharSequence charSequence, TextPaint textPaint, int i, Layout.Alignment alignment, float f, float f2, boolean z, TextUtils.TruncateAt truncateAt, int i2, int i3, boolean z2) {
        int offsetForHorizontal;
        CharSequence charSequenceAppend = charSequence;
        try {
            if (i3 == 1) {
                int iIndexOf = TextUtils.indexOf(charSequenceAppend, "\n") - 1;
                if (iIndexOf > 0) {
                    charSequenceAppend = SpannableStringBuilder.valueOf(charSequenceAppend.subSequence(0, iIndexOf)).append((CharSequence) "…");
                }
                CharSequence charSequenceEllipsize = TextUtils.ellipsize(charSequenceAppend, textPaint, i2, TextUtils.TruncateAt.END);
                return new StaticLayout(charSequenceEllipsize, 0, charSequenceEllipsize.length(), textPaint, i, alignment, f, f2, z);
            }
            StaticLayout staticLayoutBuild = StaticLayout.Builder.obtain(charSequenceAppend, 0, charSequenceAppend.length(), textPaint, i).setAlignment(alignment).setLineSpacing(f2, f).setIncludePad(z).setEllipsize(null).setEllipsizedWidth(i2).setMaxLines(i3).setBreakStrategy(1).setHyphenationFrequency(0).build();
            int i4 = 0;
            while (true) {
                if (i4 >= staticLayoutBuild.getLineCount()) {
                    break;
                }
                if (staticLayoutBuild.getLineRight(i4) > i) {
                    staticLayoutBuild = StaticLayout.Builder.obtain(charSequenceAppend, 0, charSequenceAppend.length(), textPaint, i).setAlignment(alignment).setLineSpacing(f2, f).setIncludePad(z).setEllipsize(null).setEllipsizedWidth(i2).setMaxLines(i3).setBreakStrategy(0).setHyphenationFrequency(0).build();
                    break;
                }
                i4++;
            }
            if (staticLayoutBuild.getLineCount() <= i3) {
                return staticLayoutBuild;
            }
            int i5 = i3 - 1;
            float lineLeft = staticLayoutBuild.getLineLeft(i5);
            float lineWidth = staticLayoutBuild.getLineWidth(i5);
            if (lineLeft != 0.0f) {
                offsetForHorizontal = staticLayoutBuild.getOffsetForHorizontal(i5, lineLeft);
            } else {
                offsetForHorizontal = staticLayoutBuild.getOffsetForHorizontal(i5, lineWidth);
            }
            if (lineWidth < i2 - AndroidUtilities.m1124dp(10.0f)) {
                offsetForHorizontal += 3;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequenceAppend.subSequence(0, Math.max(0, offsetForHorizontal - 3)));
            spannableStringBuilder.append((CharSequence) "…");
            return StaticLayout.Builder.obtain(spannableStringBuilder, 0, spannableStringBuilder.length(), textPaint, i).setAlignment(alignment).setLineSpacing(f2, f).setIncludePad(z).setEllipsize(((AnimatedEmojiSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), AnimatedEmojiSpan.class)).length > 0 ? null : truncateAt).setEllipsizedWidth(i2).setMaxLines(i3).setBreakStrategy(z2 ? 1 : 0).setHyphenationFrequency(0).build();
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }
}
