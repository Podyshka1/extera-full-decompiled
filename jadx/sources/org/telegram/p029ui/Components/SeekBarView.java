package org.telegram.p029ui.Components;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Pair;
import android.util.StateSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AudioPlayerAlert;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class SeekBarView extends FrameLayout {
    private static Path tmpPath;
    private static float[] tmpRadii;
    private final float TIMESTAMP_GAP;
    private AnimatedFloat animatedThumbX;
    private float bufferedProgress;
    boolean captured;
    private float currentRadius;
    private int currentTimestamp;
    public SeekBarViewDelegate delegate;
    private Drawable hoverDrawable;
    private Paint innerPaint1;
    private CharSequence lastCaption;
    private long lastDuration;
    private int lastTimestamp;
    private int lastTimestampLabelWidth;
    private long lastTimestampUpdate;
    private long lastTimestampsAppearingUpdate;
    private long lastUpdateTime;
    int lastValue;
    private float lastWidth;
    private int lineWidthDp;
    private float minProgress;
    private Paint outerPaint1;
    private boolean pressed;
    private boolean pressedDelayed;
    private int[] pressedState;
    private float progressToSet;
    private RectF rect;
    private boolean reportChanges;
    private final Theme.ResourcesProvider resourcesProvider;
    private final SeekBarAccessibilityDelegate seekBarAccessibilityDelegate;
    private int selectorWidth;
    private int separatorsCount;

    /* JADX INFO: renamed from: sx */
    float f2072sx;

    /* JADX INFO: renamed from: sy */
    float f2073sy;
    private final AudioPlayerAlert.ClippingTextViewSwitcher textViewSwitcher;
    private int thumbDX;
    private int thumbSize;
    private int thumbX;
    private int timestampChangeDirection;
    private float timestampChangeT;
    private int timestampIndex;
    private StaticLayout[] timestampLabel;
    private TextPaint timestampLabelPaint;
    private ArrayList timestamps;
    private float timestampsAppearing;
    private float transitionProgress;
    private int transitionThumbX;
    private boolean twoSided;

    public interface SeekBarViewDelegate {
        CharSequence getContentDescription();

        int getStepsCount();

        boolean needVisuallyDivideSteps();

        void onSeekBarDrag(boolean z, float f);

        void onSeekBarPressed(boolean z);

        /* JADX INFO: renamed from: org.telegram.ui.Components.SeekBarView$SeekBarViewDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onSeekBarPressed(SeekBarViewDelegate seekBarViewDelegate, boolean z) {
            }

            public static CharSequence $default$getContentDescription(SeekBarViewDelegate seekBarViewDelegate) {
                return null;
            }

            public static int $default$getStepsCount(SeekBarViewDelegate seekBarViewDelegate) {
                return 0;
            }

            public static boolean $default$needVisuallyDivideSteps(SeekBarViewDelegate seekBarViewDelegate) {
                return false;
            }
        }
    }

    public SeekBarView(Context context) {
        this(context, null);
    }

    public SeekBarView(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, false, resourcesProvider);
    }

    public SeekBarView(final Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.animatedThumbX = new AnimatedFloat(this, 0L, 60L, CubicBezierInterpolator.EASE_OUT);
        this.progressToSet = -100.0f;
        this.minProgress = -1.0f;
        this.pressedState = new int[]{R.attr.state_enabled, R.attr.state_pressed};
        this.transitionProgress = 1.0f;
        this.lineWidthDp = 3;
        this.timestampsAppearing = 0.0f;
        this.TIMESTAMP_GAP = 1.0f;
        this.currentTimestamp = -1;
        this.lastTimestamp = -1;
        this.timestampChangeT = 1.0f;
        this.lastWidth = -1.0f;
        this.rect = new RectF();
        this.timestampIndex = -1;
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        this.innerPaint1 = new Paint(1);
        Paint paint = new Paint(1);
        this.outerPaint1 = paint;
        int i = Theme.key_player_progress;
        paint.setColor(getThemedColor(i));
        this.selectorWidth = AndroidUtilities.m1124dp(32.0f);
        this.thumbSize = AndroidUtilities.m1124dp(24.0f);
        this.currentRadius = AndroidUtilities.m1124dp(6.0f);
        Drawable drawableCreateSelectorDrawable = Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(getThemedColor(i), 40), 1, AndroidUtilities.m1124dp(16.0f));
        this.hoverDrawable = drawableCreateSelectorDrawable;
        drawableCreateSelectorDrawable.setCallback(this);
        this.hoverDrawable.setVisible(true, false);
        AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = new AudioPlayerAlert.ClippingTextViewSwitcher(context) { // from class: org.telegram.ui.Components.SeekBarView.1
            @Override // org.telegram.ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
            protected TextView createTextView() {
                MarqueeTextView marqueeTextView = new MarqueeTextView(context);
                marqueeTextView.setTextColor(SeekBarView.this.getThemedColor(Theme.key_player_time));
                marqueeTextView.setTextSize(1, 12.0f);
                marqueeTextView.setEllipsize(TextUtils.TruncateAt.END);
                marqueeTextView.setSingleLine(true);
                marqueeTextView.setPadding(AndroidUtilities.m1124dp(0.0f), 0, AndroidUtilities.m1124dp(0.0f), AndroidUtilities.m1124dp(0.0f));
                return marqueeTextView;
            }
        };
        this.textViewSwitcher = clippingTextViewSwitcher;
        clippingTextViewSwitcher.setIsCenter();
        addView(clippingTextViewSwitcher, LayoutHelper.createFrame(-1, -2.0f));
        setImportantForAccessibility(1);
        FloatSeekBarAccessibilityDelegate floatSeekBarAccessibilityDelegate = new FloatSeekBarAccessibilityDelegate(z) { // from class: org.telegram.ui.Components.SeekBarView.2
            @Override // org.telegram.p029ui.Components.FloatSeekBarAccessibilityDelegate
            public float getProgress() {
                return SeekBarView.this.getProgress();
            }

            @Override // org.telegram.p029ui.Components.FloatSeekBarAccessibilityDelegate
            public void setProgress(float f) {
                SeekBarView.this.pressed = true;
                SeekBarView.this.setProgress(f);
                SeekBarView.this.setSeekBarDrag(true, f);
                SeekBarView.this.pressed = false;
            }

            @Override // org.telegram.p029ui.Components.FloatSeekBarAccessibilityDelegate
            protected float getDelta() {
                int stepsCount = SeekBarView.this.delegate.getStepsCount();
                return stepsCount > 0 ? 1.0f / stepsCount : super.getDelta();
            }

            @Override // org.telegram.p029ui.Components.SeekBarAccessibilityDelegate
            public CharSequence getContentDescription(View view) {
                SeekBarViewDelegate seekBarViewDelegate = SeekBarView.this.delegate;
                if (seekBarViewDelegate != null) {
                    return seekBarViewDelegate.getContentDescription();
                }
                return null;
            }
        };
        this.seekBarAccessibilityDelegate = floatSeekBarAccessibilityDelegate;
        setAccessibilityDelegate(floatSeekBarAccessibilityDelegate);
    }

    public void setSeparatorsCount(int i) {
        this.separatorsCount = i;
    }

    public void setTwoSided(boolean z) {
        this.twoSided = z;
    }

    public boolean isTwoSided() {
        return this.twoSided;
    }

    public void setInnerColor(int i) {
        this.innerPaint1.setColor(i);
    }

    public void setOuterColor(int i) {
        this.outerPaint1.setColor(i);
        Drawable drawable = this.hoverDrawable;
        if (drawable != null) {
            Theme.setSelectorDrawableColor(drawable, ColorUtils.setAlphaComponent(i, 40), true);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return onTouch(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return onTouch(motionEvent);
    }

    public void setReportChanges(boolean z) {
        this.reportChanges = z;
    }

    public void setMinProgress(float f) {
        this.minProgress = f;
        float progress = getProgress();
        float f2 = this.minProgress;
        if (progress < f2) {
            setProgress(f2, false);
        }
        invalidate();
    }

    public void setDelegate(SeekBarViewDelegate seekBarViewDelegate) {
        this.delegate = seekBarViewDelegate;
    }

    boolean onTouch(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f2072sx = motionEvent.getX();
            this.f2073sy = motionEvent.getY();
            return true;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.captured = false;
            if (motionEvent.getAction() == 1) {
                if (Math.abs(motionEvent.getY() - this.f2073sy) < ViewConfiguration.get(getContext()).getScaledTouchSlop()) {
                    int measuredHeight = (getMeasuredHeight() - this.thumbSize) / 2;
                    if (this.thumbX - measuredHeight > motionEvent.getX() || motionEvent.getX() > this.thumbX + this.thumbSize + measuredHeight) {
                        int x = ((int) motionEvent.getX()) - (this.thumbSize / 2);
                        this.thumbX = x;
                        if (x < minThumbX()) {
                            this.thumbX = minThumbX();
                        } else if (this.thumbX > getMeasuredWidth() - this.selectorWidth) {
                            this.thumbX = getMeasuredWidth() - this.selectorWidth;
                        }
                    }
                    this.thumbDX = (int) (motionEvent.getX() - this.thumbX);
                    this.pressedDelayed = true;
                    this.pressed = true;
                }
            }
            if (this.pressed) {
                if (motionEvent.getAction() == 1) {
                    if (this.twoSided) {
                        float measuredWidth = (getMeasuredWidth() - this.selectorWidth) / 2;
                        int i = this.thumbX;
                        if (i >= measuredWidth) {
                            setSeekBarDrag(false, (i - measuredWidth) / measuredWidth);
                        } else {
                            setSeekBarDrag(false, -Math.max(0.01f, 1.0f - ((measuredWidth - i) / measuredWidth)));
                        }
                    } else {
                        setSeekBarDrag(true, this.thumbX / (getMeasuredWidth() - this.selectorWidth));
                    }
                }
                Drawable drawable = this.hoverDrawable;
                if (drawable != null) {
                    drawable.setState(StateSet.NOTHING);
                }
                this.delegate.onSeekBarPressed(false);
                this.pressed = false;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SeekBarView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTouch$0();
                    }
                }, 50L);
                invalidate();
                return true;
            }
        } else if (motionEvent.getAction() == 2) {
            if (!this.captured) {
                ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
                if (Math.abs(motionEvent.getY() - this.f2073sy) <= viewConfiguration.getScaledTouchSlop() && Math.abs(motionEvent.getX() - this.f2072sx) > viewConfiguration.getScaledTouchSlop()) {
                    this.captured = true;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    int measuredHeight2 = (getMeasuredHeight() - this.thumbSize) / 2;
                    if (motionEvent.getY() >= 0.0f && motionEvent.getY() <= getMeasuredHeight()) {
                        if (this.thumbX - measuredHeight2 > motionEvent.getX() || motionEvent.getX() > this.thumbX + this.thumbSize + measuredHeight2) {
                            int x2 = ((int) motionEvent.getX()) - (this.thumbSize / 2);
                            this.thumbX = x2;
                            if (x2 < minThumbX()) {
                                this.thumbX = minThumbX();
                            } else if (this.thumbX > getMeasuredWidth() - this.selectorWidth) {
                                this.thumbX = getMeasuredWidth() - this.selectorWidth;
                            }
                        }
                        this.thumbDX = (int) (motionEvent.getX() - this.thumbX);
                        this.pressedDelayed = true;
                        this.pressed = true;
                        this.delegate.onSeekBarPressed(true);
                        Drawable drawable2 = this.hoverDrawable;
                        if (drawable2 != null) {
                            drawable2.setState(this.pressedState);
                            this.hoverDrawable.setHotspot(motionEvent.getX(), motionEvent.getY());
                        }
                        invalidate();
                        return true;
                    }
                }
            } else if (this.pressed) {
                int x3 = (int) (motionEvent.getX() - this.thumbDX);
                this.thumbX = x3;
                if (x3 < minThumbX()) {
                    this.thumbX = minThumbX();
                } else if (this.thumbX > getMeasuredWidth() - this.selectorWidth) {
                    this.thumbX = getMeasuredWidth() - this.selectorWidth;
                }
                if (this.reportChanges) {
                    if (this.twoSided) {
                        float measuredWidth2 = (getMeasuredWidth() - this.selectorWidth) / 2;
                        int i2 = this.thumbX;
                        if (i2 >= measuredWidth2) {
                            setSeekBarDrag(false, (i2 - measuredWidth2) / measuredWidth2);
                        } else {
                            setSeekBarDrag(false, -Math.max(0.01f, 1.0f - ((measuredWidth2 - i2) / measuredWidth2)));
                        }
                    } else {
                        setSeekBarDrag(false, this.thumbX / (getMeasuredWidth() - this.selectorWidth));
                    }
                }
                Drawable drawable3 = this.hoverDrawable;
                if (drawable3 != null) {
                    drawable3.setHotspot(motionEvent.getX(), motionEvent.getY());
                }
                invalidate();
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouch$0() {
        this.pressedDelayed = false;
    }

    private int minThumbX() {
        return Math.max((int) (this.minProgress * (getMeasuredWidth() - this.selectorWidth)), 0);
    }

    public void setLineWidth(int i) {
        this.lineWidthDp = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSeekBarDrag(boolean z, float f) {
        SeekBarViewDelegate seekBarViewDelegate = this.delegate;
        if (seekBarViewDelegate != null) {
            seekBarViewDelegate.onSeekBarDrag(z, f);
        }
        if (this.separatorsCount > 1) {
            int iRound = Math.round((r0 - 1) * f);
            if (!z && iRound != this.lastValue) {
                AndroidUtilities.vibrateCursor(this);
            }
            this.lastValue = iRound;
        }
    }

    public float getProgress() {
        if (getMeasuredWidth() == 0) {
            return this.progressToSet;
        }
        return this.thumbX / (getMeasuredWidth() - this.selectorWidth);
    }

    public void setProgress(float f) {
        setProgress(f, false);
    }

    public void setProgress(float f, boolean z) {
        double dCeil;
        if (getMeasuredWidth() == 0) {
            this.progressToSet = f;
            return;
        }
        this.progressToSet = -100.0f;
        if (this.twoSided) {
            float measuredWidth = (getMeasuredWidth() - this.selectorWidth) / 2;
            if (f < 0.0f) {
                dCeil = Math.ceil(measuredWidth + ((-(f + 1.0f)) * measuredWidth));
            } else {
                dCeil = Math.ceil(measuredWidth + (f * measuredWidth));
            }
        } else {
            dCeil = Math.ceil((getMeasuredWidth() - this.selectorWidth) * f);
        }
        int i = (int) dCeil;
        int i2 = this.thumbX;
        if (i2 != i) {
            if (z) {
                this.transitionThumbX = i2;
                this.transitionProgress = 0.0f;
            }
            this.thumbX = i;
            if (i < minThumbX()) {
                this.thumbX = minThumbX();
            } else if (this.thumbX > getMeasuredWidth() - this.selectorWidth) {
                this.thumbX = getMeasuredWidth() - this.selectorWidth;
            }
            invalidate();
        }
    }

    public void setBufferedProgress(float f) {
        this.bufferedProgress = f;
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int timestampLabelWidth = getTimestampLabelWidth();
        this.lastTimestampLabelWidth = timestampLabelWidth;
        this.textViewSwitcher.measure(View.MeasureSpec.makeMeasureSpec(timestampLabelWidth, TLObject.FLAG_30), 0);
        if (this.progressToSet == -100.0f || getMeasuredWidth() <= 0) {
            return;
        }
        setProgress(this.progressToSet);
        this.progressToSet = -100.0f;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int measuredHeight = (getMeasuredHeight() / 2) + AndroidUtilities.m1124dp(14.0f) + (this.textViewSwitcher.getMeasuredHeight() / 2);
        int iM1124dp = (this.selectorWidth / 2) + (this.lastDuration > 600000 ? AndroidUtilities.m1124dp(42.0f) : 0) + AndroidUtilities.m1124dp(25.0f) + AndroidUtilities.m1124dp(8.0f);
        AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = this.textViewSwitcher;
        clippingTextViewSwitcher.layout(iM1124dp, measuredHeight - clippingTextViewSwitcher.getMeasuredHeight(), this.textViewSwitcher.getMeasuredWidth() + iM1124dp, measuredHeight);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.hoverDrawable;
    }

    public boolean isDragging() {
        return this.pressed;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        float fRound;
        long jElapsedRealtime;
        float f;
        float f2;
        boolean z;
        float f3;
        float f4;
        Canvas canvas2 = canvas;
        int i = this.thumbX;
        boolean z2 = true;
        if (!this.twoSided && this.separatorsCount > 1) {
            fRound = this.animatedThumbX.set(Math.round(i / r3) * ((getMeasuredWidth() - this.selectorWidth) / (this.separatorsCount - 1.0f)));
        } else {
            SeekBarViewDelegate seekBarViewDelegate = this.delegate;
            if (seekBarViewDelegate != null && seekBarViewDelegate.needVisuallyDivideSteps()) {
                fRound = Math.round(i / r3) * ((getMeasuredWidth() - this.selectorWidth) / (this.delegate.getStepsCount() - 1.0f));
            }
            int i2 = i;
            int measuredHeight = (getMeasuredHeight() - this.thumbSize) / 2;
            this.innerPaint1.setColor(getThemedColor(Theme.key_player_progressBackground));
            float measuredHeight2 = getMeasuredHeight() / 2.0f;
            float f5 = this.selectorWidth / 2.0f;
            float measuredWidth = getMeasuredWidth() - (this.selectorWidth / 2);
            float fM1124dp = measuredHeight2 - (AndroidUtilities.m1124dp(this.lineWidthDp) / 2.0f);
            float fM1124dp2 = measuredHeight2 + (AndroidUtilities.m1124dp(this.lineWidthDp) / 2.0f);
            this.rect.set(f5, fM1124dp, measuredWidth, fM1124dp2);
            drawProgressBar(canvas2, this.rect, this.innerPaint1);
            if (this.bufferedProgress > 0.0f) {
                this.innerPaint1.setColor(getThemedColor(Theme.key_player_progressCachedBackground));
                this.rect.set(f5, fM1124dp, (this.selectorWidth / 2.0f) + (this.bufferedProgress * (getMeasuredWidth() - this.selectorWidth)), fM1124dp2);
                drawProgressBar(canvas2, this.rect, this.innerPaint1);
            }
            if (!this.twoSided) {
                canvas2.drawRoundRect((getMeasuredWidth() / 2) - AndroidUtilities.m1124dp(1.0f), (getMeasuredHeight() / 2) - AndroidUtilities.m1124dp(6.0f), (getMeasuredWidth() / 2) + AndroidUtilities.m1124dp(1.0f), (getMeasuredHeight() / 2) + AndroidUtilities.m1124dp(6.0f), 100.0f, 100.0f, this.outerPaint1);
                if (i2 > (getMeasuredWidth() - this.selectorWidth) / 2) {
                    canvas2 = canvas;
                    canvas2.drawRoundRect(getMeasuredWidth() / 2, (getMeasuredHeight() / 2) - AndroidUtilities.m1124dp(1.0f), (this.selectorWidth / 2) + i2, (getMeasuredHeight() / 2) + AndroidUtilities.m1124dp(1.0f), 100.0f, 100.0f, this.outerPaint1);
                } else {
                    canvas2 = canvas;
                    canvas2.drawRoundRect((r2 / 2) + i2, (getMeasuredHeight() / 2) - AndroidUtilities.m1124dp(1.0f), getMeasuredWidth() / 2, (getMeasuredHeight() / 2) + AndroidUtilities.m1124dp(1.0f), 100.0f, 100.0f, this.outerPaint1);
                }
            } else {
                float f6 = this.minProgress;
                if (f6 >= 0.0f) {
                    float f7 = measuredWidth - f5;
                    this.rect.set((f6 * f7) + f5, fM1124dp, i2 + f5, fM1124dp2);
                    drawProgressBar(canvas2, this.rect, this.outerPaint1);
                    int alpha = this.outerPaint1.getAlpha();
                    this.rect.set(f5, fM1124dp, (this.minProgress * f7) + f5, fM1124dp2);
                    this.outerPaint1.setAlpha((int) (alpha * 0.5f));
                    drawProgressBar(canvas2, this.rect, this.outerPaint1);
                    this.outerPaint1.setAlpha(alpha);
                } else {
                    this.rect.set(f5, fM1124dp, i2 + f5, fM1124dp2);
                    drawProgressBar(canvas2, this.rect, this.outerPaint1);
                }
            }
            if (this.hoverDrawable != null) {
                int iM1124dp = ((this.selectorWidth / 2) + i2) - AndroidUtilities.m1124dp(16.0f);
                int iM1124dp2 = ((this.thumbSize / 2) + measuredHeight) - AndroidUtilities.m1124dp(16.0f);
                this.hoverDrawable.setBounds(iM1124dp, iM1124dp2, AndroidUtilities.m1124dp(32.0f) + iM1124dp, AndroidUtilities.m1124dp(32.0f) + iM1124dp2);
                this.hoverDrawable.draw(canvas2);
            }
            int iM1124dp3 = AndroidUtilities.m1124dp(this.pressed ? 8.0f : 6.0f);
            jElapsedRealtime = SystemClock.elapsedRealtime() - this.lastUpdateTime;
            if (jElapsedRealtime > 18) {
                jElapsedRealtime = 16;
            }
            f = this.currentRadius;
            f2 = iM1124dp3;
            if (f == f2) {
                if (f < f2) {
                    float fM1124dp3 = f + (AndroidUtilities.m1124dp(1.0f) * (jElapsedRealtime / 60.0f));
                    this.currentRadius = fM1124dp3;
                    if (fM1124dp3 > f2) {
                        this.currentRadius = f2;
                    }
                } else {
                    float fM1124dp4 = f - (AndroidUtilities.m1124dp(1.0f) * (jElapsedRealtime / 60.0f));
                    this.currentRadius = fM1124dp4;
                    if (fM1124dp4 < f2) {
                        this.currentRadius = f2;
                    }
                }
                z = true;
            } else {
                z = false;
            }
            f3 = this.transitionProgress;
            if (f3 >= 1.0f) {
                float f8 = f3 + (jElapsedRealtime / 225.0f);
                this.transitionProgress = f8;
                if (f8 >= 1.0f) {
                    this.transitionProgress = 1.0f;
                    z2 = z;
                }
            } else {
                z2 = z;
            }
            f4 = this.transitionProgress;
            if (f4 >= 1.0f) {
                float interpolation = 1.0f - Easings.easeInQuad.getInterpolation(Math.min(1.0f, f4 * 3.0f));
                float interpolation2 = Easings.easeOutQuad.getInterpolation(this.transitionProgress);
                if (interpolation > 0.0f) {
                    canvas2.drawCircle(this.transitionThumbX + (this.selectorWidth / 2), (this.thumbSize / 2) + measuredHeight, this.currentRadius * interpolation, this.outerPaint1);
                }
                canvas2.drawCircle(i2 + (this.selectorWidth / 2), measuredHeight + (this.thumbSize / 2), this.currentRadius * interpolation2, this.outerPaint1);
            } else {
                canvas2.drawCircle(i2 + (this.selectorWidth / 2), measuredHeight + (this.thumbSize / 2), this.currentRadius, this.outerPaint1);
            }
            drawTimestampLabel(canvas);
            if (z2) {
                return;
            }
            postInvalidateOnAnimation();
            return;
        }
        i = (int) fRound;
        int i22 = i;
        int measuredHeight3 = (getMeasuredHeight() - this.thumbSize) / 2;
        this.innerPaint1.setColor(getThemedColor(Theme.key_player_progressBackground));
        float measuredHeight22 = getMeasuredHeight() / 2.0f;
        float f52 = this.selectorWidth / 2.0f;
        float measuredWidth2 = getMeasuredWidth() - (this.selectorWidth / 2);
        float fM1124dp5 = measuredHeight22 - (AndroidUtilities.m1124dp(this.lineWidthDp) / 2.0f);
        float fM1124dp22 = measuredHeight22 + (AndroidUtilities.m1124dp(this.lineWidthDp) / 2.0f);
        this.rect.set(f52, fM1124dp5, measuredWidth2, fM1124dp22);
        drawProgressBar(canvas2, this.rect, this.innerPaint1);
        if (this.bufferedProgress > 0.0f) {
        }
        if (!this.twoSided) {
        }
        if (this.hoverDrawable != null) {
        }
        int iM1124dp32 = AndroidUtilities.m1124dp(this.pressed ? 8.0f : 6.0f);
        jElapsedRealtime = SystemClock.elapsedRealtime() - this.lastUpdateTime;
        if (jElapsedRealtime > 18) {
        }
        f = this.currentRadius;
        f2 = iM1124dp32;
        if (f == f2) {
        }
        f3 = this.transitionProgress;
        if (f3 >= 1.0f) {
        }
        f4 = this.transitionProgress;
        if (f4 >= 1.0f) {
        }
        drawTimestampLabel(canvas);
        if (z2) {
        }
    }

    public void clearTimestamps() {
        this.timestamps = null;
        this.currentTimestamp = -1;
        this.timestampsAppearing = 0.0f;
        StaticLayout[] staticLayoutArr = this.timestampLabel;
        if (staticLayoutArr != null) {
            staticLayoutArr[1] = null;
            staticLayoutArr[0] = null;
        }
        this.lastCaption = null;
        this.lastDuration = -1L;
    }

    public void updateTimestamps(MessageObject messageObject, Long l) {
        Integer num;
        String str;
        if (messageObject == null) {
            clearTimestamps();
            return;
        }
        if (l == null) {
            l = Long.valueOf(((long) messageObject.getDuration()) * 1000);
        }
        if (l.longValue() < 0) {
            clearTimestamps();
            return;
        }
        CharSequence charSequence = messageObject.caption;
        if (messageObject.isYouTubeVideo()) {
            if (messageObject.youtubeDescription == null && (str = messageObject.messageOwner.media.webpage.description) != null) {
                messageObject.youtubeDescription = SpannableString.valueOf(str);
                MessageObject.addUrlsByPattern(messageObject.isOut(), messageObject.youtubeDescription, false, 3, (int) l.longValue(), false);
            }
            charSequence = messageObject.youtubeDescription;
        }
        boolean z = charSequence != this.lastCaption;
        if (z || this.lastDuration != l.longValue()) {
            this.lastCaption = charSequence;
            this.lastDuration = l.longValue() * 10;
            if (getTimestampLabelWidth() != this.lastTimestampLabelWidth) {
                requestLayout();
            }
            if (!(charSequence instanceof Spanned)) {
                this.timestamps = null;
                this.currentTimestamp = -1;
                this.timestampsAppearing = 0.0f;
                StaticLayout[] staticLayoutArr = this.timestampLabel;
                if (staticLayoutArr != null) {
                    staticLayoutArr[1] = null;
                    staticLayoutArr[0] = null;
                    return;
                }
                return;
            }
            Spanned spanned = (Spanned) charSequence;
            try {
                URLSpanNoUnderline[] uRLSpanNoUnderlineArr = (URLSpanNoUnderline[]) spanned.getSpans(0, spanned.length(), URLSpanNoUnderline.class);
                this.timestamps = new ArrayList();
                if (z) {
                    this.timestampsAppearing = 0.0f;
                }
                if (this.timestampLabelPaint == null) {
                    TextPaint textPaint = new TextPaint(1);
                    this.timestampLabelPaint = textPaint;
                    textPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
                    this.timestampLabelPaint.setColor(-1);
                }
                for (URLSpanNoUnderline uRLSpanNoUnderline : uRLSpanNoUnderlineArr) {
                    if (uRLSpanNoUnderline != null && uRLSpanNoUnderline.getURL() != null && uRLSpanNoUnderline.label != null && uRLSpanNoUnderline.getURL().startsWith("audio?") && (num = Utilities.parseInt((CharSequence) uRLSpanNoUnderline.getURL().substring(6))) != null && num.intValue() >= 0) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(uRLSpanNoUnderline.label);
                        Emoji.replaceEmoji(spannableStringBuilder, this.timestampLabelPaint.getFontMetricsInt(), false);
                        this.timestamps.add(new Pair(Float.valueOf((((long) num.intValue()) * 1000) / l.longValue()), spannableStringBuilder));
                    }
                }
                Collections.sort(this.timestamps, new Comparator() { // from class: org.telegram.ui.Components.SeekBarView$$ExternalSyntheticLambda0
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return SeekBarView.$r8$lambda$krRqn86cNzSUGZ63XNeyzAeauiE((Pair) obj, (Pair) obj2);
                    }
                });
            } catch (Exception e) {
                FileLog.m1136e(e);
                this.timestamps = null;
                this.currentTimestamp = -1;
                this.timestampsAppearing = 0.0f;
                StaticLayout[] staticLayoutArr2 = this.timestampLabel;
                if (staticLayoutArr2 != null) {
                    staticLayoutArr2[1] = null;
                    staticLayoutArr2[0] = null;
                }
            }
        }
    }

    public static /* synthetic */ int $r8$lambda$krRqn86cNzSUGZ63XNeyzAeauiE(Pair pair, Pair pair2) {
        if (((Float) pair.first).floatValue() > ((Float) pair2.first).floatValue()) {
            return 1;
        }
        return ((Float) pair2.first).floatValue() > ((Float) pair.first).floatValue() ? -1 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x01e0 A[EDGE_INSN: B:92:0x01e0->B:83:0x01e0 BREAK  A[LOOP:2: B:29:0x00aa->B:82:0x01d6], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01d6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawProgressBar(Canvas canvas, RectF rectF, Paint paint) {
        int size;
        char c;
        float fFloatValue;
        char c2;
        char c3;
        SeekBarView seekBarView = this;
        float fM1124dp = AndroidUtilities.m1124dp(2.0f);
        ArrayList arrayList = seekBarView.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            canvas.drawRoundRect(rectF, fM1124dp, fM1124dp, paint);
            return;
        }
        float f = rectF.bottom;
        float f2 = seekBarView.selectorWidth / 2.0f;
        float measuredWidth = seekBarView.getMeasuredWidth() - (seekBarView.selectorWidth / 2.0f);
        AndroidUtilities.rectTmp.set(rectF);
        float fM1124dp2 = AndroidUtilities.m1124dp(seekBarView.timestampsAppearing * 1.0f) / 2.0f;
        if (tmpPath == null) {
            tmpPath = new Path();
        }
        tmpPath.reset();
        float fM1124dp3 = AndroidUtilities.m1124dp(4.0f) / (measuredWidth - f2);
        int i = 0;
        while (true) {
            size = -1;
            if (i >= seekBarView.timestamps.size()) {
                i = -1;
                break;
            } else if (((Float) ((Pair) seekBarView.timestamps.get(i)).first).floatValue() >= fM1124dp3) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            i = 0;
        }
        char c4 = 1;
        int size2 = seekBarView.timestamps.size() - 1;
        while (true) {
            if (size2 < 0) {
                break;
            }
            if (1.0f - ((Float) ((Pair) seekBarView.timestamps.get(size2)).first).floatValue() >= fM1124dp3) {
                size = size2 + 1;
                break;
            }
            size2--;
        }
        if (size < 0) {
            size = seekBarView.timestamps.size();
        }
        int i2 = i;
        while (i2 <= size) {
            if (i2 == i) {
                fFloatValue = 0.0f;
                c = 0;
            } else {
                c = 0;
                fFloatValue = ((Float) ((Pair) seekBarView.timestamps.get(i2 - 1)).first).floatValue();
            }
            float fFloatValue2 = i2 == size ? 1.0f : ((Float) ((Pair) seekBarView.timestamps.get(i2)).first).floatValue();
            while (i2 != size && i2 != 0) {
                c2 = c4;
                if (i2 >= seekBarView.timestamps.size() - 1 || ((Float) ((Pair) seekBarView.timestamps.get(i2)).first).floatValue() - fFloatValue > fM1124dp3) {
                    break;
                }
                i2++;
                fFloatValue2 = ((Float) ((Pair) seekBarView.timestamps.get(i2)).first).floatValue();
                c4 = c2;
            }
            c2 = c4;
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.left = AndroidUtilities.lerp(f2, measuredWidth, fFloatValue) + (i2 > 0 ? fM1124dp2 : 0.0f);
            float fLerp = AndroidUtilities.lerp(f2, measuredWidth, fFloatValue2) - (i2 < size ? fM1124dp2 : 0.0f);
            rectF2.right = fLerp;
            float f3 = rectF.right;
            char c5 = fLerp > f3 ? c2 : c;
            if (c5 != 0) {
                rectF2.right = f3;
            }
            float f4 = rectF2.right;
            float f5 = rectF.left;
            if (f4 >= f5) {
                if (rectF2.left < f5) {
                    rectF2.left = f5;
                }
                if (tmpRadii == null) {
                    tmpRadii = new float[8];
                }
                if (i2 != i) {
                    if (c5 != 0) {
                        c3 = 4;
                        if (rectF2.left >= rectF.left) {
                        }
                        tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                        if (c5 != 0) {
                            break;
                        }
                    } else {
                        c3 = 4;
                    }
                    if (i2 >= size) {
                        float[] fArr = tmpRadii;
                        float f6 = 0.7f * fM1124dp * seekBarView.timestampsAppearing;
                        fArr[7] = f6;
                        fArr[6] = f6;
                        fArr[c2] = f6;
                        fArr[c] = f6;
                        fArr[5] = fM1124dp;
                        fArr[c3] = fM1124dp;
                        fArr[3] = fM1124dp;
                        fArr[2] = fM1124dp;
                    } else {
                        float[] fArr2 = tmpRadii;
                        float f7 = 0.7f * fM1124dp * seekBarView.timestampsAppearing;
                        fArr2[5] = f7;
                        fArr2[c3] = f7;
                        fArr2[3] = f7;
                        fArr2[2] = f7;
                        fArr2[7] = f7;
                        fArr2[6] = f7;
                        fArr2[c2] = f7;
                        fArr2[c] = f7;
                    }
                    tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                    if (c5 != 0) {
                    }
                } else {
                    c3 = 4;
                }
                float[] fArr3 = tmpRadii;
                fArr3[7] = fM1124dp;
                fArr3[6] = fM1124dp;
                fArr3[c2] = fM1124dp;
                fArr3[c] = fM1124dp;
                float f8 = 0.7f * fM1124dp * seekBarView.timestampsAppearing;
                fArr3[5] = f8;
                fArr3[c3] = f8;
                fArr3[3] = f8;
                fArr3[2] = f8;
                tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                if (c5 != 0) {
                }
            }
            i2++;
            seekBarView = this;
            c4 = c2;
        }
        canvas.drawPath(tmpPath, paint);
    }

    private void setTimestampIndex(int i) {
        if (this.timestampIndex != i) {
            this.timestampIndex = i;
            if (i < 0 || i >= this.timestamps.size()) {
                return;
            }
            this.textViewSwitcher.setText((CharSequence) ((Pair) this.timestamps.get(this.timestampIndex)).second);
        }
    }

    private int getTimestampLabelWidth() {
        return (int) (Math.abs(((this.selectorWidth / 2.0f) + (this.lastDuration > 600000 ? AndroidUtilities.m1124dp(42.0f) : 0)) - ((getMeasuredWidth() - (this.selectorWidth / 2.0f)) - (this.lastDuration > 600000 ? AndroidUtilities.m1124dp(42.0f) : 0))) - AndroidUtilities.m1124dp(66.0f));
    }

    private void drawTimestampLabel(Canvas canvas) {
        CharSequence charSequence;
        ArrayList arrayList = this.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        float progress = getProgress();
        int size = this.timestamps.size() - 1;
        while (true) {
            if (size < 0) {
                size = -1;
                break;
            } else if (((Float) ((Pair) this.timestamps.get(size)).first).floatValue() - 0.001f <= progress) {
                break;
            } else {
                size--;
            }
        }
        setTimestampIndex(size);
        if (this.timestampLabel == null) {
            this.timestampLabel = new StaticLayout[2];
        }
        float fM1124dp = (this.selectorWidth / 2.0f) + (this.lastDuration > 600000 ? AndroidUtilities.m1124dp(42.0f) : 0);
        float fAbs = Math.abs(fM1124dp - ((getMeasuredWidth() - (this.selectorWidth / 2.0f)) - (this.lastDuration > 600000 ? AndroidUtilities.m1124dp(42.0f) : 0))) - AndroidUtilities.m1124dp(66.0f);
        float f = this.lastWidth;
        if (f > 0.0f && Math.abs(f - fAbs) > 0.01f) {
            StaticLayout[] staticLayoutArr = this.timestampLabel;
            StaticLayout staticLayout = staticLayoutArr[0];
            if (staticLayout != null) {
                staticLayoutArr[0] = makeStaticLayout(staticLayout.getText(), (int) fAbs);
            }
            StaticLayout[] staticLayoutArr2 = this.timestampLabel;
            StaticLayout staticLayout2 = staticLayoutArr2[1];
            if (staticLayout2 != null) {
                staticLayoutArr2[1] = makeStaticLayout(staticLayout2.getText(), (int) fAbs);
            }
        }
        this.lastWidth = fAbs;
        if (size != this.currentTimestamp) {
            StaticLayout[] staticLayoutArr3 = this.timestampLabel;
            staticLayoutArr3[1] = staticLayoutArr3[0];
            if (this.pressed) {
                AndroidUtilities.vibrateCursor(this);
            }
            if (size < 0 || size >= this.timestamps.size() || (charSequence = (CharSequence) ((Pair) this.timestamps.get(size)).second) == null) {
                this.timestampLabel[0] = null;
            } else {
                this.timestampLabel[0] = makeStaticLayout(charSequence, (int) fAbs);
            }
            this.timestampChangeT = 0.0f;
            if (size == -1) {
                this.timestampChangeDirection = -1;
            } else {
                int i = this.currentTimestamp;
                if (i == -1) {
                    this.timestampChangeDirection = 1;
                } else if (size < i) {
                    this.timestampChangeDirection = -1;
                } else if (size > i) {
                    this.timestampChangeDirection = 1;
                }
            }
            this.lastTimestamp = this.currentTimestamp;
            this.currentTimestamp = size;
        }
        if (this.timestampChangeT < 1.0f) {
            this.timestampChangeT = Math.min(this.timestampChangeT + (Math.min(17L, Math.abs(SystemClock.elapsedRealtime() - this.lastTimestampUpdate)) / (this.timestamps.size() > 8 ? 160.0f : 220.0f)), 1.0f);
            invalidate();
            this.lastTimestampUpdate = SystemClock.elapsedRealtime();
        }
        if (this.timestampsAppearing < 1.0f) {
            this.timestampsAppearing = Math.min(this.timestampsAppearing + (Math.min(17L, Math.abs(SystemClock.elapsedRealtime() - this.lastTimestampUpdate)) / 200.0f), 1.0f);
            invalidate();
            this.lastTimestampsAppearingUpdate = SystemClock.elapsedRealtime();
        }
        float interpolation = CubicBezierInterpolator.DEFAULT.getInterpolation(this.timestampChangeT);
        canvas.save();
        canvas.translate(fM1124dp + AndroidUtilities.m1124dp(25.0f), (getMeasuredHeight() / 2.0f) + AndroidUtilities.m1124dp(14.0f));
        this.timestampLabelPaint.setColor(getThemedColor(Theme.key_player_time));
        if (this.timestampLabel[1] != null) {
            canvas.save();
            if (this.timestampChangeDirection != 0) {
                canvas.translate(AndroidUtilities.m1124dp(8.0f) + (AndroidUtilities.m1124dp(16.0f) * (-this.timestampChangeDirection) * interpolation), 0.0f);
            }
            canvas.translate(0.0f, (-this.timestampLabel[1].getHeight()) / 2.0f);
            this.timestampLabelPaint.setAlpha((int) ((1.0f - interpolation) * 255.0f * this.timestampsAppearing));
            canvas.restore();
        }
        if (this.timestampLabel[0] != null) {
            canvas.save();
            if (this.timestampChangeDirection != 0) {
                canvas.translate(AndroidUtilities.m1124dp(8.0f) + (AndroidUtilities.m1124dp(16.0f) * this.timestampChangeDirection * (1.0f - interpolation)), 0.0f);
            }
            canvas.translate(0.0f, (-this.timestampLabel[0].getHeight()) / 2.0f);
            this.timestampLabelPaint.setAlpha((int) (interpolation * 255.0f * this.timestampsAppearing));
            canvas.restore();
        }
        canvas.restore();
    }

    private StaticLayout makeStaticLayout(CharSequence charSequence, int i) {
        if (this.timestampLabelPaint == null) {
            TextPaint textPaint = new TextPaint(1);
            this.timestampLabelPaint = textPaint;
            textPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        }
        this.timestampLabelPaint.setColor(getThemedColor(Theme.key_player_time));
        if (charSequence == null) {
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.timestampLabelPaint, i).setMaxLines(1).setAlignment(Layout.Alignment.ALIGN_CENTER).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(Math.min(AndroidUtilities.m1124dp(400.0f), i)).build();
    }

    public SeekBarAccessibilityDelegate getSeekBarAccessibilityDelegate() {
        return this.seekBarAccessibilityDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
