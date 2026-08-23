package io.noties.markwon.core;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import io.noties.markwon.utils.ColorUtils;
import io.noties.markwon.utils.Dip;
import java.util.Arrays;
import java.util.Locale;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class MarkwonTheme {
    private static final float[] HEADING_SIZES = {2.0f, 1.5f, 1.17f, 1.0f, 0.83f, 0.67f};
    protected final int blockMargin;
    protected final int blockQuoteColor;
    protected final int blockQuoteWidth;
    protected final int bulletListItemStrokeWidth;
    protected final int bulletWidth;
    protected final int codeBackgroundColor;
    protected final int codeBlockBackgroundColor;
    protected final int codeBlockMargin;
    protected final int codeBlockTextColor;
    protected final int codeBlockTextSize;
    protected final Typeface codeBlockTypeface;
    protected final int codeTextColor;
    protected final int codeTextSize;
    protected final Typeface codeTypeface;
    protected final int headingBreakColor;
    protected final int headingBreakHeight;
    protected final float[] headingTextSizeMultipliers;
    protected final Typeface headingTypeface;
    protected final boolean isLinkedUnderlined;
    protected final int linkColor;
    protected final int listItemColor;
    protected final int thematicBreakColor;
    protected final int thematicBreakHeight;

    public static Builder builderWithDefaults(Context context) {
        Dip dipCreate = Dip.create(context);
        return new Builder().codeBlockMargin(dipCreate.toPx(8)).blockMargin(dipCreate.toPx(24)).blockQuoteWidth(dipCreate.toPx(4)).bulletListItemStrokeWidth(dipCreate.toPx(1)).headingBreakHeight(dipCreate.toPx(1)).thematicBreakHeight(dipCreate.toPx(4));
    }

    public MarkwonTheme(Builder builder) {
        this.linkColor = builder.linkColor;
        this.isLinkedUnderlined = builder.isLinkUnderlined;
        this.blockMargin = builder.blockMargin;
        this.blockQuoteWidth = builder.blockQuoteWidth;
        this.blockQuoteColor = builder.blockQuoteColor;
        this.listItemColor = builder.listItemColor;
        this.bulletListItemStrokeWidth = builder.bulletListItemStrokeWidth;
        this.bulletWidth = builder.bulletWidth;
        this.codeTextColor = builder.codeTextColor;
        this.codeBlockTextColor = builder.codeBlockTextColor;
        this.codeBackgroundColor = builder.codeBackgroundColor;
        this.codeBlockBackgroundColor = builder.codeBlockBackgroundColor;
        this.codeBlockMargin = builder.codeBlockMargin;
        this.codeTypeface = builder.codeTypeface;
        this.codeBlockTypeface = builder.codeBlockTypeface;
        this.codeTextSize = builder.codeTextSize;
        this.codeBlockTextSize = builder.codeBlockTextSize;
        this.headingBreakHeight = builder.headingBreakHeight;
        this.headingBreakColor = builder.headingBreakColor;
        this.headingTypeface = builder.headingTypeface;
        this.headingTextSizeMultipliers = builder.headingTextSizeMultipliers;
        this.thematicBreakColor = builder.thematicBreakColor;
        this.thematicBreakHeight = builder.thematicBreakHeight;
    }

    public void applyLinkStyle(TextPaint textPaint) {
        textPaint.setUnderlineText(this.isLinkedUnderlined);
        int i = this.linkColor;
        if (i != 0) {
            textPaint.setColor(i);
        } else {
            textPaint.setColor(textPaint.linkColor);
        }
    }

    public void applyLinkStyle(Paint paint) {
        paint.setUnderlineText(this.isLinkedUnderlined);
        int i = this.linkColor;
        if (i != 0) {
            paint.setColor(i);
        } else if (paint instanceof TextPaint) {
            paint.setColor(((TextPaint) paint).linkColor);
        }
    }

    public void applyBlockQuoteStyle(Paint paint) {
        int iApplyAlpha = this.blockQuoteColor;
        if (iApplyAlpha == 0) {
            iApplyAlpha = ColorUtils.applyAlpha(paint.getColor(), 25);
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(iApplyAlpha);
    }

    public int getBlockMargin() {
        return this.blockMargin;
    }

    public int getBlockQuoteWidth() {
        int i = this.blockQuoteWidth;
        return i == 0 ? (int) ((this.blockMargin * 0.25f) + 0.5f) : i;
    }

    public void applyListItemStyle(Paint paint) {
        int color = this.listItemColor;
        if (color == 0) {
            color = paint.getColor();
        }
        paint.setColor(color);
        int i = this.bulletListItemStrokeWidth;
        if (i != 0) {
            paint.setStrokeWidth(i);
        }
    }

    public int getBulletWidth(int i) {
        int iMin = Math.min(this.blockMargin, i) / 2;
        int i2 = this.bulletWidth;
        return (i2 == 0 || i2 > iMin) ? iMin : i2;
    }

    public void applyCodeTextStyle(Paint paint) {
        int i = this.codeTextColor;
        if (i != 0) {
            paint.setColor(i);
        }
        Typeface typeface = this.codeTypeface;
        if (typeface != null) {
            paint.setTypeface(typeface);
            int i2 = this.codeTextSize;
            if (i2 > 0) {
                paint.setTextSize(i2);
                return;
            }
            return;
        }
        paint.setTypeface(Typeface.MONOSPACE);
        int i3 = this.codeTextSize;
        if (i3 > 0) {
            paint.setTextSize(i3);
        } else {
            paint.setTextSize(paint.getTextSize() * 0.87f);
        }
    }

    public void applyCodeBlockTextStyle(Paint paint) {
        int i = this.codeBlockTextColor;
        if (i == 0) {
            i = this.codeTextColor;
        }
        if (i != 0) {
            paint.setColor(i);
        }
        Typeface typeface = this.codeBlockTypeface;
        if (typeface == null) {
            typeface = this.codeTypeface;
        }
        if (typeface != null) {
            paint.setTypeface(typeface);
            int i2 = this.codeBlockTextSize;
            if (i2 <= 0) {
                i2 = this.codeTextSize;
            }
            if (i2 > 0) {
                paint.setTextSize(i2);
                return;
            }
            return;
        }
        paint.setTypeface(Typeface.MONOSPACE);
        int i3 = this.codeBlockTextSize;
        if (i3 <= 0) {
            i3 = this.codeTextSize;
        }
        if (i3 > 0) {
            paint.setTextSize(i3);
        } else {
            paint.setTextSize(paint.getTextSize() * 0.87f);
        }
    }

    public int getCodeBlockMargin() {
        return this.codeBlockMargin;
    }

    public int getCodeBackgroundColor(Paint paint) {
        int i = this.codeBackgroundColor;
        return i != 0 ? i : ColorUtils.applyAlpha(paint.getColor(), 25);
    }

    public int getCodeBlockBackgroundColor(Paint paint) {
        int i = this.codeBlockBackgroundColor;
        if (i == 0) {
            i = this.codeBackgroundColor;
        }
        return i != 0 ? i : ColorUtils.applyAlpha(paint.getColor(), 25);
    }

    public void applyHeadingTextStyle(Paint paint, int i) {
        Typeface typeface = this.headingTypeface;
        if (typeface == null) {
            paint.setFakeBoldText(true);
        } else {
            paint.setTypeface(typeface);
        }
        float[] fArr = this.headingTextSizeMultipliers;
        if (fArr == null) {
            fArr = HEADING_SIZES;
        }
        if (fArr != null && fArr.length >= i) {
            paint.setTextSize(paint.getTextSize() * fArr[i - 1]);
        } else {
            Segment$$ExternalSyntheticBUOutline1.m848m(String.format(Locale.US, "Supplied heading level: %d is invalid, where configured heading sizes are: `%s`", Integer.valueOf(i), Arrays.toString(fArr)));
        }
    }

    public void applyHeadingBreakStyle(Paint paint) {
        int iApplyAlpha = this.headingBreakColor;
        if (iApplyAlpha == 0) {
            iApplyAlpha = ColorUtils.applyAlpha(paint.getColor(), 75);
        }
        paint.setColor(iApplyAlpha);
        paint.setStyle(Paint.Style.FILL);
        int i = this.headingBreakHeight;
        if (i >= 0) {
            paint.setStrokeWidth(i);
        }
    }

    public void applyThematicBreakStyle(Paint paint) {
        int iApplyAlpha = this.thematicBreakColor;
        if (iApplyAlpha == 0) {
            iApplyAlpha = ColorUtils.applyAlpha(paint.getColor(), 25);
        }
        paint.setColor(iApplyAlpha);
        paint.setStyle(Paint.Style.FILL);
        int i = this.thematicBreakHeight;
        if (i >= 0) {
            paint.setStrokeWidth(i);
        }
    }

    public static class Builder {
        private int blockMargin;
        private int blockQuoteColor;
        private int blockQuoteWidth;
        private int bulletListItemStrokeWidth;
        private int bulletWidth;
        private int codeBackgroundColor;
        private int codeBlockBackgroundColor;
        private int codeBlockMargin;
        private int codeBlockTextColor;
        private int codeBlockTextSize;
        private Typeface codeBlockTypeface;
        private int codeTextColor;
        private int codeTextSize;
        private Typeface codeTypeface;
        private int headingBreakColor;
        private float[] headingTextSizeMultipliers;
        private Typeface headingTypeface;
        private int linkColor;
        private int listItemColor;
        private int thematicBreakColor;
        private boolean isLinkUnderlined = true;
        private int headingBreakHeight = -1;
        private int thematicBreakHeight = -1;

        public Builder linkColor(int i) {
            this.linkColor = i;
            return this;
        }

        public Builder isLinkUnderlined(boolean z) {
            this.isLinkUnderlined = z;
            return this;
        }

        public Builder blockMargin(int i) {
            this.blockMargin = i;
            return this;
        }

        public Builder blockQuoteWidth(int i) {
            this.blockQuoteWidth = i;
            return this;
        }

        public Builder blockQuoteColor(int i) {
            this.blockQuoteColor = i;
            return this;
        }

        public Builder listItemColor(int i) {
            this.listItemColor = i;
            return this;
        }

        public Builder bulletListItemStrokeWidth(int i) {
            this.bulletListItemStrokeWidth = i;
            return this;
        }

        public Builder bulletWidth(int i) {
            this.bulletWidth = i;
            return this;
        }

        public Builder codeTextColor(int i) {
            this.codeTextColor = i;
            return this;
        }

        public Builder codeBlockTextColor(int i) {
            this.codeBlockTextColor = i;
            return this;
        }

        public Builder codeBackgroundColor(int i) {
            this.codeBackgroundColor = i;
            return this;
        }

        public Builder codeBlockBackgroundColor(int i) {
            this.codeBlockBackgroundColor = i;
            return this;
        }

        public Builder codeBlockMargin(int i) {
            this.codeBlockMargin = i;
            return this;
        }

        public Builder codeTypeface(Typeface typeface) {
            this.codeTypeface = typeface;
            return this;
        }

        public Builder codeBlockTypeface(Typeface typeface) {
            this.codeBlockTypeface = typeface;
            return this;
        }

        public Builder codeTextSize(int i) {
            this.codeTextSize = i;
            return this;
        }

        public Builder codeBlockTextSize(int i) {
            this.codeBlockTextSize = i;
            return this;
        }

        public Builder headingBreakHeight(int i) {
            this.headingBreakHeight = i;
            return this;
        }

        public Builder headingBreakColor(int i) {
            this.headingBreakColor = i;
            return this;
        }

        public Builder headingTextSizeMultipliers(float[] fArr) {
            this.headingTextSizeMultipliers = fArr;
            return this;
        }

        public Builder thematicBreakColor(int i) {
            this.thematicBreakColor = i;
            return this;
        }

        public Builder thematicBreakHeight(int i) {
            this.thematicBreakHeight = i;
            return this;
        }

        public MarkwonTheme build() {
            return new MarkwonTheme(this);
        }
    }
}
