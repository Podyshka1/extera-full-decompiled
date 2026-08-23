package org.telegram.ui.Stories.recorder;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ReplacementSpan;
import android.util.StateSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.BaseCell;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LinkPath;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda72;

/* JADX INFO: loaded from: classes3.dex */
public class HintView2 extends View {
    private float arrowHalfWidth;
    private float arrowHeight;
    private float arrowX;
    private float arrowY;
    protected final Paint backgroundPaint;
    private float blurAlpha;
    private Paint blurBackgroundPaint;
    private int blurBitmapHeight;
    private Matrix blurBitmapMatrix;
    private BitmapShader blurBitmapShader;
    private int blurBitmapWidth;
    private int[] blurPos;
    private float blurScale;
    private final ButtonBounce bounce;
    private ValueAnimator bounceAnimator;
    private float bounceT;
    private float bounceX;
    private float bounceY;
    private final RectF bounds;
    private final Rect boundsWithArrow;
    private boolean closeButton;
    private Drawable closeButtonDrawable;
    private float closeButtonMargin;
    private Paint cutSelectorPaint;
    private int direction;
    private boolean drawingMyBlur;
    private long duration;
    private AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans;
    private boolean firstDraw;
    private boolean flicker;
    private final RectF flickerBounds;
    private Paint flickerFillPaint;
    private LinearGradient flickerGradient;
    private Matrix flickerGradientMatrix;
    private long flickerStart;
    private LinearGradient flickerStrokeGradient;
    private Paint flickerStrokePaint;
    private Path flickerStrokePath;
    private float flickerStrokePathExtrude;
    private boolean hideByTouch;
    private final Runnable hideRunnable;
    private Drawable icon;
    private int iconHeight;
    private boolean iconLeft;
    private int iconMargin;
    private float iconTx;
    private float iconTy;
    private int iconWidth;
    private final RectF innerPadding;
    private float joint;
    private float jointTranslate;
    private LinkSpanDrawable.LinkCollector links;
    private boolean multiline;
    private Runnable onHidden;
    private LinkSpanDrawable.LinksTextView.OnLinkPress onLongPressListener;
    private LinkSpanDrawable.LinksTextView.OnLinkPress onPressListener;
    private final RectF oval;
    protected final Path path;
    private float pathLastHeight;
    private float pathLastWidth;
    private boolean pathSet;
    private LinkSpanDrawable pressedLink;
    private boolean repeatedBounce;
    private boolean roundWithCornerEffect;
    protected float rounding;
    private Drawable selectorDrawable;
    private AnimatedFloat show;
    private boolean shown;
    private AnimatedTextView.AnimatedTextDrawable textDrawable;
    private StaticLayout textLayout;
    private Layout.Alignment textLayoutAlignment;
    private float textLayoutHeight;
    private float textLayoutLeft;
    private float textLayoutWidth;
    private int textMaxWidth;
    private final TextPaint textPaint;
    private CharSequence textToSet;
    private float textX;
    private float textY;
    private boolean useAlpha;
    private boolean useBlur;
    private boolean useScale;
    private boolean useTranslate;

    public HintView2 setArrowSize(float f, float f2) {
        this.arrowHalfWidth = AndroidUtilities.dpf2(f);
        this.arrowHeight = AndroidUtilities.dpf2(f2);
        return this;
    }

    public HintView2(Context context) {
        this(context, 0);
    }

    public HintView2(Context context, int i) {
        super(context);
        this.joint = 0.5f;
        this.jointTranslate = 0.0f;
        this.duration = 3500L;
        this.useScale = true;
        this.useTranslate = true;
        this.useAlpha = true;
        this.useBlur = false;
        this.textMaxWidth = -1;
        this.roundWithCornerEffect = true;
        this.rounding = AndroidUtilities.dp(8.0f);
        this.innerPadding = new RectF(AndroidUtilities.dp(11.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(11.0f), AndroidUtilities.dp(7.0f));
        this.closeButtonMargin = AndroidUtilities.dp(2.0f);
        this.arrowHalfWidth = AndroidUtilities.dp(7.0f);
        this.arrowHeight = AndroidUtilities.dp(6.0f);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        this.blurScale = 12.0f;
        this.blurAlpha = 0.25f;
        this.textPaint = new TextPaint(1);
        this.textLayoutAlignment = Layout.Alignment.ALIGN_NORMAL;
        this.links = new LinkSpanDrawable.LinkCollector();
        this.hideByTouch = true;
        this.repeatedBounce = true;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.show = new AnimatedFloat(this, 350L, cubicBezierInterpolator);
        this.iconMargin = AndroidUtilities.dp(2.0f);
        this.hideRunnable = new ProfileActivity$$ExternalSyntheticLambda72(this);
        this.bounceT = 1.0f;
        this.bounce = new ButtonBounce(this, 2.0f, 5.0f);
        this.boundsWithArrow = new Rect();
        this.bounds = new RectF();
        this.flickerBounds = new RectF();
        this.path = new Path();
        this.firstDraw = true;
        this.oval = new RectF();
        this.direction = i;
        paint.setColor(-433575896);
        paint.setPathEffect(new CornerPathEffect(this.rounding));
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, false);
        this.textDrawable = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.4f, 0L, 320L, cubicBezierInterpolator);
        this.textDrawable.setCallback(this);
        setTextSize(14.0f);
        setTextColor(-1);
    }

    public HintView2 setDirection(int i) {
        this.direction = i;
        return this;
    }

    public HintView2 setRounding(float f) {
        this.rounding = AndroidUtilities.dp(f);
        this.backgroundPaint.setPathEffect(this.roundWithCornerEffect ? new CornerPathEffect(this.rounding) : null);
        Paint paint = this.cutSelectorPaint;
        if (paint != null) {
            paint.setPathEffect(this.roundWithCornerEffect ? new CornerPathEffect(this.rounding) : null);
        }
        Paint paint2 = this.blurBackgroundPaint;
        if (paint2 != null) {
            paint2.setPathEffect(this.roundWithCornerEffect ? new CornerPathEffect(this.rounding) : null);
        }
        return this;
    }

    public HintView2 setRoundingWithCornerEffect(boolean z) {
        this.roundWithCornerEffect = z;
        this.backgroundPaint.setPathEffect(z ? new CornerPathEffect(this.rounding) : null);
        return this;
    }

    public HintView2 setFlicker(float f, int i) {
        this.flicker = true;
        this.flickerStart = System.currentTimeMillis();
        this.flickerStrokePath = new Path();
        this.flickerStrokePathExtrude = AndroidUtilities.dpf2(f) / 2.0f;
        this.flickerFillPaint = new Paint(1);
        this.flickerStrokePaint = new Paint(1);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(64.0f), 0.0f, new int[]{Theme.multAlpha(i, 0.0f), Theme.multAlpha(i, 1.0f), Theme.multAlpha(i, 0.0f)}, new float[]{0.0f, 0.5f, 1.0f}, tileMode);
        this.flickerStrokeGradient = linearGradient;
        this.flickerStrokePaint.setShader(linearGradient);
        this.flickerGradient = new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(64.0f), 0.0f, new int[]{Theme.multAlpha(i, 0.0f), Theme.multAlpha(i, 0.5f), Theme.multAlpha(i, 0.0f)}, new float[]{0.0f, 0.5f, 1.0f}, tileMode);
        this.flickerGradientMatrix = new Matrix();
        this.flickerFillPaint.setShader(this.flickerGradient);
        this.flickerStrokePaint.setStyle(Paint.Style.STROKE);
        this.flickerStrokePaint.setStrokeJoin(Paint.Join.ROUND);
        this.flickerStrokePaint.setStrokeCap(Paint.Cap.ROUND);
        this.flickerStrokePaint.setStrokeWidth(AndroidUtilities.dpf2(f));
        return this;
    }

    public HintView2 setMultilineText(boolean z) {
        this.multiline = z;
        if (z) {
            this.innerPadding.set(AndroidUtilities.dp(15.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(8.0f));
            this.closeButtonMargin = AndroidUtilities.dp(6.0f);
            return this;
        }
        this.innerPadding.set(AndroidUtilities.dp(11.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(this.closeButton ? 15.0f : 11.0f), AndroidUtilities.dp(7.0f));
        this.closeButtonMargin = AndroidUtilities.dp(2.0f);
        return this;
    }

    public HintView2 setText(CharSequence charSequence) {
        if (getMeasuredWidth() < 0) {
            this.textToSet = charSequence;
            return this;
        }
        if (!this.multiline) {
            this.textDrawable.setText(charSequence, false);
            return this;
        }
        makeLayout(charSequence, getTextMaxWidth());
        return this;
    }

    public CharSequence getText() {
        CharSequence charSequence = this.textToSet;
        if (charSequence != null) {
            return charSequence;
        }
        if (!this.multiline) {
            return this.textDrawable.getText();
        }
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            return staticLayout.getText();
        }
        return null;
    }

    public HintView2 setText(CharSequence charSequence, boolean z) {
        if (getMeasuredWidth() < 0) {
            this.textToSet = charSequence;
            return this;
        }
        this.textDrawable.setText(charSequence, !LocaleController.isRTL && z);
        return this;
    }

    public HintView2 allowBlur(boolean z) {
        this.useBlur = z && LiteMode.isEnabled(256);
        return this;
    }

    public HintView2 setTextSize(float f) {
        this.textDrawable.setTextSize(AndroidUtilities.dpf2(f));
        this.textPaint.setTextSize(AndroidUtilities.dpf2(f));
        return this;
    }

    public HintView2 setTextTypeface(Typeface typeface) {
        this.textDrawable.setTypeface(typeface);
        this.textPaint.setTypeface(typeface);
        return this;
    }

    public HintView2 setCloseButton(boolean z) {
        this.closeButton = z;
        if (!this.multiline) {
            this.innerPadding.set(AndroidUtilities.dp(11.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(this.closeButton ? 15.0f : 11.0f), AndroidUtilities.dp(7.0f));
        }
        return this;
    }

    public HintView2 setMaxWidth(float f) {
        this.textMaxWidth = AndroidUtilities.dp(f);
        return this;
    }

    public HintView2 setMaxWidthPx(int i) {
        this.textMaxWidth = i;
        return this;
    }

    public HintView2 setIcon(int i) {
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i, _UrlKt.FRAGMENT_ENCODE_SET + i, AndroidUtilities.dp(34.0f), AndroidUtilities.dp(34.0f));
        rLottieDrawable.start();
        return setIcon(rLottieDrawable);
    }

    public HintView2 setIcon(Drawable drawable) {
        Drawable drawable2 = this.icon;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.icon = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            Drawable drawable3 = this.icon;
            if (drawable3 instanceof RLottieDrawable) {
                this.duration = Math.max(this.duration, ((RLottieDrawable) drawable3).getDuration());
            }
            this.iconWidth = this.icon.getIntrinsicWidth();
            this.iconHeight = this.icon.getIntrinsicHeight();
            this.iconLeft = true;
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static float measureCorrectly(CharSequence charSequence, TextPaint textPaint) {
        float fMeasureText = 0.0f;
        if (charSequence == null) {
            return 0.0f;
        }
        if (!(charSequence instanceof Spanned)) {
            return textPaint.measureText(charSequence.toString());
        }
        Spanned spanned = (Spanned) charSequence;
        TypefaceSpan[] typefaceSpanArr = (TypefaceSpan[]) spanned.getSpans(0, charSequence.length(), TypefaceSpan.class);
        ReplacementSpan[] replacementSpanArr = (ReplacementSpan[]) spanned.getSpans(0, charSequence.length(), ReplacementSpan.class);
        int i = 0;
        int iMax = 0;
        TextPaint textPaint2 = textPaint;
        while (i < replacementSpanArr.length) {
            ReplacementSpan replacementSpan = replacementSpanArr[i];
            TextPaint textPaint3 = textPaint2;
            iMax = (int) (iMax + Math.max(0.0f, replacementSpan.getSize(textPaint3, r10, r11, r12, textPaint2.getFontMetricsInt()) - textPaint3.measureText(spanned, spanned.getSpanStart(replacementSpan), spanned.getSpanEnd(replacementSpan))));
            i++;
            textPaint2 = textPaint3;
            charSequence = charSequence;
        }
        CharSequence charSequence2 = charSequence;
        TextPaint textPaint4 = textPaint2;
        if (typefaceSpanArr == null || typefaceSpanArr.length == 0) {
            return textPaint4.measureText(charSequence2.toString()) + iMax;
        }
        int iMax2 = 0;
        for (int i2 = 0; i2 < typefaceSpanArr.length; i2++) {
            int spanStart = spanned.getSpanStart(typefaceSpanArr[i2]);
            int spanEnd = spanned.getSpanEnd(typefaceSpanArr[i2]);
            int iMax3 = Math.max(iMax2, spanStart);
            if (iMax3 - iMax2 > 0) {
                fMeasureText += textPaint4.measureText(spanned, iMax2, iMax3);
            }
            iMax2 = Math.max(iMax3, spanEnd);
            if (iMax2 - iMax3 > 0) {
                Typeface typeface = textPaint4.getTypeface();
                textPaint4.setTypeface(typefaceSpanArr[i2].getTypeface());
                fMeasureText += textPaint4.measureText(spanned, iMax3, iMax2);
                textPaint4.setTypeface(typeface);
            }
        }
        int iMax4 = Math.max(iMax2, charSequence2.length());
        if (iMax4 - iMax2 > 0) {
            fMeasureText += textPaint4.measureText(spanned, iMax2, iMax4);
        }
        return fMeasureText + iMax;
    }

    public static int cutInFancyHalf(CharSequence charSequence, TextPaint textPaint) {
        if (TextUtils.indexOf(charSequence, '\n') >= 0) {
            return Integer.MAX_VALUE;
        }
        int length = charSequence.length() / 2;
        float f = 0.0f;
        int i = 0;
        int i2 = -1;
        float fMeasureCorrectly = 0.0f;
        float f2 = Float.MAX_VALUE;
        float fMeasureCorrectly2 = 0.0f;
        while (i < 10) {
            while (length > 0 && length < charSequence.length() && charSequence.charAt(length) != ' ') {
                length += i2;
            }
            fMeasureCorrectly2 = measureCorrectly(charSequence.subSequence(0, length), textPaint);
            fMeasureCorrectly = measureCorrectly(AndroidUtilities.getTrimmedString(charSequence.subSequence(length, charSequence.length())), textPaint);
            if (fMeasureCorrectly2 == f && fMeasureCorrectly == f2) {
                break;
            }
            if (fMeasureCorrectly2 < fMeasureCorrectly) {
                length++;
                i2 = 1;
            } else {
                length--;
                i2 = -1;
            }
            if (length <= 0 || length >= charSequence.length()) {
                break;
            }
            i++;
            f = fMeasureCorrectly2;
            f2 = fMeasureCorrectly;
        }
        return (int) Math.ceil(Math.max(fMeasureCorrectly2, fMeasureCorrectly));
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
    
        return android.text.TextUtils.concat(org.telegram.messenger.AndroidUtilities.getTrimmedString(r12.subSequence(0, r1)), "\n", org.telegram.messenger.AndroidUtilities.getTrimmedString(r12.subSequence(r1, r12.length())));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CharSequence cutInFancyHalfText(CharSequence charSequence, TextPaint textPaint) {
        int i;
        if (TextUtils.indexOf(charSequence, '\n') >= 0) {
            return charSequence;
        }
        int length = charSequence.length() / 2;
        int i2 = -1;
        int i3 = 0;
        float f = Float.MAX_VALUE;
        float f2 = 0.0f;
        int i4 = length;
        while (true) {
            int i5 = 1;
            if (i3 >= 10) {
                break;
            }
            length = i4;
            while (length > 0 && length < charSequence.length() && charSequence.charAt(length) != ' ') {
                length += i2;
            }
            float fMeasureCorrectly = measureCorrectly(charSequence.subSequence(0, length), textPaint);
            float fMeasureCorrectly2 = measureCorrectly(AndroidUtilities.getTrimmedString(charSequence.subSequence(length, charSequence.length())), textPaint);
            if (fMeasureCorrectly == f2 && fMeasureCorrectly2 == f) {
                break;
            }
            if (fMeasureCorrectly < fMeasureCorrectly2) {
                i = length + 1;
            } else {
                i = length - 1;
                i5 = -1;
            }
            if (i <= 0 || i >= charSequence.length()) {
                break;
            }
            i3++;
            int i6 = i;
            f2 = fMeasureCorrectly;
            i4 = i6;
            f = fMeasureCorrectly2;
            i2 = i5;
        }
        return charSequence;
    }

    public HintView2 useScale(boolean z) {
        this.useScale = z;
        return this;
    }

    public HintView2 setDuration(long j) {
        this.duration = j;
        return this;
    }

    public HintView2 setAnimatedTextHacks(boolean z, boolean z2, boolean z3) {
        this.textDrawable.setHacks(z, z2, z3);
        return this;
    }

    public HintView2 setInnerPadding(float f, float f2, float f3, float f4) {
        this.innerPadding.set(AndroidUtilities.dpf2(f), AndroidUtilities.dpf2(f2), AndroidUtilities.dpf2(f3), AndroidUtilities.dpf2(f4));
        return this;
    }

    public HintView2 setIconMargin(int i) {
        this.iconMargin = AndroidUtilities.dp(i);
        return this;
    }

    public HintView2 setIconTranslate(float f, float f2) {
        this.iconTx = f;
        this.iconTy = f2;
        return this;
    }

    public HintView2 setTextColor(int i) {
        this.textDrawable.setTextColor(i);
        this.textPaint.setColor(i);
        return this;
    }

    public HintView2 setHideByTouch(boolean z) {
        this.hideByTouch = z;
        return this;
    }

    public HintView2 setSelectorColor(int i) {
        Paint paint = new Paint(1);
        this.cutSelectorPaint = paint;
        paint.setPathEffect(new CornerPathEffect(this.rounding));
        BaseCell.RippleDrawableSafe rippleDrawableSafe = new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), null, new Drawable() { // from class: org.telegram.ui.Stories.recorder.HintView2.1
            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i2) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                canvas.save();
                HintView2 hintView2 = HintView2.this;
                canvas.drawPath(hintView2.path, hintView2.cutSelectorPaint);
                canvas.restore();
            }
        });
        this.selectorDrawable = rippleDrawableSafe;
        rippleDrawableSafe.setCallback(this);
        return this;
    }

    public HintView2 setBounce(boolean z) {
        this.repeatedBounce = z;
        return this;
    }

    public HintView2 setTextAlign(Layout.Alignment alignment) {
        this.textLayoutAlignment = alignment;
        return this;
    }

    public HintView2 setBgColor(int i) {
        if (this.backgroundPaint.getColor() != i) {
            this.backgroundPaint.setColor(i);
            invalidate();
        }
        return this;
    }

    public HintView2 setOnHiddenListener(Runnable runnable) {
        this.onHidden = runnable;
        return this;
    }

    public HintView2 setJoint(float f, float f2) {
        if (Math.abs(this.joint - f) >= 1.0f || Math.abs(this.jointTranslate - AndroidUtilities.dp(f2)) >= 1.0f) {
            this.pathSet = false;
            invalidate();
        }
        this.joint = f;
        this.jointTranslate = AndroidUtilities.dp(f2);
        return this;
    }

    public HintView2 setJointPx(float f, float f2) {
        if (Math.abs(this.joint - f) >= 1.0f || Math.abs(this.jointTranslate - f2) >= 1.0f) {
            this.pathSet = false;
            invalidate();
        }
        this.joint = f;
        this.jointTranslate = f2;
        return this;
    }

    public TextPaint getTextPaint() {
        if (this.multiline) {
            return this.textPaint;
        }
        return this.textDrawable.getPaint();
    }

    public void show(boolean z) {
        if (z) {
            show();
        } else {
            hide();
        }
    }

    public HintView2 show() {
        prepareBlur();
        if (this.shown) {
            bounceShow();
        }
        AndroidUtilities.makeAccessibilityAnnouncement(getText());
        this.shown = true;
        invalidate();
        AndroidUtilities.cancelRunOnUIThread(this.hideRunnable);
        long j = this.duration;
        if (j > 0) {
            AndroidUtilities.runOnUIThread(this.hideRunnable, j);
        }
        Runnable runnable = this.onHidden;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        return this;
    }

    private void bounceShow() {
        if (this.repeatedBounce) {
            ValueAnimator valueAnimator = this.bounceAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.bounceAnimator = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.bounceAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.HintView2$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$bounceShow$0(valueAnimator2);
                }
            });
            this.bounceAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.HintView2.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    HintView2.this.bounceT = 1.0f;
                    HintView2.this.invalidate();
                }
            });
            this.bounceAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_BACK);
            this.bounceAnimator.setDuration(300L);
            this.bounceAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bounceShow$0(ValueAnimator valueAnimator) {
        this.bounceT = Math.max(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        invalidate();
    }

    public void hide() {
        hide(true);
    }

    public void hide(boolean z) {
        AndroidUtilities.cancelRunOnUIThread(this.hideRunnable);
        Runnable runnable = this.onHidden;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        this.shown = false;
        if (!z) {
            this.show.set(false, false);
        }
        invalidate();
        Runnable runnable2 = this.onHidden;
        if (runnable2 != null) {
            AndroidUtilities.runOnUIThread(runnable2, (long) (this.show.get() * this.show.getDuration()));
        }
        this.links.clear();
    }

    public void pause() {
        AndroidUtilities.cancelRunOnUIThread(this.hideRunnable);
    }

    public void unpause() {
        AndroidUtilities.cancelRunOnUIThread(this.hideRunnable);
        long j = this.duration;
        if (j > 0) {
            AndroidUtilities.runOnUIThread(this.hideRunnable, j);
        }
    }

    public boolean shown() {
        return this.shown;
    }

    private int getTextMaxWidth() {
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        RectF rectF = this.innerPadding;
        int iMin = measuredWidth - ((int) (rectF.left + rectF.right));
        int i = this.textMaxWidth;
        if (i > 0) {
            iMin = Math.min(i, iMin);
        }
        return Math.max(0, iMin);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        this.pathSet = false;
        int textMaxWidth = getTextMaxWidth();
        this.textDrawable.setOverrideFullWidth(textMaxWidth);
        if (this.multiline) {
            CharSequence text = this.textToSet;
            if (text == null) {
                StaticLayout staticLayout = this.textLayout;
                if (staticLayout == null) {
                    return;
                } else {
                    text = staticLayout.getText();
                }
            }
            StaticLayout staticLayout2 = this.textLayout;
            if (staticLayout2 == null || staticLayout2.getWidth() != textMaxWidth) {
                makeLayout(text, textMaxWidth);
            }
        } else {
            CharSequence charSequence = this.textToSet;
            if (charSequence != null) {
                this.textDrawable.setText(charSequence, false);
            }
        }
        this.textToSet = null;
    }

    private void makeLayout(CharSequence charSequence, int i) {
        this.textLayout = new StaticLayout(charSequence, this.textPaint, i, this.textLayoutAlignment, 1.0f, 0.0f, false);
        float fMin = i;
        float fMax = 0.0f;
        for (int i2 = 0; i2 < this.textLayout.getLineCount(); i2++) {
            fMin = Math.min(fMin, this.textLayout.getLineLeft(i2));
            fMax = Math.max(fMax, this.textLayout.getLineRight(i2));
        }
        this.textLayoutWidth = Math.max(0.0f, fMax - fMin);
        this.textLayoutHeight = this.textLayout.getHeight();
        this.textLayoutLeft = fMin;
        this.emojiGroupedSpans = AnimatedEmojiSpan.update(0, this, this.emojiGroupedSpans, this.textLayout);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimatedEmojiSpan.release(this, this.emojiGroupedSpans);
    }

    protected void drawBgPath(Canvas canvas) {
        Paint paint = this.blurBackgroundPaint;
        if (paint != null) {
            canvas.drawPath(this.path, paint);
        }
        canvas.drawPath(this.path, this.backgroundPaint);
        if (this.flicker) {
            int iDp = AndroidUtilities.dp(64.0f);
            float fCurrentTimeMillis = (-iDp) + ((((System.currentTimeMillis() - this.flickerStart) % 4000) / 4000.0f) * ((this.pathLastWidth * 4.0f) + (iDp * 2)));
            this.flickerGradientMatrix.reset();
            this.flickerGradientMatrix.postTranslate(this.bounds.left + fCurrentTimeMillis, 0.0f);
            this.flickerGradient.setLocalMatrix(this.flickerGradientMatrix);
            this.flickerStrokeGradient.setLocalMatrix(this.flickerGradientMatrix);
            canvas.drawPath(this.path, this.flickerFillPaint);
            canvas.drawPath(this.flickerStrokePath, this.flickerStrokePaint);
            invalidate();
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        HintView2 hintView2;
        float f2;
        float f3;
        float f4;
        Canvas canvas2;
        if (this.drawingMyBlur) {
            return;
        }
        if (this.multiline && this.textLayout == null) {
            return;
        }
        float f5 = this.show.set(this.shown && !this.firstDraw);
        if (this.firstDraw) {
            this.firstDraw = false;
            invalidate();
        }
        float f6 = 0.0f;
        if (f5 <= 0.0f) {
            return;
        }
        float currentWidth = this.multiline ? this.textLayoutWidth : this.textDrawable.getCurrentWidth();
        float height = this.multiline ? this.textLayoutHeight : this.textDrawable.getHeight();
        if (this.closeButton) {
            if (this.closeButtonDrawable == null) {
                Drawable drawableMutate = getContext().getResources().getDrawable(C2484R.drawable.msg_mini_close_tooltip).mutate();
                this.closeButtonDrawable = drawableMutate;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(2113929215, PorterDuff.Mode.MULTIPLY));
            }
            currentWidth += this.closeButtonMargin + this.closeButtonDrawable.getIntrinsicWidth();
            height = Math.max(this.closeButtonDrawable.getIntrinsicHeight(), height);
        }
        if (this.icon != null) {
            currentWidth += this.iconWidth + this.iconMargin;
            height = Math.max(this.iconHeight, height);
        }
        float f7 = currentWidth;
        RectF rectF = this.innerPadding;
        float f8 = rectF.left + f7 + rectF.right;
        float f9 = rectF.top + height + rectF.bottom;
        if (!this.pathSet || Math.abs(f8 - this.pathLastWidth) > 0.1f || Math.abs(f9 - this.pathLastHeight) > 0.1f) {
            Path path = this.path;
            this.pathLastWidth = f8;
            this.pathLastHeight = f9;
            f = f9;
            fillPath(path, f8, f, 0.0f, this.bounds, this.boundsWithArrow);
            if (this.flicker) {
                fillPath(this.flickerStrokePath, f8, f, this.flickerStrokePathExtrude, this.flickerBounds, null);
            }
            hintView2 = this;
        } else {
            hintView2 = this;
            f = f9;
        }
        float f10 = hintView2.useAlpha ? f5 : 1.0f;
        canvas.save();
        if (f5 < 1.0f && hintView2.useScale) {
            float fLerp = AndroidUtilities.lerp(0.75f, 1.0f, f5);
            canvas.scale(fLerp, fLerp, hintView2.arrowX, hintView2.arrowY);
        }
        float scale = hintView2.bounce.getScale(0.025f);
        if (scale != 1.0f) {
            canvas.scale(scale, scale, hintView2.arrowX, hintView2.arrowY);
        }
        if (hintView2.bounceT != 1.0f) {
            int i = hintView2.direction;
            if (i == 3 || i == 1) {
                canvas.translate(0.0f, (hintView2.bounceT - 1.0f) * Math.max(i == 3 ? hintView2.getPaddingBottom() : hintView2.getPaddingTop(), AndroidUtilities.dp(24.0f)) * (hintView2.direction == 1 ? -1 : 1));
            } else {
                canvas.translate((hintView2.bounceT - 1.0f) * Math.max(i == 0 ? hintView2.getPaddingLeft() : hintView2.getPaddingRight(), AndroidUtilities.dp(24.0f)) * (hintView2.direction == 0 ? -1 : 1), 0.0f);
            }
        }
        hintView2.updateBlurBounds();
        int alpha = hintView2.backgroundPaint.getAlpha();
        RectF rectF2 = AndroidUtilities.rectTmp;
        rectF2.set(hintView2.bounds);
        float f11 = hintView2.arrowHeight;
        rectF2.inset(-f11, -f11);
        Paint paint = hintView2.blurBackgroundPaint;
        if (paint == null || !hintView2.useBlur) {
            f2 = f10;
        } else {
            f2 = (1.0f - hintView2.blurAlpha) * f10;
            paint.setAlpha((int) (f10 * 255.0f));
        }
        hintView2.backgroundPaint.setAlpha((int) (alpha * f2));
        drawBgPath(canvas);
        hintView2.backgroundPaint.setAlpha(alpha);
        Drawable drawable = hintView2.selectorDrawable;
        if (drawable != null) {
            drawable.setAlpha((int) (f10 * 255.0f));
            hintView2.selectorDrawable.setBounds(hintView2.boundsWithArrow);
            hintView2.selectorDrawable.draw(canvas);
        }
        RectF rectF3 = hintView2.bounds;
        float f12 = rectF3.bottom;
        RectF rectF4 = hintView2.innerPadding;
        float f13 = ((f12 - rectF4.bottom) + (rectF3.top + rectF4.top)) / 2.0f;
        Drawable drawable2 = hintView2.icon;
        if (drawable2 != null) {
            if (hintView2.iconLeft) {
                float f14 = hintView2.iconTx;
                float f15 = rectF3.left;
                float f16 = rectF4.left;
                float f17 = hintView2.iconTy;
                f3 = 255.0f;
                int i2 = hintView2.iconHeight;
                drawable2.setBounds((int) (f14 + f15 + (f16 / 2.0f)), (int) ((f17 + f13) - (i2 / 2.0f)), (int) (f14 + f15 + (f16 / 2.0f) + hintView2.iconWidth), (int) (f17 + f13 + (i2 / 2.0f)));
                f6 = hintView2.iconWidth + hintView2.iconMargin + 0.0f;
                f4 = 2.0f;
            } else {
                f3 = 255.0f;
                float f18 = hintView2.iconTx;
                float f19 = rectF3.right;
                float f20 = rectF4.right;
                float f21 = hintView2.iconTy;
                int i3 = hintView2.iconHeight;
                f4 = 2.0f;
                drawable2.setBounds((int) (((f18 + f19) - (f20 / 2.0f)) - hintView2.iconWidth), (int) ((f21 + f13) - (i3 / 2.0f)), (int) ((f18 + f19) - (f20 / 2.0f)), (int) (f21 + f13 + (i3 / 2.0f)));
                f6 = 0.0f;
            }
            hintView2.icon.setAlpha((int) (f10 * f3));
            hintView2.icon.draw(canvas);
        } else {
            f3 = 255.0f;
            f4 = 2.0f;
        }
        if (hintView2.multiline) {
            canvas2 = canvas;
            canvas2.saveLayerAlpha(0.0f, 0.0f, hintView2.getWidth(), Math.max(hintView2.getHeight(), f), (int) (f10 * f3), 31);
            float f22 = ((f6 + hintView2.bounds.left) + hintView2.innerPadding.left) - hintView2.textLayoutLeft;
            hintView2.textX = f22;
            float f23 = f13 - (hintView2.textLayoutHeight / f4);
            hintView2.textY = f23;
            canvas2.translate(f22, f23);
            if (hintView2.links.draw(canvas2)) {
                hintView2.invalidate();
            }
            hintView2.textLayout.draw(canvas2);
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, hintView2.textLayout, hintView2.emojiGroupedSpans, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f);
            canvas2.restore();
        } else {
            canvas2 = canvas;
            CharSequence charSequence = hintView2.textToSet;
            if (charSequence != null) {
                hintView2.textDrawable.setText(charSequence, hintView2.shown);
                hintView2.textToSet = null;
            }
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = hintView2.textDrawable;
            float f24 = hintView2.bounds.left;
            float f25 = hintView2.innerPadding.left;
            float f26 = hintView2.textLayoutHeight;
            animatedTextDrawable.setBounds((int) (f6 + f24 + f25), (int) (f13 - (f26 / f4)), (int) (f24 + f25 + f7), (int) (f13 + (f26 / f4)));
            hintView2.textDrawable.setAlpha((int) (f10 * f3));
            hintView2.textDrawable.draw(canvas2);
        }
        if (hintView2.closeButton) {
            if (hintView2.closeButtonDrawable == null) {
                Drawable drawableMutate2 = hintView2.getContext().getResources().getDrawable(C2484R.drawable.msg_mini_close_tooltip).mutate();
                hintView2.closeButtonDrawable = drawableMutate2;
                drawableMutate2.setColorFilter(new PorterDuffColorFilter(2113929215, PorterDuff.Mode.MULTIPLY));
            }
            hintView2.closeButtonDrawable.setAlpha((int) (f10 * f3));
            Drawable drawable3 = hintView2.closeButtonDrawable;
            int intrinsicWidth = (int) ((hintView2.bounds.right - (hintView2.innerPadding.right * 0.66f)) - drawable3.getIntrinsicWidth());
            int iCenterY = (int) (hintView2.bounds.centerY() - (hintView2.closeButtonDrawable.getIntrinsicHeight() / f4));
            RectF rectF5 = hintView2.bounds;
            drawable3.setBounds(intrinsicWidth, iCenterY, (int) (rectF5.right - (hintView2.innerPadding.right * 0.66f)), (int) (rectF5.centerY() + (hintView2.closeButtonDrawable.getIntrinsicHeight() / f4)));
            hintView2.closeButtonDrawable.draw(canvas2);
        }
        canvas2.restore();
    }

    private void fillPath(Path path, float f, float f2, float f3, RectF rectF, Rect rect) {
        float fLerp;
        float fClamp;
        float fLerp2;
        float f4 = f / 2.0f;
        float f5 = f2 / 2.0f;
        float fMin = Math.min(this.rounding, Math.min(f4, f5));
        int i = this.direction;
        if (i == 1 || i == 3) {
            if (this.roundWithCornerEffect) {
                fLerp = AndroidUtilities.lerp(getPaddingLeft(), getMeasuredWidth() - getPaddingRight(), this.joint);
            } else {
                fLerp = AndroidUtilities.lerp(getPaddingLeft() + fMin + this.arrowHalfWidth, ((getMeasuredWidth() - getPaddingRight()) - fMin) - this.arrowHalfWidth, this.joint);
            }
            float fClamp2 = Utilities.clamp(fLerp + this.jointTranslate, getMeasuredWidth() - getPaddingRight(), getPaddingLeft());
            float fMin2 = Math.min(Math.max(getPaddingLeft(), fClamp2 - f4) + f, getMeasuredWidth() - getPaddingRight());
            float f6 = fMin2 - f;
            float f7 = this.arrowHalfWidth;
            float fClamp3 = Utilities.clamp(fClamp2, (fMin2 - fMin) - f7, f6 + fMin + f7);
            if (this.direction == 1) {
                rectF.set(f6, getPaddingTop() + this.arrowHeight, fMin2, getPaddingTop() + this.arrowHeight + f2);
            } else {
                rectF.set(f6, ((getMeasuredHeight() - this.arrowHeight) - getPaddingBottom()) - f2, fMin2, (getMeasuredHeight() - this.arrowHeight) - getPaddingBottom());
            }
            fClamp = fClamp3;
        } else {
            if (this.roundWithCornerEffect) {
                fLerp2 = AndroidUtilities.lerp(getPaddingTop(), getMeasuredHeight() - getPaddingBottom(), this.joint);
            } else {
                fLerp2 = AndroidUtilities.lerp(getPaddingTop() + fMin + this.arrowHalfWidth, ((getMeasuredHeight() - getPaddingBottom()) - fMin) - this.arrowHalfWidth, this.joint);
            }
            float fClamp4 = Utilities.clamp(fLerp2 + this.jointTranslate, getMeasuredHeight() - getPaddingBottom(), getPaddingTop());
            float fMin3 = Math.min(Math.max(getPaddingTop(), fClamp4 - f5) + f2, getMeasuredHeight() - getPaddingBottom());
            float f8 = fMin3 - f2;
            float f9 = this.arrowHalfWidth;
            fClamp = Utilities.clamp(fClamp4, (fMin3 - fMin) - f9, f8 + fMin + f9);
            if (this.direction == 0) {
                rectF.set(getPaddingLeft() + this.arrowHeight, f8, getPaddingLeft() + this.arrowHeight + f, fMin3);
            } else {
                rectF.set(((getMeasuredWidth() - getPaddingRight()) - this.arrowHeight) - f, f8, (getMeasuredWidth() - getPaddingRight()) - this.arrowHeight, fMin3);
            }
        }
        float f10 = -f3;
        rectF.inset(f10, f10);
        if (rect != null) {
            rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        }
        path.rewind();
        if (this.roundWithCornerEffect) {
            path.moveTo(rectF.left, rectF.bottom);
        } else {
            RectF rectF2 = this.oval;
            float f11 = rectF.left;
            float f12 = rectF.bottom;
            float f13 = fMin * 2.0f;
            rectF2.set(f11, f12 - f13, f13 + f11, f12);
            path.arcTo(this.oval, 90.0f, 90.0f);
        }
        if (this.direction == 0) {
            path.lineTo(rectF.left, this.arrowHalfWidth + fClamp + AndroidUtilities.dp(2.0f));
            path.lineTo(rectF.left, this.arrowHalfWidth + fClamp);
            path.lineTo(rectF.left - this.arrowHeight, AndroidUtilities.dp(1.0f) + fClamp);
            float f14 = rectF.left;
            float f15 = this.arrowHeight;
            this.arrowX = f14 - f15;
            this.arrowY = fClamp;
            path.lineTo(f14 - f15, fClamp - AndroidUtilities.dp(1.0f));
            path.lineTo(rectF.left, fClamp - this.arrowHalfWidth);
            path.lineTo(rectF.left, (fClamp - this.arrowHalfWidth) - AndroidUtilities.dp(2.0f));
            if (rect != null) {
                rect.left = (int) (rect.left - this.arrowHeight);
            }
        }
        if (this.roundWithCornerEffect) {
            path.lineTo(rectF.left, rectF.top);
        } else {
            RectF rectF3 = this.oval;
            float f16 = rectF.left;
            float f17 = rectF.top;
            float f18 = fMin * 2.0f;
            rectF3.set(f16, f17, f16 + f18, f18 + f17);
            path.arcTo(this.oval, 180.0f, 90.0f);
        }
        if (this.direction == 1) {
            path.lineTo((fClamp - this.arrowHalfWidth) - AndroidUtilities.dp(2.0f), rectF.top);
            path.lineTo(fClamp - this.arrowHalfWidth, rectF.top);
            path.lineTo(fClamp - AndroidUtilities.dp(1.0f), rectF.top - this.arrowHeight);
            this.arrowX = fClamp;
            this.arrowY = rectF.top - this.arrowHeight;
            path.lineTo(AndroidUtilities.dp(1.0f) + fClamp, rectF.top - this.arrowHeight);
            path.lineTo(this.arrowHalfWidth + fClamp, rectF.top);
            path.lineTo(this.arrowHalfWidth + fClamp + AndroidUtilities.dp(2.0f), rectF.top);
            if (rect != null) {
                rect.top = (int) (rect.top - this.arrowHeight);
            }
        }
        if (this.roundWithCornerEffect) {
            path.lineTo(rectF.right, rectF.top);
        } else {
            RectF rectF4 = this.oval;
            float f19 = rectF.right;
            float f20 = fMin * 2.0f;
            float f21 = rectF.top;
            rectF4.set(f19 - f20, f21, f19, f20 + f21);
            path.arcTo(this.oval, 270.0f, 90.0f);
        }
        if (this.direction == 2) {
            path.lineTo(rectF.right, (fClamp - this.arrowHalfWidth) - AndroidUtilities.dp(2.0f));
            path.lineTo(rectF.right, fClamp - this.arrowHalfWidth);
            path.lineTo(rectF.right + this.arrowHeight, fClamp - AndroidUtilities.dp(1.0f));
            float f22 = rectF.right;
            float f23 = this.arrowHeight;
            this.arrowX = f22 + f23;
            this.arrowY = fClamp;
            path.lineTo(f22 + f23, AndroidUtilities.dp(1.0f) + fClamp);
            path.lineTo(rectF.right, this.arrowHalfWidth + fClamp);
            path.lineTo(rectF.right, this.arrowHalfWidth + fClamp + AndroidUtilities.dp(2.0f));
            if (rect != null) {
                rect.right = (int) (rect.right + this.arrowHeight);
            }
        }
        if (this.roundWithCornerEffect) {
            path.lineTo(rectF.right, rectF.bottom);
        } else {
            RectF rectF5 = this.oval;
            float f24 = rectF.right;
            float f25 = fMin * 2.0f;
            float f26 = rectF.bottom;
            rectF5.set(f24 - f25, f26 - f25, f24, f26);
            path.arcTo(this.oval, 0.0f, 90.0f);
        }
        if (this.direction == 3) {
            path.lineTo(this.arrowHalfWidth + fClamp + AndroidUtilities.dp(2.0f), rectF.bottom);
            path.lineTo(this.arrowHalfWidth + fClamp, rectF.bottom);
            path.lineTo(AndroidUtilities.dp(1.0f) + fClamp, rectF.bottom + this.arrowHeight);
            this.arrowX = fClamp;
            this.arrowY = rectF.bottom + this.arrowHeight;
            path.lineTo(fClamp - AndroidUtilities.dp(1.0f), rectF.bottom + this.arrowHeight);
            path.lineTo(fClamp - this.arrowHalfWidth, rectF.bottom);
            path.lineTo((fClamp - this.arrowHalfWidth) - AndroidUtilities.dp(2.0f), rectF.bottom);
            if (rect != null) {
                rect.bottom = (int) (rect.bottom + this.arrowHeight);
            }
        }
        path.close();
        this.pathSet = true;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.textDrawable || drawable == this.selectorDrawable || drawable == this.icon || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((this.hideByTouch || hasOnClickListeners()) && this.shown) {
            return checkTouchLinks(motionEvent) || checkTouchTap(motionEvent);
        }
        return false;
    }

    public boolean containsTouch(MotionEvent motionEvent, float f, float f2) {
        return this.bounds.contains(motionEvent.getX() - f, motionEvent.getY() - f2);
    }

    private boolean checkTouchTap(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (motionEvent.getAction() == 0 && containsTouch(motionEvent, 0.0f, 0.0f)) {
            this.bounceX = x;
            this.bounceY = y;
            this.bounce.setPressed(true);
            Drawable drawable = this.selectorDrawable;
            if (drawable != null) {
                drawable.setHotspot(x, y);
                this.selectorDrawable.setState(new int[]{R.attr.state_pressed, R.attr.state_enabled});
            }
            return true;
        }
        if (motionEvent.getAction() == 1) {
            if (hasOnClickListeners()) {
                performClick();
            } else if (this.hideByTouch) {
                hide();
            }
            this.bounce.setPressed(false);
            Drawable drawable2 = this.selectorDrawable;
            if (drawable2 != null) {
                drawable2.setState(new int[0]);
            }
            return true;
        }
        if (motionEvent.getAction() != 3) {
            return false;
        }
        this.bounce.setPressed(false);
        Drawable drawable3 = this.selectorDrawable;
        if (drawable3 != null) {
            drawable3.setState(new int[0]);
        }
        return true;
    }

    private boolean checkTouchLinks(MotionEvent motionEvent) {
        if (this.textLayout != null) {
            final ClickableSpan clickableSpanHitLink = hitLink((int) motionEvent.getX(), (int) motionEvent.getY());
            if (clickableSpanHitLink != null && motionEvent.getAction() == 0) {
                final LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(clickableSpanHitLink, null, motionEvent.getX(), motionEvent.getY());
                this.pressedLink = linkSpanDrawable;
                this.links.addLink(linkSpanDrawable);
                SpannableString spannableString = new SpannableString(this.textLayout.getText());
                int spanStart = spannableString.getSpanStart(this.pressedLink.getSpan());
                int spanEnd = spannableString.getSpanEnd(this.pressedLink.getSpan());
                LinkPath linkPathObtainNewPath = this.pressedLink.obtainNewPath();
                linkPathObtainNewPath.setCurrentLayout(this.textLayout, spanStart, 0.0f);
                this.textLayout.getSelectionPath(spanStart, spanEnd, linkPathObtainNewPath);
                invalidate();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.HintView2$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$checkTouchLinks$1(linkSpanDrawable, clickableSpanHitLink);
                    }
                }, ViewConfiguration.getLongPressTimeout());
                pause();
                return true;
            }
            if (motionEvent.getAction() == 1) {
                this.links.clear();
                invalidate();
                unpause();
                LinkSpanDrawable linkSpanDrawable2 = this.pressedLink;
                if (linkSpanDrawable2 != null && linkSpanDrawable2.getSpan() == clickableSpanHitLink) {
                    LinkSpanDrawable.LinksTextView.OnLinkPress onLinkPress = this.onPressListener;
                    if (onLinkPress != null) {
                        onLinkPress.run((ClickableSpan) this.pressedLink.getSpan());
                    } else if (this.pressedLink.getSpan() != null) {
                        ((ClickableSpan) this.pressedLink.getSpan()).onClick(this);
                    }
                    this.pressedLink = null;
                    return true;
                }
                this.pressedLink = null;
            }
            if (motionEvent.getAction() == 3) {
                this.links.clear();
                invalidate();
                unpause();
                this.pressedLink = null;
            }
        }
        return this.pressedLink != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkTouchLinks$1(LinkSpanDrawable linkSpanDrawable, ClickableSpan clickableSpan) {
        LinkSpanDrawable.LinksTextView.OnLinkPress onLinkPress = this.onLongPressListener;
        if (onLinkPress == null || this.pressedLink != linkSpanDrawable) {
            return;
        }
        onLinkPress.run(clickableSpan);
        this.pressedLink = null;
        this.links.clear();
    }

    private ClickableSpan hitLink(int i, int i2) {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout == null) {
            return null;
        }
        int i3 = (int) (i - this.textX);
        int i4 = (int) (i2 - this.textY);
        int lineForVertical = staticLayout.getLineForVertical(i4);
        float f = i3;
        int offsetForHorizontal = this.textLayout.getOffsetForHorizontal(lineForVertical, f);
        float lineLeft = this.textLayout.getLineLeft(lineForVertical);
        if (lineLeft <= f && lineLeft + this.textLayout.getLineWidth(lineForVertical) >= f && i4 >= 0 && i4 <= this.textLayout.getHeight()) {
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) new SpannableString(this.textLayout.getText()).getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            if (clickableSpanArr.length != 0 && !AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
                return clickableSpanArr[0];
            }
        }
        return null;
    }

    private void prepareBlur() {
        if (this.useBlur) {
            this.drawingMyBlur = true;
            AndroidUtilities.makeGlobalBlurBitmap(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.HintView2$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$prepareBlur$2((Bitmap) obj);
                }
            }, this.blurScale);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareBlur$2(Bitmap bitmap) {
        this.drawingMyBlur = false;
        this.blurBitmapWidth = bitmap.getWidth();
        this.blurBitmapHeight = bitmap.getHeight();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.blurBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.blurBitmapMatrix = new Matrix();
        Paint paint = new Paint(1);
        this.blurBackgroundPaint = paint;
        paint.setShader(this.blurBitmapShader);
        this.blurBackgroundPaint.setPathEffect(new CornerPathEffect(this.rounding));
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(1.5f);
        AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, Theme.isCurrentThemeDark() ? 0.12f : -0.08f);
        this.blurBackgroundPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
    }

    private void updateBlurBounds() {
        if (!this.useBlur || this.blurBitmapShader == null || this.blurBitmapMatrix == null) {
            return;
        }
        if (this.blurPos == null) {
            this.blurPos = new int[2];
        }
        getLocationOnScreen(this.blurPos);
        this.blurBitmapMatrix.reset();
        Matrix matrix = this.blurBitmapMatrix;
        Point point = AndroidUtilities.displaySize;
        matrix.postScale(point.x / this.blurBitmapWidth, (point.y + AndroidUtilities.statusBarHeight) / this.blurBitmapHeight);
        Matrix matrix2 = this.blurBitmapMatrix;
        int[] iArr = this.blurPos;
        matrix2.postTranslate(-iArr[0], -iArr[1]);
        if (this.show.get() < 1.0f && this.useScale) {
            float fLerp = 1.0f / AndroidUtilities.lerp(0.75f, 1.0f, this.show.get());
            this.blurBitmapMatrix.postScale(fLerp, fLerp, this.arrowX, this.arrowY);
        }
        this.blurBitmapShader.setLocalMatrix(this.blurBitmapMatrix);
    }
}
