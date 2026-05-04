package org.telegram.ui.ActionBar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.EmptyStubSpan;
import org.telegram.ui.Components.StaticLayoutEx;
import org.telegram.ui.Components.spoilers.SpoilerEffect;

/* JADX INFO: loaded from: classes3.dex */
public class SimpleTextView extends View implements Drawable.Callback {
    private boolean attachedToWindow;
    private boolean buildFullLayout;
    private boolean canHideRightDrawable;
    private int currentScrollDelay;
    private int drawablePadding;
    private boolean ellipsizeByGradient;
    private boolean ellipsizeByGradientLeft;
    private int ellipsizeByGradientWidthDp;
    private int emojiCacheType;
    private AnimatedEmojiSpan.EmojiGroupedSpans emojiStack;
    private ColorFilter emojiStackColorFilter;
    private Paint fadeEllpsizePaint;
    private int fadeEllpsizePaintWidth;
    private Paint fadePaint;
    private Paint fadePaintBack;
    private Layout firstLineLayout;
    private Boolean forceEllipsizeByGradientLeft;
    private float fullAlpha;
    private Layout fullLayout;
    private int fullLayoutAdditionalWidth;
    private float fullLayoutLeftCharactersOffset;
    private int fullLayoutLeftOffset;
    private int fullTextMaxLines;
    private int gravity;
    private long lastUpdateTime;
    private int lastWidth;
    private Layout layout;
    private float layoutX;
    private float layoutY;
    private Drawable leftDrawable;
    private boolean leftDrawableOutside;
    private int leftDrawableTopPadding;
    private final Runnable longPressRunnable;
    private Layout.Alignment mAlignment;
    private int maxLines;
    private boolean maybeClickDrawable1;
    private boolean maybeClickDrawable2;
    private int minWidth;
    private int minusWidth;
    private int offsetX;
    private int offsetY;
    private int paddingRight;
    private Layout partLayout;
    private Path path;
    private Drawable replacedDrawable;
    private String replacedText;
    private int replacingDrawableTextIndex;
    private float replacingDrawableTextOffset;
    private Drawable rightDrawable;
    private Drawable rightDrawable2;
    private View.OnClickListener rightDrawable2OnClickListener;
    public int rightDrawable2X;
    public int rightDrawable2Y;
    private boolean rightDrawableHidden;
    private boolean rightDrawableInside;
    private View.OnClickListener rightDrawableOnClickListener;
    private boolean rightDrawableOutside;
    private float rightDrawableScale;
    private int rightDrawableTopPadding;
    public int rightDrawableX;
    public int rightDrawableY;
    private boolean scrollNonFitText;
    private float scrollingOffset;
    private List spoilers;
    private Stack spoilersPool;
    private CharSequence text;
    private boolean textDoesNotFit;
    private int textHeight;
    private TextPaint textPaint;
    private int textWidth;
    private int totalWidth;
    private float touchDownXDrawable1;
    private float touchDownXDrawable2;
    private float touchDownYDrawable1;
    private float touchDownYDrawable2;
    private boolean usaAlphaForEmoji;
    private boolean wasLayout;
    private boolean widthWrapContent;
    private Drawable wrapBackgroundDrawable;

    /* JADX INFO: loaded from: classes6.dex */
    public interface PressableDrawable {
        void setPressed(boolean z);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void setEmojiColor(int i) {
        this.emojiStackColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
    }

    public SimpleTextView(Context context) {
        super(context);
        this.gravity = 51;
        this.maxLines = 1;
        this.rightDrawableScale = 1.0f;
        this.drawablePadding = AndroidUtilities.dp(4.0f);
        this.ellipsizeByGradientWidthDp = 16;
        this.fullTextMaxLines = 3;
        this.spoilers = new ArrayList();
        this.spoilersPool = new Stack();
        this.path = new Path();
        this.emojiCacheType = 0;
        this.mAlignment = Layout.Alignment.ALIGN_NORMAL;
        this.maybeClickDrawable1 = false;
        this.touchDownXDrawable1 = 0.0f;
        this.touchDownYDrawable1 = 0.0f;
        this.maybeClickDrawable2 = false;
        this.touchDownXDrawable2 = 0.0f;
        this.touchDownYDrawable2 = 0.0f;
        this.longPressRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.SimpleTextView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.textPaint = new TextPaint(1);
        setImportantForAccessibility(1);
    }

    public void setTextColor(int i) {
        this.textPaint.setColor(i);
        invalidate();
    }

    public void setLinkTextColor(int i) {
        this.textPaint.linkColor = i;
        invalidate();
    }

    public Layout getLayout() {
        return this.layout;
    }

    public float getLayoutX() {
        return this.layoutX;
    }

    public float getLayoutY() {
        return this.layoutY;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attachedToWindow = true;
        this.emojiStack = AnimatedEmojiSpan.update(this.emojiCacheType, this, this.emojiStack, this.layout);
    }

    public void setEmojiCacheType(int i) {
        if (i != this.emojiCacheType) {
            AnimatedEmojiSpan.release(this, this.emojiStack);
            this.emojiCacheType = i;
            if (this.attachedToWindow) {
                this.emojiStack = AnimatedEmojiSpan.update(i, this, this.emojiStack, this.layout);
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
        AnimatedEmojiSpan.release(this, this.emojiStack);
        this.wasLayout = false;
    }

    public void setTextSize(int i) {
        float fDp = AndroidUtilities.dp(i);
        if (fDp == this.textPaint.getTextSize()) {
            return;
        }
        this.textPaint.setTextSize(fDp);
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public void setBuildFullLayout(boolean z) {
        this.buildFullLayout = z;
    }

    public void setFullAlpha(float f) {
        this.fullAlpha = f;
        invalidate();
    }

    public float getFullAlpha() {
        return this.fullAlpha;
    }

    public void setScrollNonFitText(boolean z) {
        if (this.scrollNonFitText == z) {
            return;
        }
        this.scrollNonFitText = z;
        updateFadePaints();
        requestLayout();
    }

    public void setEllipsizeByGradient(boolean z) {
        setEllipsizeByGradient(z, (Boolean) null);
    }

    public void setEllipsizeByGradient(int i) {
        setEllipsizeByGradient(i, (Boolean) null);
    }

    public void setEllipsizeByGradient(boolean z, Boolean bool) {
        if (this.scrollNonFitText == z) {
            return;
        }
        this.ellipsizeByGradient = z;
        this.forceEllipsizeByGradientLeft = bool;
        updateFadePaints();
    }

    public void setEllipsizeByGradient(int i, Boolean bool) {
        setEllipsizeByGradient(true, bool);
        this.ellipsizeByGradientWidthDp = i;
        updateFadePaints();
    }

    public void setWidthWrapContent(boolean z) {
        this.widthWrapContent = z;
    }

    private void updateFadePaints() {
        if ((this.fadePaint == null || this.fadePaintBack == null) && this.scrollNonFitText) {
            Paint paint = new Paint();
            this.fadePaint = paint;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(6.0f), 0.0f, new int[]{-1, 0}, new float[]{0.0f, 1.0f}, tileMode));
            Paint paint2 = this.fadePaint;
            PorterDuff.Mode mode = PorterDuff.Mode.DST_OUT;
            paint2.setXfermode(new PorterDuffXfermode(mode));
            Paint paint3 = new Paint();
            this.fadePaintBack = paint3;
            paint3.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(6.0f), 0.0f, new int[]{0, -1}, new float[]{0.0f, 1.0f}, tileMode));
            this.fadePaintBack.setXfermode(new PorterDuffXfermode(mode));
        }
        Boolean bool = this.forceEllipsizeByGradientLeft;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        if (!(this.fadeEllpsizePaint != null && this.fadeEllpsizePaintWidth == AndroidUtilities.dp(this.ellipsizeByGradientWidthDp) && this.ellipsizeByGradientLeft == zBooleanValue) && this.ellipsizeByGradient) {
            if (this.fadeEllpsizePaint == null) {
                this.fadeEllpsizePaint = new Paint();
            }
            this.ellipsizeByGradientLeft = zBooleanValue;
            if (zBooleanValue) {
                Paint paint4 = this.fadeEllpsizePaint;
                int iDp = AndroidUtilities.dp(this.ellipsizeByGradientWidthDp);
                this.fadeEllpsizePaintWidth = iDp;
                paint4.setShader(new LinearGradient(0.0f, 0.0f, iDp, 0.0f, new int[]{-1, 0}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
            } else {
                Paint paint5 = this.fadeEllpsizePaint;
                int iDp2 = AndroidUtilities.dp(this.ellipsizeByGradientWidthDp);
                this.fadeEllpsizePaintWidth = iDp2;
                paint5.setShader(new LinearGradient(0.0f, 0.0f, iDp2, 0.0f, new int[]{0, -1}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
            }
            this.fadeEllpsizePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        }
    }

    public void setMaxLines(int i) {
        this.maxLines = i;
    }

    public void setGravity(int i) {
        if (this.gravity != i) {
            this.gravity = i;
            if (recreateLayoutMaybe()) {
                return;
            }
            invalidate();
        }
    }

    public void setTypeface(Typeface typeface) {
        this.textPaint.setTypeface(typeface);
    }

    public int getSideDrawablesSize() {
        Drawable drawable = this.leftDrawable;
        int intrinsicWidth = drawable != null ? drawable.getIntrinsicWidth() + this.drawablePadding : 0;
        if (this.rightDrawable != null) {
            intrinsicWidth += ((int) (r1.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
        }
        return this.rightDrawable2 != null ? intrinsicWidth + ((int) (r1.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding : intrinsicWidth;
    }

    public TextPaint getPaint() {
        return this.textPaint;
    }

    private void calcOffset(int i) {
        int intrinsicWidth;
        Layout layout = this.layout;
        if (layout == null) {
            return;
        }
        if (layout.getLineCount() > 0) {
            this.textWidth = (int) Math.max(Math.ceil(this.layout.getLineWidth(0)), Math.ceil(this.layout.getLineRight(0) - this.layout.getLineLeft(0)));
            Layout layout2 = this.fullLayout;
            if (layout2 != null) {
                this.textHeight = layout2.getLineBottom(layout2.getLineCount() - 1);
            } else if (this.maxLines > 1 && this.layout.getLineCount() > 0) {
                Layout layout3 = this.layout;
                this.textHeight = layout3.getLineBottom(layout3.getLineCount() - 1);
            } else {
                this.textHeight = this.layout.getLineBottom(0);
            }
            int i2 = this.gravity;
            if ((i2 & 7) == 1) {
                this.offsetX = ((i - this.textWidth) / 2) - ((int) this.layout.getLineLeft(0));
            } else if ((i2 & 7) == 3) {
                Layout layout4 = this.firstLineLayout;
                if (layout4 != null) {
                    this.offsetX = -((int) layout4.getLineLeft(0));
                } else {
                    this.offsetX = -((int) this.layout.getLineLeft(0));
                }
            } else if (this.layout.getLineLeft(0) == 0.0f) {
                Layout layout5 = this.firstLineLayout;
                if (layout5 != null) {
                    this.offsetX = (int) (i - layout5.getLineWidth(0));
                } else {
                    this.offsetX = i - this.textWidth;
                }
            } else {
                this.offsetX = -AndroidUtilities.dp(8.0f);
            }
            this.offsetX += getPaddingLeft();
            if (this.rightDrawableInside) {
                intrinsicWidth = (this.rightDrawable == null || this.rightDrawableOutside) ? 0 : (int) (r0.getIntrinsicWidth() * this.rightDrawableScale);
                if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                    intrinsicWidth += (int) (r4.getIntrinsicWidth() * this.rightDrawableScale);
                }
            } else {
                intrinsicWidth = 0;
            }
            this.textDoesNotFit = this.textWidth + intrinsicWidth > i - this.paddingRight;
            Layout layout6 = this.fullLayout;
            if (layout6 != null && this.fullLayoutAdditionalWidth > 0) {
                this.fullLayoutLeftCharactersOffset = layout6.getPrimaryHorizontal(0) - this.firstLineLayout.getPrimaryHorizontal(0);
            }
        }
        int i3 = this.replacingDrawableTextIndex;
        if (i3 >= 0) {
            this.replacingDrawableTextOffset = this.layout.getPrimaryHorizontal(i3);
        } else {
            this.replacingDrawableTextOffset = 0.0f;
        }
    }

    protected boolean createLayout(int i) {
        int intrinsicWidth;
        int intrinsicWidth2;
        CharSequence charSequenceSubSequence;
        CharSequence charSequence = this.text;
        this.replacingDrawableTextIndex = -1;
        this.rightDrawableHidden = false;
        if (charSequence != null) {
            try {
                Drawable drawable = this.leftDrawable;
                if (drawable == null || this.leftDrawableOutside) {
                    intrinsicWidth = i;
                } else {
                    drawable.getIntrinsicWidth();
                    intrinsicWidth = (i - this.leftDrawable.getIntrinsicWidth()) - this.drawablePadding;
                }
                if (this.rightDrawableInside) {
                    intrinsicWidth2 = 0;
                } else {
                    if (this.rightDrawable == null || this.rightDrawableOutside) {
                        intrinsicWidth2 = 0;
                    } else {
                        intrinsicWidth2 = (int) (r4.getIntrinsicWidth() * this.rightDrawableScale);
                        intrinsicWidth = (intrinsicWidth - intrinsicWidth2) - this.drawablePadding;
                    }
                    if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                        intrinsicWidth2 += (int) (r5.getIntrinsicWidth() * this.rightDrawableScale);
                        intrinsicWidth = (intrinsicWidth - intrinsicWidth2) - this.drawablePadding;
                    }
                }
                CharSequence charSequence2 = charSequence;
                if (this.replacedText != null) {
                    charSequence2 = charSequence;
                    if (this.replacedDrawable != null) {
                        int iIndexOf = charSequence.toString().indexOf(this.replacedText);
                        this.replacingDrawableTextIndex = iIndexOf;
                        if (iIndexOf >= 0) {
                            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence);
                            DialogCell.FixedWidthSpan fixedWidthSpan = new DialogCell.FixedWidthSpan(this.replacedDrawable.getIntrinsicWidth());
                            int i2 = this.replacingDrawableTextIndex;
                            spannableStringBuilderValueOf.setSpan(fixedWidthSpan, i2, this.replacedText.length() + i2, 0);
                            charSequence2 = spannableStringBuilderValueOf;
                        } else {
                            intrinsicWidth = (intrinsicWidth - this.replacedDrawable.getIntrinsicWidth()) - this.drawablePadding;
                            charSequence2 = charSequence;
                        }
                    }
                }
                CharSequence charSequence3 = charSequence2;
                if (this.canHideRightDrawable && intrinsicWidth2 != 0 && !this.rightDrawableOutside && !charSequence3.equals(TextUtils.ellipsize(charSequence3, this.textPaint, intrinsicWidth, TextUtils.TruncateAt.END))) {
                    this.rightDrawableHidden = true;
                    intrinsicWidth = intrinsicWidth + intrinsicWidth2 + this.drawablePadding;
                }
                int i3 = intrinsicWidth;
                if (this.buildFullLayout) {
                    CharSequence charSequenceEllipsize = !this.ellipsizeByGradient ? TextUtils.ellipsize(charSequence3, this.textPaint, i3, TextUtils.TruncateAt.END) : charSequence3;
                    if (!this.ellipsizeByGradient && !charSequenceEllipsize.equals(charSequence3)) {
                        TextPaint textPaint = this.textPaint;
                        Layout.Alignment alignment = getAlignment();
                        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                        StaticLayout staticLayoutCreateStaticLayout = StaticLayoutEx.createStaticLayout(charSequence3, textPaint, i3, alignment, 1.0f, 0.0f, false, truncateAt, i3, this.fullTextMaxLines, false);
                        this.fullLayout = staticLayoutCreateStaticLayout;
                        if (staticLayoutCreateStaticLayout != null) {
                            int lineEnd = staticLayoutCreateStaticLayout.getLineEnd(0);
                            int lineStart = this.fullLayout.getLineStart(1);
                            CharSequence charSequenceSubSequence2 = charSequence3.subSequence(0, lineEnd);
                            SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(charSequence3);
                            spannableStringBuilderValueOf2.setSpan(new EmptyStubSpan(), 0, lineStart, 0);
                            if (lineEnd < charSequenceEllipsize.length()) {
                                charSequenceSubSequence = charSequenceEllipsize.subSequence(lineEnd, charSequenceEllipsize.length());
                            } else {
                                charSequenceSubSequence = "…";
                            }
                            this.firstLineLayout = new StaticLayout(charSequenceEllipsize, 0, charSequenceEllipsize.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i3, getAlignment(), 1.0f, 0.0f, false);
                            StaticLayout staticLayout = new StaticLayout(charSequenceSubSequence2, 0, charSequenceSubSequence2.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i3, getAlignment(), 1.0f, 0.0f, false);
                            this.layout = staticLayout;
                            if (staticLayout.getLineLeft(0) != 0.0f) {
                                charSequenceSubSequence = "\u200f" + ((Object) charSequenceSubSequence);
                            }
                            CharSequence charSequence4 = charSequenceSubSequence;
                            this.partLayout = new StaticLayout(charSequence4, 0, charSequence4.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i3, getAlignment(), 1.0f, 0.0f, false);
                            this.fullLayout = StaticLayoutEx.createStaticLayout(spannableStringBuilderValueOf2, this.textPaint, AndroidUtilities.dp(8.0f) + i3 + this.fullLayoutAdditionalWidth, getAlignment(), 1.0f, 0.0f, false, truncateAt, i3 + this.fullLayoutAdditionalWidth, this.fullTextMaxLines, false);
                        }
                    } else {
                        CharSequence charSequence5 = charSequenceEllipsize;
                        this.layout = new StaticLayout(charSequence5, 0, charSequence5.length(), this.textPaint, (this.scrollNonFitText || this.ellipsizeByGradient) ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i3, getAlignment(), 1.0f, 0.0f, false);
                        this.fullLayout = null;
                        this.partLayout = null;
                        this.firstLineLayout = null;
                    }
                } else if (this.maxLines > 1) {
                    this.layout = StaticLayoutEx.createStaticLayout(charSequence3, this.textPaint, i3, getAlignment(), 1.0f, 0.0f, false, TextUtils.TruncateAt.END, i3, this.maxLines, false);
                } else {
                    CharSequence charSequenceEllipsize2 = charSequence3;
                    if (!this.scrollNonFitText) {
                        charSequenceEllipsize2 = this.ellipsizeByGradient ? charSequence3 : TextUtils.ellipsize(charSequence3, this.textPaint, i3, TextUtils.TruncateAt.END);
                    }
                    CharSequence charSequence6 = charSequenceEllipsize2;
                    this.layout = new StaticLayout(charSequence6, 0, charSequence6.length(), this.textPaint, (this.scrollNonFitText || this.ellipsizeByGradient) ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i3, getAlignment(), 1.0f, 0.0f, false);
                }
                this.spoilersPool.addAll(this.spoilers);
                this.spoilers.clear();
                Layout layout = this.layout;
                if (layout != null && (layout.getText() instanceof Spannable)) {
                    SpoilerEffect.addSpoilers(this, this.layout, -2, -2, this.spoilersPool, this.spoilers);
                }
                calcOffset(i3);
            } catch (Exception unused) {
            }
        } else {
            this.layout = null;
            this.textWidth = 0;
            this.textHeight = 0;
        }
        AnimatedEmojiSpan.release(this, this.emojiStack);
        if (this.attachedToWindow) {
            this.emojiStack = AnimatedEmojiSpan.update(this.emojiCacheType, this, this.emojiStack, this.layout);
        }
        invalidate();
        return true;
    }

    public void setAlignment(Layout.Alignment alignment) {
        this.mAlignment = alignment;
        requestLayout();
    }

    private Layout.Alignment getAlignment() {
        return this.mAlignment;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.lastWidth;
        int i4 = AndroidUtilities.displaySize.x;
        if (i3 != i4) {
            this.lastWidth = i4;
            this.scrollingOffset = 0.0f;
            this.currentScrollDelay = 500;
        }
        int intrinsicWidth = 0;
        createLayout((((((size - getPaddingLeft()) - getPaddingRight()) - this.minusWidth) - ((!this.leftDrawableOutside || (drawable6 = this.leftDrawable) == null) ? 0 : drawable6.getIntrinsicWidth() + this.drawablePadding)) - ((!this.rightDrawableOutside || (drawable5 = this.rightDrawable) == null) ? 0 : drawable5.getIntrinsicWidth() + this.drawablePadding)) - ((!this.rightDrawableOutside || (drawable4 = this.rightDrawable2) == null) ? 0 : drawable4.getIntrinsicWidth() + this.drawablePadding));
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            size2 = getPaddingBottom() + getPaddingTop() + this.textHeight;
        }
        if (this.widthWrapContent) {
            int paddingLeft = getPaddingLeft() + this.textWidth + getPaddingRight() + this.minusWidth + ((!this.leftDrawableOutside || (drawable3 = this.leftDrawable) == null) ? 0 : drawable3.getIntrinsicWidth() + this.drawablePadding) + ((!this.rightDrawableOutside || (drawable2 = this.rightDrawable) == null) ? 0 : drawable2.getIntrinsicWidth() + this.drawablePadding);
            if (this.rightDrawableOutside && (drawable = this.rightDrawable2) != null) {
                intrinsicWidth = drawable.getIntrinsicWidth() + this.drawablePadding;
            }
            size = Math.min(size, paddingLeft + intrinsicWidth);
        }
        setMeasuredDimension(size, size2);
        if ((this.gravity & 112) == 16) {
            this.offsetY = getPaddingTop() + ((((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - this.textHeight) / 2);
        } else {
            this.offsetY = getPaddingTop();
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.wasLayout = true;
    }

    public int getTextWidth() {
        int i = this.textWidth;
        if (this.rightDrawableInside) {
            intrinsicWidth = (this.rightDrawable2 != null ? (int) (r3.getIntrinsicWidth() * this.rightDrawableScale) : 0) + (this.rightDrawable != null ? (int) (r1.getIntrinsicWidth() * this.rightDrawableScale) : 0);
        }
        return i + intrinsicWidth;
    }

    public int getRightDrawableWidth() {
        if (this.rightDrawable == null) {
            return 0;
        }
        return (int) (this.drawablePadding + (r0.getIntrinsicWidth() * this.rightDrawableScale));
    }

    public int getTextHeight() {
        return this.textHeight;
    }

    public void setLeftDrawableTopPadding(int i) {
        this.leftDrawableTopPadding = i;
    }

    public void setRightDrawableTopPadding(int i) {
        this.rightDrawableTopPadding = i;
    }

    public void setLeftDrawable(int i) {
        setLeftDrawable(i == 0 ? null : getContext().getResources().getDrawable(i));
    }

    public Drawable getLeftDrawable() {
        return this.leftDrawable;
    }

    public void setRightDrawable(int i) {
        setRightDrawable(i == 0 ? null : getContext().getResources().getDrawable(i));
    }

    public void setMinWidth(int i) {
        this.minWidth = i;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.maxLines > 1) {
            super.setBackgroundDrawable(drawable);
        } else {
            this.wrapBackgroundDrawable = drawable;
        }
    }

    @Override // android.view.View
    public Drawable getBackground() {
        Drawable drawable = this.wrapBackgroundDrawable;
        return drawable != null ? drawable : super.getBackground();
    }

    public void setLeftDrawable(Drawable drawable) {
        Drawable drawable2 = this.leftDrawable;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.leftDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.rightDrawable || drawable == this.rightDrawable2 || drawable == this.leftDrawable || super.verifyDrawable(drawable);
    }

    public void replaceTextWithDrawable(Drawable drawable, String str) {
        Drawable drawable2 = this.replacedDrawable;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.replacedDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (!recreateLayoutMaybe()) {
            invalidate();
        }
        this.replacedText = str;
    }

    public void setMinusWidth(int i) {
        if (i == this.minusWidth) {
            return;
        }
        this.minusWidth = i;
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public Drawable getRightDrawable() {
        return this.rightDrawable;
    }

    public boolean setRightDrawable(Drawable drawable) {
        Drawable drawable2 = this.rightDrawable;
        if (drawable2 == drawable) {
            return false;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.rightDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (recreateLayoutMaybe()) {
            return true;
        }
        invalidate();
        return true;
    }

    public boolean setRightDrawable2(Drawable drawable) {
        Drawable drawable2 = this.rightDrawable2;
        if (drawable2 == drawable) {
            return false;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.rightDrawable2 = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (recreateLayoutMaybe()) {
            return true;
        }
        invalidate();
        return true;
    }

    public Drawable getRightDrawable2() {
        return this.rightDrawable2;
    }

    public void setRightDrawableScale(float f) {
        this.rightDrawableScale = f;
    }

    public void setSideDrawablesColor(int i) {
        Theme.setDrawableColor(this.rightDrawable, i);
        Theme.setDrawableColor(this.leftDrawable, i);
    }

    public boolean setText(CharSequence charSequence) {
        return setText(charSequence, false);
    }

    public boolean setText(CharSequence charSequence, boolean z) {
        CharSequence charSequence2 = this.text;
        if (charSequence2 == null && charSequence == null) {
            return false;
        }
        if (!z && charSequence2 != null && charSequence2.equals(charSequence)) {
            return false;
        }
        this.text = charSequence;
        this.currentScrollDelay = 500;
        recreateLayoutMaybe();
        return true;
    }

    public void resetScrolling() {
        this.scrollingOffset = 0.0f;
    }

    public void copyScrolling(SimpleTextView simpleTextView) {
        this.scrollingOffset = simpleTextView.scrollingOffset;
    }

    public void setDrawablePadding(int i) {
        if (this.drawablePadding == i) {
            return;
        }
        this.drawablePadding = i;
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    private boolean recreateLayoutMaybe() {
        if (this.wasLayout && getMeasuredHeight() != 0 && !this.buildFullLayout) {
            boolean zCreateLayout = createLayout(((getMaxTextWidth() - getPaddingLeft()) - getPaddingRight()) - this.minusWidth);
            if ((this.gravity & 112) == 16) {
                this.offsetY = (getMeasuredHeight() - this.textHeight) / 2;
                return zCreateLayout;
            }
            this.offsetY = getPaddingTop();
            return zCreateLayout;
        }
        requestLayout();
        return true;
    }

    public CharSequence getText() {
        CharSequence charSequence = this.text;
        return charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence;
    }

    public int getLineCount() {
        Layout layout = this.layout;
        int lineCount = layout != null ? layout.getLineCount() : 0;
        Layout layout2 = this.fullLayout;
        return layout2 != null ? lineCount + layout2.getLineCount() : lineCount;
    }

    public int getTextStartX() {
        int intrinsicWidth = 0;
        if (this.layout == null) {
            return 0;
        }
        Drawable drawable = this.leftDrawable;
        if (drawable != null && (this.gravity & 7) == 3) {
            intrinsicWidth = this.drawablePadding + drawable.getIntrinsicWidth();
        }
        Drawable drawable2 = this.replacedDrawable;
        if (drawable2 != null && this.replacingDrawableTextIndex < 0 && (this.gravity & 7) == 3) {
            intrinsicWidth += this.drawablePadding + drawable2.getIntrinsicWidth();
        }
        return getLeft() + this.offsetX + intrinsicWidth;
    }

    public TextPaint getTextPaint() {
        return this.textPaint;
    }

    public int getTextStartY() {
        if (this.layout == null) {
            return 0;
        }
        return getTop() + this.offsetY;
    }

    public void setRightPadding(int i) {
        if (this.paddingRight != i) {
            this.paddingRight = i;
            int maxTextWidth = ((getMaxTextWidth() - getPaddingLeft()) - getPaddingRight()) - this.minusWidth;
            Drawable drawable = this.leftDrawable;
            if (drawable != null && !this.leftDrawableOutside) {
                maxTextWidth = (maxTextWidth - drawable.getIntrinsicWidth()) - this.drawablePadding;
            }
            int intrinsicWidth = 0;
            if (!this.rightDrawableInside) {
                if (this.rightDrawable != null && !this.rightDrawableOutside) {
                    intrinsicWidth = (int) (r0.getIntrinsicWidth() * this.rightDrawableScale);
                    maxTextWidth = (maxTextWidth - intrinsicWidth) - this.drawablePadding;
                }
                if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                    intrinsicWidth = (int) (r0.getIntrinsicWidth() * this.rightDrawableScale);
                    maxTextWidth = (maxTextWidth - intrinsicWidth) - this.drawablePadding;
                }
            }
            if (this.replacedText != null && this.replacedDrawable != null) {
                int iIndexOf = this.text.toString().indexOf(this.replacedText);
                this.replacingDrawableTextIndex = iIndexOf;
                if (iIndexOf < 0) {
                    maxTextWidth = (maxTextWidth - this.replacedDrawable.getIntrinsicWidth()) - this.drawablePadding;
                }
            }
            if (this.canHideRightDrawable && intrinsicWidth != 0 && !this.rightDrawableOutside) {
                if (!this.text.equals(TextUtils.ellipsize(this.text, this.textPaint, maxTextWidth, TextUtils.TruncateAt.END))) {
                    this.rightDrawableHidden = true;
                    maxTextWidth = maxTextWidth + intrinsicWidth + this.drawablePadding;
                }
            }
            calcOffset(maxTextWidth);
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Canvas canvas2;
        int iSaveLayerAlpha;
        int intrinsicWidth;
        float f;
        float f2;
        int paddingTop;
        int i;
        int paddingTop2;
        int i2;
        int paddingTop3;
        int i3;
        float f3;
        float f4;
        float f5;
        int paddingTop4;
        int i4;
        int paddingTop5;
        int i5;
        float fDp;
        float f6;
        int paddingTop6;
        int i6;
        int paddingTop7;
        int i7;
        int paddingTop8;
        int i8;
        int paddingTop9;
        int i9;
        int paddingTop10;
        int i10;
        int intrinsicHeight;
        int paddingTop11;
        int i11;
        super.onDraw(canvas);
        this.layoutX = 0.0f;
        this.layoutY = 0.0f;
        boolean z = this.scrollNonFitText && (this.textDoesNotFit || this.scrollingOffset != 0.0f);
        if (z || this.ellipsizeByGradient) {
            canvas2 = canvas;
            iSaveLayerAlpha = canvas2.saveLayerAlpha(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
        } else {
            iSaveLayerAlpha = Integer.MIN_VALUE;
            canvas2 = canvas;
        }
        this.totalWidth = this.textWidth;
        Drawable drawable = this.leftDrawable;
        if (drawable != null && !this.leftDrawableOutside) {
            int i12 = (int) (-this.scrollingOffset);
            int i13 = this.gravity;
            if ((i13 & 7) == 1) {
                i12 += this.offsetX;
            }
            if ((i13 & 112) == 16) {
                paddingTop11 = (getMeasuredHeight() - this.leftDrawable.getIntrinsicHeight()) / 2;
                i11 = this.leftDrawableTopPadding;
            } else {
                paddingTop11 = getPaddingTop() + ((this.textHeight - this.leftDrawable.getIntrinsicHeight()) / 2);
                i11 = this.leftDrawableTopPadding;
            }
            int i14 = paddingTop11 + i11;
            Drawable drawable2 = this.leftDrawable;
            drawable2.setBounds(i12, i14, drawable2.getIntrinsicWidth() + i12, this.leftDrawable.getIntrinsicHeight() + i14);
            this.leftDrawable.draw(canvas2);
            int i15 = this.gravity;
            intrinsicWidth = ((i15 & 7) == 3 || (i15 & 7) == 1) ? this.drawablePadding + this.leftDrawable.getIntrinsicWidth() : 0;
            this.totalWidth += this.drawablePadding + this.leftDrawable.getIntrinsicWidth();
        } else {
            intrinsicWidth = (!this.leftDrawableOutside || drawable == null) ? 0 : drawable.getIntrinsicWidth() + this.drawablePadding;
        }
        Drawable drawable3 = this.replacedDrawable;
        if (drawable3 != null && this.replacedText != null) {
            int i16 = (int) ((-this.scrollingOffset) + this.replacingDrawableTextOffset);
            int i17 = this.gravity;
            if ((i17 & 7) == 1) {
                i16 += this.offsetX;
            }
            if ((i17 & 112) == 16) {
                intrinsicHeight = ((getMeasuredHeight() - this.replacedDrawable.getIntrinsicHeight()) / 2) + this.leftDrawableTopPadding;
            } else {
                intrinsicHeight = this.leftDrawableTopPadding + ((this.textHeight - drawable3.getIntrinsicHeight()) / 2);
            }
            Drawable drawable4 = this.replacedDrawable;
            drawable4.setBounds(i16, intrinsicHeight, drawable4.getIntrinsicWidth() + i16, this.replacedDrawable.getIntrinsicHeight() + intrinsicHeight);
            this.replacedDrawable.draw(canvas2);
            if (this.replacingDrawableTextIndex < 0) {
                int i18 = this.gravity;
                if ((i18 & 7) == 3 || (i18 & 7) == 1) {
                    intrinsicWidth += this.drawablePadding + this.replacedDrawable.getIntrinsicWidth();
                }
                this.totalWidth += this.drawablePadding + this.replacedDrawable.getIntrinsicWidth();
            }
        }
        int i19 = intrinsicWidth;
        if (this.rightDrawable == null || this.rightDrawableHidden || this.rightDrawableScale <= 0.0f || this.rightDrawableOutside || this.rightDrawableInside) {
            f = 0.0f;
        } else {
            int i20 = this.textWidth + i19 + this.drawablePadding + ((int) (-this.scrollingOffset));
            int i21 = this.gravity;
            if ((i21 & 7) == 1 || (i21 & 7) == 5) {
                i20 += this.offsetX;
            }
            int intrinsicWidth2 = (int) (r2.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight2 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
            if ((this.gravity & 112) == 16) {
                paddingTop10 = (getMeasuredHeight() - intrinsicHeight2) / 2;
                i10 = this.rightDrawableTopPadding;
            } else {
                paddingTop10 = getPaddingTop() + ((this.textHeight - intrinsicHeight2) / 2);
                i10 = this.rightDrawableTopPadding;
            }
            int i22 = paddingTop10 + i10;
            f = 0.0f;
            this.rightDrawable.setBounds(i20, i22, i20 + intrinsicWidth2, i22 + intrinsicHeight2);
            this.rightDrawableX = i20 + (intrinsicWidth2 >> 1);
            this.rightDrawableY = i22 + (intrinsicHeight2 >> 1);
            this.rightDrawable.draw(canvas2);
            this.totalWidth += this.drawablePadding + intrinsicWidth2;
        }
        if (this.rightDrawable2 != null && !this.rightDrawableHidden && this.rightDrawableScale > f && !this.rightDrawableOutside && !this.rightDrawableInside) {
            int intrinsicWidth3 = this.textWidth + i19 + this.drawablePadding + ((int) (-this.scrollingOffset));
            if (this.rightDrawable != null) {
                intrinsicWidth3 += ((int) (r4.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
            }
            int i23 = this.gravity;
            if ((i23 & 7) == 1 || (i23 & 7) == 5) {
                intrinsicWidth3 += this.offsetX;
            }
            int intrinsicWidth4 = (int) (this.rightDrawable2.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight3 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
            if ((this.gravity & 112) == 16) {
                paddingTop9 = (getMeasuredHeight() - intrinsicHeight3) / 2;
                i9 = this.rightDrawableTopPadding;
            } else {
                paddingTop9 = getPaddingTop() + ((this.textHeight - intrinsicHeight3) / 2);
                i9 = this.rightDrawableTopPadding;
            }
            int i24 = paddingTop9 + i9;
            this.rightDrawable2.setBounds(intrinsicWidth3, i24, intrinsicWidth3 + intrinsicWidth4, i24 + intrinsicHeight3);
            this.rightDrawable2X = intrinsicWidth3 + (intrinsicWidth4 >> 1);
            this.rightDrawable2Y = i24 + (intrinsicHeight3 >> 1);
            this.rightDrawable2.draw(canvas2);
            this.totalWidth += this.drawablePadding + intrinsicWidth4;
        }
        int iDp = this.totalWidth + AndroidUtilities.dp(16.0f);
        float f7 = this.scrollingOffset;
        if (f7 != f) {
            if (this.leftDrawable != null && !this.leftDrawableOutside) {
                int i25 = ((int) (-f7)) + iDp;
                if ((this.gravity & 112) == 16) {
                    paddingTop8 = (getMeasuredHeight() - this.leftDrawable.getIntrinsicHeight()) / 2;
                    i8 = this.leftDrawableTopPadding;
                } else {
                    paddingTop8 = getPaddingTop() + ((this.textHeight - this.leftDrawable.getIntrinsicHeight()) / 2);
                    i8 = this.leftDrawableTopPadding;
                }
                int i26 = paddingTop8 + i8;
                Drawable drawable5 = this.leftDrawable;
                drawable5.setBounds(i25, i26, drawable5.getIntrinsicWidth() + i25, this.leftDrawable.getIntrinsicHeight() + i26);
                this.leftDrawable.draw(canvas2);
            }
            if (this.rightDrawable == null || this.rightDrawableOutside) {
                f2 = 16.0f;
            } else {
                int intrinsicWidth5 = (int) (r2.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight4 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
                int i27 = this.textWidth + i19 + this.drawablePadding + ((int) (-this.scrollingOffset)) + iDp;
                if ((this.gravity & 112) == 16) {
                    paddingTop7 = (getMeasuredHeight() - intrinsicHeight4) / 2;
                    i7 = this.rightDrawableTopPadding;
                } else {
                    paddingTop7 = getPaddingTop() + ((this.textHeight - intrinsicHeight4) / 2);
                    i7 = this.rightDrawableTopPadding;
                }
                int i28 = paddingTop7 + i7;
                f2 = 16.0f;
                this.rightDrawable.setBounds(i27, i28, i27 + intrinsicWidth5, i28 + intrinsicHeight4);
                this.rightDrawableX = i27 + (intrinsicWidth5 >> 1);
                this.rightDrawableY = i28 + (intrinsicHeight4 >> 1);
                this.rightDrawable.draw(canvas2);
            }
            if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                int intrinsicWidth6 = (int) (r2.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight5 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
                int intrinsicWidth7 = this.textWidth + i19 + this.drawablePadding + ((int) (-this.scrollingOffset)) + iDp;
                if (this.rightDrawable != null) {
                    intrinsicWidth7 += ((int) (r5.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
                }
                if ((this.gravity & 112) == 16) {
                    paddingTop6 = (getMeasuredHeight() - intrinsicHeight5) / 2;
                    i6 = this.rightDrawableTopPadding;
                } else {
                    paddingTop6 = getPaddingTop() + ((this.textHeight - intrinsicHeight5) / 2);
                    i6 = this.rightDrawableTopPadding;
                }
                int i29 = paddingTop6 + i6;
                this.rightDrawable2.setBounds(intrinsicWidth7, i29, intrinsicWidth6 + intrinsicWidth7, intrinsicHeight5 + i29);
                this.rightDrawable2.draw(canvas2);
            }
        } else {
            f2 = 16.0f;
        }
        if (this.layout != null) {
            if (this.leftDrawableOutside || this.rightDrawableOutside || this.ellipsizeByGradient || this.paddingRight > 0) {
                canvas2.save();
                int maxTextWidth = getMaxTextWidth() - this.paddingRight;
                Drawable drawable6 = this.rightDrawable;
                canvas2.clipRect(i19, 0, maxTextWidth - AndroidUtilities.dp((drawable6 == null || (drawable6 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) || !this.rightDrawableOutside) ? f : 2.0f), getMeasuredHeight());
            }
            Emoji.emojiDrawingUseAlpha = this.usaAlphaForEmoji;
            if (this.wrapBackgroundDrawable != null) {
                int i30 = (int) ((this.offsetX + i19) - this.scrollingOffset);
                int i31 = this.textWidth;
                int i32 = i30 + (i31 / 2);
                int iMax = Math.max(i31 + getPaddingLeft() + getPaddingRight(), this.minWidth);
                int i33 = i32 - (iMax / 2);
                this.wrapBackgroundDrawable.setBounds(i33, 0, iMax + i33, getMeasuredHeight());
                this.wrapBackgroundDrawable.draw(canvas2);
            }
            if (this.offsetX + i19 != 0 || this.offsetY != 0 || this.scrollingOffset != f) {
                canvas2.save();
                canvas2.translate((this.offsetX + i19) - this.scrollingOffset, this.offsetY);
                this.layoutX += (this.offsetX + i19) - this.scrollingOffset;
                this.layoutY += this.offsetY;
            }
            drawLayout(canvas);
            if (this.partLayout != null && this.fullAlpha < 1.0f) {
                int alpha = this.textPaint.getAlpha();
                this.textPaint.setAlpha((int) ((1.0f - this.fullAlpha) * 255.0f));
                canvas2.save();
                if (this.partLayout.getText().length() == 1) {
                    fDp = AndroidUtilities.dp(this.fullTextMaxLines == 1 ? 0.5f : 4.0f);
                } else {
                    fDp = f;
                }
                if (this.layout.getLineLeft(0) != f) {
                    f6 = f;
                    canvas2.translate((-this.layout.getLineWidth(0)) + fDp, f6);
                } else {
                    f6 = f;
                    canvas2.translate(this.layout.getLineWidth(0) - fDp, f6);
                }
                float f8 = -this.fullLayoutLeftOffset;
                float f9 = this.fullAlpha;
                canvas2.translate((f8 * f9) + (this.fullLayoutLeftCharactersOffset * f9), f6);
                this.partLayout.draw(canvas2);
                canvas2.restore();
                this.textPaint.setAlpha(alpha);
            }
            if (this.fullLayout == null || this.fullAlpha <= 0.0f) {
                f3 = 0.0f;
            } else {
                int alpha2 = this.textPaint.getAlpha();
                this.textPaint.setAlpha((int) (this.fullAlpha * 255.0f));
                float f10 = -this.fullLayoutLeftOffset;
                float f11 = this.fullAlpha;
                float f12 = this.fullLayoutLeftCharactersOffset;
                f3 = 0.0f;
                canvas2.translate(((f10 * f11) + (f11 * f12)) - f12, 0.0f);
                this.fullLayout.draw(canvas2);
                this.textPaint.setAlpha(alpha2);
            }
            if (this.scrollingOffset != f3) {
                canvas2.translate(iDp, f3);
                drawLayout(canvas);
            }
            if (this.offsetX + i19 != 0 || this.offsetY != 0 || this.scrollingOffset != f3) {
                canvas2.restore();
            }
            if (this.rightDrawable == null || this.rightDrawableHidden || this.rightDrawableScale <= 0.0f || this.rightDrawableOutside || !this.rightDrawableInside) {
                f4 = 1.0f;
                f5 = 255.0f;
            } else {
                int i34 = this.textWidth + i19 + this.drawablePadding + ((int) (-this.scrollingOffset));
                int i35 = this.gravity;
                if ((i35 & 7) == 1 || (i35 & 7) == 5) {
                    i34 += this.offsetX;
                }
                int intrinsicWidth8 = (int) (r2.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight6 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
                if ((this.gravity & 112) == 16) {
                    paddingTop5 = (getMeasuredHeight() - intrinsicHeight6) / 2;
                    i5 = this.rightDrawableTopPadding;
                } else {
                    paddingTop5 = getPaddingTop() + ((this.textHeight - intrinsicHeight6) / 2);
                    i5 = this.rightDrawableTopPadding;
                }
                int i36 = paddingTop5 + i5;
                f4 = 1.0f;
                f5 = 255.0f;
                this.rightDrawable.setBounds(i34, i36, i34 + intrinsicWidth8, i36 + intrinsicHeight6);
                this.rightDrawableX = i34 + (intrinsicWidth8 >> 1);
                this.rightDrawableY = i36 + (intrinsicHeight6 >> 1);
                this.rightDrawable.draw(canvas2);
                this.totalWidth += this.drawablePadding + intrinsicWidth8;
            }
            if (this.rightDrawable2 != null && !this.rightDrawableHidden && this.rightDrawableScale > 0.0f && !this.rightDrawableOutside && this.rightDrawableInside) {
                int intrinsicWidth9 = this.textWidth + i19 + this.drawablePadding + ((int) (-this.scrollingOffset));
                if (this.rightDrawable != null) {
                    intrinsicWidth9 += ((int) (r3.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
                }
                int i37 = this.gravity;
                if ((i37 & 7) == 1 || (i37 & 7) == 5) {
                    intrinsicWidth9 += this.offsetX;
                }
                int intrinsicWidth10 = (int) (this.rightDrawable2.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight7 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
                if ((this.gravity & 112) == 16) {
                    paddingTop4 = (getMeasuredHeight() - intrinsicHeight7) / 2;
                    i4 = this.rightDrawableTopPadding;
                } else {
                    paddingTop4 = getPaddingTop() + ((this.textHeight - intrinsicHeight7) / 2);
                    i4 = this.rightDrawableTopPadding;
                }
                int i38 = paddingTop4 + i4;
                this.rightDrawable2.setBounds(intrinsicWidth9, i38, intrinsicWidth9 + intrinsicWidth10, i38 + intrinsicHeight7);
                this.rightDrawable2X = intrinsicWidth9 + (intrinsicWidth10 >> 1);
                this.rightDrawable2Y = i38 + (intrinsicHeight7 >> 1);
                this.rightDrawable2.draw(canvas2);
                this.totalWidth += this.drawablePadding + intrinsicWidth10;
            }
            if (z) {
                if (this.scrollingOffset < AndroidUtilities.dp(10.0f)) {
                    this.fadePaint.setAlpha((int) ((this.scrollingOffset / AndroidUtilities.dp(10.0f)) * f5));
                } else if (this.scrollingOffset > (this.totalWidth + AndroidUtilities.dp(f2)) - AndroidUtilities.dp(10.0f)) {
                    this.fadePaint.setAlpha((int) ((f4 - ((this.scrollingOffset - ((this.totalWidth + AndroidUtilities.dp(f2)) - AndroidUtilities.dp(10.0f))) / AndroidUtilities.dp(10.0f))) * f5));
                } else {
                    this.fadePaint.setAlpha(255);
                }
                canvas2.drawRect(i19, 0.0f, AndroidUtilities.dp(6.0f) + i19, getMeasuredHeight(), this.fadePaint);
                canvas2.save();
                canvas2.translate((getMaxTextWidth() - this.paddingRight) - AndroidUtilities.dp(6.0f), 0.0f);
                canvas2.drawRect(0.0f, 0.0f, AndroidUtilities.dp(6.0f), getMeasuredHeight(), this.fadePaintBack);
                canvas2.restore();
            } else if (this.ellipsizeByGradient && this.textDoesNotFit && this.fadeEllpsizePaint != null) {
                canvas2.save();
                updateFadePaints();
                if (!this.ellipsizeByGradientLeft) {
                    int maxTextWidth2 = (getMaxTextWidth() - this.paddingRight) - this.fadeEllpsizePaintWidth;
                    Drawable drawable7 = this.rightDrawable;
                    canvas2.translate(maxTextWidth2 - AndroidUtilities.dp((drawable7 == null || (drawable7 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) || !this.rightDrawableOutside) ? 0.0f : 2.0f), 0.0f);
                }
                canvas2.drawRect(i19, 0.0f, this.fadeEllpsizePaintWidth, getMeasuredHeight(), this.fadeEllpsizePaint);
                canvas2.restore();
            }
            updateScrollAnimation();
            Emoji.emojiDrawingUseAlpha = true;
            if (this.leftDrawableOutside || this.rightDrawableOutside || this.ellipsizeByGradient || this.paddingRight > 0) {
                canvas2.restore();
            }
        }
        if (z || this.ellipsizeByGradient) {
            canvas2.restoreToCount(iSaveLayerAlpha);
        }
        Drawable drawable8 = this.leftDrawable;
        if (drawable8 != null && this.leftDrawableOutside) {
            int intrinsicWidth11 = drawable8.getIntrinsicWidth();
            int intrinsicHeight8 = this.leftDrawable.getIntrinsicHeight();
            if ((this.gravity & 112) == 16) {
                paddingTop3 = (getMeasuredHeight() - intrinsicHeight8) / 2;
                i3 = this.leftDrawableTopPadding;
            } else {
                paddingTop3 = getPaddingTop() + ((this.textHeight - intrinsicHeight8) / 2);
                i3 = this.leftDrawableTopPadding;
            }
            int i39 = paddingTop3 + i3;
            this.leftDrawable.setBounds(0, i39, intrinsicWidth11, intrinsicHeight8 + i39);
            this.leftDrawable.draw(canvas2);
        }
        if (this.rightDrawable != null && this.rightDrawableOutside) {
            int i40 = this.textWidth + i19 + this.drawablePadding;
            float f13 = this.scrollingOffset;
            int iMin = Math.min(i40 + (f13 == 0.0f ? -iDp : (int) (-f13)) + iDp, (getMaxTextWidth() - this.paddingRight) + this.drawablePadding);
            int intrinsicWidth12 = (int) (this.rightDrawable.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight9 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
            if ((this.gravity & 112) == 16) {
                paddingTop2 = (getMeasuredHeight() - intrinsicHeight9) / 2;
                i2 = this.rightDrawableTopPadding;
            } else {
                paddingTop2 = getPaddingTop() + ((this.textHeight - intrinsicHeight9) / 2);
                i2 = this.rightDrawableTopPadding;
            }
            int i41 = paddingTop2 + i2;
            this.rightDrawable.setBounds(iMin, i41, iMin + intrinsicWidth12, i41 + intrinsicHeight9);
            this.rightDrawableX = iMin + (intrinsicWidth12 >> 1);
            this.rightDrawableY = i41 + (intrinsicHeight9 >> 1);
            this.rightDrawable.draw(canvas2);
        }
        if (this.rightDrawable2 == null || !this.rightDrawableOutside) {
            return;
        }
        int i42 = i19 + this.textWidth + this.drawablePadding;
        float f14 = this.scrollingOffset;
        int iMin2 = Math.min(i42 + (f14 == 0.0f ? -iDp : (int) (-f14)) + iDp, (getMaxTextWidth() - this.paddingRight) + this.drawablePadding);
        if (this.rightDrawable != null) {
            iMin2 += ((int) (r3.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
        }
        int intrinsicWidth13 = (int) (this.rightDrawable2.getIntrinsicWidth() * this.rightDrawableScale);
        int intrinsicHeight10 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
        if ((this.gravity & 112) == 16) {
            paddingTop = (getMeasuredHeight() - intrinsicHeight10) / 2;
            i = this.rightDrawableTopPadding;
        } else {
            paddingTop = getPaddingTop() + ((this.textHeight - intrinsicHeight10) / 2);
            i = this.rightDrawableTopPadding;
        }
        int i43 = paddingTop + i;
        this.rightDrawable2.setBounds(iMin2, i43, iMin2 + intrinsicWidth13, i43 + intrinsicHeight10);
        this.rightDrawable2X = iMin2 + (intrinsicWidth13 >> 1);
        this.rightDrawable2Y = i43 + (intrinsicHeight10 >> 1);
        this.rightDrawable2.draw(canvas2);
    }

    public int getRightDrawableX() {
        return this.rightDrawableX;
    }

    public int getRightDrawableY() {
        return this.rightDrawableY;
    }

    public int getMaxTextWidth() {
        Drawable drawable;
        Drawable drawable2;
        int intrinsicWidth = 0;
        int measuredWidth = getMeasuredWidth() - ((!this.rightDrawableOutside || (drawable2 = this.rightDrawable) == null) ? 0 : drawable2.getIntrinsicWidth() + this.drawablePadding);
        if (this.rightDrawableOutside && (drawable = this.rightDrawable2) != null) {
            intrinsicWidth = this.drawablePadding + drawable.getIntrinsicWidth();
        }
        return measuredWidth - intrinsicWidth;
    }

    public float getExactWidth() {
        return (getPaint().measureText(getText().toString()) + getSideDrawablesSize()) - ((this.leftDrawable == null && this.rightDrawable == null && this.rightDrawable2 == null) ? 0 : this.drawablePadding);
    }

    private void drawLayout(Canvas canvas) {
        if (this.fullAlpha > 0.0f && this.fullLayoutLeftOffset != 0) {
            canvas.save();
            float f = -this.fullLayoutLeftOffset;
            float f2 = this.fullAlpha;
            canvas.translate((f * f2) + (this.fullLayoutLeftCharactersOffset * f2), 0.0f);
            float f3 = this.layoutX;
            float f4 = -this.fullLayoutLeftOffset;
            float f5 = this.fullAlpha;
            this.layoutX = f3 + (f4 * f5) + (this.fullLayoutLeftCharactersOffset * f5);
            canvas.save();
            clipOutSpoilers(canvas);
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.emojiStack;
            if (emojiGroupedSpans != null) {
                emojiGroupedSpans.clearPositions();
            }
            this.layout.draw(canvas);
            canvas.restore();
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.emojiStack, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f, this.emojiStackColorFilter);
            drawSpoilers(canvas);
            canvas.restore();
            return;
        }
        canvas.save();
        clipOutSpoilers(canvas);
        AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans2 = this.emojiStack;
        if (emojiGroupedSpans2 != null) {
            emojiGroupedSpans2.clearPositions();
        }
        this.layout.draw(canvas);
        canvas.restore();
        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.emojiStack, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f, this.emojiStackColorFilter);
        drawSpoilers(canvas);
    }

    private void clipOutSpoilers(Canvas canvas) {
        this.path.rewind();
        Iterator it = this.spoilers.iterator();
        while (it.hasNext()) {
            Rect bounds = ((SpoilerEffect) it.next()).getBounds();
            this.path.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
        }
        canvas.clipPath(this.path, Region.Op.DIFFERENCE);
    }

    private void drawSpoilers(Canvas canvas) {
        Iterator it = this.spoilers.iterator();
        while (it.hasNext()) {
            ((SpoilerEffect) it.next()).draw(canvas);
        }
    }

    private void updateScrollAnimation() {
        float fDp;
        if (this.scrollNonFitText) {
            if (this.textDoesNotFit || this.scrollingOffset != 0.0f) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j = jElapsedRealtime - this.lastUpdateTime;
                if (j > 17) {
                    j = 17;
                }
                int i = this.currentScrollDelay;
                if (i > 0) {
                    this.currentScrollDelay = (int) (((long) i) - j);
                } else {
                    int iDp = this.totalWidth + AndroidUtilities.dp(16.0f);
                    if (this.scrollingOffset < AndroidUtilities.dp(100.0f)) {
                        fDp = ((this.scrollingOffset / AndroidUtilities.dp(100.0f)) * 20.0f) + 30.0f;
                    } else {
                        fDp = this.scrollingOffset >= ((float) (iDp - AndroidUtilities.dp(100.0f))) ? 50.0f - (((this.scrollingOffset - (iDp - AndroidUtilities.dp(100.0f))) / AndroidUtilities.dp(100.0f)) * 20.0f) : 50.0f;
                    }
                    float fDp2 = this.scrollingOffset + ((j / 1000.0f) * AndroidUtilities.dp(fDp));
                    this.scrollingOffset = fDp2;
                    this.lastUpdateTime = jElapsedRealtime;
                    if (fDp2 > iDp) {
                        this.scrollingOffset = 0.0f;
                        this.currentScrollDelay = 500;
                    }
                }
                invalidate();
            }
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = this.leftDrawable;
        if (drawable == drawable2) {
            invalidate(drawable2.getBounds());
            return;
        }
        Drawable drawable3 = this.rightDrawable;
        if (drawable == drawable3) {
            invalidate(drawable3.getBounds());
            return;
        }
        Drawable drawable4 = this.rightDrawable2;
        if (drawable == drawable4) {
            invalidate(drawable4.getBounds());
            return;
        }
        Drawable drawable5 = this.replacedDrawable;
        if (drawable == drawable5) {
            invalidate(drawable5.getBounds());
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setVisibleToUser(true);
        accessibilityNodeInfo.setClassName("android.widget.TextView");
        accessibilityNodeInfo.setText(this.text);
    }

    public void setFullLayoutAdditionalWidth(int i, int i2) {
        if (this.fullLayoutAdditionalWidth == i && this.fullLayoutLeftOffset == i2) {
            return;
        }
        this.fullLayoutAdditionalWidth = i;
        this.fullLayoutLeftOffset = i2;
        createLayout(((getMaxTextWidth() - getPaddingLeft()) - getPaddingRight()) - this.minusWidth);
    }

    public void setFullTextMaxLines(int i) {
        this.fullTextMaxLines = i;
    }

    public int getTextColor() {
        return this.textPaint.getColor();
    }

    public void setCanHideRightDrawable(boolean z) {
        this.canHideRightDrawable = z;
    }

    public void setRightDrawableOutside(boolean z) {
        this.rightDrawableOutside = z;
    }

    public void setLeftDrawableOutside(boolean z) {
        this.leftDrawableOutside = z;
    }

    public void setRightDrawableInside(boolean z) {
        this.rightDrawableInside = z;
    }

    public boolean getRightDrawableOutside() {
        return this.rightDrawableOutside;
    }

    public void setRightDrawableOnClick(View.OnClickListener onClickListener) {
        this.rightDrawableOnClickListener = onClickListener;
    }

    public void setRightDrawable2OnClick(View.OnClickListener onClickListener) {
        this.rightDrawable2OnClickListener = onClickListener;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zHandleDrawableTouch;
        if (this.rightDrawableOnClickListener == null || this.rightDrawable == null) {
            zHandleDrawableTouch = false;
        } else {
            AndroidUtilities.rectTmp.set(this.rightDrawableX - AndroidUtilities.dp(16.0f), this.rightDrawableY - AndroidUtilities.dp(16.0f), this.rightDrawableX + AndroidUtilities.dp(16.0f), this.rightDrawableY + AndroidUtilities.dp(16.0f));
            zHandleDrawableTouch = handleDrawableTouch(motionEvent, this.rightDrawable, this.rightDrawableOnClickListener, true);
        }
        if (this.rightDrawable2OnClickListener != null && this.rightDrawable2 != null) {
            AndroidUtilities.rectTmp.set(this.rightDrawable2X - AndroidUtilities.dp(16.0f), this.rightDrawable2Y - AndroidUtilities.dp(16.0f), this.rightDrawable2X + AndroidUtilities.dp(16.0f), this.rightDrawable2Y + AndroidUtilities.dp(16.0f));
            zHandleDrawableTouch |= handleDrawableTouch(motionEvent, this.rightDrawable2, this.rightDrawable2OnClickListener, false);
        }
        return super.onTouchEvent(motionEvent) || zHandleDrawableTouch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (this.maybeClickDrawable1) {
            this.maybeClickDrawable1 = false;
        } else if (this.maybeClickDrawable2) {
            this.maybeClickDrawable2 = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean handleDrawableTouch(MotionEvent motionEvent, Drawable drawable, View.OnClickListener onClickListener, boolean z) {
        boolean z2 = z ? this.maybeClickDrawable1 : this.maybeClickDrawable2;
        float x = z ? this.touchDownXDrawable1 : this.touchDownXDrawable2;
        float y = z ? this.touchDownYDrawable1 : this.touchDownYDrawable2;
        if (motionEvent.getAction() == 0 && AndroidUtilities.rectTmp.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            x = motionEvent.getX();
            y = motionEvent.getY();
            getParent().requestDisallowInterceptTouchEvent(true);
            if (drawable instanceof PressableDrawable) {
                ((PressableDrawable) drawable).setPressed(true);
            }
            AndroidUtilities.runOnUIThread(this.longPressRunnable, 500L);
            z2 = true;
        } else if (motionEvent.getAction() == 2 && z2) {
            if (Math.abs(motionEvent.getX() - x) >= AndroidUtilities.touchSlop || Math.abs(motionEvent.getY() - y) >= AndroidUtilities.touchSlop) {
                AndroidUtilities.cancelRunOnUIThread(this.longPressRunnable);
                getParent().requestDisallowInterceptTouchEvent(false);
                if (drawable instanceof PressableDrawable) {
                    ((PressableDrawable) drawable).setPressed(false);
                }
                z2 = false;
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            AndroidUtilities.cancelRunOnUIThread(this.longPressRunnable);
            if (z2 && motionEvent.getAction() == 1) {
                onClickListener.onClick(this);
                if (drawable instanceof PressableDrawable) {
                    ((PressableDrawable) drawable).setPressed(false);
                }
            }
            getParent().requestDisallowInterceptTouchEvent(false);
            z2 = false;
        }
        if (z) {
            this.maybeClickDrawable1 = z2;
            this.touchDownXDrawable1 = x;
            this.touchDownYDrawable1 = y;
            return z2;
        }
        this.maybeClickDrawable2 = z2;
        this.touchDownXDrawable2 = x;
        this.touchDownYDrawable2 = y;
        return z2;
    }
}
