package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.Components.SeekBar;

/* JADX INFO: loaded from: classes3.dex */
public class SeekBarWaveform {
    private static Paint paintInner;
    private static Paint paintOuter;
    private Path alphaPath;
    private ArrayList animatedValues;
    private SeekBar.SeekBarDelegate delegate;
    public float explodeProgress;
    public float explosionRate;
    private float[] fromHeights;
    private int fromWidth;
    private int height;
    private float[] heights;
    private int innerColor;
    private boolean isUnread;
    private boolean loading;
    private Paint loadingPaint;
    private int loadingPaintColor1;
    private int loadingPaintColor2;
    private float loadingPaintWidth;
    private long loadingStart;
    private MessageObject messageObject;
    private int outerColor;
    private View parentView;
    private Particles particles;
    private Path path;
    private float progress;
    private boolean selected;
    private int selectedColor;
    private float startX;
    private float[] toHeights;
    private int toWidth;
    private byte[] waveformBytes;
    private int width;
    private int thumbX = 0;
    private int thumbDX = 0;
    private boolean startDraging = false;
    private boolean pressed = false;
    private float alpha = 1.0f;
    private float clearProgress = 1.0f;
    private AnimatedFloat appearFloat = new AnimatedFloat(125, 600, CubicBezierInterpolator.EASE_OUT_QUINT);
    private float waveScaling = 1.0f;
    private AnimatedFloat loadingFloat = new AnimatedFloat(150, CubicBezierInterpolator.DEFAULT);
    private boolean exploding = false;

    public SeekBarWaveform(Context context) {
        if (paintInner == null) {
            paintInner = new Paint(1);
            paintOuter = new Paint(1);
            Paint paint = paintInner;
            Paint.Style style = Paint.Style.FILL;
            paint.setStyle(style);
            paintOuter.setStyle(style);
        }
    }

    public void setDelegate(SeekBar.SeekBarDelegate seekBarDelegate) {
        this.delegate = seekBarDelegate;
    }

    public void setColors(int i, int i2, int i3) {
        this.innerColor = i;
        this.outerColor = i2;
        this.selectedColor = i3;
    }

    public void setWaveform(byte[] bArr) {
        this.waveformBytes = bArr;
        this.heights = calculateHeights((int) (this.width / AndroidUtilities.dpf2(3.0f)));
        if (this.delegate.isSeekBarDragAllowed()) {
            return;
        }
        this.progress = 1.0f;
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }

    public void setMessageObject(MessageObject messageObject) {
        MessageObject messageObject2;
        if (this.animatedValues != null && (messageObject2 = this.messageObject) != null && messageObject != null && messageObject2.getId() != messageObject.getId()) {
            this.animatedValues.clear();
        }
        this.messageObject = messageObject;
    }

    public void setAlpha(float f) {
        this.alpha = f;
    }

    public void setParentView(View view) {
        this.parentView = view;
        this.loadingFloat.setParent(view);
        this.appearFloat.setParent(view);
    }

    public void invalidate() {
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    public boolean isStartDraging() {
        return this.startDraging;
    }

    public boolean onTouch(int i, float f, float f2) {
        SeekBar.SeekBarDelegate seekBarDelegate;
        if (!this.delegate.isSeekBarDragAllowed()) {
            this.progress = 1.0f;
            return false;
        }
        if (i == 0) {
            if (0.0f <= f && f <= this.width && f2 >= 0.0f && f2 <= this.height) {
                this.startX = f;
                this.pressed = true;
                this.thumbDX = (int) (f - this.thumbX);
                this.startDraging = false;
                this.delegate.onSeekBarPressed();
                return true;
            }
        } else if (i == 1 || i == 3) {
            if (this.pressed) {
                if (i == 1 && (seekBarDelegate = this.delegate) != null) {
                    seekBarDelegate.onSeekBarDrag(this.thumbX / this.width);
                }
                this.pressed = false;
                this.delegate.onSeekBarReleased();
                return true;
            }
        } else if (i == 2 && this.pressed) {
            if (this.startDraging) {
                int i2 = (int) (f - this.thumbDX);
                this.thumbX = i2;
                if (i2 < 0) {
                    this.thumbX = 0;
                } else {
                    int i3 = this.width;
                    if (i2 > i3) {
                        this.thumbX = i3;
                    }
                }
                this.progress = this.thumbX / this.width;
            }
            float f3 = this.startX;
            if (f3 != -1.0f && Math.abs(f - f3) > AndroidUtilities.getPixelsInCM(0.2f, true)) {
                View view = this.parentView;
                if (view != null && view.getParent() != null) {
                    this.parentView.getParent().requestDisallowInterceptTouchEvent(true);
                }
                this.startDraging = true;
                this.startX = -1.0f;
            }
            return true;
        }
        return false;
    }

    public float getProgress() {
        return this.thumbX / this.width;
    }

    public void setProgress(float f) {
        setProgress(f, false);
    }

    public void setProgress(float f, boolean z) {
        if (!this.delegate.isSeekBarDragAllowed()) {
            this.progress = 1.0f;
            return;
        }
        boolean z2 = this.isUnread;
        this.progress = z2 ? 1.0f : f;
        int i = z2 ? this.width : this.thumbX;
        if (z && i != 0 && f == 0.0f) {
            this.clearProgress = 0.0f;
        } else if (!z) {
            this.clearProgress = 1.0f;
        }
        int iCeil = (int) Math.ceil(this.width * f);
        this.thumbX = iCeil;
        if (iCeil < 0) {
            this.thumbX = 0;
            return;
        }
        int i2 = this.width;
        if (iCeil > i2) {
            this.thumbX = i2;
        }
    }

    public boolean isDragging() {
        return this.pressed;
    }

    public void setSize(int i, int i2) {
        setSize(i, i2, i, i);
    }

    public void setSize(int i, int i2, int i3, int i4) {
        this.width = i;
        this.height = i2;
        float[] fArr = this.heights;
        if (fArr == null || fArr.length != ((int) (i / AndroidUtilities.dpf2(3.0f)))) {
            this.heights = calculateHeights((int) (this.width / AndroidUtilities.dpf2(3.0f)));
        }
        if (i3 == i4 || (this.fromWidth == i3 && this.toWidth == i4)) {
            if (i3 == i4) {
                this.toHeights = null;
                this.fromHeights = null;
                return;
            }
            return;
        }
        this.fromWidth = i3;
        this.toWidth = i4;
        this.fromHeights = calculateHeights((int) (i3 / AndroidUtilities.dpf2(3.0f)));
        this.toHeights = calculateHeights((int) (this.toWidth / AndroidUtilities.dpf2(3.0f)));
    }

    public void setSent() {
        this.appearFloat.set(0.0f, true);
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    private float[] calculateHeights(int i) {
        byte[] bArr = this.waveformBytes;
        if (bArr == null || i <= 0) {
            return null;
        }
        float[] fArr = new float[i];
        int i2 = 5;
        int length = (bArr.length * 8) / 5;
        float f = length / i;
        float f2 = 0.0f;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        loop0: while (i3 < length) {
            if (i3 == i4) {
                int i6 = i4;
                int i7 = 0;
                while (i4 == i6) {
                    f2 += f;
                    i6 = (int) f2;
                    i7++;
                }
                int i8 = i3 * 5;
                int i9 = i8 / 8;
                int i10 = i8 - (i9 * 8);
                int i11 = 5 - (8 - i10);
                byte bMin = (byte) ((this.waveformBytes[i9] >> i10) & ((2 << (Math.min(i2, r15) - 1)) - 1));
                if (i11 > 0) {
                    int i12 = i9 + 1;
                    byte[] bArr2 = this.waveformBytes;
                    if (i12 < bArr2.length) {
                        bMin = (byte) (((byte) (bMin << i11)) | (bArr2[i12] & ((2 << (4 - r15)) - 1)));
                    }
                }
                int i13 = 0;
                while (i13 < i7) {
                    if (i5 >= i) {
                        break loop0;
                    }
                    fArr[i5] = Math.max(0.0f, (bMin * 7) / 31.0f);
                    i13++;
                    i5++;
                }
                i4 = i6;
            }
            i3++;
            i2 = 5;
        }
        return fArr;
    }

    public void explodeAt(float f) {
        this.exploding = true;
        this.explodeProgress = f;
        invalidate();
    }

    public void setExplosionRate(float f) {
        this.explosionRate = f;
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0263  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas, View view) {
        int i;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        RectF rectF;
        float[] fArr;
        float[] fArr2;
        if (this.waveformBytes == null || (i = this.width) == 0 || this.alpha <= 0.0f) {
            return;
        }
        float fDpf2 = i / AndroidUtilities.dpf2(3.0f);
        if (fDpf2 <= 0.1f) {
            return;
        }
        float f6 = this.clearProgress;
        if (f6 != 1.0f) {
            float f7 = f6 + 0.10666667f;
            this.clearProgress = f7;
            if (f7 > 1.0f) {
                this.clearProgress = 1.0f;
            } else {
                view.invalidate();
            }
        }
        float f8 = this.appearFloat.set(1.0f);
        Path path = this.path;
        if (path == null) {
            this.path = new Path();
        } else {
            path.reset();
        }
        Path path2 = this.alphaPath;
        if (path2 == null) {
            this.alphaPath = new Path();
        } else {
            path2.reset();
        }
        SeekBar.SeekBarDelegate seekBarDelegate = this.delegate;
        boolean z = seekBarDelegate != null && seekBarDelegate.reverseWaveform();
        float[] fArr3 = this.fromHeights;
        if (fArr3 != null && (fArr2 = this.toHeights) != null) {
            int i2 = this.width;
            int i3 = this.fromWidth;
            float f9 = (i2 - i3) / (this.toWidth - i3);
            int iMax = Math.max(fArr3.length, fArr2.length);
            int iMin = Math.min(this.fromHeights.length, this.toHeights.length);
            float[] fArr4 = this.fromHeights;
            int length = fArr4.length;
            float[] fArr5 = this.toHeights;
            f2 = 3.0f;
            float[] fArr6 = length < fArr5.length ? fArr4 : fArr5;
            float[] fArr7 = fArr4.length < fArr5.length ? fArr5 : fArr4;
            if (fArr4.length >= fArr5.length) {
                f9 = 1.0f - f9;
            }
            int i4 = -1;
            f4 = 0.0f;
            int i5 = 0;
            while (i5 < iMax) {
                float f10 = i5;
                float f11 = f8;
                float f12 = fDpf2;
                int iClamp = MathUtils.clamp((int) Math.floor((f10 / iMax) * iMin), 0, iMin - 1);
                if (i4 < iClamp) {
                    addBar(this.path, AndroidUtilities.lerp(iClamp, f10, f9) * AndroidUtilities.dpf2(3.0f), AndroidUtilities.dpf2(AndroidUtilities.lerp(fArr6[z ? (fArr6.length - 1) - iClamp : iClamp], fArr7[z ? (fArr7.length - 1) - i5 : i5], f9)));
                    i4 = iClamp;
                } else {
                    float fLerp = AndroidUtilities.lerp(iClamp, f10, f9) * AndroidUtilities.dpf2(3.0f);
                    if (z) {
                        iClamp = (fArr6.length - 1) - iClamp;
                    }
                    addBar(this.alphaPath, fLerp, AndroidUtilities.dpf2(AndroidUtilities.lerp(fArr6[iClamp], fArr7[z ? (fArr7.length - 1) - i5 : i5], f9)));
                    f4 = f9;
                }
                i5++;
                f8 = f11;
                fDpf2 = f12;
            }
            f = fDpf2;
            f3 = f8;
        } else {
            f = fDpf2;
            f2 = 3.0f;
            f3 = f8;
            int i6 = 0;
            if (this.heights != null) {
                while (true) {
                    float f13 = i6;
                    if (f13 >= f || i6 >= this.heights.length) {
                        break;
                    }
                    float fDpf22 = AndroidUtilities.dpf2(3.0f) * f13;
                    float fClamp = MathUtils.clamp((f3 * f) - f13, 0.0f, 1.0f);
                    addBar(this.path, fDpf22, (AndroidUtilities.dpf2(this.heights[z ? (r3.length - 1) - i6 : i6]) * fClamp) - (AndroidUtilities.dpf2(1.0f) * (1.0f - fClamp)));
                    i6++;
                }
            }
            f4 = 0.0f;
        }
        if (this.exploding || this.explosionRate > 0.0f) {
            canvas.save();
            f5 = 0.0f;
            canvas.clipRect(0.0f, 0.0f, AndroidUtilities.dpf2(f2) * f * (1.0f - (this.explodeProgress * this.explosionRate)), this.height);
        } else {
            f5 = 0.0f;
        }
        if (f4 > f5) {
            canvas.save();
            canvas.clipPath(this.alphaPath);
            drawFill(canvas, f4 * this.alpha);
            canvas.restore();
        }
        canvas.save();
        canvas.clipPath(this.path);
        drawFill(canvas, this.alpha);
        canvas.restore();
        if (this.exploding || this.explosionRate > 0.0f) {
            canvas.restore();
            if (this.particles == null) {
                this.particles = new Particles(250, new Runnable() { // from class: org.telegram.ui.Components.SeekBarWaveform$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidate();
                    }
                });
            }
            float f14 = this.explodeProgress;
            if (f14 >= 0.99f || (fArr = this.heights) == null) {
                rectF = null;
            } else {
                int i7 = (int) (f * (1.0f - f14));
                if (z) {
                    i7 = (int) ((f - 1.0f) - i7);
                }
                if (i7 >= 0 && i7 < fArr.length) {
                    float fDpf23 = AndroidUtilities.dpf2(this.heights[i7]) * MathUtils.clamp((f3 * f) - i7, 0.0f, 1.0f);
                    rectF = AndroidUtilities.rectTmp;
                    float fDpf24 = (1.0f - this.explodeProgress) * f * AndroidUtilities.dpf2(f2);
                    float fDpf25 = AndroidUtilities.dpf2(2.0f);
                    int iM1124dp = (this.height - AndroidUtilities.m1124dp(14.0f)) / 2;
                    float f15 = fDpf23 * this.waveScaling;
                    float f16 = fDpf25 / 2.0f;
                    rectF.set((AndroidUtilities.dpf2(1.0f) + fDpf24) - f16, AndroidUtilities.m1124dp(7.0f) + iM1124dp + ((-f15) - f16), fDpf24 + AndroidUtilities.dpf2(1.0f) + f16, iM1124dp + AndroidUtilities.m1124dp(7.0f) + f15 + f16);
                }
            }
            this.particles.setColor(this.outerColor).setEmitArea(rectF).draw(canvas, this.explosionRate);
        }
    }

    private void drawFill(Canvas canvas, float f) {
        float fDpf2 = AndroidUtilities.dpf2(2.0f);
        MessageObject messageObject = this.messageObject;
        boolean z = messageObject != null && messageObject.isContentUnread() && !this.messageObject.isOut() && this.progress <= 0.0f;
        this.isUnread = z;
        paintInner.setColor(z ? this.outerColor : this.selected ? this.selectedColor : this.innerColor);
        paintOuter.setColor(this.outerColor);
        this.loadingFloat.setParent(this.parentView);
        float f2 = this.loadingFloat.set((!this.loading || MediaController.getInstance().isPlayingMessage(this.messageObject)) ? 0.0f : 1.0f);
        Paint paint = paintInner;
        paint.setColor(ColorUtils.blendARGB(paint.getColor(), this.innerColor, f2));
        float f3 = 1.0f - f2;
        paintOuter.setAlpha((int) (r5.getAlpha() * f3 * f));
        paintInner.setAlpha((int) (r5.getAlpha() * f));
        canvas.drawRect(0.0f, 0.0f, this.width + fDpf2, this.height, paintInner);
        if (f2 < 1.0f) {
            canvas.drawRect(0.0f, 0.0f, this.progress * (this.width + fDpf2) * f3, this.height, paintOuter);
        }
        if (f2 > 0.0f) {
            if (this.loadingPaint == null || Math.abs(this.loadingPaintWidth - this.width) > AndroidUtilities.m1124dp(8.0f) || this.loadingPaintColor1 != this.innerColor || this.loadingPaintColor2 != this.outerColor) {
                if (this.loadingPaint == null) {
                    this.loadingPaint = new Paint(1);
                }
                this.loadingPaintColor1 = this.innerColor;
                this.loadingPaintColor2 = this.outerColor;
                Paint paint2 = this.loadingPaint;
                float f4 = this.width;
                this.loadingPaintWidth = f4;
                int i = this.loadingPaintColor1;
                paint2.setShader(new LinearGradient(0.0f, 0.0f, f4, 0.0f, new int[]{i, this.loadingPaintColor2, i}, new float[]{0.0f, 0.2f, 0.4f}, Shader.TileMode.CLAMP));
            }
            this.loadingPaint.setAlpha((int) (f2 * 255.0f * f));
            canvas.save();
            float fPow = ((((float) Math.pow((SystemClock.elapsedRealtime() - this.loadingStart) / 270.0f, 0.75d)) % 1.6f) - 0.6f) * this.loadingPaintWidth;
            canvas.translate(fPow, 0.0f);
            canvas.drawRect(-fPow, 0.0f, (this.width + 5) - fPow, this.height, this.loadingPaint);
            canvas.restore();
            View view = this.parentView;
            if (view != null) {
                view.invalidate();
            }
        }
    }

    private void addBar(Path path, float f, float f2) {
        float fDpf2 = AndroidUtilities.dpf2(2.0f);
        int iM1124dp = (this.height - AndroidUtilities.m1124dp(14.0f)) / 2;
        float f3 = f2 * this.waveScaling;
        RectF rectF = AndroidUtilities.rectTmp;
        float f4 = fDpf2 / 2.0f;
        rectF.set((AndroidUtilities.dpf2(1.0f) + f) - f4, AndroidUtilities.m1124dp(7.0f) + iM1124dp + ((-f3) - f4), f + AndroidUtilities.dpf2(1.0f) + f4, iM1124dp + AndroidUtilities.m1124dp(7.0f) + f3 + f4);
        path.addRoundRect(rectF, fDpf2, fDpf2, Path.Direction.CW);
    }

    public void setLoading(boolean z) {
        if (!this.loading && z && this.loadingFloat.get() <= 0.0f) {
            this.loadingStart = SystemClock.elapsedRealtime();
        }
        this.loading = z;
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class Particles {
        private final int count;
        private RectF emitArea;
        private Runnable invalidate;
        private long lastTime;
        private final Paint paint;
        private final ArrayList particles = new ArrayList(50);
        private final ArrayList deadParticles = new ArrayList(50);

        public Particles(int i, Runnable runnable) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.count = i;
            this.invalidate = runnable;
            paint.setStrokeWidth(AndroidUtilities.m1124dp(1.33f));
        }

        private class Particle {

            /* JADX INFO: renamed from: d */
            float f2074d;

            /* JADX INFO: renamed from: t */
            float f2075t;

            /* JADX INFO: renamed from: v */
            float f2076v;

            /* JADX INFO: renamed from: vx */
            float f2077vx;

            /* JADX INFO: renamed from: vy */
            float f2078vy;

            /* JADX INFO: renamed from: x */
            float f2079x;

            /* JADX INFO: renamed from: y */
            float f2080y;

            private Particle() {
            }
        }

        public Particles setColor(int i) {
            this.paint.setColor(i);
            return this;
        }

        public Particles setEmitArea(RectF rectF) {
            this.emitArea = rectF;
            return this;
        }

        public void draw(Canvas canvas, float f) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jMin = Math.min(20L, jCurrentTimeMillis - this.lastTime);
            this.lastTime = jCurrentTimeMillis;
            int i = 0;
            while (i < this.particles.size()) {
                Particle particle = (Particle) this.particles.get(i);
                float f2 = jMin;
                float f3 = particle.f2075t - (f2 / particle.f2074d);
                particle.f2075t = f3;
                if (f3 < 0.0f) {
                    this.deadParticles.add(particle);
                    this.particles.remove(i);
                    i--;
                } else {
                    float f4 = particle.f2079x;
                    float f5 = particle.f2077vx;
                    float f6 = particle.f2076v;
                    particle.f2079x = f4 + (((f5 * f6) * f2) / 500.0f);
                    float f7 = particle.f2080y;
                    float f8 = particle.f2078vy;
                    particle.f2080y = f7 + (((f6 * f8) * f2) / 500.0f);
                    particle.f2078vy = f8 - ((((long) AndroidUtilities.m1124dp(0.33f)) * jMin) / 500.0f);
                }
                i++;
            }
            if (this.emitArea != null) {
                int iMin = Math.min(4, this.count - this.particles.size());
                for (int i2 = 0; i2 < iMin; i2++) {
                    Particle particle2 = this.deadParticles.isEmpty() ? new Particle() : (Particle) this.deadParticles.remove(0);
                    RectF rectF = this.emitArea;
                    particle2.f2079x = rectF.left + (rectF.width() * Utilities.random.nextFloat());
                    RectF rectF2 = this.emitArea;
                    particle2.f2080y = rectF2.top + (rectF2.height() * Utilities.random.nextFloat());
                    double dNextInt = ((double) (Utilities.random.nextInt(200) - 125)) * 0.017453292519943295d;
                    particle2.f2077vx = ((float) (Math.cos(dNextInt) - Math.sin(dNextInt))) * 0.8f;
                    particle2.f2078vy = ((float) (Math.sin(dNextInt) + Math.cos(dNextInt))) - 0.2f;
                    particle2.f2075t = 1.0f;
                    particle2.f2076v = AndroidUtilities.m1124dp((Utilities.random.nextFloat() * 7.0f) + 10.0f);
                    particle2.f2074d = AndroidUtilities.lerp(420, 550, Utilities.random.nextFloat());
                    this.particles.add(particle2);
                }
            }
            for (int i3 = 0; i3 < this.particles.size(); i3++) {
                Particle particle3 = (Particle) this.particles.get(i3);
                this.paint.setAlpha((int) (255.0f * f * particle3.f2075t));
                canvas.drawPoint(particle3.f2079x, particle3.f2080y, this.paint);
            }
            Runnable runnable = this.invalidate;
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
