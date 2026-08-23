package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;
import java.util.ArrayList;
import java.util.Calendar;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes3.dex */
public class FireworksOverlay extends View {
    private static int[] colors;
    private static final int fallParticlesCount;
    private static int[] heartColors;
    private static Drawable[] heartDrawable;
    private static Paint[] paint;
    private static final int particlesCount;
    private static int[] starsColors;
    private static Drawable[] starsDrawable;
    private int fallingDownCount;
    private boolean isFebruary14;
    private long lastUpdateTime;
    private ArrayList particles;
    private RectF rect;
    private float speedCoef;
    private boolean started;
    private boolean startedFall;
    private boolean withStars;

    protected void onStop() {
    }

    static {
        particlesCount = SharedConfig.getDevicePerformanceClass() == 0 ? 50 : 60;
        fallParticlesCount = SharedConfig.getDevicePerformanceClass() == 0 ? 20 : 30;
        int[] iArr = {-13845272, -6421296, -79102, -187561, -14185218, -10897300};
        colors = iArr;
        heartColors = new int[]{-1944197, -10498574, -9623, -2399389, -1870160};
        starsColors = new int[]{-14778113, -15677815, -42601, -26844, -13639175};
        paint = new Paint[iArr.length];
        int i = 0;
        while (true) {
            Paint[] paintArr = paint;
            if (i >= paintArr.length) {
                return;
            }
            paintArr[i] = new Paint(1);
            paint[i].setColor(colors[i]);
            i++;
        }
    }

    private class Particle {
        byte colorType;
        byte finishedStart;
        float moveX;
        float moveY;
        short rotation;
        byte side;
        byte type;
        byte typeSize;

        /* JADX INFO: renamed from: x */
        float f1965x;
        byte xFinished;

        /* JADX INFO: renamed from: y */
        float f1966y;

        private Particle() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void draw(Canvas canvas) {
            byte b = this.type;
            if (b == 0) {
                canvas.drawCircle(this.f1965x, this.f1966y, AndroidUtilities.m1124dp(this.typeSize), FireworksOverlay.paint[this.colorType]);
                return;
            }
            if (b == 1) {
                FireworksOverlay.this.rect.set(this.f1965x - AndroidUtilities.m1124dp(this.typeSize), this.f1966y - AndroidUtilities.m1124dp(2.0f), this.f1965x + AndroidUtilities.m1124dp(this.typeSize), this.f1966y + AndroidUtilities.m1124dp(2.0f));
                canvas.save();
                canvas.rotate(this.rotation, FireworksOverlay.this.rect.centerX(), FireworksOverlay.this.rect.centerY());
                canvas.drawRoundRect(FireworksOverlay.this.rect, AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), FireworksOverlay.paint[this.colorType]);
                canvas.restore();
                return;
            }
            if (b == 2) {
                Drawable drawable = FireworksOverlay.starsDrawable != null ? FireworksOverlay.starsDrawable[this.colorType] : null;
                if (FireworksOverlay.heartDrawable != null) {
                    drawable = FireworksOverlay.heartDrawable[this.colorType];
                }
                if (drawable != null) {
                    int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
                    int intrinsicHeight = drawable.getIntrinsicHeight() / 2;
                    float f = this.f1965x;
                    float f2 = this.f1966y;
                    drawable.setBounds(((int) f) - intrinsicWidth, ((int) f2) - intrinsicHeight, ((int) f) + intrinsicWidth, ((int) f2) + intrinsicHeight);
                    canvas.save();
                    canvas.rotate(this.rotation, this.f1965x, this.f1966y);
                    byte b2 = this.typeSize;
                    canvas.scale(b2 / 6.0f, b2 / 6.0f, this.f1965x, this.f1966y);
                    drawable.draw(canvas);
                    canvas.restore();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean update(int i) {
            float f = i / 16.0f;
            float f2 = this.f1965x;
            float f3 = this.moveX;
            this.f1965x = f2 + (f3 * f);
            this.f1966y += this.moveY * f;
            if (this.xFinished != 0) {
                float fM1124dp = AndroidUtilities.m1124dp(1.0f) * 0.5f;
                if (this.xFinished == 1) {
                    float f4 = this.moveX + (fM1124dp * f * 0.05f);
                    this.moveX = f4;
                    if (f4 >= fM1124dp) {
                        this.xFinished = (byte) 2;
                    }
                } else {
                    float f5 = this.moveX - ((fM1124dp * f) * 0.05f);
                    this.moveX = f5;
                    if (f5 <= (-fM1124dp)) {
                        this.xFinished = (byte) 1;
                    }
                }
            } else if (this.side == 0) {
                if (f3 > 0.0f) {
                    float f6 = f3 - (0.05f * f);
                    this.moveX = f6;
                    if (f6 <= 0.0f) {
                        this.moveX = 0.0f;
                        this.xFinished = this.finishedStart;
                    }
                }
            } else if (f3 < 0.0f) {
                float f7 = f3 + (0.05f * f);
                this.moveX = f7;
                if (f7 >= 0.0f) {
                    this.moveX = 0.0f;
                    this.xFinished = this.finishedStart;
                }
            }
            float f8 = (-AndroidUtilities.m1124dp(1.0f)) / 2.0f;
            float f9 = this.moveY;
            boolean z = f9 < f8;
            if (f9 > f8) {
                this.moveY = f9 + ((AndroidUtilities.m1124dp(1.0f) / 3.0f) * f * FireworksOverlay.this.speedCoef);
            } else {
                this.moveY = f9 + ((AndroidUtilities.m1124dp(1.0f) / 3.0f) * f);
            }
            if (z && this.moveY > f8) {
                FireworksOverlay.this.fallingDownCount++;
            }
            byte b = this.type;
            if (b == 1 || b == 2) {
                short s = (short) (this.rotation + (f * 10.0f));
                this.rotation = s;
                if (s > 360) {
                    this.rotation = (short) (s - 360);
                }
            }
            return this.f1966y >= ((float) FireworksOverlay.this.getHeightForAnimation());
        }
    }

    public FireworksOverlay(Context context) {
        super(context);
        this.rect = new RectF();
        this.speedCoef = 1.0f;
        this.particles = new ArrayList(particlesCount + fallParticlesCount);
    }

    private void loadHeartDrawables() {
        if (heartDrawable != null) {
            return;
        }
        heartDrawable = new Drawable[heartColors.length];
        int i = 0;
        while (true) {
            Drawable[] drawableArr = heartDrawable;
            if (i >= drawableArr.length) {
                return;
            }
            drawableArr[i] = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.heart_confetti).mutate();
            heartDrawable[i].setColorFilter(new PorterDuffColorFilter(heartColors[i], PorterDuff.Mode.MULTIPLY));
            i++;
        }
    }

    private void loadStarsDrawables() {
        if (starsDrawable != null) {
            return;
        }
        starsDrawable = new Drawable[starsColors.length];
        int i = 0;
        while (true) {
            Drawable[] drawableArr = starsDrawable;
            if (i >= drawableArr.length) {
                return;
            }
            drawableArr[i] = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.msg_settings_premium).mutate();
            starsDrawable[i].setColorFilter(new PorterDuffColorFilter(starsColors[i], PorterDuff.Mode.MULTIPLY));
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getHeightForAnimation() {
        if (getMeasuredHeight() == 0) {
            return ((View) getParent()).getHeight();
        }
        return getMeasuredHeight();
    }

    private int getWidthForAnimation() {
        if (getMeasuredWidth() == 0) {
            return ((View) getParent()).getWidth();
        }
        return getMeasuredWidth();
    }

    private Particle createParticle(boolean z) {
        Particle particle = new Particle();
        try {
            byte bNextInt = (byte) Utilities.random.nextInt(2);
            particle.type = bNextInt;
            if (this.isFebruary14 && bNextInt == 0) {
                particle.type = (byte) 2;
                particle.colorType = (byte) Utilities.random.nextInt(heartColors.length);
            } else if (this.withStars && Utilities.random.nextBoolean()) {
                particle.type = (byte) 2;
                particle.colorType = (byte) Utilities.random.nextInt(starsColors.length);
            } else {
                particle.colorType = (byte) Utilities.random.nextInt(colors.length);
            }
            particle.side = (byte) Utilities.random.nextInt(2);
            particle.finishedStart = (byte) (Utilities.random.nextInt(2) + 1);
            byte b = particle.type;
            if (b == 0 || b == 2) {
                particle.typeSize = (byte) ((Utilities.random.nextFloat() * 2.0f) + 4.0f);
            } else {
                particle.typeSize = (byte) ((Utilities.random.nextFloat() * 4.0f) + 4.0f);
            }
            if (z) {
                particle.f1966y = (-Utilities.random.nextFloat()) * getHeightForAnimation() * 1.2f;
                particle.f1965x = AndroidUtilities.m1124dp(5.0f) + Utilities.random.nextInt(Math.max(1, getWidthForAnimation() - AndroidUtilities.m1124dp(10.0f)));
                particle.xFinished = particle.finishedStart;
                return particle;
            }
            int iM1124dp = AndroidUtilities.m1124dp(Utilities.random.nextInt(10) + 4);
            int heightForAnimation = getHeightForAnimation() / 4;
            if (particle.side == 0) {
                particle.f1965x = -iM1124dp;
            } else {
                particle.f1965x = getWidthForAnimation() + iM1124dp;
            }
            particle.moveX = (particle.side == 0 ? 1 : -1) * (AndroidUtilities.m1124dp(1.2f) + (Utilities.random.nextFloat() * AndroidUtilities.m1124dp(4.0f)));
            particle.moveY = -(AndroidUtilities.m1124dp(4.0f) + (Utilities.random.nextFloat() * AndroidUtilities.m1124dp(4.0f)));
            particle.f1966y = (heightForAnimation / 2) + Utilities.random.nextInt(Math.max(1, heightForAnimation * 2));
            return particle;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return particle;
        }
    }

    public boolean isStarted() {
        return this.started;
    }

    public void start(boolean z) {
        this.withStars = z;
        setLayerType(2, null);
        boolean z2 = true;
        this.started = true;
        this.startedFall = false;
        this.fallingDownCount = 0;
        this.speedCoef = 1.0f;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i = calendar.get(5);
        if (calendar.get(2) != 1 || (!BuildVars.DEBUG_PRIVATE_VERSION && i != 14)) {
            z2 = false;
        }
        this.isFebruary14 = z2;
        if (z2) {
            loadHeartDrawables();
        } else if (z) {
            loadStarsDrawables();
        }
        int i2 = particlesCount;
        int iClamp = Utilities.clamp(i2 - this.particles.size(), i2, i2 / 3);
        for (int i3 = 0; i3 < iClamp; i3++) {
            this.particles.add(createParticle(false));
        }
        invalidate();
    }

    public void start() {
        start(false);
    }

    private void startFall() {
        if (this.startedFall) {
            return;
        }
        this.startedFall = true;
        for (int i = 0; i < fallParticlesCount; i++) {
            this.particles.add(createParticle(true));
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i = (int) (jElapsedRealtime - this.lastUpdateTime);
        this.lastUpdateTime = jElapsedRealtime;
        if (i > 18) {
            i = 16;
        }
        int size = this.particles.size();
        int i2 = 0;
        while (i2 < size) {
            Particle particle = (Particle) this.particles.get(i2);
            particle.draw(canvas);
            if (particle.update(i)) {
                this.particles.remove(i2);
                i2--;
                size--;
            }
            i2++;
        }
        if (this.fallingDownCount >= particlesCount / 2 && this.speedCoef > 0.2f) {
            startFall();
            float f = this.speedCoef - ((i / 16.0f) * 0.15f);
            this.speedCoef = f;
            if (f < 0.2f) {
                this.speedCoef = 0.2f;
            }
        }
        if (!this.particles.isEmpty()) {
            invalidate();
            return;
        }
        this.started = false;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.FireworksOverlay$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onDraw$0();
            }
        });
        onStop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$0() {
        if (this.started) {
            return;
        }
        setLayerType(0, null);
    }
}
