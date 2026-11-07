package org.telegram.ui.Components;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.SystemClock;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.cast.CastStatusCodes;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BatchParticlesDrawHelper;

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
    private final ArrayList<Particle> particles = new ArrayList<>();
    private final ArrayList<Particle> freeParticles = new ArrayList<>();

    public class Particle {
        float alpha;
        float currentTime;
        float lifeTime;
        int paintType;
        float scale;
        int type;
        float velocity;
        float vx;
        float vy;

        /* JADX INFO: renamed from: x */
        float f1178x;

        /* JADX INFO: renamed from: y */
        float f1179y;

        private Particle() {
        }

        public void draw(Canvas canvas) {
            if (this.type == 0) {
                int alphaComponent = SnowflakesEffect.getAlphaComponent(this.alpha);
                int i = this.paintType;
                SnowflakesEffect snowflakesEffect = SnowflakesEffect.this;
                if (i == 0) {
                    snowflakesEffect.particlePaint.setAlpha(alphaComponent);
                } else {
                    snowflakesEffect.particleThinPaint.setAlpha(alphaComponent);
                }
                float f = this.f1178x;
                float f2 = this.f1179y;
                int i2 = this.paintType;
                SnowflakesEffect snowflakesEffect2 = SnowflakesEffect.this;
                canvas.drawPoint(f, f2, i2 == 0 ? snowflakesEffect2.particlePaint : snowflakesEffect2.particleThinPaint);
                return;
            }
            SnowflakesEffect snowflakesEffect3 = SnowflakesEffect.this;
            if (snowflakesEffect3.particleBitmap == null) {
                snowflakesEffect3.particleBitmap = SnowflakesEffect.createParticlesBitmap(false);
            }
            SnowflakesEffect.this.bitmapPaint.setAlpha(SnowflakesEffect.getAlphaComponent(this.alpha));
            canvas.save();
            float f3 = this.scale;
            canvas.scale(f3, f3, this.f1178x, this.f1179y);
            SnowflakesEffect snowflakesEffect4 = SnowflakesEffect.this;
            canvas.drawBitmap(snowflakesEffect4.particleBitmap, this.f1178x, this.f1179y, snowflakesEffect4.bitmapPaint);
            canvas.restore();
        }
    }

    public SnowflakesEffect(int i) {
        this.viewType = i;
        int i2 = i == 0 ? 100 : 300;
        this.maxCount = i2;
        Paint paint = new Paint(1);
        this.particlePaint = paint;
        paint.setStrokeWidth(AndroidUtilities.dp(2.5f));
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint paint2 = new Paint(1);
        this.particleThinPaint = paint2;
        paint2.setStrokeWidth(AndroidUtilities.dp(1.0f));
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
            Particle particle = this.particles.get(i);
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
                float f3 = particle.f1178x;
                float f4 = particle.vx;
                float f5 = particle.velocity;
                float f6 = j;
                particle.f1178x = f3 + (((f4 * f5) * f6) / 500.0f);
                particle.f1179y += ((particle.vy * f5) * f6) / 500.0f;
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
        BatchParticlesDrawHelper.BatchParticlesBuffer batchParticlesBuffer = this.batchParticlesBuffer;
        ArrayList<Particle> arrayList = this.particles;
        if (batchParticlesBuffer != null) {
            int iMin = Math.min(iMax, arrayList.size());
            int iDp = AndroidUtilities.dp(10.0f);
            for (int i = 0; i < iMin; i++) {
                Particle particle2 = this.particles.get(i);
                float f = particle2.f1178x;
                float f2 = particle2.f1179y;
                int i2 = particle2.type;
                float f3 = iDp / 2.0f;
                if (i2 != 0) {
                    f3 *= particle2.scale;
                }
                float f4 = i2 == 0 ? iDp : 0.0f;
                this.batchParticlesBuffer.setParticleColor(i, ColorUtils.setAlphaComponent(this.color, getAlphaComponent(particle2.alpha)));
                this.batchParticlesBuffer.setParticleVertexCords(i, f - f3, f2 - f3, f + f3, f2 + f3);
                float f5 = iDp;
                this.batchParticlesBuffer.setParticleTextureCords(i, f4, 0.0f, f4 + f5, f5);
            }
            BatchParticlesDrawHelper.draw(canvas, this.batchParticlesBuffer, iMin, this.batchParticlesPaint);
        } else {
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.particles.get(i3).draw(canvas);
            }
        }
        if (this.particles.size() < iMax) {
            for (int i4 = 0; i4 < iMax2; i4++) {
                if (this.particles.size() < iMax && Utilities.random.nextFloat() > 0.7f) {
                    int i5 = this.occupyStatusBar ? AndroidUtilities.statusBarHeight : 0;
                    float fNextFloat = Utilities.random.nextFloat() * view.getMeasuredWidth();
                    if (this.viewType == 0) {
                        measuredHeight = i5 + (Utilities.random.nextFloat() * ((view.getMeasuredHeight() - AndroidUtilities.dp(20.0f)) - i5));
                    } else {
                        measuredHeight = view.getMeasuredHeight() * Utilities.random.nextFloat();
                    }
                    double dNextInt = ((double) (Utilities.random.nextInt(40) + 70)) * 0.017453292519943295d;
                    float fCos = (float) Math.cos(dNextInt);
                    float fSin = (float) Math.sin(dNextInt);
                    if (!this.freeParticles.isEmpty()) {
                        particle = this.freeParticles.get(0);
                        this.freeParticles.remove(0);
                    } else {
                        particle = new Particle();
                    }
                    particle.f1178x = fNextFloat;
                    particle.f1179y = measuredHeight;
                    particle.vx = fCos;
                    particle.vy = fSin;
                    particle.alpha = 0.0f;
                    particle.currentTime = 0.0f;
                    particle.scale = Utilities.random.nextFloat() * 1.2f;
                    particle.type = 0;
                    particle.paintType = Utilities.random.nextInt(2);
                    if (this.viewType == 0) {
                        particle.lifeTime = Utilities.random.nextInt(100) + CastStatusCodes.AUTHENTICATION_FAILED;
                    } else {
                        particle.lifeTime = Utilities.random.nextInt(CastStatusCodes.AUTHENTICATION_FAILED) + 3000;
                    }
                    particle.velocity = (Utilities.random.nextFloat() * 4.0f) + 20.0f;
                    this.particles.add(particle);
                }
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        updateParticles(Utilities.clamp(jElapsedRealtime - this.lastAnimationTime, 17L, 0L));
        this.lastAnimationTime = jElapsedRealtime;
        view.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getAlphaComponent(float f) {
        return (int) (Utilities.clamp01(f) * 255.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap createParticlesBitmap(boolean z) {
        Paint paint = new Paint(1);
        paint.setStrokeWidth(AndroidUtilities.dp(0.5f));
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(-1);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(z ? AndroidUtilities.dp(20.0f) : AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float fDpf2 = AndroidUtilities.dpf2(2.0f) * 2.0f;
        float f = (-AndroidUtilities.dpf2(0.57f)) * 2.0f;
        float fDpf22 = AndroidUtilities.dpf2(1.55f) * 2.0f;
        float f2 = 5.0f;
        float fDp = AndroidUtilities.dp(5.0f);
        float fDp2 = AndroidUtilities.dp(5.0f);
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
            canvas.drawLine(fDp, fDp2, fCos + fDp, fSin + fDp2, paint);
            float f8 = fDp;
            float f9 = fDp2;
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
            fDp2 = f9;
            f2 = f4;
            bitmapCreateBitmap = bitmap;
            fDp = f8;
        }
        Bitmap bitmap2 = bitmapCreateBitmap;
        float f12 = f2;
        if (z) {
            Paint paint2 = new Paint(1);
            paint2.setStrokeWidth(AndroidUtilities.dp(1.5f));
            paint2.setStrokeCap(Paint.Cap.ROUND);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setColor(-1);
            canvas.drawPoint(AndroidUtilities.dp(15.0f), AndroidUtilities.dp(f12), paint2);
        }
        return bitmap2;
    }
}
