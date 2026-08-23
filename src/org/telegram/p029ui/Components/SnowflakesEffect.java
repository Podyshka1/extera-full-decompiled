package org.telegram.p029ui.Components;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BatchParticlesDrawHelper;

/* JADX INFO: loaded from: classes7.dex */
public class SnowflakesEffect {
    private final BatchParticlesDrawHelper.BatchParticlesBuffer batchParticlesBuffer;
    private final Paint batchParticlesPaint;
    private int color;
    private int forcedColor;
    private long lastAnimationTime;
    private final int maxCount;
    Bitmap particleBitmap;
    private final Paint particlePaint;
    private final Paint particleThinPaint;
    private final int viewType;
    private final Paint bitmapPaint = new Paint();
    private int colorKey = Theme.key_actionBarDefaultTitle;
    public boolean occupyStatusBar = true;
    private final ArrayList particles = new ArrayList();
    private final ArrayList freeParticles = new ArrayList();

    private class Particle {
        float alpha;
        float currentTime;
        float lifeTime;
        int paintType;
        float scale;
        int type;
        float velocity;

        /* JADX INFO: renamed from: vx */
        float f2087vx;

        /* JADX INFO: renamed from: vy */
        float f2088vy;

        /* JADX INFO: renamed from: x */
        float f2089x;

        /* JADX INFO: renamed from: y */
        float f2090y;

        private Particle() {
        }

        public void draw(Canvas canvas) {
            if (this.type == 0) {
                int i = (int) (this.alpha * 255.0f);
                if (this.paintType == 0) {
                    SnowflakesEffect.this.particlePaint.setAlpha(i);
                } else {
                    SnowflakesEffect.this.particleThinPaint.setAlpha(i);
                }
                canvas.drawPoint(this.f2089x, this.f2090y, this.paintType == 0 ? SnowflakesEffect.this.particlePaint : SnowflakesEffect.this.particleThinPaint);
                return;
            }
            SnowflakesEffect snowflakesEffect = SnowflakesEffect.this;
            if (snowflakesEffect.particleBitmap == null) {
                snowflakesEffect.particleBitmap = SnowflakesEffect.createParticlesBitmap(false);
            }
            SnowflakesEffect.this.bitmapPaint.setAlpha((int) (this.alpha * 255.0f));
            canvas.save();
            float f = this.scale;
            canvas.scale(f, f, this.f2089x, this.f2090y);
            SnowflakesEffect snowflakesEffect2 = SnowflakesEffect.this;
            canvas.drawBitmap(snowflakesEffect2.particleBitmap, this.f2089x, this.f2090y, snowflakesEffect2.bitmapPaint);
            canvas.restore();
        }
    }

    public SnowflakesEffect(int i) {
        this.viewType = i;
        int i2 = i == 0 ? 100 : 300;
        this.maxCount = i2;
        Paint paint = new Paint(1);
        this.particlePaint = paint;
        paint.setStrokeWidth(AndroidUtilities.m1124dp(2.5f));
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint paint2 = new Paint(1);
        this.particleThinPaint = paint2;
        paint2.setStrokeWidth(AndroidUtilities.m1124dp(1.0f));
        paint2.setStrokeCap(cap);
        paint2.setStyle(style);
        if (BatchParticlesDrawHelper.isAvailable()) {
            this.batchParticlesBuffer = new BatchParticlesDrawHelper.BatchParticlesBuffer(i2);
            this.batchParticlesPaint = BatchParticlesDrawHelper.createBatchParticlesPaint(createParticlesBitmap(true));
        } else {
            this.batchParticlesBuffer = null;
            this.batchParticlesPaint = null;
        }
        updateColors();
        for (int i3 = 0; i3 < 20; i3++) {
            this.freeParticles.add(new Particle());
        }
    }

    public void setForcedColor(int i) {
        this.forcedColor = i;
        updateColors();
    }

    public void updateColors() {
        int color = this.forcedColor;
        if (color == 0) {
            color = Theme.getColor(this.colorKey) & (-1644826);
        }
        if (this.color != color) {
            this.color = color;
            this.particlePaint.setColor(color);
            this.particleThinPaint.setColor(color);
        }
    }

    private void updateParticles(long j) {
        int size = this.particles.size();
        int i = 0;
        while (i < size) {
            Particle particle = (Particle) this.particles.get(i);
            float f = particle.currentTime;
            float f2 = particle.lifeTime;
            if (f >= f2) {
                if (this.freeParticles.size() < 40) {
                    this.freeParticles.add(particle);
                }
                this.particles.remove(i);
                i--;
                size--;
            } else {
                if (this.viewType == 0) {
                    if (f < 200.0f) {
                        particle.alpha = AndroidUtilities.accelerateInterpolator.getInterpolation(f / 200.0f);
                    } else {
                        particle.alpha = 1.0f - AndroidUtilities.decelerateInterpolator.getInterpolation((f - 200.0f) / (f2 - 200.0f));
                    }
                } else if (f < 200.0f) {
                    particle.alpha = AndroidUtilities.accelerateInterpolator.getInterpolation(f / 200.0f);
                } else if (f2 - f < 2000.0f) {
                    particle.alpha = AndroidUtilities.decelerateInterpolator.getInterpolation((f2 - f) / 2000.0f);
                }
                float f3 = particle.f2089x;
                float f4 = particle.f2087vx;
                float f5 = particle.velocity;
                float f6 = j;
                particle.f2089x = f3 + (((f4 * f5) * f6) / 500.0f);
                particle.f2090y += ((particle.f2088vy * f5) * f6) / 500.0f;
                particle.currentTime += f6;
            }
            i++;
        }
    }

    public void onDraw(View view, Canvas canvas) {
        float measuredHeight;
        Particle particle;
        if (view == null || canvas == null || !LiteMode.isEnabled(32)) {
            return;
        }
        float fMax = Math.max(1, view.getMeasuredWidth() * view.getMeasuredHeight());
        Point point = AndroidUtilities.displaySize;
        float fMax2 = this.viewType == 1 ? Math.max(0.12f, Math.min(1.0f, fMax / Math.max(1, point.x * point.y))) : 1.0f;
        int iMax = Math.max(1, Math.round(this.maxCount * fMax2));
        int iMax2 = Math.max(1, Math.round((this.viewType == 0 ? 1 : 10) * fMax2));
        if (this.batchParticlesBuffer != null) {
            int iMin = Math.min(iMax, this.particles.size());
            int iM1124dp = AndroidUtilities.m1124dp(10.0f);
            for (int i = 0; i < iMin; i++) {
                Particle particle2 = (Particle) this.particles.get(i);
                float f = particle2.f2089x;
                float f2 = particle2.f2090y;
                int i2 = particle2.type;
                float f3 = iM1124dp / 2.0f;
                if (i2 != 0) {
                    f3 *= particle2.scale;
                }
                float f4 = i2 == 0 ? iM1124dp : 0.0f;
                this.batchParticlesBuffer.setParticleColor(i, ColorUtils.setAlphaComponent(this.color, (int) (particle2.alpha * 255.0f)));
                this.batchParticlesBuffer.setParticleVertexCords(i, f - f3, f2 - f3, f + f3, f2 + f3);
                float f5 = iM1124dp;
                this.batchParticlesBuffer.setParticleTextureCords(i, f4, 0.0f, f4 + f5, f5);
            }
            BatchParticlesDrawHelper.draw(canvas, this.batchParticlesBuffer, iMin, this.batchParticlesPaint);
        } else {
            int size = this.particles.size();
            for (int i3 = 0; i3 < size; i3++) {
                ((Particle) this.particles.get(i3)).draw(canvas);
            }
        }
        if (this.particles.size() < iMax) {
            for (int i4 = 0; i4 < iMax2; i4++) {
                if (this.particles.size() < iMax && Utilities.random.nextFloat() > 0.7f) {
                    int i5 = this.occupyStatusBar ? AndroidUtilities.statusBarHeight : 0;
                    float fNextFloat = Utilities.random.nextFloat() * view.getMeasuredWidth();
                    if (this.viewType == 0) {
                        measuredHeight = i5 + (Utilities.random.nextFloat() * ((view.getMeasuredHeight() - AndroidUtilities.m1124dp(20.0f)) - i5));
                    } else {
                        measuredHeight = view.getMeasuredHeight() * Utilities.random.nextFloat();
                    }
                    double dNextInt = ((double) (Utilities.random.nextInt(40) + 70)) * 0.017453292519943295d;
                    float fCos = (float) Math.cos(dNextInt);
                    float fSin = (float) Math.sin(dNextInt);
                    if (!this.freeParticles.isEmpty()) {
                        particle = (Particle) this.freeParticles.get(0);
                        this.freeParticles.remove(0);
                    } else {
                        particle = new Particle();
                    }
                    particle.f2089x = fNextFloat;
                    particle.f2090y = measuredHeight;
                    particle.f2087vx = fCos;
                    particle.f2088vy = fSin;
                    particle.alpha = 0.0f;
                    particle.currentTime = 0.0f;
                    particle.scale = Utilities.random.nextFloat() * 1.2f;
                    particle.type = 0;
                    particle.paintType = Utilities.random.nextInt(2);
                    if (this.viewType == 0) {
                        particle.lifeTime = Utilities.random.nextInt(100) + 2000;
                    } else {
                        particle.lifeTime = Utilities.random.nextInt(2000) + 3000;
                    }
                    particle.velocity = (Utilities.random.nextFloat() * 4.0f) + 20.0f;
                    this.particles.add(particle);
                }
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        updateParticles(Math.min(17L, jCurrentTimeMillis - this.lastAnimationTime));
        this.lastAnimationTime = jCurrentTimeMillis;
        view.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap createParticlesBitmap(boolean z) {
        Paint paint = new Paint(1);
        paint.setStrokeWidth(AndroidUtilities.m1124dp(0.5f));
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(-1);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(z ? AndroidUtilities.m1124dp(20.0f) : AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float fDpf2 = AndroidUtilities.dpf2(2.0f) * 2.0f;
        float f = (-AndroidUtilities.dpf2(0.57f)) * 2.0f;
        float fDpf22 = AndroidUtilities.dpf2(1.55f) * 2.0f;
        float f2 = 5.0f;
        float fM1124dp = AndroidUtilities.m1124dp(5.0f);
        float fM1124dp2 = AndroidUtilities.m1124dp(5.0f);
        float f3 = -1.5707964f;
        int i = 0;
        while (i < 6) {
            double d = f3;
            float f4 = f2;
            float f5 = f3;
            float fCos = ((float) Math.cos(d)) * fDpf2;
            Bitmap bitmap = bitmapCreateBitmap;
            float fSin = ((float) Math.sin(d)) * fDpf2;
            float f6 = fCos * 0.66f;
            float f7 = 0.66f * fSin;
            canvas.drawLine(fM1124dp, fM1124dp2, fCos + fM1124dp, fSin + fM1124dp2, paint);
            float f8 = fM1124dp;
            float f9 = fM1124dp2;
            double d2 = (float) (d - 1.5707963267948966d);
            double d3 = f;
            double d4 = fDpf22;
            float fCos2 = (float) ((Math.cos(d2) * d3) - (Math.sin(d2) * d4));
            Canvas canvas2 = canvas;
            float fSin2 = (float) ((Math.sin(d2) * d3) + (Math.cos(d2) * d4));
            float f10 = f8 + f6;
            float f11 = f9 + f7;
            canvas2.drawLine(f10, f11, f8 + fCos2, fSin2 + f9, paint);
            canvas = canvas2;
            canvas.drawLine(f10, f11, f8 + ((float) (((-Math.cos(d2)) * d3) - (Math.sin(d2) * d4))), ((float) (((-Math.sin(d2)) * d3) + (Math.cos(d2) * d4))) + f9, paint);
            f3 = f5 + 1.0471976f;
            i++;
            fM1124dp2 = f9;
            f2 = f4;
            bitmapCreateBitmap = bitmap;
            fM1124dp = f8;
        }
        Bitmap bitmap2 = bitmapCreateBitmap;
        float f12 = f2;
        if (z) {
            Paint paint2 = new Paint(1);
            paint2.setStrokeWidth(AndroidUtilities.m1124dp(1.5f));
            paint2.setStrokeCap(Paint.Cap.ROUND);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setColor(-1);
            canvas.drawPoint(AndroidUtilities.m1124dp(15.0f), AndroidUtilities.m1124dp(f12), paint2);
        }
        return bitmap2;
    }
}
