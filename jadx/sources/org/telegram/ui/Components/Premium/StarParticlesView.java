package org.telegram.ui.Components.Premium;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.GLIconSettingsView;

/* JADX INFO: loaded from: classes7.dex */
public class StarParticlesView extends View {
    private LinearGradient clipGradient;
    private Matrix clipGradientMatrix;
    private Paint clipGradientPaint;
    public boolean doNotFling;
    public Drawable drawable;
    private boolean isLiteModeParticlesAllowed;
    private Utilities.Callback powerSaverCallback;
    int size;

    /* JADX WARN: Illegal instructions before constructor call */
    public StarParticlesView(Context context) {
        int i;
        if (SharedConfig.getDevicePerformanceClass() == 2) {
            i = 200;
        } else {
            i = SharedConfig.getDevicePerformanceClass() == 1 ? 100 : 50;
        }
        this(context, i);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.StarParticlesView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onAttachedToWindow$0((Boolean) obj);
            }
        };
        this.powerSaverCallback = callback;
        LiteMode.addOnPowerSaverAppliedListener(callback);
        onApplyPowerSaverMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAttachedToWindow$0(Boolean bool) {
        onApplyPowerSaverMode();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Utilities.Callback callback = this.powerSaverCallback;
        if (callback != null) {
            LiteMode.removeOnPowerSaverAppliedListener(callback);
        }
    }

    private void onApplyPowerSaverMode() {
        boolean zIsEnabled = LiteMode.isEnabled(131072);
        if (this.isLiteModeParticlesAllowed != zIsEnabled) {
            this.isLiteModeParticlesAllowed = zIsEnabled;
            invalidate();
        }
    }

    public StarParticlesView(Context context, int i) {
        super(context);
        this.isLiteModeParticlesAllowed = true;
        this.drawable = new Drawable(i);
        configure();
    }

    protected void configure() {
        Drawable drawable = this.drawable;
        drawable.type = 100;
        drawable.roundEffect = true;
        drawable.useRotate = true;
        drawable.useBlur = true;
        drawable.checkBounds = true;
        drawable.size1 = 4;
        drawable.k3 = 0.98f;
        drawable.k2 = 0.98f;
        drawable.k1 = 0.98f;
        drawable.init();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth() << (getMeasuredHeight() + 16);
        this.drawable.rect.set(0.0f, 0.0f, getStarsRectWidth(), AndroidUtilities.dp(140.0f));
        this.drawable.rect.offset((getMeasuredWidth() - this.drawable.rect.width()) / 2.0f, (getMeasuredHeight() - this.drawable.rect.height()) / 2.0f);
        this.drawable.rect2.set(-AndroidUtilities.dp(15.0f), -AndroidUtilities.dp(15.0f), getMeasuredWidth() + AndroidUtilities.dp(15.0f), getMeasuredHeight() + AndroidUtilities.dp(15.0f));
        if (this.size != measuredWidth) {
            this.size = measuredWidth;
            this.drawable.resetPositions();
        }
    }

    protected int getStarsRectWidth() {
        return AndroidUtilities.dp(140.0f);
    }

    public void setClipWithGradient() {
        Paint paint = new Paint(1);
        this.clipGradientPaint = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.dp(12.0f), new int[]{16777215, -1}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
        this.clipGradient = linearGradient;
        this.clipGradientPaint.setShader(linearGradient);
        this.clipGradientMatrix = new Matrix();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Canvas canvas2;
        super.onDraw(canvas);
        if (this.isLiteModeParticlesAllowed) {
            if (this.clipGradientPaint != null) {
                canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
                canvas2 = canvas;
            } else {
                canvas2 = canvas;
            }
            this.drawable.onDraw(canvas2);
            if (this.clipGradientPaint != null) {
                canvas2.save();
                this.clipGradientMatrix.reset();
                this.clipGradientMatrix.postTranslate(0.0f, (getHeight() + 1) - AndroidUtilities.dp(12.0f));
                this.clipGradient.setLocalMatrix(this.clipGradientMatrix);
                canvas2.drawRect(0.0f, getHeight() - AndroidUtilities.dp(12.0f), getWidth(), getHeight(), this.clipGradientPaint);
                this.clipGradientMatrix.reset();
                this.clipGradientMatrix.postRotate(180.0f);
                this.clipGradientMatrix.postTranslate(0.0f, AndroidUtilities.dp(12.0f));
                this.clipGradient.setLocalMatrix(this.clipGradientMatrix);
                canvas2.drawRect(0.0f, 0.0f, getWidth(), AndroidUtilities.dp(12.0f), this.clipGradientPaint);
                canvas2.restore();
                canvas2.restore();
            }
            if (this.drawable.paused) {
                return;
            }
            invalidate();
        }
    }

    public void flingParticles(float f) {
        if (this.doNotFling) {
            return;
        }
        float f2 = f < 60.0f ? 5.0f : f < 180.0f ? 9.0f : 15.0f;
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.StarParticlesView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$flingParticles$1(valueAnimator);
            }
        };
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, f2);
        valueAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
        valueAnimatorOfFloat.setDuration(600L);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(f2, 1.0f);
        valueAnimatorOfFloat2.addUpdateListener(animatorUpdateListener);
        valueAnimatorOfFloat2.setDuration(2000L);
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flingParticles$1(ValueAnimator valueAnimator) {
        this.drawable.speedScale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Drawable {

        /* JADX INFO: renamed from: a */
        float f1474a;
        float a1;
        float a2;
        public Integer color;
        public final int count;
        public boolean distributionAlgorithm;
        public Utilities.CallbackReturn getPaint;
        private int lastColor;
        public Paint overridePaint;
        public boolean paused;
        public long pausedTime;
        float[] points1;
        float[] points2;
        float[] points3;
        int pointsCount1;
        int pointsCount2;
        int pointsCount3;
        private long prevTime;
        public Theme.ResourcesProvider resourcesProvider;
        public boolean startFromCenter;
        public boolean useGradient;
        public boolean useRotate;
        public boolean useScale;
        public RectF rect = new RectF();
        public RectF rect2 = new RectF();
        public RectF excludeRect = new RectF();
        private final Bitmap[] stars = new Bitmap[3];
        public Paint paint = new Paint();
        public float excludeRadius = 0.0f;
        public float centerOffsetX = 0.0f;
        public float centerOffsetY = 0.0f;
        public ArrayList particles = new ArrayList();
        public float speedScale = 1.0f;
        public int size1 = 14;
        public int size2 = 12;
        public int size3 = 10;
        public float k1 = 0.85f;
        public float k2 = 0.85f;
        public float k3 = 0.9f;
        public long minLifeTime = 2000;
        public int randLifeTime = MediaDataController.MAX_STYLE_RUNS_COUNT;
        private final float dt = 1000.0f / AndroidUtilities.screenRefreshRate;
        Matrix matrix = new Matrix();
        Matrix matrix2 = new Matrix();
        Matrix matrix3 = new Matrix();
        public boolean checkBounds = false;
        public boolean checkTime = true;
        public boolean isCircle = true;
        public boolean useBlur = false;
        public boolean forceMaxAlpha = false;
        public boolean roundEffect = true;
        public int type = -1;
        public int colorKey = Theme.key_premiumStartSmallStarsColor;
        public final boolean[] svg = new boolean[3];
        public final boolean[] flip = new boolean[3];
        private int lastParticleI = 0;

        public Drawable(int i) {
            this.count = i;
            this.distributionAlgorithm = i < 50;
        }

        public void init() {
            if (this.useRotate) {
                int i = this.count;
                this.points1 = new float[i * 2];
                this.points2 = new float[i * 2];
                this.points3 = new float[i * 2];
            }
            generateBitmaps();
            if (this.particles.isEmpty()) {
                for (int i2 = 0; i2 < this.count; i2++) {
                    this.particles.add(new Particle());
                }
            }
        }

        public void updateColors() {
            int color = Theme.getColor(this.colorKey, this.resourcesProvider);
            if (this.lastColor != color) {
                this.lastColor = color;
                generateBitmaps();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:78:0x01ab  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void generateBitmaps() {
            int iDp;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            for (int i8 = 0; i8 < 3; i8++) {
                float f = this.k1;
                if (i8 == 0) {
                    iDp = AndroidUtilities.dp(this.size1);
                } else if (i8 == 1) {
                    f = this.k2;
                    iDp = AndroidUtilities.dp(this.size2);
                } else {
                    f = this.k3;
                    iDp = AndroidUtilities.dp(this.size3);
                }
                int i9 = iDp;
                int i10 = this.type;
                if (i10 == 9) {
                    if (i8 == 0) {
                        i7 = C2484R.raw.premium_object_folder;
                    } else if (i8 == 1) {
                        i7 = C2484R.raw.premium_object_bubble;
                    } else {
                        i7 = C2484R.raw.premium_object_settings;
                    }
                    this.stars[i8] = SvgHelper.getBitmap(i7, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 30));
                    this.svg[i8] = true;
                } else if (i10 == 27) {
                    if (i8 == 0) {
                        i6 = C2484R.raw.filled_messages_paid;
                    } else if (i8 == 1) {
                        i6 = C2484R.raw.filled_crown_on;
                    } else {
                        i6 = C2484R.raw.premium_object_star2;
                    }
                    this.stars[i8] = SvgHelper.getBitmap(i6, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 30));
                    this.svg[i8] = true;
                } else if (i10 == 11 || i10 == 4) {
                    if (i8 == 0) {
                        i = C2484R.raw.premium_object_smile1;
                    } else if (i8 == 1) {
                        i = C2484R.raw.premium_object_smile2;
                    } else {
                        i = C2484R.raw.premium_object_like;
                    }
                    this.stars[i8] = SvgHelper.getBitmap(i, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 30));
                    this.svg[i8] = true;
                } else if (i10 == 22) {
                    if (i8 == 0) {
                        i5 = C2484R.raw.premium_object_user;
                    } else if (i8 == 1) {
                        i5 = C2484R.raw.cache_photos;
                    } else {
                        i5 = C2484R.raw.cache_profile_photos;
                    }
                    this.stars[i8] = SvgHelper.getBitmap(i5, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 30));
                    this.svg[i8] = true;
                } else if (i10 == 3) {
                    if (i8 == 0) {
                        i4 = C2484R.raw.premium_object_adsbubble;
                    } else if (i8 == 1) {
                        i4 = C2484R.raw.premium_object_like;
                    } else {
                        i4 = C2484R.raw.premium_object_noads;
                    }
                    this.stars[i8] = SvgHelper.getBitmap(i4, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 30));
                    this.svg[i8] = true;
                } else if (i10 == 7) {
                    if (i8 == 0) {
                        i3 = C2484R.raw.premium_object_video2;
                    } else if (i8 == 1) {
                        i3 = C2484R.raw.premium_object_video;
                    } else {
                        i3 = C2484R.raw.premium_object_user;
                    }
                    this.stars[i8] = SvgHelper.getBitmap(i3, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 30));
                    this.svg[i8] = true;
                } else if (i10 == 1001) {
                    this.stars[i8] = SvgHelper.getBitmap(C2484R.raw.premium_object_fire, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 30));
                    this.svg[i8] = true;
                } else if (i10 == 1002) {
                    this.stars[i8] = SvgHelper.getBitmap(C2484R.raw.premium_object_star2, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 30));
                    this.svg[i8] = true;
                } else if (i10 == 24) {
                    if (i8 == 0) {
                        i2 = C2484R.raw.premium_object_tag;
                    } else if (i8 == 1) {
                        i2 = C2484R.raw.premium_object_check;
                    } else {
                        i2 = C2484R.raw.premium_object_star;
                    }
                    this.stars[i8] = SvgHelper.getBitmap(i2, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 30));
                    this.svg[i8] = true;
                } else if (i10 == 28) {
                    if (i8 == 0) {
                        this.stars[i8] = SvgHelper.getBitmap(C2484R.raw.filled_premium_dollar, i9, i9, ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 255));
                        this.flip[i8] = true;
                    } else {
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i9, i9, Bitmap.Config.ARGB_8888);
                        this.stars[i8] = bitmapCreateBitmap;
                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                        if (this.type == 6 && (i8 == 1 || i8 == 2)) {
                            android.graphics.drawable.Drawable drawable = ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2484R.drawable.msg_premium_liststar);
                            drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(this.colorKey, this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
                            drawable.setBounds(0, 0, i9, i9);
                            drawable.draw(canvas);
                        } else {
                            Path path = new Path();
                            float f2 = i9 >> 1;
                            int i11 = (int) (f * f2);
                            path.moveTo(0.0f, f2);
                            float f3 = i11;
                            path.lineTo(f3, f3);
                            path.lineTo(f2, 0.0f);
                            float f4 = i9 - i11;
                            path.lineTo(f4, f3);
                            float f5 = i9;
                            path.lineTo(f5, f2);
                            path.lineTo(f4, f4);
                            path.lineTo(f2, f5);
                            path.lineTo(f3, f4);
                            path.lineTo(0.0f, f2);
                            path.close();
                            Paint paint = new Paint();
                            if (this.useGradient) {
                                if (i9 >= AndroidUtilities.dp(10.0f)) {
                                    PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, i9, i9, i9 * (-2), 0.0f);
                                } else {
                                    PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, i9, i9, i9 * (-4), 0.0f);
                                }
                                Paint mainGradientPaint = PremiumGradient.getInstance().getMainGradientPaint();
                                if (this.roundEffect) {
                                    mainGradientPaint.setPathEffect(new CornerPathEffect(AndroidUtilities.dpf2(this.size1 / 5.0f)));
                                }
                                if (this.forceMaxAlpha) {
                                    mainGradientPaint.setAlpha(255);
                                } else if (this.useBlur) {
                                    mainGradientPaint.setAlpha(60);
                                } else {
                                    mainGradientPaint.setAlpha(120);
                                }
                                canvas.drawPath(path, mainGradientPaint);
                                mainGradientPaint.setPathEffect(null);
                                mainGradientPaint.setAlpha(255);
                            } else {
                                paint.setColor(getPathColor(i8));
                                if (this.roundEffect) {
                                    paint.setPathEffect(new CornerPathEffect(AndroidUtilities.dpf2(this.size1 / 5.0f)));
                                }
                                canvas.drawPath(path, paint);
                            }
                            if (this.useBlur) {
                                Utilities.stackBlurBitmap(bitmapCreateBitmap, 2);
                            }
                        }
                    }
                } else if (i10 == 105 && i8 == 0) {
                    this.stars[i8] = SvgHelper.getBitmap(C2484R.raw.premium_object_star2, i9, i9, getPathColor(i8));
                }
            }
        }

        protected int getPathColor(int i) {
            Integer num = this.color;
            if (num != null) {
                return num.intValue();
            }
            if (this.type == 100) {
                return ColorUtils.setAlphaComponent(Theme.getColor(this.colorKey, this.resourcesProvider), 200);
            }
            return Theme.getColor(this.colorKey, this.resourcesProvider);
        }

        public void resetPositions() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (int i = 0; i < this.particles.size(); i++) {
                ((Particle) this.particles.get(i)).genPosition(jCurrentTimeMillis);
            }
        }

        public void onDraw(Canvas canvas) {
            onDraw(canvas, 1.0f);
        }

        public void onDraw(Canvas canvas, float f) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jClamp = MathUtils.clamp(jCurrentTimeMillis - this.prevTime, 4L, 50L);
            if (this.useRotate) {
                this.matrix.reset();
                float f2 = jClamp;
                float f3 = this.f1474a + ((f2 / 40000.0f) * 360.0f);
                this.f1474a = f3;
                this.a1 += (f2 / 50000.0f) * 360.0f;
                this.a2 += (f2 / 60000.0f) * 360.0f;
                this.matrix.setRotate(f3, this.rect.centerX() + this.centerOffsetX, this.rect.centerY() + this.centerOffsetY);
                this.matrix2.setRotate(this.a1, this.rect.centerX() + this.centerOffsetX, this.rect.centerY() + this.centerOffsetY);
                this.matrix3.setRotate(this.a2, this.rect.centerX() + this.centerOffsetX, this.rect.centerY() + this.centerOffsetY);
                this.pointsCount1 = 0;
                this.pointsCount2 = 0;
                this.pointsCount3 = 0;
                for (int i = 0; i < this.particles.size(); i++) {
                    ((Particle) this.particles.get(i)).updatePoint();
                }
                Matrix matrix = this.matrix;
                float[] fArr = this.points1;
                matrix.mapPoints(fArr, 0, fArr, 0, this.pointsCount1);
                Matrix matrix2 = this.matrix2;
                float[] fArr2 = this.points2;
                matrix2.mapPoints(fArr2, 0, fArr2, 0, this.pointsCount2);
                Matrix matrix3 = this.matrix3;
                float[] fArr3 = this.points3;
                matrix3.mapPoints(fArr3, 0, fArr3, 0, this.pointsCount3);
                this.pointsCount1 = 0;
                this.pointsCount2 = 0;
                this.pointsCount3 = 0;
            }
            for (int i2 = 0; i2 < this.particles.size(); i2++) {
                Particle particle = (Particle) this.particles.get(i2);
                if (this.paused) {
                    particle.draw(canvas, this.pausedTime, f);
                } else {
                    particle.draw(canvas, jCurrentTimeMillis, f);
                }
                if (this.checkTime && jCurrentTimeMillis > particle.lifeTime) {
                    particle.genPosition(jCurrentTimeMillis);
                }
                if (this.checkBounds && !this.rect2.contains(particle.drawingX, particle.drawingY)) {
                    particle.genPosition(jCurrentTimeMillis);
                }
            }
            this.prevTime = jCurrentTimeMillis;
        }

        public class Particle {
            private int alpha;
            private float drawingX;
            private float drawingY;
            float flipProgress;

            /* JADX INFO: renamed from: i */
            private int f1475i;
            float inProgress;
            public long lifeTime;
            private float randomRotate;
            private int starIndex;
            private float vecX;
            private float vecY;

            /* JADX INFO: renamed from: x */
            private float f1476x;
            private float x2;

            /* JADX INFO: renamed from: y */
            private float f1477y;
            private float y2;
            private float scale = 1.0f;
            private boolean first = true;

            public Particle() {
                int i = Drawable.this.lastParticleI;
                Drawable.this.lastParticleI = i + 1;
                this.f1475i = i;
            }

            public void updatePoint() {
                int i = this.starIndex;
                if (i == 0) {
                    Drawable drawable = Drawable.this;
                    float[] fArr = drawable.points1;
                    int i2 = drawable.pointsCount1;
                    fArr[i2 * 2] = this.f1476x;
                    fArr[(i2 * 2) + 1] = this.f1477y;
                    drawable.pointsCount1 = i2 + 1;
                    return;
                }
                if (i == 1) {
                    Drawable drawable2 = Drawable.this;
                    float[] fArr2 = drawable2.points2;
                    int i3 = drawable2.pointsCount2;
                    fArr2[i3 * 2] = this.f1476x;
                    fArr2[(i3 * 2) + 1] = this.f1477y;
                    drawable2.pointsCount2 = i3 + 1;
                    return;
                }
                if (i == 2) {
                    Drawable drawable3 = Drawable.this;
                    float[] fArr3 = drawable3.points3;
                    int i4 = drawable3.pointsCount3;
                    fArr3[i4 * 2] = this.f1476x;
                    fArr3[(i4 * 2) + 1] = this.f1477y;
                    drawable3.pointsCount3 = i4 + 1;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:26:0x00c5  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void draw(Canvas canvas, long j, float f) {
                float fMin;
                Drawable drawable = Drawable.this;
                if (drawable.useRotate) {
                    int i = this.starIndex;
                    if (i == 0) {
                        float[] fArr = drawable.points1;
                        int i2 = drawable.pointsCount1;
                        this.drawingX = fArr[i2 * 2];
                        this.drawingY = fArr[(i2 * 2) + 1];
                        drawable.pointsCount1 = i2 + 1;
                    } else if (i == 1) {
                        float[] fArr2 = drawable.points2;
                        int i3 = drawable.pointsCount2;
                        this.drawingX = fArr2[i3 * 2];
                        this.drawingY = fArr2[(i3 * 2) + 1];
                        drawable.pointsCount2 = i3 + 1;
                    } else if (i == 2) {
                        float[] fArr3 = drawable.points3;
                        int i4 = drawable.pointsCount3;
                        this.drawingX = fArr3[i4 * 2];
                        this.drawingY = fArr3[(i4 * 2) + 1];
                        drawable.pointsCount3 = i4 + 1;
                    }
                } else {
                    this.drawingX = this.f1476x;
                    this.drawingY = this.f1477y;
                }
                if (drawable.excludeRect.isEmpty() || !Drawable.this.excludeRect.contains(this.drawingX, this.drawingY)) {
                    canvas.save();
                    canvas.translate(this.drawingX, this.drawingY);
                    float f2 = this.randomRotate;
                    if (f2 != 0.0f) {
                        canvas.rotate(f2, Drawable.this.stars[this.starIndex].getWidth() / 2.0f, Drawable.this.stars[this.starIndex].getHeight() / 2.0f);
                    }
                    if (Drawable.this.checkTime) {
                        float fClamp = this.lifeTime - j < 200 ? Utilities.clamp(1.0f - ((r5 - j) / 150.0f), 1.0f, 0.0f) : 0.0f;
                        float f3 = this.inProgress;
                        if (f3 < 1.0f || GLIconSettingsView.smallStarsSize != 1.0f) {
                            float interpolation = AndroidUtilities.overshootInterpolator.getInterpolation(f3) * GLIconSettingsView.smallStarsSize;
                            canvas.scale(interpolation, interpolation, 0.0f, 0.0f);
                        }
                        Drawable drawable2 = Drawable.this;
                        if (drawable2.flip[this.starIndex]) {
                            float fMin2 = this.flipProgress + ((drawable2.dt / 1000.0f) * Math.min(Drawable.this.speedScale, 3.5f));
                            this.flipProgress = fMin2;
                            canvas.scale((float) Math.cos(((double) fMin2) * 3.141592653589793d), 1.0f, 0.0f, 0.0f);
                        }
                        Drawable drawable3 = Drawable.this;
                        Paint paint = drawable3.overridePaint;
                        if (paint == null) {
                            Utilities.CallbackReturn callbackReturn = drawable3.getPaint;
                            if (callbackReturn != null) {
                                paint = (Paint) callbackReturn.run(Integer.valueOf(this.f1475i));
                            } else {
                                paint = drawable3.paint;
                            }
                        }
                        float f4 = 1.0f - fClamp;
                        paint.setAlpha((int) (this.alpha * f4 * f));
                        Bitmap bitmap = Drawable.this.stars[this.starIndex];
                        if (Drawable.this.useScale) {
                            float f5 = this.scale * f4 * f * this.inProgress;
                            canvas.scale(f5, f5);
                        }
                        canvas.drawBitmap(bitmap, -(bitmap.getWidth() >> 1), -(bitmap.getHeight() >> 1), paint);
                        canvas.restore();
                    }
                }
                if (Drawable.this.paused) {
                    return;
                }
                float fDp = AndroidUtilities.dp(4.0f) * (Drawable.this.dt / 660.0f);
                Drawable drawable4 = Drawable.this;
                if (drawable4.flip[this.starIndex]) {
                    fMin = fDp * Math.min(drawable4.speedScale, 3.5f) * 4.0f;
                } else {
                    fMin = fDp * drawable4.speedScale;
                }
                this.f1476x += this.vecX * fMin;
                this.f1477y += this.vecY * fMin;
                float f6 = this.inProgress;
                if (f6 != 1.0f) {
                    float f7 = f6 + (Drawable.this.dt / 200.0f);
                    this.inProgress = f7;
                    if (f7 > 1.0f) {
                        this.inProgress = 1.0f;
                    }
                }
            }

            public void genPosition(long j) {
                float f;
                float fDp;
                double dAtan2;
                int i;
                float f2;
                float f3;
                if (Drawable.this.type == 28) {
                    if (Utilities.fastRandom.nextFloat() < 0.13f) {
                        this.starIndex = 0;
                    } else {
                        this.starIndex = (int) Math.floor((r1 * (Drawable.this.stars.length - 2)) + 1.0f);
                    }
                } else {
                    this.starIndex = Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.stars.length);
                }
                Drawable drawable = Drawable.this;
                this.lifeTime = j + drawable.minLifeTime + ((long) Utilities.fastRandom.nextInt(drawable.randLifeTime * (drawable.flip[this.starIndex] ? 3 : 1)));
                this.randomRotate = 0.0f;
                float f4 = 0.6f;
                if (Drawable.this.useScale) {
                    this.scale = (Utilities.fastRandom.nextFloat() * 0.6f) + 0.4f;
                }
                Drawable drawable2 = Drawable.this;
                if (drawable2.distributionAlgorithm) {
                    float fAbs = drawable2.rect.left + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.width());
                    float fAbs2 = Drawable.this.rect.top + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.height());
                    float f5 = 0.0f;
                    int i2 = 0;
                    while (i2 < 10) {
                        float fAbs3 = Drawable.this.rect.left + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.width());
                        float fAbs4 = Drawable.this.rect.top + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.height());
                        float f6 = 2.1474836E9f;
                        int i3 = 0;
                        while (i3 < Drawable.this.particles.size()) {
                            Drawable drawable3 = Drawable.this;
                            float f7 = f4;
                            if (drawable3.startFromCenter) {
                                f2 = ((Particle) drawable3.particles.get(i3)).x2 - fAbs3;
                                f3 = ((Particle) Drawable.this.particles.get(i3)).y2;
                            } else {
                                f2 = ((Particle) drawable3.particles.get(i3)).f1476x - fAbs3;
                                f3 = ((Particle) Drawable.this.particles.get(i3)).f1477y;
                            }
                            float f8 = f3 - fAbs4;
                            float f9 = (f2 * f2) + (f8 * f8);
                            if (f9 < f6) {
                                f6 = f9;
                            }
                            i3++;
                            f4 = f7;
                        }
                        float f10 = f4;
                        if (f6 > f5) {
                            fAbs = fAbs3;
                            fAbs2 = fAbs4;
                            f5 = f6;
                        }
                        i2++;
                        f4 = f10;
                    }
                    f = f4;
                    this.f1476x = fAbs;
                    this.f1477y = fAbs2;
                } else {
                    f = 0.6f;
                    if (drawable2.isCircle) {
                        float fWidth = Drawable.this.rect.width();
                        float f11 = Drawable.this.excludeRadius;
                        float fAbs5 = ((Math.abs(Utilities.fastRandom.nextInt() % MediaDataController.MAX_STYLE_RUNS_COUNT) / 1000.0f) * (fWidth - f11)) + f11;
                        float fAbs6 = Math.abs(Utilities.fastRandom.nextInt() % 360);
                        if (!Drawable.this.flip[this.starIndex] || this.first) {
                            fDp = 0.0f;
                        } else {
                            fAbs5 = Math.min(fAbs5, AndroidUtilities.dp(10.0f));
                            fDp = AndroidUtilities.dp(30.0f) + 0.0f;
                        }
                        double d = fAbs5;
                        double d2 = fAbs6;
                        this.f1476x = Drawable.this.rect.centerX() + Drawable.this.centerOffsetX + ((float) (Math.sin(Math.toRadians(d2)) * d));
                        this.f1477y = Drawable.this.rect.centerY() + fDp + Drawable.this.centerOffsetY + ((float) (d * Math.cos(Math.toRadians(d2))));
                    } else {
                        this.f1476x = drawable2.rect.left + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.width());
                        this.f1477y = Drawable.this.rect.top + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.height());
                    }
                }
                if (Drawable.this.flip[this.starIndex]) {
                    this.flipProgress = Math.abs(Utilities.fastRandom.nextFloat() * 2.0f);
                }
                Drawable drawable4 = Drawable.this;
                if (drawable4.flip[this.starIndex]) {
                    dAtan2 = Math.toRadians(280.0f - (200.0f * Utilities.fastRandom.nextFloat()));
                } else if (drawable4.startFromCenter) {
                    dAtan2 = Utilities.fastRandom.nextDouble() * 3.141592653589793d * 2.0d;
                } else {
                    float f12 = this.f1477y;
                    float fCenterY = drawable4.rect.centerY();
                    Drawable drawable5 = Drawable.this;
                    dAtan2 = Math.atan2(f12 - (fCenterY + drawable5.centerOffsetY), this.f1476x - (drawable5.rect.centerX() + Drawable.this.centerOffsetX));
                }
                this.vecX = (float) Math.cos(dAtan2);
                this.vecY = (float) Math.sin(dAtan2);
                if (Drawable.this.svg[this.starIndex]) {
                    this.alpha = (int) (((Utilities.fastRandom.nextInt(50) + 50) / 100.0f) * 120.0f);
                } else {
                    this.alpha = (int) (((Utilities.fastRandom.nextInt(50) + 50) / 100.0f) * 255.0f);
                }
                int i4 = Drawable.this.type;
                if ((i4 == 6 && ((i = this.starIndex) == 1 || i == 2)) || i4 == 9 || i4 == 3 || i4 == 7 || i4 == 24 || i4 == 11 || i4 == 22 || i4 == 4) {
                    this.randomRotate = (int) (((Utilities.fastRandom.nextInt() % 100) / 100.0f) * 45.0f);
                }
                Drawable drawable6 = Drawable.this;
                if (drawable6.type != 101) {
                    this.inProgress = 0.0f;
                }
                if (drawable6.startFromCenter) {
                    float fNextFloat = (((Utilities.fastRandom.nextFloat() * 1.2f) + f) * Math.min(Drawable.this.rect.width(), Drawable.this.rect.height())) / 2.0f;
                    float fCenterX = Drawable.this.rect.centerX() + Drawable.this.centerOffsetX + (((float) Math.cos(dAtan2)) * fNextFloat);
                    this.f1476x = fCenterX;
                    this.x2 = fCenterX;
                    float fCenterY2 = Drawable.this.rect.centerY() + Drawable.this.centerOffsetY + (((float) Math.sin(dAtan2)) * fNextFloat);
                    this.f1477y = fCenterY2;
                    this.y2 = fCenterY2;
                }
                this.first = false;
            }
        }
    }

    public void setPaused(boolean z) {
        Drawable drawable = this.drawable;
        if (z == drawable.paused) {
            return;
        }
        drawable.paused = z;
        if (z) {
            drawable.pausedTime = System.currentTimeMillis();
            return;
        }
        for (int i = 0; i < this.drawable.particles.size(); i++) {
            ((Drawable.Particle) this.drawable.particles.get(i)).lifeTime += System.currentTimeMillis() - this.drawable.pausedTime;
        }
        invalidate();
    }
}
