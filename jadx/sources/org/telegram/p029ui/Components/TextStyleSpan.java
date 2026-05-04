package org.telegram.p029ui.Components;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import com.exteragram.messenger.utils.p017ui.FontUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class TextStyleSpan extends MetricAffectingSpan {
    private int color;
    private TextStyleRun style;
    private int textSize;

    public static class TextStyleRun {
        public int end;
        public int flags;
        public int start;
        public TLRPC.MessageEntity urlEntity;

        public TextStyleRun() {
        }

        public TextStyleRun(TextStyleRun textStyleRun) {
            this.flags = textStyleRun.flags;
            this.start = textStyleRun.start;
            this.end = textStyleRun.end;
            this.urlEntity = textStyleRun.urlEntity;
        }

        public void merge(TextStyleRun textStyleRun) {
            TLRPC.MessageEntity messageEntity;
            this.flags |= textStyleRun.flags;
            if (this.urlEntity != null || (messageEntity = textStyleRun.urlEntity) == null) {
                return;
            }
            this.urlEntity = messageEntity;
        }

        public void replace(TextStyleRun textStyleRun) {
            this.flags = textStyleRun.flags;
            this.urlEntity = textStyleRun.urlEntity;
        }

        public void applyStyle(TextPaint textPaint) {
            Typeface typeface = getTypeface();
            if (typeface != null) {
                textPaint.setTypeface(typeface);
            }
            if ((this.flags & 16) != 0) {
                textPaint.setFlags(textPaint.getFlags() | 8);
            } else {
                textPaint.setFlags(textPaint.getFlags() & (-9));
            }
            if ((this.flags & 8) != 0) {
                textPaint.setFlags(textPaint.getFlags() | 16);
            } else {
                textPaint.setFlags(textPaint.getFlags() & (-17));
            }
            if ((this.flags & 1) != 0 && !FontUtils.isMediumWeightSupported()) {
                textPaint.setStrokeWidth(0.65f);
                textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            }
            if ((this.flags & 2) != 0 && !FontUtils.isItalicSupported()) {
                textPaint.setTextSkewX(-0.25f);
            }
            if ((this.flags & 512) != 0) {
                textPaint.bgColor = Theme.getColor(Theme.key_chats_archivePullDownBackground);
            }
        }

        public Typeface getTypeface() {
            int i = this.flags;
            if ((i & 4) != 0 || (i & 2048) != 0) {
                return Typeface.MONOSPACE;
            }
            if ((i & 1) != 0 && (i & 2) != 0 && FontUtils.isMediumWeightSupported() && FontUtils.isItalicSupported()) {
                return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM_ITALIC);
            }
            if ((this.flags & 1) != 0 && FontUtils.isMediumWeightSupported()) {
                return AndroidUtilities.bold();
            }
            if ((this.flags & 2) == 0 || !FontUtils.isItalicSupported()) {
                return null;
            }
            return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_ITALIC);
        }
    }

    public TextStyleSpan(TextStyleRun textStyleRun) {
        this(textStyleRun, 0, 0);
    }

    public TextStyleSpan(TextStyleRun textStyleRun, int i, int i2) {
        this.style = textStyleRun;
        if (i > 0) {
            this.textSize = i;
        }
        this.color = i2;
    }

    public int getStyleFlags() {
        return this.style.flags;
    }

    public TextStyleRun getTextStyleRun() {
        return this.style;
    }

    public boolean isSpoiler() {
        return (this.style.flags & 256) > 0;
    }

    public void setSpoilerRevealed(boolean z) {
        if (z) {
            this.style.flags |= 512;
        } else {
            this.style.flags &= -513;
        }
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        int i = this.textSize;
        if (i != 0) {
            textPaint.setTextSize(i);
        }
        textPaint.setFlags(textPaint.getFlags() | 128);
        this.style.applyStyle(textPaint);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        int i = this.textSize;
        if (i != 0) {
            textPaint.setTextSize(i);
        }
        int i2 = this.color;
        if (i2 != 0) {
            textPaint.setColor(i2);
        }
        textPaint.setFlags(textPaint.getFlags() | 128);
        this.style.applyStyle(textPaint);
    }
}
