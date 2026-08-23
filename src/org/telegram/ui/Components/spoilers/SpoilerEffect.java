package org.telegram.ui.Components.spoilers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.style.ForegroundColorSpan;
import android.text.style.ReplacementSpan;
import android.view.View;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.BaseCell;
import org.telegram.ui.Components.Easings;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.TextStyleSpan;

/* JADX INFO: loaded from: classes3.dex */
public class SpoilerEffect extends Drawable {
    public static final float[] ALPHAS;
    public static final int MAX_PARTICLES_PER_ENTITY;
    public static final int PARTICLES_PER_CHARACTER;
    private static WeakHashMap lazyLayoutLines;
    private static final float[][] particlePoints;
    private static final Path tempPath;
    private static Paint xRefPaint;
    private int bitmapSize;
    public boolean drawPoints;
    private boolean enableAlpha;
    public boolean insideQuote;
    private boolean invalidateParent;
    private boolean isLowDevice;
    private int lastColor;
    private long lastDrawTime;
    private int mAlpha;
    private View mParent;
    private int maxParticles;
    private Runnable onRippleEndCallback;
    private final Paint[] particlePaints;
    private final float[] particleRands;
    private final ArrayList particles;
    private final Stack particlesPool;
    private final int[] renderCount;
    private boolean reverseAnimator;
    private ValueAnimator rippleAnimator;
    private TimeInterpolator rippleInterpolator;
    private float rippleMaxRadius;
    private float rippleProgress;
    private float rippleX;
    private float rippleY;
    private boolean shouldInvalidateColor;
    private List spaces;
    private boolean suppressUpdates;
    private RectF visibleRect;

    public static /* synthetic */ float $r8$lambda$DlWWdeTSSSqeRn6DubqCDzjPfOU(float f) {
        return f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    static {
        int iMeasureMaxParticlesCount = measureMaxParticlesCount();
        MAX_PARTICLES_PER_ENTITY = iMeasureMaxParticlesCount;
        PARTICLES_PER_CHARACTER = measureParticlesPerCharacter();
        float[] fArr = {0.3f, 0.6f, 1.0f};
        ALPHAS = fArr;
        particlePoints = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length, iMeasureMaxParticlesCount * 5);
        tempPath = new Path();
    }

    private static int measureParticlesPerCharacter() {
        return SharedConfig.getDevicePerformanceClass() != 2 ? 10 : 30;
    }

    private static int measureMaxParticlesCount() {
        return SharedConfig.getDevicePerformanceClass() != 2 ? 100 : 150;
    }

    public SpoilerEffect() {
        float[] fArr = ALPHAS;
        this.particlePaints = new Paint[fArr.length];
        this.particlesPool = new Stack();
        this.particleRands = new float[14];
        this.renderCount = new int[fArr.length];
        this.particles = new ArrayList();
        this.rippleProgress = -1.0f;
        this.spaces = new ArrayList();
        this.mAlpha = 255;
        this.rippleInterpolator = new TimeInterpolator() { // from class: org.telegram.ui.Components.spoilers.SpoilerEffect$$ExternalSyntheticLambda0
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                return SpoilerEffect.$r8$lambda$DlWWdeTSSSqeRn6DubqCDzjPfOU(f);
            }
        };
        for (int i = 0; i < ALPHAS.length; i++) {
            this.particlePaints[i] = new Paint();
            if (i == 0) {
                this.particlePaints[i].setStrokeWidth(AndroidUtilities.dp(1.4f));
                this.particlePaints[i].setStyle(Paint.Style.STROKE);
                this.particlePaints[i].setStrokeCap(Paint.Cap.ROUND);
            } else {
                this.particlePaints[i].setStrokeWidth(AndroidUtilities.dp(1.2f));
                this.particlePaints[i].setStyle(Paint.Style.STROKE);
                this.particlePaints[i].setStrokeCap(Paint.Cap.ROUND);
            }
        }
        this.isLowDevice = SharedConfig.getDevicePerformanceClass() == 0;
        this.enableAlpha = true;
        setColor(0);
    }

    public void setSuppressUpdates(boolean z) {
        this.suppressUpdates = z;
        invalidateSelf();
    }

    public void setInvalidateParent(boolean z) {
        this.invalidateParent = z;
    }

    public void updateMaxParticles() {
        int iWidth = getBounds().width() / AndroidUtilities.dp(6.0f);
        int i = PARTICLES_PER_CHARACTER;
        setMaxParticlesCount(MathUtils.clamp(iWidth * i, i, MAX_PARTICLES_PER_ENTITY));
    }

    public void setOnRippleEndCallback(Runnable runnable) {
        this.onRippleEndCallback = runnable;
    }

    public void startRipple(float f, float f2, float f3) {
        startRipple(f, f2, f3, false);
    }

    public void startRipple(float f, float f2, float f3, boolean z) {
        this.rippleX = f;
        this.rippleY = f2;
        this.rippleMaxRadius = f3;
        this.rippleProgress = z ? 1.0f : 0.0f;
        this.reverseAnimator = z;
        ValueAnimator valueAnimator = this.rippleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final int alpha = this.reverseAnimator ? 255 : this.particlePaints[ALPHAS.length - 1].getAlpha();
        ValueAnimator duration = ValueAnimator.ofFloat(this.rippleProgress, z ? 0.0f : 1.0f).setDuration((long) MathUtils.clamp(this.rippleMaxRadius * 0.3f, 250.0f, 550.0f));
        this.rippleAnimator = duration;
        duration.setInterpolator(this.rippleInterpolator);
        this.rippleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.spoilers.SpoilerEffect$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$startRipple$1(alpha, valueAnimator2);
            }
        });
        this.rippleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.spoilers.SpoilerEffect.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Iterator it = SpoilerEffect.this.particles.iterator();
                while (it.hasNext()) {
                    Particle particle = (Particle) it.next();
                    if (SpoilerEffect.this.particlesPool.size() < SpoilerEffect.this.maxParticles) {
                        SpoilerEffect.this.particlesPool.push(particle);
                    }
                    it.remove();
                }
                if (SpoilerEffect.this.onRippleEndCallback != null) {
                    SpoilerEffect.this.onRippleEndCallback.run();
                    SpoilerEffect.this.onRippleEndCallback = null;
                }
                SpoilerEffect.this.rippleAnimator = null;
                SpoilerEffect.this.invalidateSelf();
            }
        });
        this.rippleAnimator.start();
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRipple$1(int i, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.rippleProgress = fFloatValue;
        setAlpha((int) (i * (1.0f - fFloatValue)));
        this.shouldInvalidateColor = true;
        invalidateSelf();
    }

    public void setRippleInterpolator(TimeInterpolator timeInterpolator) {
        this.rippleInterpolator = timeInterpolator;
    }

    public void getRipplePath(Path path) {
        path.addCircle(this.rippleX, this.rippleY, this.rippleMaxRadius * MathUtils.clamp(this.rippleProgress, 0.0f, 1.0f), Path.Direction.CW);
    }

    public float getRippleProgress() {
        return this.rippleProgress;
    }

    public boolean shouldInvalidateColor() {
        boolean z = this.shouldInvalidateColor;
        this.shouldInvalidateColor = false;
        return z;
    }

    public void setRippleProgress(float f) {
        ValueAnimator valueAnimator;
        this.rippleProgress = f;
        if (f == -1.0f && (valueAnimator = this.rippleAnimator) != null) {
            valueAnimator.cancel();
        }
        this.shouldInvalidateColor = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        Iterator it = this.particles.iterator();
        while (it.hasNext()) {
            Particle particle = (Particle) it.next();
            if (!getBounds().contains((int) particle.f1511x, (int) particle.f1512y)) {
                it.remove();
            }
            if (this.particlesPool.size() < this.maxParticles) {
                this.particlesPool.push(particle);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0275 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x024b A[PHI: r4
  0x024b: PHI (r4v9 int) = (r4v8 int), (r4v11 int) binds: [B:79:0x022b, B:83:0x0235] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0257  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        RectF rectF;
        if (this.drawPoints) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            int iMin = (int) Math.min(jCurrentTimeMillis - this.lastDrawTime, 34L);
            this.lastDrawTime = jCurrentTimeMillis;
            int i = getBounds().left;
            int i2 = getBounds().top;
            int i3 = getBounds().right;
            int i4 = getBounds().bottom;
            for (int i5 = 0; i5 < ALPHAS.length; i5++) {
                this.renderCount[i5] = 0;
            }
            int i6 = 0;
            while (i6 < this.particles.size()) {
                Particle particle = (Particle) this.particles.get(i6);
                float f = iMin;
                particle.currentTime = Math.min(particle.currentTime + f, particle.lifeTime);
                if (particle.currentTime >= particle.lifeTime || isOutOfBounds(i, i2, i3, i4, particle.f1511x, particle.f1512y)) {
                    if (this.particlesPool.size() < this.maxParticles) {
                        this.particlesPool.push(particle);
                    }
                    this.particles.remove(i6);
                    i6--;
                } else {
                    float f2 = (particle.velocity * f) / 500.0f;
                    particle.f1511x += particle.vecX * f2;
                    particle.f1512y += particle.vecY * f2;
                }
                i6++;
            }
            int size = this.particles.size();
            int i7 = this.maxParticles;
            if (size < i7) {
                int size2 = i7 - this.particles.size();
                Arrays.fill(this.particleRands, -1.0f);
                for (int i8 = 0; i8 < size2; i8++) {
                    float[] fArr = this.particleRands;
                    int i9 = i8 % 14;
                    float fNextFloat = fArr[i9];
                    if (fNextFloat == -1.0f) {
                        fNextFloat = Utilities.fastRandom.nextFloat();
                        fArr[i9] = fNextFloat;
                    }
                    Particle particle2 = !this.particlesPool.isEmpty() ? (Particle) this.particlesPool.pop() : new Particle();
                    int i10 = 0;
                    while (true) {
                        generateRandomLocation(particle2, i8);
                        int i11 = i10 + 1;
                        if (!isOutOfBounds(i, i2, i3, i4, particle2.f1511x, particle2.f1512y) || i11 >= 4) {
                            break;
                        } else {
                            i10 = i11;
                        }
                    }
                    double d = ((((double) fNextFloat) * 3.141592653589793d) * 2.0d) - 3.141592653589793d;
                    float fCos = (float) Math.cos(d);
                    float fSin = (float) Math.sin(d);
                    particle2.vecX = fCos;
                    particle2.vecY = fSin;
                    particle2.currentTime = 0.0f;
                    particle2.lifeTime = Math.abs(Utilities.fastRandom.nextInt(2000)) + MediaDataController.MAX_STYLE_RUNS_COUNT;
                    particle2.velocity = (fNextFloat * 6.0f) + 4.0f;
                    particle2.alpha = Utilities.fastRandom.nextInt(ALPHAS.length);
                    this.particles.add(particle2);
                }
            }
            for (int length = this.enableAlpha ? 0 : ALPHAS.length - 1; length < ALPHAS.length; length++) {
                float strokeWidth = this.particlePaints[length].getStrokeWidth() / 2.0f;
                int i12 = 0;
                for (int i13 = 0; i13 < this.particles.size(); i13++) {
                    Particle particle3 = (Particle) this.particles.get(i13);
                    if (particle3 != null && (((rectF = this.visibleRect) == null || rectF.contains(particle3.f1511x, particle3.f1512y)) && (particle3.alpha == length || !this.enableAlpha))) {
                        float[][] fArr2 = particlePoints;
                        float[] fArr3 = fArr2[length];
                        if (i12 < fArr3.length - 2) {
                            fArr3[i12] = particle3.f1511x;
                            fArr2[length][i12 + 1] = particle3.f1512y;
                            int i14 = i12 + 2;
                            if (particle3.f1511x < strokeWidth) {
                                float[] fArr4 = fArr2[length];
                                if (i14 >= fArr4.length - 2) {
                                    i12 = i14;
                                } else {
                                    fArr4[i14] = particle3.f1511x + this.bitmapSize;
                                    fArr2[length][i12 + 3] = particle3.f1512y;
                                    i12 += 4;
                                }
                            } else {
                                i12 = i14;
                            }
                            if (particle3.f1511x > this.bitmapSize - strokeWidth) {
                                float[] fArr5 = fArr2[length];
                                if (i12 < fArr5.length - 2) {
                                    fArr5[i12] = particle3.f1511x - this.bitmapSize;
                                    fArr2[length][i12 + 1] = particle3.f1512y;
                                    i12 += 2;
                                    if (particle3.f1512y >= strokeWidth) {
                                        float[] fArr6 = fArr2[length];
                                        if (i12 < fArr6.length - 2) {
                                            fArr6[i12] = particle3.f1511x;
                                            fArr2[length][i12 + 1] = particle3.f1512y + this.bitmapSize;
                                            i12 += 2;
                                            if (particle3.f1512y <= this.bitmapSize - strokeWidth) {
                                                float[] fArr7 = fArr2[length];
                                                if (i12 < fArr7.length - 2) {
                                                    fArr7[i12] = particle3.f1511x;
                                                    fArr2[length][i12 + 1] = particle3.f1512y - this.bitmapSize;
                                                    i12 += 2;
                                                }
                                            }
                                        }
                                    } else if (particle3.f1512y <= this.bitmapSize - strokeWidth) {
                                    }
                                }
                            } else if (particle3.f1512y >= strokeWidth) {
                            }
                        }
                    }
                }
                canvas.drawPoints(particlePoints[length], 0, i12, this.particlePaints[length]);
            }
            return;
        }
        SpoilerEffectBitmapFactory.getInstance().getPaint().setColorFilter(new PorterDuffColorFilter(this.lastColor, PorterDuff.Mode.SRC_IN));
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right, getBounds().bottom, SpoilerEffectBitmapFactory.getInstance().getPaint());
        if (LiteMode.isEnabled(128)) {
            invalidateSelf();
            SpoilerEffectBitmapFactory.getInstance().checkUpdate();
        }
    }

    public void setVisibleBounds(float f, float f2, float f3, float f4) {
        if (this.visibleRect == null) {
            this.visibleRect = new RectF();
        }
        RectF rectF = this.visibleRect;
        if (rectF.left == f && rectF.right == f3 && rectF.top == f2 && rectF.bottom == f4) {
            return;
        }
        rectF.left = f;
        rectF.top = f2;
        rectF.right = f3;
        rectF.bottom = f4;
        invalidateSelf();
    }

    private boolean isOutOfBounds(int i, int i2, int i3, int i4, float f, float f2) {
        if (f < i || f > i3 || f2 < i2 + AndroidUtilities.dp(2.5f) || f2 > i4 - AndroidUtilities.dp(2.5f)) {
            return true;
        }
        for (int i5 = 0; i5 < this.spaces.size(); i5++) {
            if (((RectF) this.spaces.get(i5)).contains(f, f2)) {
                return true;
            }
        }
        return false;
    }

    private void generateRandomLocation(Particle particle, int i) {
        particle.f1511x = getBounds().left + (Utilities.fastRandom.nextFloat() * getBounds().width());
        particle.f1512y = getBounds().top + (Utilities.fastRandom.nextFloat() * getBounds().height());
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        View view = this.mParent;
        if (view != null) {
            if (view.getParent() != null && this.invalidateParent) {
                ((View) view.getParent()).invalidate();
            } else if (view instanceof BaseCell) {
                ((BaseCell) view).invalidateLite();
            } else {
                view.invalidate();
            }
        }
    }

    public void setParentView(View view) {
        this.mParent = view;
    }

    public View getParentView() {
        return this.mParent;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mAlpha = i;
        int i2 = 0;
        while (true) {
            float[] fArr = ALPHAS;
            if (i2 >= fArr.length) {
                return;
            }
            this.particlePaints[i2].setAlpha((int) (fArr[i2] * i));
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        for (Paint paint : this.particlePaints) {
            paint.setColorFilter(colorFilter);
        }
    }

    public void setColor(int i) {
        if (this.lastColor == i) {
            return;
        }
        int i2 = 0;
        while (true) {
            float[] fArr = ALPHAS;
            if (i2 < fArr.length) {
                this.particlePaints[i2].setColor(ColorUtils.setAlphaComponent(i, (int) (this.mAlpha * fArr[i2])));
                i2++;
            } else {
                this.lastColor = i;
                return;
            }
        }
    }

    public void setMaxParticlesCount(int i) {
        this.maxParticles = i;
        while (this.particlesPool.size() + this.particles.size() < i) {
            this.particlesPool.push(new Particle());
        }
    }

    public static void addSpoilers(TextView textView, Stack stack, List list) {
        int measuredWidth = textView.getMeasuredWidth();
        Layout layout = textView.getLayout();
        if (measuredWidth <= 0) {
            measuredWidth = -2;
        }
        addSpoilers(textView, layout, 0, measuredWidth, (Spanned) textView.getText(), stack, list, null);
    }

    public static void addSpoilers(TextView textView, Stack stack, List list, ArrayList arrayList) {
        int measuredWidth = textView.getMeasuredWidth();
        Layout layout = textView.getLayout();
        if (measuredWidth <= 0) {
            measuredWidth = -2;
        }
        addSpoilers(textView, layout, 0, measuredWidth, (Spanned) textView.getText(), stack, list, arrayList);
    }

    public static void addSpoilers(View view, Layout layout, Stack stack, List list) {
        if (layout.getText() instanceof Spanned) {
            addSpoilers(view, layout, (Spanned) layout.getText(), stack, list);
        }
    }

    public static void addSpoilers(View view, Layout layout, int i, int i2, Stack stack, List list) {
        if (layout.getText() instanceof Spanned) {
            addSpoilers(view, layout, i, i2, (Spanned) layout.getText(), stack, list, null);
        }
    }

    public static void addSpoilers(View view, Layout layout, Spanned spanned, Stack stack, List list) {
        if (layout == null) {
            return;
        }
        addSpoilers(view, layout, -1, -1, spanned, stack, list, null);
    }

    public static void addSpoilers(View view, Layout layout, int i, int i2, Spanned spanned, Stack stack, List list, ArrayList arrayList) {
        int i3;
        int i4;
        View view2;
        Layout layout2;
        Stack stack2;
        List list2;
        ArrayList arrayList2;
        if (layout == null) {
            return;
        }
        TextStyleSpan[] textStyleSpanArr = (TextStyleSpan[]) spanned.getSpans(0, layout.getText().length(), TextStyleSpan.class);
        for (int i5 = 0; i5 < Math.min(100, textStyleSpanArr.length); i5++) {
            if (textStyleSpanArr[i5].isSpoiler()) {
                int spanStart = spanned.getSpanStart(textStyleSpanArr[i5]);
                int spanEnd = spanned.getSpanEnd(textStyleSpanArr[i5]);
                if (i == -1 && i2 == -1) {
                    int lineForOffset = layout.getLineForOffset(spanEnd);
                    int iMin = Integer.MAX_VALUE;
                    int iMax = Integer.MIN_VALUE;
                    for (int lineForOffset2 = layout.getLineForOffset(spanStart); lineForOffset2 <= lineForOffset; lineForOffset2++) {
                        iMin = Math.min(iMin, (int) layout.getLineLeft(lineForOffset2));
                        iMax = Math.max(iMax, (int) layout.getLineRight(lineForOffset2));
                    }
                    i3 = iMin;
                    i4 = iMax;
                    view2 = view;
                    layout2 = layout;
                    list2 = list;
                    arrayList2 = arrayList;
                    stack2 = stack;
                } else {
                    i3 = i;
                    i4 = i2;
                    view2 = view;
                    layout2 = layout;
                    stack2 = stack;
                    list2 = list;
                    arrayList2 = arrayList;
                }
                addSpoilerRangesInternal(view2, layout2, i3, i4, spanStart, spanEnd, stack2, list2, arrayList2);
            }
        }
        if (!(view instanceof TextView) || stack == null) {
            return;
        }
        stack.clear();
    }

    private static void addSpoilerRangesInternal(final View view, final Layout layout, final int i, final int i2, int i3, int i4, final Stack stack, final List list, final ArrayList arrayList) {
        layout.getSelectionPath(i3, i4, new Path() { // from class: org.telegram.ui.Components.spoilers.SpoilerEffect.2
            @Override // android.graphics.Path
            public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
                SpoilerEffect.addSpoilerRangeInternal(view, layout, f, f2, f3, f4, stack, list, i, i2, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addSpoilerRangeInternal(View view, Layout layout, float f, float f2, float f3, float f4, Stack stack, List list, int i, int i2, ArrayList arrayList) {
        int i3 = 0;
        SpoilerEffect spoilerEffect = (stack == null || stack.isEmpty()) ? new SpoilerEffect() : (SpoilerEffect) stack.remove(0);
        spoilerEffect.insideQuote = false;
        if (arrayList != null) {
            float f5 = (f2 + f4) / 2.0f;
            while (true) {
                if (i3 >= arrayList.size()) {
                    break;
                }
                QuoteSpan.Block block = (QuoteSpan.Block) arrayList.get(i3);
                if (f5 >= block.top && f5 <= block.bottom) {
                    spoilerEffect.insideQuote = true;
                    break;
                }
                i3++;
            }
        }
        spoilerEffect.setRippleProgress(-1.0f);
        spoilerEffect.setBounds((int) Math.max(f, i), (int) f2, (int) Math.min(f3, i2 <= 0 ? 2.1474836E9f : i2), (int) f4);
        spoilerEffect.setColor(layout.getPaint().getColor());
        spoilerEffect.setRippleInterpolator(Easings.easeInQuad);
        spoilerEffect.updateMaxParticles();
        if (view != null) {
            spoilerEffect.setParentView(view);
        }
        list.add(spoilerEffect);
    }

    public static void clipOutCanvas(Canvas canvas, List list) {
        tempPath.rewind();
        for (int i = 0; i < list.size(); i++) {
            Rect bounds = ((SpoilerEffect) list.get(i)).getBounds();
            tempPath.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
        }
        canvas.clipPath(tempPath, Region.Op.DIFFERENCE);
    }

    public static void layoutDrawMaybe(Layout layout, Canvas canvas) {
        if (canvas instanceof SizeNotifierFrameLayout.SimplerCanvas) {
            int alpha = layout.getPaint().getAlpha();
            layout.getPaint().setAlpha((int) (alpha * 0.4f));
            if (lazyLayoutLines == null) {
                lazyLayoutLines = new WeakHashMap();
            }
            ArrayList arrayList = (ArrayList) lazyLayoutLines.get(layout);
            if (arrayList == null) {
                arrayList = new ArrayList();
                int lineCount = layout.getLineCount();
                for (int i = 0; i < lineCount; i++) {
                    arrayList.add(new RectF(layout.getLineLeft(i), layout.getLineTop(i), layout.getLineRight(i), layout.getLineBottom(i)));
                }
                lazyLayoutLines.put(layout, arrayList);
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                canvas.drawRect((RectF) arrayList.get(i2), layout.getPaint());
            }
            layout.getPaint().setAlpha(alpha);
            return;
        }
        layout.draw(canvas);
    }

    public static void renderWithRipple(View view, boolean z, int i, int i2, AtomicReference atomicReference, int i3, Layout layout, List list, Canvas canvas, boolean z2) {
        StaticLayout staticLayout;
        AtomicReference atomicReference2;
        TextStyleSpan[] textStyleSpanArr;
        int i4;
        if (list == null || list.isEmpty()) {
            layoutDrawMaybe(layout, canvas);
            return;
        }
        Layout layoutBuild = (Layout) atomicReference.get();
        int i5 = 0;
        if (layoutBuild == null || !layout.getText().toString().equals(layoutBuild.getText().toString()) || layout.getWidth() != layoutBuild.getWidth() || layout.getHeight() != layoutBuild.getHeight()) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(layout.getText());
            if (layout.getText() instanceof Spanned) {
                Spanned spanned = (Spanned) layout.getText();
                TextStyleSpan[] textStyleSpanArr2 = (TextStyleSpan[]) spanned.getSpans(0, spanned.length(), TextStyleSpan.class);
                int i6 = 0;
                while (i6 < Math.min(100, textStyleSpanArr2.length)) {
                    TextStyleSpan textStyleSpan = textStyleSpanArr2[i6];
                    if (textStyleSpan.isSpoiler()) {
                        int spanStart = spanned.getSpanStart(textStyleSpan);
                        int spanEnd = spanned.getSpanEnd(textStyleSpan);
                        ReplacementSpan[] replacementSpanArr = (ReplacementSpan[]) spanned.getSpans(spanStart, spanEnd, ReplacementSpan.class);
                        int length = replacementSpanArr.length;
                        while (i5 < length) {
                            TextStyleSpan[] textStyleSpanArr3 = textStyleSpanArr2;
                            final ReplacementSpan replacementSpan = replacementSpanArr[i5];
                            spannableStringBuilder.setSpan(new ReplacementSpan() { // from class: org.telegram.ui.Components.spoilers.SpoilerEffect.3
                                @Override // android.text.style.ReplacementSpan
                                public void draw(Canvas canvas2, CharSequence charSequence, int i7, int i8, float f, int i9, int i10, int i11, Paint paint) {
                                }

                                @Override // android.text.style.ReplacementSpan
                                public int getSize(Paint paint, CharSequence charSequence, int i7, int i8, Paint.FontMetricsInt fontMetricsInt) {
                                    return replacementSpan.getSize(paint, charSequence, i7, i8, fontMetricsInt);
                                }
                            }, spanned.getSpanStart(replacementSpan), spanned.getSpanEnd(replacementSpan), spanned.getSpanFlags(textStyleSpan));
                            spannableStringBuilder.removeSpan(replacementSpan);
                            i5++;
                            textStyleSpanArr2 = textStyleSpanArr3;
                            i6 = i6;
                            length = length;
                            replacementSpanArr = replacementSpanArr;
                        }
                        textStyleSpanArr = textStyleSpanArr2;
                        i4 = i6;
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(0), spanStart, spanEnd, spanned.getSpanFlags(textStyleSpan));
                        spannableStringBuilder.removeSpan(textStyleSpan);
                    } else {
                        textStyleSpanArr = textStyleSpanArr2;
                        i4 = i6;
                    }
                    i6 = i4 + 1;
                    textStyleSpanArr2 = textStyleSpanArr;
                    i5 = 0;
                }
            }
            if (i3 == 1) {
                staticLayout = new StaticLayout(spannableStringBuilder, layout.getPaint(), layout.getWidth(), Layout.Alignment.ALIGN_CENTER, 1.0f, AndroidUtilities.dp(1.66f), false);
            } else if (Build.VERSION.SDK_INT >= 24) {
                layoutBuild = StaticLayout.Builder.obtain(spannableStringBuilder, 0, spannableStringBuilder.length(), layout.getPaint(), layout.getWidth()).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(layout.getAlignment()).setLineSpacing(layout.getSpacingAdd(), layout.getSpacingMultiplier()).build();
                atomicReference2 = atomicReference;
                atomicReference2.set(layoutBuild);
            } else {
                staticLayout = new StaticLayout(spannableStringBuilder, layout.getPaint(), layout.getWidth(), layout.getAlignment(), layout.getSpacingMultiplier(), layout.getSpacingAdd(), false);
            }
            atomicReference2 = atomicReference;
            layoutBuild = staticLayout;
            atomicReference2.set(layoutBuild);
        }
        if (!list.isEmpty()) {
            canvas.save();
            canvas.translate(0.0f, i2);
            layoutBuild.draw(canvas);
            canvas.restore();
        } else {
            layoutDrawMaybe(layout, canvas);
        }
        if (list.isEmpty()) {
            return;
        }
        tempPath.rewind();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Rect bounds = ((SpoilerEffect) it.next()).getBounds();
            tempPath.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
        }
        int i7 = 0;
        if (!list.isEmpty() && ((SpoilerEffect) list.get(0)).rippleProgress != -1.0f) {
            canvas.save();
            Path path = tempPath;
            canvas.clipPath(path);
            path.rewind();
            if (!list.isEmpty()) {
                ((SpoilerEffect) list.get(0)).getRipplePath(path);
            }
            canvas.clipPath(path);
            canvas.translate(0.0f, -view.getPaddingTop());
            layoutDrawMaybe(layout, canvas);
            canvas.restore();
            i7 = 0;
        }
        boolean z3 = ((SpoilerEffect) list.get(i7)).rippleProgress != -1.0f;
        if (z3) {
            int measuredWidth = view.getMeasuredWidth();
            if (z2 && (view.getParent() instanceof View)) {
                measuredWidth = ((View) view.getParent()).getMeasuredWidth();
            }
            canvas.saveLayer(0.0f, 0.0f, measuredWidth, view.getMeasuredHeight(), null, 31);
        } else {
            canvas.save();
        }
        canvas.translate(0.0f, -view.getPaddingTop());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            SpoilerEffect spoilerEffect = (SpoilerEffect) it2.next();
            spoilerEffect.setInvalidateParent(z);
            if (spoilerEffect.getParentView() != view) {
                spoilerEffect.setParentView(view);
            }
            if (spoilerEffect.shouldInvalidateColor()) {
                spoilerEffect.setColor(ColorUtils.blendARGB(i, (i3 == 1 ? layout.getPaint() : Theme.chat_msgTextPaint).getColor(), Math.max(0.0f, spoilerEffect.getRippleProgress())));
            } else {
                spoilerEffect.setColor(i);
            }
            spoilerEffect.draw(canvas);
        }
        if (z3) {
            Path path2 = tempPath;
            path2.rewind();
            ((SpoilerEffect) list.get(0)).getRipplePath(path2);
            if (xRefPaint == null) {
                Paint paint = new Paint(1);
                xRefPaint = paint;
                paint.setColor(-16777216);
                xRefPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            canvas.drawPath(path2, xRefPaint);
        }
        canvas.restore();
    }

    public void setSize(int i) {
        this.bitmapSize = i;
    }

    private static class Particle {
        private int alpha;
        private float currentTime;
        private float lifeTime;
        private float vecX;
        private float vecY;
        private float velocity;

        /* JADX INFO: renamed from: x */
        private float f1511x;

        /* JADX INFO: renamed from: y */
        private float f1512y;

        private Particle() {
        }
    }
}
