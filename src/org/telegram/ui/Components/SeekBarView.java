package org.telegram.ui.Components;

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
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.ui.MaterialSliderUiHelper;
import com.google.android.material.slider.Slider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AudioPlayerAlert;

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
    private int customInnerColor;
    public SeekBarViewDelegate delegate;
    private boolean hasBufferedProgress;
    private boolean hasCustomInnerColor;
    private Drawable hoverDrawable;
    private boolean ignoreMaterialSliderChanges;
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
    private Slider materialSlider;
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
    float sx;
    float sy;
    private final AudioPlayerAlert.ClippingTextViewSwitcher textViewSwitcher;
    private int thumbDX;
    private int thumbSize;
    private int thumbX;
    private int timestampChangeDirection;
    private float timestampChangeT;
    private int timestampIndex;
    private StaticLayout[] timestampLabel;
    private TextPaint timestampLabelPaint;
    private ArrayList<Pair<Float, CharSequence>> timestamps;
    private float timestampsAppearing;
    private float transitionProgress;
    private int transitionThumbX;
    private boolean twoSided;

    public interface SeekBarViewDelegate {
        default CharSequence getContentDescription() {
            return null;
        }

        default int getStepsCount() {
            return 0;
        }

        default boolean needVisuallyDivideSteps() {
            return false;
        }

        void onSeekBarDrag(boolean z, float f);

        default void onSeekBarPressed(boolean z) {
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
        this.selectorWidth = AndroidUtilities.dp(32.0f);
        this.thumbSize = AndroidUtilities.dp(24.0f);
        this.currentRadius = AndroidUtilities.dp(6.0f);
        Drawable drawableCreateSelectorDrawable = Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(getThemedColor(i), 40), 1, AndroidUtilities.dp(16.0f));
        this.hoverDrawable = drawableCreateSelectorDrawable;
        drawableCreateSelectorDrawable.setCallback(this);
        this.hoverDrawable.setVisible(true, false);
        AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = new AudioPlayerAlert.ClippingTextViewSwitcher(context) { // from class: org.telegram.ui.Components.SeekBarView.1
            @Override // org.telegram.ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
            public TextView createTextView() {
                MarqueeTextView marqueeTextView = new MarqueeTextView(context);
                marqueeTextView.setTextColor(SeekBarView.this.getThemedColor(Theme.key_player_time));
                marqueeTextView.setTextSize(1, 12.0f);
                marqueeTextView.setEllipsize(TextUtils.TruncateAt.END);
                marqueeTextView.setSingleLine(true);
                marqueeTextView.setPadding(AndroidUtilities.dp(0.0f), 0, AndroidUtilities.dp(0.0f), AndroidUtilities.dp(0.0f));
                return marqueeTextView;
            }
        };
        this.textViewSwitcher = clippingTextViewSwitcher;
        clippingTextViewSwitcher.setIsCenter();
        addView(clippingTextViewSwitcher, LayoutHelper.createFrame(-1, -2.0f));
        updateMaterialSliderState();
        setImportantForAccessibility(1);
        FloatSeekBarAccessibilityDelegate floatSeekBarAccessibilityDelegate = new FloatSeekBarAccessibilityDelegate(z) { // from class: org.telegram.ui.Components.SeekBarView.2
            @Override // org.telegram.ui.Components.FloatSeekBarAccessibilityDelegate
            public float getProgress() {
                return SeekBarView.this.getProgress();
            }

            @Override // org.telegram.ui.Components.FloatSeekBarAccessibilityDelegate
            public void setProgress(float f) {
                SeekBarView.this.pressed = true;
                SeekBarView.this.setProgress(f);
                SeekBarView.this.setSeekBarDrag(true, f);
                SeekBarView.this.pressed = false;
            }

            @Override // org.telegram.ui.Components.FloatSeekBarAccessibilityDelegate
            public float getDelta() {
                int stepsCount = SeekBarView.this.delegate.getStepsCount();
                return stepsCount > 0 ? 1.0f / stepsCount : super.getDelta();
            }

            @Override // org.telegram.ui.Components.SeekBarAccessibilityDelegate
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
        updateMaterialSliderState();
    }

    public void setTwoSided(boolean z) {
        this.twoSided = z;
        updateMaterialSliderState();
    }

    public boolean isTwoSided() {
        return this.twoSided;
    }

    public void setInnerColor(int i) {
        this.hasCustomInnerColor = true;
        this.customInnerColor = i;
        this.innerPaint1.setColor(i);
        updateMaterialSliderColors();
    }

    public void setOuterColor(int i) {
        this.outerPaint1.setColor(i);
        Drawable drawable = this.hoverDrawable;
        if (drawable != null) {
            Theme.setSelectorDrawableColor(drawable, ColorUtils.setAlphaComponent(i, 40), true);
        }
        updateMaterialSliderColors();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        updateMaterialSliderState();
        if (isUsingMaterialSlider()) {
            return false;
        }
        return onTouch(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        updateMaterialSliderState();
        if (isUsingMaterialSlider()) {
            return false;
        }
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
        updateMaterialSliderState();
        invalidate();
    }

    public void setDelegate(SeekBarViewDelegate seekBarViewDelegate) {
        this.delegate = seekBarViewDelegate;
        updateMaterialSliderState();
    }

    public boolean onTouch(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.sx = motionEvent.getX();
            this.sy = motionEvent.getY();
            return true;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.captured = false;
            if (motionEvent.getAction() == 1) {
                if (Math.abs(motionEvent.getY() - this.sy) < ViewConfiguration.get(getContext()).getScaledTouchSlop()) {
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
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SeekBarView$$ExternalSyntheticLambda2
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
                if (Math.abs(motionEvent.getY() - this.sy) <= viewConfiguration.getScaledTouchSlop() && Math.abs(motionEvent.getX() - this.sx) > viewConfiguration.getScaledTouchSlop()) {
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
        updateMaterialSliderState();
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
            updateMaterialSliderProgress(f);
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
            updateMaterialSliderProgress(getProgress());
            invalidate();
        }
    }

    public void setBufferedProgress(float f) {
        this.hasBufferedProgress = f > 0.0f;
        this.bufferedProgress = f;
        updateMaterialSliderState();
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        updateMaterialSliderState();
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int measuredHeight = (getMeasuredHeight() / 2) + AndroidUtilities.dp(14.0f) + (this.textViewSwitcher.getMeasuredHeight() / 2);
        int iDp = (this.selectorWidth / 2) + (this.lastDuration > 600000 ? AndroidUtilities.dp(42.0f) : 0) + AndroidUtilities.dp(25.0f) + AndroidUtilities.dp(8.0f);
        AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = this.textViewSwitcher;
        clippingTextViewSwitcher.layout(iDp, measuredHeight - clippingTextViewSwitcher.getMeasuredHeight(), this.textViewSwitcher.getMeasuredWidth() + iDp, measuredHeight);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.hoverDrawable;
    }

    public boolean isDragging() {
        return this.pressed;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        Slider slider = this.materialSlider;
        if (slider != null) {
            slider.setEnabled(z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        float fRound;
        long jElapsedRealtime;
        float f;
        float f2;
        boolean z;
        float f3;
        float f4;
        Canvas canvas2 = canvas;
        updateMaterialSliderState();
        if (isUsingMaterialSlider()) {
            return;
        }
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
            this.innerPaint1.setColor(getInnerTrackColor());
            float measuredHeight2 = getMeasuredHeight() / 2.0f;
            float f5 = this.selectorWidth / 2.0f;
            float measuredWidth = getMeasuredWidth() - (this.selectorWidth / 2);
            float fDp = measuredHeight2 - (AndroidUtilities.dp(this.lineWidthDp) / 2.0f);
            float fDp2 = measuredHeight2 + (AndroidUtilities.dp(this.lineWidthDp) / 2.0f);
            this.rect.set(f5, fDp, measuredWidth, fDp2);
            drawProgressBar(canvas2, this.rect, this.innerPaint1);
            if (this.bufferedProgress > 0.0f) {
                this.innerPaint1.setColor(getThemedColor(Theme.key_player_progressCachedBackground));
                this.rect.set(f5, fDp, (this.selectorWidth / 2.0f) + (this.bufferedProgress * (getMeasuredWidth() - this.selectorWidth)), fDp2);
                drawProgressBar(canvas2, this.rect, this.innerPaint1);
            }
            if (!this.twoSided) {
                canvas2.drawRoundRect((getMeasuredWidth() / 2) - AndroidUtilities.dp(1.0f), (getMeasuredHeight() / 2) - AndroidUtilities.dp(6.0f), (getMeasuredWidth() / 2) + AndroidUtilities.dp(1.0f), (getMeasuredHeight() / 2) + AndroidUtilities.dp(6.0f), 100.0f, 100.0f, this.outerPaint1);
                if (i2 > (getMeasuredWidth() - this.selectorWidth) / 2) {
                    canvas2 = canvas;
                    canvas2.drawRoundRect(getMeasuredWidth() / 2, (getMeasuredHeight() / 2) - AndroidUtilities.dp(1.0f), (this.selectorWidth / 2) + i2, (getMeasuredHeight() / 2) + AndroidUtilities.dp(1.0f), 100.0f, 100.0f, this.outerPaint1);
                } else {
                    canvas2 = canvas;
                    canvas2.drawRoundRect((r2 / 2) + i2, (getMeasuredHeight() / 2) - AndroidUtilities.dp(1.0f), getMeasuredWidth() / 2, (getMeasuredHeight() / 2) + AndroidUtilities.dp(1.0f), 100.0f, 100.0f, this.outerPaint1);
                }
            } else {
                float f6 = this.minProgress;
                RectF rectF = this.rect;
                if (f6 >= 0.0f) {
                    float f7 = measuredWidth - f5;
                    rectF.set((f6 * f7) + f5, fDp, i2 + f5, fDp2);
                    drawProgressBar(canvas2, this.rect, this.outerPaint1);
                    int alpha = this.outerPaint1.getAlpha();
                    this.rect.set(f5, fDp, (this.minProgress * f7) + f5, fDp2);
                    this.outerPaint1.setAlpha((int) (alpha * 0.5f));
                    drawProgressBar(canvas2, this.rect, this.outerPaint1);
                    this.outerPaint1.setAlpha(alpha);
                } else {
                    rectF.set(f5, fDp, i2 + f5, fDp2);
                    drawProgressBar(canvas2, this.rect, this.outerPaint1);
                }
            }
            if (this.hoverDrawable != null) {
                int iDp = ((this.selectorWidth / 2) + i2) - AndroidUtilities.dp(16.0f);
                int iDp2 = ((this.thumbSize / 2) + measuredHeight) - AndroidUtilities.dp(16.0f);
                this.hoverDrawable.setBounds(iDp, iDp2, AndroidUtilities.dp(32.0f) + iDp, AndroidUtilities.dp(32.0f) + iDp2);
                this.hoverDrawable.draw(canvas2);
            }
            int iDp3 = AndroidUtilities.dp(this.pressed ? 8.0f : 6.0f);
            jElapsedRealtime = SystemClock.elapsedRealtime() - this.lastUpdateTime;
            if (jElapsedRealtime > 18) {
                jElapsedRealtime = 16;
            }
            f = this.currentRadius;
            f2 = iDp3;
            if (f == f2) {
                if (f < f2) {
                    float fDp3 = f + (AndroidUtilities.dp(1.0f) * (jElapsedRealtime / 60.0f));
                    this.currentRadius = fDp3;
                    if (fDp3 > f2) {
                        this.currentRadius = f2;
                    }
                } else {
                    float fDp4 = f - (AndroidUtilities.dp(1.0f) * (jElapsedRealtime / 60.0f));
                    this.currentRadius = fDp4;
                    if (fDp4 < f2) {
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
        this.innerPaint1.setColor(getInnerTrackColor());
        float measuredHeight22 = getMeasuredHeight() / 2.0f;
        float f52 = this.selectorWidth / 2.0f;
        float measuredWidth2 = getMeasuredWidth() - (this.selectorWidth / 2);
        float fDp5 = measuredHeight22 - (AndroidUtilities.dp(this.lineWidthDp) / 2.0f);
        float fDp22 = measuredHeight22 + (AndroidUtilities.dp(this.lineWidthDp) / 2.0f);
        this.rect.set(f52, fDp5, measuredWidth2, fDp22);
        drawProgressBar(canvas2, this.rect, this.innerPaint1);
        if (this.bufferedProgress > 0.0f) {
        }
        if (!this.twoSided) {
        }
        if (this.hoverDrawable != null) {
        }
        int iDp32 = AndroidUtilities.dp(this.pressed ? 8.0f : 6.0f);
        jElapsedRealtime = SystemClock.elapsedRealtime() - this.lastUpdateTime;
        if (jElapsedRealtime > 18) {
        }
        f = this.currentRadius;
        f2 = iDp32;
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
        updateMaterialSliderState();
    }

    public void updateTimestamps(MessageObject messageObject, Long l) {
        int i;
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
                }
                updateMaterialSliderState();
                return;
            }
            Spanned spanned = (Spanned) charSequence;
            try {
                URLSpanNoUnderline[] uRLSpanNoUnderlineArr = (URLSpanNoUnderline[]) spanned.getSpans(0, spanned.length(), URLSpanNoUnderline.class);
                this.timestamps = new ArrayList<>();
                if (z) {
                    this.timestampsAppearing = 0.0f;
                }
                if (this.timestampLabelPaint == null) {
                    TextPaint textPaint = new TextPaint(1);
                    this.timestampLabelPaint = textPaint;
                    textPaint.setTextSize(AndroidUtilities.dp(12.0f));
                    this.timestampLabelPaint.setColor(-1);
                }
                for (URLSpanNoUnderline uRLSpanNoUnderline : uRLSpanNoUnderlineArr) {
                    if (uRLSpanNoUnderline != null && uRLSpanNoUnderline.getURL() != null && uRLSpanNoUnderline.label != null && uRLSpanNoUnderline.getURL().startsWith("audio?") && (i = Utilities.parseInt((CharSequence) uRLSpanNoUnderline.getURL().substring(6))) >= 0) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(uRLSpanNoUnderline.label);
                        Emoji.replaceEmoji(spannableStringBuilder, this.timestampLabelPaint.getFontMetricsInt(), false);
                        this.timestamps.add(new Pair<>(Float.valueOf((((long) i) * 1000) / l.longValue()), spannableStringBuilder));
                    }
                }
                Collections.sort(this.timestamps, new Comparator() { // from class: org.telegram.ui.Components.SeekBarView$$ExternalSyntheticLambda0
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return SeekBarView.$r8$lambda$krRqn86cNzSUGZ63XNeyzAeauiE((Pair) obj, (Pair) obj2);
                    }
                });
                updateMaterialSliderState();
            } catch (Exception e) {
                FileLog.m992e(e);
                this.timestamps = null;
                this.currentTimestamp = -1;
                this.timestampsAppearing = 0.0f;
                StaticLayout[] staticLayoutArr2 = this.timestampLabel;
                if (staticLayoutArr2 != null) {
                    staticLayoutArr2[1] = null;
                    staticLayoutArr2[0] = null;
                }
                updateMaterialSliderState();
            }
        }
    }

    public static /* synthetic */ int $r8$lambda$krRqn86cNzSUGZ63XNeyzAeauiE(Pair pair, Pair pair2) {
        if (((Float) pair.first).floatValue() > ((Float) pair2.first).floatValue()) {
            return 1;
        }
        return ((Float) pair2.first).floatValue() > ((Float) pair.first).floatValue() ? -1 : 0;
    }

    private void initMaterialSlider(Context context) {
        Slider sliderCreate = MaterialSliderUiHelper.create(context);
        this.materialSlider = sliderCreate;
        sliderCreate.setImportantForAccessibility(2);
        this.materialSlider.setFocusable(false);
        this.materialSlider.setFocusableInTouchMode(false);
        this.materialSlider.setValueFrom(0.0f);
        this.materialSlider.setValueTo(1.0f);
        MaterialSliderUiHelper.applyContinuousStyle(this.materialSlider);
        this.materialSlider.addOnChangeListener(new Slider.OnChangeListener() { // from class: org.telegram.ui.Components.SeekBarView$$ExternalSyntheticLambda1
            @Override // com.google.android.material.slider.Slider.OnChangeListener
            public final void onValueChange(Slider slider, float f, boolean z) {
                this.f$0.lambda$initMaterialSlider$2(slider, f, z);
            }
        });
        this.materialSlider.addOnSliderTouchListener(new C43973());
        updateMaterialSliderColors();
        this.materialSlider.setVisibility(8);
        this.materialSlider.setEnabled(isEnabled());
        addView(this.materialSlider, LayoutHelper.createFrame(-1, -1, 16));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initMaterialSlider$2(Slider slider, float f, boolean z) {
        if (this.ignoreMaterialSliderChanges || !z) {
            return;
        }
        float progressFromMaterialSliderValue = getProgressFromMaterialSliderValue(f);
        setProgressFromMaterialSlider(getProgressFromMaterialSliderValue(f));
        if (this.reportChanges) {
            setSeekBarDrag(false, progressFromMaterialSliderValue);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SeekBarView$3 */
    public class C43973 implements Slider.OnSliderTouchListener {
        public C43973() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.material.slider.Slider.OnSliderTouchListener, com.google.android.material.slider.BaseOnSliderTouchListener
        public void onStartTrackingTouch(Slider slider) {
            SeekBarView seekBarView = SeekBarView.this;
            seekBarView.pressedDelayed = true;
            seekBarView.pressed = true;
            SeekBarViewDelegate seekBarViewDelegate = SeekBarView.this.delegate;
            if (seekBarViewDelegate != null) {
                seekBarViewDelegate.onSeekBarPressed(true);
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.material.slider.Slider.OnSliderTouchListener, com.google.android.material.slider.BaseOnSliderTouchListener
        public void onStopTrackingTouch(Slider slider) {
            float progressFromMaterialSliderValue = SeekBarView.this.getProgressFromMaterialSliderValue(slider.getValue());
            SeekBarView.this.setProgressFromMaterialSlider(progressFromMaterialSliderValue);
            SeekBarView.this.setSeekBarDrag(true, progressFromMaterialSliderValue);
            SeekBarViewDelegate seekBarViewDelegate = SeekBarView.this.delegate;
            if (seekBarViewDelegate != null) {
                seekBarViewDelegate.onSeekBarPressed(false);
            }
            SeekBarView.this.pressed = false;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SeekBarView$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStopTrackingTouch$0();
                }
            }, 50L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStopTrackingTouch$0() {
            SeekBarView.this.pressedDelayed = false;
        }
    }

    private boolean canUseMaterialSlider() {
        if (!ExteraConfig.getNewSliderStyle() || this.twoSided || this.minProgress > 0.0f || this.hasBufferedProgress || this.lineWidthDp != 3) {
            return false;
        }
        ArrayList<Pair<Float, CharSequence>> arrayList = this.timestamps;
        return arrayList == null || arrayList.isEmpty();
    }

    private boolean isUsingMaterialSlider() {
        Slider slider = this.materialSlider;
        return slider != null && slider.getVisibility() == 0;
    }

    private void updateMaterialSliderState() {
        boolean zCanUseMaterialSlider = canUseMaterialSlider();
        if (zCanUseMaterialSlider && this.materialSlider == null) {
            initMaterialSlider(getContext());
        }
        Slider slider = this.materialSlider;
        if (slider == null) {
            return;
        }
        int i = zCanUseMaterialSlider ? 0 : 8;
        if (slider.getVisibility() != i) {
            this.materialSlider.setVisibility(i);
            this.textViewSwitcher.setVisibility(zCanUseMaterialSlider ? 8 : 0);
        }
        if (zCanUseMaterialSlider) {
            int materialSliderStepsCount = getMaterialSliderStepsCount();
            float f = materialSliderStepsCount > 0 ? materialSliderStepsCount : 1.0f;
            float f2 = materialSliderStepsCount <= 0 ? 0.0f : 1.0f;
            if (materialSliderStepsCount == 0 && Math.abs(this.materialSlider.getStepSize()) > 1.0E-4f) {
                this.materialSlider.setStepSize(0.0f);
            }
            if (this.materialSlider.getValue() > f) {
                setMaterialSliderValue(f);
            }
            if (Math.abs(this.materialSlider.getValueTo() - f) > 1.0E-4f) {
                this.materialSlider.setValueTo(f);
            }
            updateMaterialSliderColors();
            updateMaterialSliderProgress(getProgress());
            if (materialSliderStepsCount <= 0 || Math.abs(this.materialSlider.getStepSize() - f2) <= 1.0E-4f) {
                return;
            }
            this.materialSlider.setStepSize(f2);
        }
    }

    private int getMaterialSliderStepsCount() {
        int i = this.separatorsCount;
        if (i > 1) {
            return i - 1;
        }
        SeekBarViewDelegate seekBarViewDelegate = this.delegate;
        if (seekBarViewDelegate != null) {
            return Math.max(seekBarViewDelegate.getStepsCount(), 0);
        }
        return 0;
    }

    private void updateMaterialSliderColors() {
        Slider slider = this.materialSlider;
        if (slider == null) {
            return;
        }
        MaterialSliderUiHelper.applyColors(slider, this.outerPaint1.getColor(), getInnerTrackColor());
    }

    private int getInnerTrackColor() {
        if (this.hasCustomInnerColor) {
            return this.customInnerColor;
        }
        return getThemedColor(Theme.key_player_progressBackground);
    }

    private void updateMaterialSliderProgress(float f) {
        if (this.materialSlider == null) {
            return;
        }
        setMaterialSliderValue(getMaterialSliderValueFromProgress(f, getMaterialSliderStepsCount()));
    }

    private void setMaterialSliderValue(float f) {
        this.ignoreMaterialSliderChanges = true;
        MaterialSliderUiHelper.setValue(this.materialSlider, f);
        this.ignoreMaterialSliderChanges = false;
    }

    private float getMaterialSliderValueFromProgress(float f, int i) {
        return i > 0 ? Math.round(r0 * i) : Utilities.clamp01(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getProgressFromMaterialSliderValue(float f) {
        int materialSliderStepsCount = getMaterialSliderStepsCount();
        if (materialSliderStepsCount > 0) {
            return Utilities.clamp(f / materialSliderStepsCount, 1.0f, 0.0f);
        }
        return Utilities.clamp01(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProgressFromMaterialSlider(float f) {
        if (getMeasuredWidth() <= this.selectorWidth) {
            this.progressToSet = f;
            return;
        }
        int iCeil = (int) Math.ceil((getMeasuredWidth() - this.selectorWidth) * Utilities.clamp01(f));
        this.thumbX = iCeil;
        if (iCeil < minThumbX()) {
            this.thumbX = minThumbX();
        } else if (this.thumbX > getMeasuredWidth() - this.selectorWidth) {
            this.thumbX = getMeasuredWidth() - this.selectorWidth;
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x01de A[EDGE_INSN: B:93:0x01de->B:84:0x01de BREAK  A[LOOP:2: B:29:0x00aa->B:83:0x01d4], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawProgressBar(Canvas canvas, RectF rectF, Paint paint) {
        int size;
        char c2;
        float fFloatValue;
        char c3;
        char c4;
        SeekBarView seekBarView = this;
        float fDp = AndroidUtilities.dp(2.0f);
        ArrayList<Pair<Float, CharSequence>> arrayList = seekBarView.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            canvas.drawRoundRect(rectF, fDp, fDp, paint);
            return;
        }
        float f = rectF.bottom;
        float f2 = seekBarView.selectorWidth / 2.0f;
        float measuredWidth = seekBarView.getMeasuredWidth() - (seekBarView.selectorWidth / 2.0f);
        AndroidUtilities.rectTmp.set(rectF);
        float fDp2 = AndroidUtilities.dp(seekBarView.timestampsAppearing * 1.0f) / 2.0f;
        if (tmpPath == null) {
            tmpPath = new Path();
        }
        tmpPath.reset();
        float fDp3 = AndroidUtilities.dp(4.0f) / (measuredWidth - f2);
        int i = 0;
        while (true) {
            size = -1;
            if (i >= seekBarView.timestamps.size()) {
                i = -1;
                break;
            } else if (((Float) seekBarView.timestamps.get(i).first).floatValue() >= fDp3) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            i = 0;
        }
        char c5 = 1;
        int size2 = seekBarView.timestamps.size() - 1;
        while (true) {
            if (size2 < 0) {
                break;
            }
            if (1.0f - ((Float) seekBarView.timestamps.get(size2).first).floatValue() >= fDp3) {
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
                c2 = 0;
            } else {
                c2 = 0;
                fFloatValue = ((Float) seekBarView.timestamps.get(i2 - 1).first).floatValue();
            }
            float fFloatValue2 = i2 == size ? 1.0f : ((Float) seekBarView.timestamps.get(i2).first).floatValue();
            while (i2 != size && i2 != 0) {
                c3 = c5;
                if (i2 >= seekBarView.timestamps.size() - 1 || ((Float) seekBarView.timestamps.get(i2).first).floatValue() - fFloatValue > fDp3) {
                    break;
                }
                i2++;
                fFloatValue2 = ((Float) seekBarView.timestamps.get(i2).first).floatValue();
                c5 = c3;
            }
            c3 = c5;
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.left = AndroidUtilities.lerp(f2, measuredWidth, fFloatValue) + (i2 > 0 ? fDp2 : 0.0f);
            float fLerp = AndroidUtilities.lerp(f2, measuredWidth, fFloatValue2) - (i2 < size ? fDp2 : 0.0f);
            rectF2.right = fLerp;
            float f3 = rectF.right;
            char c6 = fLerp > f3 ? c3 : c2;
            if (c6 != 0) {
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
                    if (c6 != 0) {
                        c4 = 4;
                        if (rectF2.left >= rectF.left) {
                        }
                        tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                        if (c6 != 0) {
                            break;
                        }
                    } else {
                        c4 = 4;
                    }
                    float f6 = seekBarView.timestampsAppearing;
                    if (i2 >= size) {
                        float[] fArr = tmpRadii;
                        float f7 = 0.7f * fDp * f6;
                        fArr[7] = f7;
                        fArr[6] = f7;
                        fArr[c3] = f7;
                        fArr[c2] = f7;
                        fArr[5] = fDp;
                        fArr[c4] = fDp;
                        fArr[3] = fDp;
                        fArr[2] = fDp;
                    } else {
                        float[] fArr2 = tmpRadii;
                        float f8 = 0.7f * fDp * f6;
                        fArr2[5] = f8;
                        fArr2[c4] = f8;
                        fArr2[3] = f8;
                        fArr2[2] = f8;
                        fArr2[7] = f8;
                        fArr2[6] = f8;
                        fArr2[c3] = f8;
                        fArr2[c2] = f8;
                    }
                    tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                    if (c6 != 0) {
                    }
                } else {
                    c4 = 4;
                }
                float[] fArr3 = tmpRadii;
                fArr3[7] = fDp;
                fArr3[6] = fDp;
                fArr3[c3] = fDp;
                fArr3[c2] = fDp;
                float f9 = 0.7f * fDp * seekBarView.timestampsAppearing;
                fArr3[5] = f9;
                fArr3[c4] = f9;
                fArr3[3] = f9;
                fArr3[2] = f9;
                tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                if (c6 != 0) {
                }
            }
            i2++;
            seekBarView = this;
            c5 = c3;
        }
        canvas.drawPath(tmpPath, paint);
    }

    private void setTimestampIndex(int i) {
        if (this.timestampIndex != i) {
            this.timestampIndex = i;
            if (i < 0 || i >= this.timestamps.size()) {
                return;
            }
            this.textViewSwitcher.setText((CharSequence) this.timestamps.get(this.timestampIndex).second);
        }
    }

    private int getTimestampLabelWidth() {
        return (int) (Math.abs(((this.selectorWidth / 2.0f) + (this.lastDuration > 600000 ? AndroidUtilities.dp(42.0f) : 0)) - ((getMeasuredWidth() - (this.selectorWidth / 2.0f)) - (this.lastDuration > 600000 ? AndroidUtilities.dp(42.0f) : 0))) - AndroidUtilities.dp(66.0f));
    }

    private void drawTimestampLabel(Canvas canvas) {
        ArrayList<Pair<Float, CharSequence>> arrayList = this.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        float progress = getProgress();
        int size = this.timestamps.size() - 1;
        while (true) {
            if (size < 0) {
                size = -1;
                break;
            } else if (((Float) this.timestamps.get(size).first).floatValue() - 0.001f <= progress) {
                break;
            } else {
                size--;
            }
        }
        setTimestampIndex(size);
        if (this.timestampLabel == null) {
            this.timestampLabel = new StaticLayout[2];
        }
        float fDp = (this.selectorWidth / 2.0f) + (this.lastDuration > 600000 ? AndroidUtilities.dp(42.0f) : 0);
        float fAbs = Math.abs(fDp - ((getMeasuredWidth() - (this.selectorWidth / 2.0f)) - (this.lastDuration > 600000 ? AndroidUtilities.dp(42.0f) : 0))) - AndroidUtilities.dp(66.0f);
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
            if (size >= 0 && size < this.timestamps.size()) {
                CharSequence charSequence = (CharSequence) this.timestamps.get(size).second;
                StaticLayout[] staticLayoutArr4 = this.timestampLabel;
                if (charSequence == null) {
                    staticLayoutArr4[0] = null;
                } else {
                    staticLayoutArr4[0] = makeStaticLayout(charSequence, (int) fAbs);
                }
            } else {
                this.timestampLabel[0] = null;
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
        canvas.translate(fDp + AndroidUtilities.dp(25.0f), (getMeasuredHeight() / 2.0f) + AndroidUtilities.dp(14.0f));
        this.timestampLabelPaint.setColor(getThemedColor(Theme.key_player_time));
        if (this.timestampLabel[1] != null) {
            canvas.save();
            if (this.timestampChangeDirection != 0) {
                canvas.translate(AndroidUtilities.dp(8.0f) + (AndroidUtilities.dp(16.0f) * (-this.timestampChangeDirection) * interpolation), 0.0f);
            }
            canvas.translate(0.0f, (-this.timestampLabel[1].getHeight()) / 2.0f);
            this.timestampLabelPaint.setAlpha((int) ((1.0f - interpolation) * 255.0f * this.timestampsAppearing));
            canvas.restore();
        }
        if (this.timestampLabel[0] != null) {
            canvas.save();
            if (this.timestampChangeDirection != 0) {
                canvas.translate(AndroidUtilities.dp(8.0f) + (AndroidUtilities.dp(16.0f) * this.timestampChangeDirection * (1.0f - interpolation)), 0.0f);
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
            textPaint.setTextSize(AndroidUtilities.dp(12.0f));
        }
        this.timestampLabelPaint.setColor(getThemedColor(Theme.key_player_time));
        if (charSequence == null) {
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.timestampLabelPaint, i).setMaxLines(1).setAlignment(Layout.Alignment.ALIGN_CENTER).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(Math.min(AndroidUtilities.dp(400.0f), i)).build();
    }

    public SeekBarAccessibilityDelegate getSeekBarAccessibilityDelegate() {
        return this.seekBarAccessibilityDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
