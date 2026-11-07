package org.telegram.ui.Wallet;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes8.dex */
final class WalletSendParticles {
    private static final int[] COLORS = {-16106272, -16754689, -14779393, -13326081, -10235137, -6559233};
    private long lastFrame;
    private final Path star;
    private final ArrayList<Spark> sparks = new ArrayList<>();
    private final Random random = new Random();
    private final Paint paint = new Paint(1);

    public static class Spark {
        float age;
        int color;
        float drag;
        float life;
        float opacity;
        float size;
        float spin;
        float turn;
        float vx;
        float vy;

        /* JADX INFO: renamed from: x */
        float f1267x;

        /* JADX INFO: renamed from: y */
        float f1268y;

        private Spark() {
            this.opacity = 1.0f;
        }
    }

    public WalletSendParticles() {
        Path path = new Path();
        this.star = path;
        path.moveTo(0.0f, -1.0f);
        path.quadTo(0.12f, -0.12f, 1.0f, 0.0f);
        path.quadTo(0.12f, 0.12f, 0.0f, 1.0f);
        path.quadTo(-0.12f, 0.12f, -1.0f, 0.0f);
        path.quadTo(-0.12f, -0.12f, 0.0f, -1.0f);
        path.close();
    }

    private float pick(float f, float f2) {
        return f + (this.random.nextFloat() * (f2 - f));
    }

    private Spark add(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        if (this.sparks.isEmpty()) {
            this.lastFrame = SystemClock.uptimeMillis();
        }
        Spark spark = new Spark();
        spark.f1267x = f;
        spark.f1268y = f2;
        double d = f3;
        spark.vx = ((float) Math.cos(d)) * f4;
        spark.vy = ((float) Math.sin(d)) * f4;
        spark.size = f5;
        spark.life = f6;
        spark.drag = f7;
        int[] iArr = COLORS;
        spark.color = iArr[this.random.nextInt(iArr.length)];
        spark.turn = pick(0.0f, 90.0f);
        spark.spin = pick(-180.0f, 180.0f);
        this.sparks.add(spark);
        return spark;
    }

    public void burst(float f, float f2) {
        float f3 = AndroidUtilities.density;
        for (int i = 0; i < 28; i++) {
            add(f, f2, pick(0.0f, 6.2831855f), pick(60.0f, 300.0f) * f3, pick(2.5f, 6.0f) * f3, pick(0.5f, 0.9f), 3.0f);
        }
    }

    public void trail(float f, float f2) {
        float f3 = AndroidUtilities.density;
        add(f, f2, pick(0.0f, 6.2831855f), pick(0.0f, 28.0f) * f3, pick(1.5f, 3.5f) * f3, pick(0.35f, 0.6f), 2.0f);
    }

    public void celebrate(float f, float f2) {
        float fPick;
        float fPick2;
        float f3 = AndroidUtilities.density;
        for (int i = 0; i < 56; i++) {
            int i2 = i % 10;
            if (i2 <= 6) {
                fPick = pick(-0.3f, 0.3f) + 3.1415927f;
                fPick2 = pick(140.0f, 560.0f);
            } else if (i2 <= 8) {
                fPick = ((this.random.nextBoolean() ? 1 : -1) * pick(0.5f, 1.4f)) + 3.1415927f;
                fPick2 = pick(60.0f, 240.0f);
            } else {
                fPick = pick(0.0f, 6.2831855f);
                fPick2 = pick(40.0f, 160.0f);
            }
            add(f, f2, fPick, fPick2 * f3, pick(2.2f, 6.5f) * f3, pick(0.8f, 1.4f), 2.4f);
        }
    }

    public void sent(float f, float f2) {
        clear();
        float f3 = AndroidUtilities.density;
        for (int i = 0; i < 48; i++) {
            int i2 = -1;
            while (i2 <= 1) {
                WalletSendParticles walletSendParticles = this;
                float f4 = f;
                Spark sparkAdd = walletSendParticles.add(f4, f2 + (this.pick(-3.0f, 3.0f) * f3), (i2 < 0 ? 3.1415927f : 0.0f) + this.pick(-0.6f, 0.6f), this.pick(150.0f, 310.0f) * f3, this.pick(1.3f, 3.2f) * f3, this.pick(0.65f, 1.05f), 1.8f);
                sparkAdd.color = -6562049;
                sparkAdd.opacity = walletSendParticles.pick(0.3f, 1.0f);
                sparkAdd.age = (-i) * 0.006f;
                i2 += 2;
                this = walletSendParticles;
                f = f4;
            }
        }
    }

    public boolean isActive() {
        return !this.sparks.isEmpty();
    }

    public void clear() {
        this.sparks.clear();
    }

    public void draw(Canvas canvas) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        float fMin = Math.min(0.033f, (jUptimeMillis - this.lastFrame) / 1000.0f);
        this.lastFrame = jUptimeMillis;
        for (int size = this.sparks.size() - 1; size >= 0; size--) {
            Spark spark = this.sparks.get(size);
            float f = spark.age + fMin;
            spark.age = f;
            if (f >= 0.0f) {
                if (f >= spark.life) {
                    this.sparks.remove(size);
                } else {
                    float fExp = (float) Math.exp((-spark.drag) * fMin);
                    float f2 = spark.vx * fExp;
                    spark.vx = f2;
                    float f3 = spark.vy * fExp;
                    spark.vy = f3;
                    spark.f1267x += f2 * fMin;
                    spark.f1268y += f3 * fMin;
                    spark.turn += spark.spin * fMin;
                    float f4 = spark.age / spark.life;
                    float fMax = Math.max(0.0f, Math.min(1.0f, (f4 - 0.35f) / 0.65f));
                    float fMin2 = spark.opacity * Math.min(1.0f, 8.0f * f4) * (1.0f - ((fMax * fMax) * (3.0f - (fMax * 2.0f))));
                    float f5 = spark.size * (1.0f - (f4 * 0.5f));
                    int iSave = canvas.save();
                    canvas.translate(spark.f1267x, spark.f1268y);
                    canvas.rotate(spark.turn);
                    canvas.scale(f5, f5);
                    this.paint.setColor(spark.color);
                    this.paint.setAlpha(Math.round(20.4f * fMin2));
                    canvas.drawCircle(0.0f, 0.0f, 1.4f, this.paint);
                    this.paint.setAlpha(Math.round(fMin2 * 255.0f));
                    canvas.drawPath(this.star, this.paint);
                    canvas.restoreToCount(iSave);
                }
            }
        }
    }
}
