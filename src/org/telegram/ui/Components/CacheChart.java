package org.telegram.ui.Components;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.material.timepicker.TimeModel;
import com.google.zxing.common.detector.MathUtils;
import java.util.Arrays;
import java.util.Comparator;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.SvgHelper;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.CacheChart;
import org.telegram.ui.Components.Premium.StarParticlesView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CacheChart extends View {
    private static final int[] DEFAULT_COLORS;
    private static final int[] DEFAULT_PARTICLES;
    private static Long loadedStart;
    private static long particlesStart;
    private static Long start;
    private final AnimatedTextView.AnimatedTextDrawable bottomCompleteText;
    private final AnimatedTextView.AnimatedTextDrawable bottomText;
    private RectF chartBounds;
    private RectF chartInnerBounds;
    private RectF chartMeasureBounds;
    private final int[] colorKeys;
    private boolean complete;
    private StarParticlesView.Drawable completeDrawable;
    private AnimatedFloat completeFloat;
    private LinearGradient completeGradient;
    private Matrix completeGradientMatrix;
    private Paint completePaint;
    private Paint completePaintStroke;
    private Path completePath;
    private RectF completePathBounds;
    private LinearGradient completeTextGradient;
    private Matrix completeTextGradientMatrix;
    private boolean interceptTouch;
    private boolean isAttached;
    private boolean loading;
    private Paint loadingBackgroundPaint;
    public AnimatedFloat loadingFloat;
    private final int[] particles;
    private RectF roundingRect;
    private final int sectionsCount;
    private Sector[] sectors;
    private float[] segmentsTmp;
    private int selectedIndex;
    private final boolean svgParticles;
    private float[] tempFloat;
    private int[] tempPercents;
    private final AnimatedTextView.AnimatedTextDrawable topCompleteText;
    private final AnimatedTextView.AnimatedTextDrawable topText;
    private final int type;

    /* JADX INFO: Access modifiers changed from: private */
    public static float toRad(float f) {
        return (float) (((double) (f / 180.0f)) * 3.141592653589793d);
    }

    protected int heightDp() {
        return 200;
    }

    protected void onSectionClick(int i) {
    }

    protected abstract void onSectionDown(int i, boolean z);

    protected int padInsideDp() {
        return 0;
    }

    static {
        int i = Theme.key_statisticChartLine_lightblue;
        int i2 = Theme.key_statisticChartLine_blue;
        int i3 = Theme.key_statisticChartLine_green;
        int i4 = Theme.key_statisticChartLine_purple;
        int i5 = Theme.key_statisticChartLine_lightgreen;
        int i6 = Theme.key_statisticChartLine_red;
        int i7 = Theme.key_statisticChartLine_orange;
        int i8 = Theme.key_statisticChartLine_cyan;
        int i9 = Theme.key_statisticChartLine_golden;
        DEFAULT_COLORS = new int[]{i, i2, i3, i4, i5, i6, i7, i8, i4, i9, i9};
        int i10 = C2484R.raw.cache_photos;
        int i11 = C2484R.raw.cache_videos;
        int i12 = C2484R.raw.cache_documents;
        int i13 = C2484R.raw.cache_music;
        int i14 = C2484R.raw.cache_stickers;
        int i15 = C2484R.raw.cache_profile_photos;
        int i16 = C2484R.raw.cache_other;
        DEFAULT_PARTICLES = new int[]{i10, i11, i12, i13, i11, i13, i14, i15, i16, i16, i12};
        particlesStart = -1L;
    }

    class Sector {
        float angleCenter;
        AnimatedFloat angleCenterAnimated;
        float angleSize;
        AnimatedFloat angleSizeAnimated;
        Paint cut;
        RadialGradient gradient;
        Matrix gradientMatrix;
        int gradientWidth;
        private float lastAngleCenter;
        private float lastAngleSize;
        private float lastCx;
        private float lastCy;
        private float lastRounding;
        private float lastThickness;
        private float lastWidth;
        Paint paint;
        Bitmap particle;
        Paint particlePaint;
        float particlesAlpha;
        AnimatedFloat particlesAlphaAnimated;
        Path path;
        RectF pathBounds;
        RectF rectF;
        boolean selected;
        AnimatedFloat selectedAnimated;
        AnimatedTextView.AnimatedTextDrawable text;
        float textAlpha;
        AnimatedFloat textAlphaAnimated;
        float textScale;
        AnimatedFloat textScaleAnimated;
        Paint uncut;

        Sector() {
            Paint paint = new Paint(3);
            this.particlePaint = paint;
            paint.setColor(-1);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.angleCenterAnimated = new AnimatedFloat(CacheChart.this, 650L, cubicBezierInterpolator);
            this.angleSizeAnimated = new AnimatedFloat(CacheChart.this, 650L, cubicBezierInterpolator);
            CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.EASE_OUT;
            this.textAlphaAnimated = new AnimatedFloat(CacheChart.this, 0L, 150L, cubicBezierInterpolator2);
            this.textScale = 1.0f;
            this.textScaleAnimated = new AnimatedFloat(CacheChart.this, 0L, 150L, cubicBezierInterpolator2);
            this.text = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
            this.particlesAlphaAnimated = new AnimatedFloat(CacheChart.this, 0L, 150L, cubicBezierInterpolator2);
            this.selectedAnimated = new AnimatedFloat(CacheChart.this, 0L, 200L, cubicBezierInterpolator);
            this.text.setTextColor(-1);
            this.text.setAnimationProperties(0.35f, 0L, 200L, cubicBezierInterpolator);
            this.text.setTypeface(AndroidUtilities.bold());
            this.text.setTextSize(AndroidUtilities.dp(15.0f));
            this.text.setGravity(17);
            this.path = new Path();
            this.paint = new Paint(1);
            this.pathBounds = new RectF();
            this.uncut = new Paint(1);
            Paint paint2 = new Paint(1);
            this.cut = paint2;
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            this.particlePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            this.rectF = new RectF();
        }

        private void setupPath(RectF rectF, RectF rectF2, float f, float f2, float f3) {
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float fMin = Math.min(Math.min(f3, (rectF.width() - rectF2.width()) / 4.0f), (float) (((double) (f2 / 180.0f)) * 3.141592653589793d * ((double) (rectF2.width() / 2.0f))));
            float fWidth = (rectF.width() - rectF2.width()) / 2.0f;
            if (this.lastAngleCenter == f && this.lastAngleSize == f2 && this.lastRounding == fMin && this.lastThickness == fWidth && this.lastWidth == rectF.width() && this.lastCx == rectF.centerX() && this.lastCy == rectF.centerY()) {
                return;
            }
            this.lastAngleCenter = f;
            this.lastAngleSize = f2;
            this.lastRounding = fMin;
            this.lastThickness = fWidth;
            this.lastWidth = rectF.width();
            this.lastCx = rectF.centerX();
            this.lastCy = rectF.centerY();
            float f10 = f - f2;
            float f11 = f + f2;
            boolean z = fMin > 0.0f;
            float f12 = fMin * 2.0f;
            float fWidth2 = (fMin / ((float) (((double) (rectF.width() - f12)) * 3.141592653589793d))) * 360.0f;
            float fWidth3 = ((fMin / ((float) (((double) (rectF2.width() + f12)) * 3.141592653589793d))) * 360.0f) + ((f2 > 175.0f ? 0 : 1) * 0.5f);
            float fWidth4 = (rectF.width() / 2.0f) - fMin;
            float fWidth5 = (rectF2.width() / 2.0f) + fMin;
            this.path.rewind();
            float f13 = f11 - f10;
            if (f13 < 0.5f) {
                return;
            }
            if (z) {
                f5 = 180.0f;
                f6 = f10;
                double d = fWidth4;
                f8 = 2.0f;
                f7 = fWidth5;
                f4 = fMin;
                CacheChart.setCircleBounds(CacheChart.this.roundingRect, ((double) rectF.centerX()) + (Math.cos(CacheChart.toRad(r20)) * d), ((double) rectF.centerY()) + (d * Math.sin(CacheChart.toRad(r20))), f4);
                this.path.arcTo(CacheChart.this.roundingRect, (f6 + fWidth2) - 90.0f, 90.0f);
            } else {
                f4 = fMin;
                f5 = 180.0f;
                f6 = f10;
                f7 = fWidth5;
                f8 = 2.0f;
            }
            this.path.arcTo(rectF, f6 + fWidth2, f13 - (fWidth2 * f8));
            if (z) {
                double d2 = fWidth4;
                CacheChart.setCircleBounds(CacheChart.this.roundingRect, ((double) rectF.centerX()) + (Math.cos(CacheChart.toRad(r2)) * d2), ((double) rectF.centerY()) + (d2 * Math.sin(CacheChart.toRad(r2))), f4);
                this.path.arcTo(CacheChart.this.roundingRect, f11 - fWidth2, 90.0f);
                f9 = f7;
                double d3 = f9;
                CacheChart.setCircleBounds(CacheChart.this.roundingRect, ((double) rectF2.centerX()) + (Math.cos(CacheChart.toRad(r2)) * d3), ((double) rectF2.centerY()) + (d3 * Math.sin(CacheChart.toRad(r2))), f4);
                this.path.arcTo(CacheChart.this.roundingRect, (f11 - fWidth3) + 90.0f, 90.0f);
            } else {
                f9 = f7;
            }
            this.path.arcTo(rectF2, f11 - fWidth3, -(f13 - (fWidth3 * f8)));
            if (z) {
                double d4 = f9;
                CacheChart.setCircleBounds(CacheChart.this.roundingRect, ((double) rectF2.centerX()) + (Math.cos(CacheChart.toRad(r3)) * d4), ((double) rectF2.centerY()) + (d4 * Math.sin(CacheChart.toRad(r3))), f4);
                this.path.arcTo(CacheChart.this.roundingRect, f6 + fWidth3 + f5, 90.0f);
            }
            this.path.close();
            this.path.computeBounds(this.pathBounds, false);
        }

        private void setGradientBounds(float f, float f2, float f3, float f4) {
            this.gradientMatrix.reset();
            this.gradientMatrix.setTranslate(f, f2);
            this.gradient.setLocalMatrix(this.gradientMatrix);
        }

        private void drawParticles(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
            if (f10 <= 0.0f || !LiteMode.isEnabled(LiteMode.FLAGS_CHAT)) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            float fSqrt = (float) Math.sqrt(2.0d);
            if (CacheChart.particlesStart < 0) {
                CacheChart.particlesStart = jCurrentTimeMillis;
            }
            float f11 = (jCurrentTimeMillis - CacheChart.particlesStart) / 10000.0f;
            Bitmap bitmap = this.particle;
            if (bitmap != null) {
                int width = bitmap.getWidth();
                float f12 = width;
                float fDpf2 = AndroidUtilities.dpf2(15.0f) / f12;
                float f13 = 7.0f;
                int iFloor = (int) Math.floor((f5 % 360.0f) / 7.0f);
                int iCeil = (int) Math.ceil((f6 % 360.0f) / 7.0f);
                while (iFloor <= iCeil) {
                    float fSin = (float) ((((double) (100.0f + f11)) * (((Math.sin(2000.0f * r11) + 1.0d) * 0.25d) + 1.0d)) % 1.0d);
                    float f14 = f12 * fSqrt;
                    float f15 = f11;
                    double dLerp = AndroidUtilities.lerp(f7 - f14, f8 + f14, fSin);
                    float fCos = (float) (((double) f) + (Math.cos(CacheChart.toRad(r11)) * dLerp));
                    int i = width;
                    float fSin2 = (float) (((double) f2) + (Math.sin(CacheChart.toRad(r11)) * dLerp));
                    float fAbs = 0.65f * f10 * ((Math.abs(fSin - 0.5f) * (-1.75f)) + 1.0f);
                    double d = ((double) fSin) * 3.141592653589793d;
                    this.particlePaint.setAlpha((int) (Math.max(0.0f, Math.min(1.0f, fAbs * ((((float) (Math.sin(d) - 1.0d)) * 0.25f) + 1.0f) * AndroidUtilities.lerp(1.0f, Math.min(MathUtils.distance(fCos, fSin2, f3, f4) / AndroidUtilities.dpf2(64.0f), 1.0f), f9))) * 255.0f));
                    float fSin3 = ((float) (((double) (((((float) (Math.sin(d) - 1.0d)) * 0.25f) + 1.0f) * 0.75f)) * (((Math.sin(iFloor * f13) + 1.0d) * 0.25d) + 0.800000011920929d))) * fDpf2;
                    canvas.save();
                    canvas.translate(fCos, fSin2);
                    canvas.scale(fSin3, fSin3);
                    float f16 = -(i >> 1);
                    canvas.drawBitmap(this.particle, f16, f16, this.particlePaint);
                    canvas.restore();
                    iFloor++;
                    fSqrt = fSqrt;
                    f11 = f15;
                    width = i;
                    f13 = 7.0f;
                }
            }
        }

        void draw(Canvas canvas, RectF rectF, RectF rectF2, float f, float f2, float f3, float f4, float f5) {
            float f6;
            Canvas canvas2;
            float f7;
            float f8 = this.selectedAnimated.set(this.selected ? 1.0f : 0.0f);
            this.rectF.set(rectF);
            this.rectF.inset((-AndroidUtilities.dp(9.0f)) * f8, f8 * (-AndroidUtilities.dp(9.0f)));
            float fCenterX = (float) (((double) this.rectF.centerX()) + ((Math.cos(CacheChart.toRad(f)) * ((double) (this.rectF.width() + rectF2.width()))) / 4.0d));
            float fCenterY = (float) (((double) this.rectF.centerY()) + ((Math.sin(CacheChart.toRad(f)) * ((double) (this.rectF.width() + rectF2.width()))) / 4.0d));
            float f9 = f5 * this.textAlphaAnimated.set(this.textAlpha) * f4;
            float f10 = this.particlesAlphaAnimated.set(this.particlesAlpha);
            this.paint.setAlpha((int) (f4 * 255.0f));
            if (f2 * 2.0f >= 359.0f) {
                canvas.saveLayerAlpha(this.rectF, 255, 31);
                canvas.drawCircle(this.rectF.centerX(), this.rectF.centerY(), this.rectF.width() / 2.0f, this.uncut);
                canvas.drawRect(this.rectF, this.paint);
                drawParticles(canvas, this.rectF.centerX(), this.rectF.centerY(), fCenterX, fCenterY, 0.0f, 359.0f, rectF2.width() / 2.0f, this.rectF.width() / 2.0f, f9, Math.max(0.0f, (f5 / 0.75f) - 0.75f) * f10);
                canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), rectF2.width() / 2.0f, this.cut);
                canvas.restore();
                canvas2 = canvas;
                f6 = fCenterX;
                f7 = f9;
            } else {
                setupPath(this.rectF, rectF2, f, f2, f3);
                setGradientBounds(this.rectF.centerX(), rectF.centerY(), this.rectF.width() / 2.0f, f);
                canvas.saveLayerAlpha(this.rectF, 255, 31);
                canvas.drawPath(this.path, this.uncut);
                canvas.drawRect(this.rectF, this.paint);
                f6 = fCenterX;
                fCenterY = fCenterY;
                canvas2 = canvas;
                f7 = f9;
                drawParticles(canvas2, this.rectF.centerX(), this.rectF.centerY(), f6, fCenterY, f - f2, f + f2, rectF2.width() / 2.0f, this.rectF.width() / 2.0f, f7, Math.max(0.0f, (f5 / 0.75f) - 0.75f) * f10);
                canvas2.restore();
            }
            float f11 = this.textScaleAnimated.set(this.textScale);
            CacheChart.setCircleBounds(CacheChart.this.roundingRect, f6, fCenterY, 0.0f);
            if (f11 != 1.0f) {
                canvas2.save();
                canvas2.scale(f11, f11, CacheChart.this.roundingRect.centerX(), CacheChart.this.roundingRect.centerY());
            }
            this.text.setAlpha((int) (f7 * 255.0f));
            this.text.setBounds((int) CacheChart.this.roundingRect.left, (int) CacheChart.this.roundingRect.top, (int) CacheChart.this.roundingRect.right, (int) CacheChart.this.roundingRect.bottom);
            this.text.draw(canvas2);
            if (f11 != 1.0f) {
                canvas2.restore();
            }
        }
    }

    public CacheChart(Context context) {
        this(context, 11, DEFAULT_COLORS, 0, DEFAULT_PARTICLES);
    }

    public CacheChart(Context context, int i, int[] iArr, int i2, int[] iArr2) {
        super(context);
        this.chartMeasureBounds = new RectF();
        this.chartBounds = new RectF();
        this.chartInnerBounds = new RectF();
        this.loading = true;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.loadingFloat = new AnimatedFloat(this, 750L, cubicBezierInterpolator);
        this.complete = false;
        this.completeFloat = new AnimatedFloat(this, 650L, cubicBezierInterpolator);
        this.segmentsTmp = new float[2];
        this.roundingRect = new RectF();
        this.loadingBackgroundPaint = new Paint(1);
        this.completePath = new Path();
        this.completePaintStroke = new Paint(1);
        this.completePaint = new Paint(1);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.topText = animatedTextDrawable;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.bottomText = animatedTextDrawable2;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable3 = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.topCompleteText = animatedTextDrawable3;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable4 = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.bottomCompleteText = animatedTextDrawable4;
        this.interceptTouch = true;
        this.selectedIndex = -1;
        setLayerType(2, null);
        this.sectionsCount = i;
        this.colorKeys = iArr;
        this.particles = iArr2;
        this.type = i2;
        this.svgParticles = i2 == 0;
        this.sectors = new Sector[i];
        Paint paint = this.loadingBackgroundPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.loadingBackgroundPaint.setColor(Theme.getColor(Theme.key_listSelector));
        this.completePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.completeGradient = new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.dp(200.0f), new int[]{7263574, -9513642, -12469647, 4307569}, new float[]{0.0f, 0.07f, 0.93f, 1.0f}, tileMode);
        this.completeTextGradient = new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.dp(200.0f), new int[]{7263574, -9513642, -12469647, 4307569}, new float[]{0.0f, 0.07f, 0.93f, 1.0f}, tileMode);
        this.completeGradientMatrix = new Matrix();
        this.completeTextGradientMatrix = new Matrix();
        this.completePaintStroke.setShader(this.completeGradient);
        this.completePaint.setShader(this.completeGradient);
        this.completePaintStroke.setStyle(style);
        this.completePaintStroke.setStrokeCap(Paint.Cap.ROUND);
        this.completePaintStroke.setStrokeJoin(Paint.Join.ROUND);
        animatedTextDrawable.setAnimationProperties(0.2f, 0L, 450L, cubicBezierInterpolator);
        animatedTextDrawable.setScaleProperty(0.6f);
        animatedTextDrawable.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        animatedTextDrawable.setTypeface(AndroidUtilities.bold());
        animatedTextDrawable.setTextSize(AndroidUtilities.dp(32.0f));
        animatedTextDrawable.setGravity(17);
        animatedTextDrawable2.setAnimationProperties(0.6f, 0L, 450L, cubicBezierInterpolator);
        animatedTextDrawable2.setScaleProperty(0.6f);
        animatedTextDrawable2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        animatedTextDrawable2.setTextSize(AndroidUtilities.dp(12.0f));
        animatedTextDrawable2.setGravity(17);
        animatedTextDrawable3.setAnimationProperties(0.2f, 0L, 450L, cubicBezierInterpolator);
        animatedTextDrawable3.setScaleProperty(0.6f);
        animatedTextDrawable3.getPaint().setShader(this.completeTextGradient);
        animatedTextDrawable3.setTypeface(AndroidUtilities.bold());
        animatedTextDrawable3.setTextSize(AndroidUtilities.dp(32.0f));
        animatedTextDrawable3.setGravity(17);
        animatedTextDrawable4.setAnimationProperties(0.6f, 0L, 450L, cubicBezierInterpolator);
        animatedTextDrawable4.setScaleProperty(0.6f);
        animatedTextDrawable4.getPaint().setShader(this.completeTextGradient);
        animatedTextDrawable4.setTypeface(AndroidUtilities.bold());
        animatedTextDrawable4.setTextSize(AndroidUtilities.dp(12.0f));
        animatedTextDrawable4.setGravity(17);
        int i3 = 0;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i3 >= sectorArr.length) {
                return;
            }
            Sector sector = new Sector();
            sectorArr[i3] = sector;
            int iBlendOver = Theme.blendOver(Theme.getColor(iArr[i3]), ConnectionsManager.FileTypeAudio);
            int iBlendOver2 = Theme.blendOver(Theme.getColor(iArr[i3]), 822083583);
            sector.gradientWidth = AndroidUtilities.dp(50.0f);
            RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, AndroidUtilities.dp(86.0f), new int[]{iBlendOver2, iBlendOver}, new float[]{0.3f, 1.0f}, Shader.TileMode.CLAMP);
            sector.gradient = radialGradient;
            Matrix matrix = new Matrix();
            sector.gradientMatrix = matrix;
            radialGradient.setLocalMatrix(matrix);
            sector.paint.setShader(sector.gradient);
            i3++;
        }
    }

    public void setInterceptTouch(boolean z) {
        this.interceptTouch = z;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttached = true;
        int i = 0;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i >= sectorArr.length) {
                return;
            }
            Sector sector = sectorArr[i];
            if (sector.particle == null) {
                if (this.svgParticles) {
                    sector.particle = SvgHelper.getBitmap(this.particles[i], AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), -1);
                } else {
                    sector.particle = BitmapFactory.decodeResource(getContext().getResources(), this.particles[i]);
                }
            }
            i++;
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = 0;
        this.isAttached = false;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i >= sectorArr.length) {
                return;
            }
            Bitmap bitmap = sectorArr[i].particle;
            if (bitmap != null) {
                bitmap.recycle();
                this.sectors[i].particle = null;
            }
            i++;
        }
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i;
        boolean z;
        float fDistance = MathUtils.distance(this.chartBounds.centerX(), this.chartBounds.centerY(), motionEvent.getX(), motionEvent.getY());
        float fAtan2 = (float) ((Math.atan2(r1 - this.chartBounds.centerY(), r0 - this.chartBounds.centerX()) / 3.141592653589793d) * 180.0d);
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        }
        if (fDistance > this.chartInnerBounds.width() / 2.0f && fDistance < (this.chartBounds.width() / 2.0f) + AndroidUtilities.dp(14.0f)) {
            i = 0;
            while (true) {
                Sector[] sectorArr = this.sectors;
                if (i >= sectorArr.length) {
                    break;
                }
                Sector sector = sectorArr[i];
                float f = sector.angleCenter;
                float f2 = sector.angleSize;
                if (fAtan2 >= f - f2 && fAtan2 <= f + f2) {
                    break;
                }
                i++;
            }
        } else {
            i = -1;
        }
        if (motionEvent.getAction() == 0) {
            setSelected(i);
            if (i >= 0) {
                onSectionDown(i, i != -1);
                if (getParent() != null && this.interceptTouch) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
            }
            return true;
        }
        if (motionEvent.getAction() == 2) {
            onSectionDown(i, i != -1);
            setSelected(i);
            if (i != -1) {
                return true;
            }
        } else if (motionEvent.getAction() == 1) {
            if (i != -1) {
                onSectionClick(i);
                z = true;
            } else {
                z = false;
            }
            setSelected(-1);
            onSectionDown(i, false);
            if (z) {
                return true;
            }
        } else if (motionEvent.getAction() == 3) {
            setSelected(-1);
            onSectionDown(i, false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setSelected(int i) {
        if (i == this.selectedIndex) {
            return;
        }
        int i2 = 0;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i2 < sectorArr.length) {
                if (i == i2 && sectorArr[i2].angleSize <= 0.0f) {
                    i = -1;
                }
                sectorArr[i2].selected = i == i2;
                i2++;
            } else {
                this.selectedIndex = i;
                invalidate();
                return;
            }
        }
    }

    public static class SegmentSize {
        int index;
        public boolean selected;
        public long size;

        public static SegmentSize of(long j, boolean z) {
            SegmentSize segmentSize = new SegmentSize();
            segmentSize.size = j;
            segmentSize.selected = z;
            return segmentSize;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0276  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setSegments(long j, boolean z, SegmentSize... segmentSizeArr) {
        SpannableString spannableString;
        float f;
        SpannableString spannableString2;
        float f2;
        Sector sector;
        float f3;
        float f4;
        float f5;
        float f6;
        SegmentSize[] segmentSizeArr2 = segmentSizeArr;
        long j2 = 0;
        float f7 = 0.0f;
        int i = 0;
        boolean z2 = true;
        if (segmentSizeArr2 == null || segmentSizeArr2.length == 0) {
            this.loading = false;
            this.complete = j == 0;
            if (!z) {
                this.loadingFloat.set(0.0f, true);
                this.completeFloat.set(this.complete ? 1.0f : 0.0f, true);
            }
            int i2 = 0;
            this.topCompleteText.setText(this.topText.getText(), false);
            this.topText.setText(MVEL.VERSION_SUB, z);
            this.topCompleteText.setText(MVEL.VERSION_SUB, z);
            this.bottomCompleteText.setText(this.bottomText.getText(), false);
            this.bottomText.setText("KB", z);
            this.bottomCompleteText.setText("KB", z);
            while (true) {
                Sector[] sectorArr = this.sectors;
                if (i2 < sectorArr.length) {
                    Sector sector2 = sectorArr[i2];
                    sector2.textAlpha = 0.0f;
                    if (!z) {
                        sector2.textAlphaAnimated.set(0.0f, true);
                    }
                    i2++;
                } else {
                    invalidate();
                    return;
                }
            }
        } else {
            this.loading = false;
            if (!z) {
                this.loadingFloat.set(0.0f, true);
            }
            SpannableString spannableString3 = new SpannableString("%");
            int length = segmentSizeArr2.length;
            long j3 = 0;
            int i3 = 0;
            float f8 = 1.0f;
            while (i3 < segmentSizeArr2.length) {
                if (segmentSizeArr2[i3] == null) {
                    SegmentSize segmentSize = new SegmentSize();
                    segmentSizeArr2[i3] = segmentSize;
                    segmentSize.size = j2;
                }
                SegmentSize segmentSize2 = segmentSizeArr2[i3];
                segmentSize2.index = i3;
                long j4 = j2;
                if (segmentSize2 != null && segmentSize2.selected) {
                    j3 += segmentSize2.size;
                }
                if (segmentSize2 == null || segmentSize2.size <= j4 || !segmentSize2.selected) {
                    length--;
                }
                i3++;
                j2 = j4;
            }
            long j5 = j2;
            if (j3 <= j5) {
                this.loading = false;
                this.complete = j <= j5;
                if (!z) {
                    this.loadingFloat.set(0.0f, true);
                    this.completeFloat.set(this.complete ? 1.0f : 0.0f, true);
                }
                this.topCompleteText.setText(this.topText.getText(), false);
                this.topText.setText(MVEL.VERSION_SUB, z);
                this.topCompleteText.setText(MVEL.VERSION_SUB, z);
                this.bottomCompleteText.setText(this.bottomText.getText(), false);
                this.bottomText.setText("KB", z);
                this.bottomCompleteText.setText("KB", z);
                while (true) {
                    Sector[] sectorArr2 = this.sectors;
                    if (i < sectorArr2.length) {
                        Sector sector3 = sectorArr2[i];
                        sector3.textAlpha = 0.0f;
                        if (!z) {
                            sector3.textAlphaAnimated.set(0.0f, true);
                        }
                        i++;
                    } else {
                        invalidate();
                        return;
                    }
                }
            } else {
                float f9 = 0.0f;
                int i4 = 0;
                int i5 = 0;
                while (i4 < segmentSizeArr2.length) {
                    SegmentSize segmentSize3 = segmentSizeArr2[i4];
                    if (segmentSize3 == null || !segmentSize3.selected) {
                        f4 = f7;
                        f5 = 0.02f;
                        f6 = f4;
                    } else {
                        f4 = f7;
                        f5 = 0.02f;
                        f6 = segmentSize3.size / j3;
                    }
                    if (f6 > f4 && f6 < f5) {
                        i5++;
                        f9 += f6;
                    }
                    i4++;
                    f7 = f4;
                }
                float f10 = f7;
                Math.min(segmentSizeArr2.length, this.sectors.length);
                int[] iArr = this.tempPercents;
                if (iArr == null || iArr.length != segmentSizeArr2.length) {
                    this.tempPercents = new int[segmentSizeArr2.length];
                }
                float[] fArr = this.tempFloat;
                if (fArr == null || fArr.length != segmentSizeArr2.length) {
                    this.tempFloat = new float[segmentSizeArr2.length];
                }
                for (int i6 = 0; i6 < segmentSizeArr2.length; i6++) {
                    float[] fArr2 = this.tempFloat;
                    SegmentSize segmentSize4 = segmentSizeArr2[i6];
                    fArr2[i6] = (segmentSize4 == null || !segmentSize4.selected) ? f10 : segmentSize4.size / j3;
                }
                AndroidUtilities.roundPercents(this.tempFloat, this.tempPercents);
                if (this.type == 0) {
                    Arrays.sort(segmentSizeArr2, new Comparator() { // from class: org.telegram.ui.Components.CacheChart$$ExternalSyntheticLambda0
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return Long.compare(((CacheChart.SegmentSize) obj).size, ((CacheChart.SegmentSize) obj2).size);
                        }
                    });
                    int i7 = 0;
                    while (true) {
                        if (i7 > segmentSizeArr2.length) {
                            break;
                        }
                        SegmentSize segmentSize5 = segmentSizeArr2[i7];
                        if (segmentSize5.index == segmentSizeArr2.length - 1) {
                            SegmentSize segmentSize6 = segmentSizeArr2[0];
                            segmentSizeArr2[0] = segmentSize5;
                            segmentSizeArr2[i7] = segmentSize6;
                            break;
                        }
                        i7++;
                    }
                }
                if (length < 2) {
                    length = 0;
                }
                float f11 = 360.0f - (length * 2.0f);
                int i8 = 0;
                int i9 = 0;
                float f12 = f10;
                while (i8 < segmentSizeArr2.length) {
                    SegmentSize segmentSize7 = segmentSizeArr2[i8];
                    float f13 = f10;
                    int i10 = segmentSize7.index;
                    int i11 = i;
                    if (segmentSize7 != null) {
                        spannableString = spannableString3;
                        if (segmentSize7.selected) {
                            f = segmentSize7.size / j3;
                        }
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        Object[] objArr = new Object[1];
                        objArr[i11] = Integer.valueOf(this.tempPercents[i10]);
                        spannableStringBuilder.append((CharSequence) String.format(TimeModel.NUMBER_FORMAT, objArr));
                        SpannableString spannableString4 = spannableString;
                        spannableStringBuilder.append((CharSequence) spannableString4);
                        Sector sector4 = this.sectors[i10];
                        float f14 = (((double) f) > 0.05d || f >= f8) ? f13 : f8;
                        sector4.textAlpha = f14;
                        if (f < 0.08f) {
                            spannableString2 = spannableString4;
                            if (this.tempPercents[i10] < 100) {
                                f2 = f8;
                            }
                            sector4.textScale = f2;
                            sector4.particlesAlpha = f8;
                            if (!z) {
                                sector4.textAlphaAnimated.set(f14, true);
                                Sector sector5 = this.sectors[i10];
                                sector5.textScaleAnimated.set(sector5.textScale, true);
                                Sector sector6 = this.sectors[i10];
                                sector6.particlesAlphaAnimated.set(sector6.particlesAlpha, true);
                            }
                            sector = this.sectors[i10];
                            if (sector.textAlpha > f13) {
                                sector.text.setText(spannableStringBuilder, z);
                            }
                            if (f >= 0.02f || f <= f13) {
                                f8 = 1.0f;
                                f3 = f * (1.0f - ((i5 * 0.02f) - f9));
                            } else {
                                f3 = 0.02f;
                                f8 = 1.0f;
                            }
                            float f15 = (f12 * f11) + (i9 * 2.0f);
                            float f16 = (f3 * f11) + f15;
                            if (f3 <= f13) {
                                Sector sector7 = this.sectors[i10];
                                sector7.angleCenter = (f15 + f16) / 2.0f;
                                sector7.angleSize = Math.abs(f16 - f15) / 2.0f;
                                Sector sector8 = this.sectors[i10];
                                sector8.textAlpha = f13;
                                if (!z) {
                                    sector8.angleCenterAnimated.set(sector8.angleCenter, true);
                                    Sector sector9 = this.sectors[i10];
                                    sector9.angleSizeAnimated.set(sector9.angleSize, true);
                                    Sector sector10 = this.sectors[i10];
                                    sector10.textAlphaAnimated.set(sector10.textAlpha, true);
                                }
                                z2 = true;
                            } else {
                                Sector sector11 = this.sectors[i10];
                                sector11.angleCenter = (f15 + f16) / 2.0f;
                                sector11.angleSize = Math.abs(f16 - f15) / 2.0f;
                                if (z) {
                                    z2 = true;
                                } else {
                                    Sector sector12 = this.sectors[i10];
                                    z2 = true;
                                    sector12.angleCenterAnimated.set(sector12.angleCenter, true);
                                    Sector sector13 = this.sectors[i10];
                                    sector13.angleSizeAnimated.set(sector13.angleSize, true);
                                }
                                f12 += f3;
                                i9++;
                            }
                            i8++;
                            segmentSizeArr2 = segmentSizeArr;
                            i = i11;
                            spannableString3 = spannableString2;
                            f10 = 0.0f;
                        } else {
                            spannableString2 = spannableString4;
                        }
                        f2 = 0.85f;
                        sector4.textScale = f2;
                        sector4.particlesAlpha = f8;
                        if (!z) {
                        }
                        sector = this.sectors[i10];
                        if (sector.textAlpha > f13) {
                        }
                        if (f >= 0.02f) {
                            f8 = 1.0f;
                            f3 = f * (1.0f - ((i5 * 0.02f) - f9));
                        }
                        float f152 = (f12 * f11) + (i9 * 2.0f);
                        float f162 = (f3 * f11) + f152;
                        if (f3 <= f13) {
                        }
                        i8++;
                        segmentSizeArr2 = segmentSizeArr;
                        i = i11;
                        spannableString3 = spannableString2;
                        f10 = 0.0f;
                    } else {
                        spannableString = spannableString3;
                    }
                    f = f13;
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                    Object[] objArr2 = new Object[1];
                    objArr2[i11] = Integer.valueOf(this.tempPercents[i10]);
                    spannableStringBuilder2.append((CharSequence) String.format(TimeModel.NUMBER_FORMAT, objArr2));
                    SpannableString spannableString42 = spannableString;
                    spannableStringBuilder2.append((CharSequence) spannableString42);
                    Sector sector42 = this.sectors[i10];
                    if (((double) f) > 0.05d) {
                    }
                    sector42.textAlpha = f14;
                    if (f < 0.08f) {
                    }
                    f2 = 0.85f;
                    sector42.textScale = f2;
                    sector42.particlesAlpha = f8;
                    if (!z) {
                    }
                    sector = this.sectors[i10];
                    if (sector.textAlpha > f13) {
                    }
                    if (f >= 0.02f) {
                    }
                    float f1522 = (f12 * f11) + (i9 * 2.0f);
                    float f1622 = (f3 * f11) + f1522;
                    if (f3 <= f13) {
                    }
                    i8++;
                    segmentSizeArr2 = segmentSizeArr;
                    i = i11;
                    spannableString3 = spannableString2;
                    f10 = 0.0f;
                }
                boolean z3 = i;
                String[] strArrSplit = AndroidUtilities.formatFileSize(j3, z2, z2).split(" ");
                int length2 = strArrSplit.length;
                String str = _UrlKt.FRAGMENT_ENCODE_SET;
                String str2 = length2 > 0 ? strArrSplit[z3 ? 1 : 0] : _UrlKt.FRAGMENT_ENCODE_SET;
                if (str2.length() >= 4 && j3 < 1073741824) {
                    str2 = str2.split("\\.")[z3 ? 1 : 0];
                }
                this.topText.setText(str2, z);
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.bottomText;
                if (strArrSplit.length > 1) {
                    str = strArrSplit[1];
                }
                animatedTextDrawable.setText(str, z);
                if (this.completeFloat.get() > 0.0f) {
                    this.topCompleteText.setText(this.topText.getText(), z);
                    this.bottomCompleteText.setText(this.bottomText.getText(), z);
                }
                this.complete = z3;
                if (!z) {
                    this.completeFloat.set(0.0f, true);
                }
                invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setCircleBounds(RectF rectF, float f, float f2, float f3) {
        rectF.set(f - f3, f2 - f3, f + f3, f2 + f3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setCircleBounds(RectF rectF, double d, double d2, float f) {
        setCircleBounds(rectF, (float) d, (float) d2, f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0554  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void dispatchDraw(Canvas canvas) {
        int i;
        int i2;
        float f;
        RectF rectF;
        int i3;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i4;
        float f7;
        float f8 = 1.0f;
        float f9 = 0.0f;
        float f10 = this.loadingFloat.set(this.loading ? 1.0f : 0.0f);
        float f11 = this.completeFloat.set(this.complete ? 1.0f : 0.0f);
        this.chartBounds.set(this.chartMeasureBounds);
        float fLerp = AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(padInsideDp()), f11);
        this.chartBounds.inset(fLerp, fLerp);
        this.chartInnerBounds.set(this.chartBounds);
        float fLerp2 = AndroidUtilities.lerp(AndroidUtilities.dpf2(38.0f), AndroidUtilities.dpf2(10.0f), Math.max(f10, f11));
        this.chartInnerBounds.inset(fLerp2, fLerp2);
        float fLerp3 = AndroidUtilities.lerp(0, AndroidUtilities.dp(60.0f), f10);
        if (start == null) {
            start = Long.valueOf(System.currentTimeMillis());
        }
        boolean z = this.loading;
        if (!z && loadedStart == null) {
            loadedStart = Long.valueOf(System.currentTimeMillis());
        } else if (z && loadedStart != null) {
            loadedStart = null;
        }
        float fCurrentTimeMillis = ((loadedStart == null ? System.currentTimeMillis() : r2.longValue()) - start.longValue()) * 0.6f;
        CircularProgressDrawable.getSegments(fCurrentTimeMillis % 5400.0f, this.segmentsTmp);
        float[] fArr = this.segmentsTmp;
        float f12 = fArr[0];
        float f13 = fArr[1];
        if (f10 > 0.0f) {
            this.loadingBackgroundPaint.setStrokeWidth(fLerp2);
            int alpha = this.loadingBackgroundPaint.getAlpha();
            i = 0;
            this.loadingBackgroundPaint.setAlpha((int) (alpha * f10));
            i2 = 1;
            f = 10.0f;
            canvas.drawCircle(this.chartBounds.centerX(), this.chartBounds.centerY(), (this.chartBounds.width() - fLerp2) / 2.0f, this.loadingBackgroundPaint);
            this.loadingBackgroundPaint.setAlpha(alpha);
        } else {
            i = 0;
            i2 = 1;
            f = 10.0f;
        }
        int i5 = (f10 > 0.0f || f11 > 0.0f) ? i2 : i;
        int i6 = i;
        while (true) {
            Sector[] sectorArr = this.sectors;
            if (i6 >= sectorArr.length) {
                break;
            }
            Sector sector = sectorArr[i6];
            CircularProgressDrawable.getSegments((fCurrentTimeMillis + (i6 * 80)) % 5400.0f, this.segmentsTmp);
            float fMin = Math.min(Math.max(this.segmentsTmp[i], f12), f13);
            float fMin2 = Math.min(Math.max(this.segmentsTmp[i2], f12), f13);
            if (f10 < f8 || fMin < fMin2) {
                float fLerp4 = (fMin + fMin2) / 2.0f;
                float fAbs = Math.abs(fMin2 - fMin) / 2.0f;
                if (f10 <= f9) {
                    float f14 = sector.angleCenterAnimated.set(sector.angleCenter);
                    f4 = sector.angleSizeAnimated.set(sector.angleSize);
                    f5 = f14;
                    f2 = f8;
                    f3 = f10;
                } else {
                    if (f10 < f8) {
                        f2 = f8;
                        f3 = f10;
                        fLerp4 = AndroidUtilities.lerp(sector.angleCenterAnimated.set(sector.angleCenter) + (((float) Math.floor(f13 / 360.0f)) * 360.0f), fLerp4, f3);
                        fAbs = AndroidUtilities.lerp(sector.angleSizeAnimated.set(sector.angleSize), fAbs, f3);
                    } else {
                        f2 = f8;
                        f3 = f10;
                    }
                    f4 = fAbs;
                    f5 = fLerp4;
                }
                int i7 = (sector.angleCenterAnimated.isInProgress() || sector.angleSizeAnimated.isInProgress() || i5 != 0) ? i2 : i;
                f6 = f12;
                i4 = i2;
                f7 = f13;
                sector.draw(canvas, this.chartBounds, this.chartInnerBounds, f5, f4, fLerp3, f2 - f11, f2 - f3);
                i5 = i7;
            } else {
                f6 = f12;
                f2 = f8;
                f3 = f10;
                i4 = i2;
                f7 = f13;
            }
            i6++;
            f12 = f6;
            f13 = f7;
            f9 = 0.0f;
            i = 0;
            i2 = i4;
            f10 = f3;
            f8 = f2;
        }
        float f15 = f8;
        float f16 = f10;
        boolean z2 = i2;
        int i8 = this.type;
        if (i8 == 0) {
            float f17 = (f15 - f16) * (f15 - f11);
            if (drawAnimatedText(canvas, this.topText, this.chartBounds.centerX(), this.chartBounds.centerY() - AndroidUtilities.dpf2(5.0f), 1.0f, f17) || i5 != 0) {
            }
            drawAnimatedText(canvas, this.bottomText, this.chartBounds.centerX(), this.chartBounds.centerY() + AndroidUtilities.dpf2(22.0f), 1.0f, f17);
        } else if (i8 == z2) {
            float f18 = f15 - f16;
            float fCenterX = this.chartBounds.centerX() - AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(4.0f), f11);
            float fCenterY = this.chartBounds.centerY() - AndroidUtilities.lerp(AndroidUtilities.dpf2(5.0f), 0.0f, f11);
            float fLerp5 = AndroidUtilities.lerp(f15, 2.25f, f11);
            float f19 = f18 * f11;
            Object[] objArr = (drawAnimatedText(canvas, this.topCompleteText, fCenterX, fCenterY, fLerp5, f19) || i5 != 0) ? z2 ? 1 : 0 : null;
            float f20 = f18 * (f15 - f11);
            Object[] objArr2 = (drawAnimatedText(canvas, this.topText, fCenterX, fCenterY, fLerp5, f20) || objArr != null) ? z2 ? 1 : 0 : null;
            float fCenterX2 = this.chartBounds.centerX() + AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(26.0f), f11);
            float fCenterY2 = this.chartBounds.centerY() + AndroidUtilities.lerp(AndroidUtilities.dpf2(22.0f), -AndroidUtilities.dpf2(18.0f), f11);
            float fLerp6 = AndroidUtilities.lerp(1.0f, 1.4f, f11);
            if (drawAnimatedText(canvas, this.bottomCompleteText, fCenterX2, fCenterY2, fLerp6, f19) || objArr2 != null) {
            }
            drawAnimatedText(canvas, this.bottomText, fCenterX2, fCenterY2, fLerp6, f20);
        }
        if (f11 > 0.0f) {
            if (this.completeDrawable == null) {
                StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(25);
                this.completeDrawable = drawable;
                drawable.type = 100;
                drawable.roundEffect = z2;
                drawable.useRotate = z2;
                drawable.useBlur = false;
                drawable.checkBounds = z2;
                drawable.size1 = 18;
                drawable.distributionAlgorithm = false;
                drawable.excludeRadius = AndroidUtilities.dp(80.0f);
                StarParticlesView.Drawable drawable2 = this.completeDrawable;
                drawable2.k3 = 0.85f;
                drawable2.k2 = 0.85f;
                drawable2.k1 = 0.85f;
                drawable2.init();
            } else {
                RectF rectF2 = this.completePathBounds;
                if (rectF2 == null || !rectF2.equals(this.chartMeasureBounds)) {
                }
                canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
                this.completeDrawable.onDraw(canvas, f11);
                int i9 = (int) (f11 * 255.0f);
                this.completePaint.setAlpha(i9);
                canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.completePaint);
                canvas.restore();
                this.completePaintStroke.setStrokeWidth(fLerp2);
                this.completePaintStroke.setAlpha(i9);
                canvas.drawCircle(this.chartBounds.centerX(), this.chartBounds.centerY(), (this.chartBounds.width() - fLerp2) / 2.0f, this.completePaintStroke);
                rectF = this.completePathBounds;
                if (rectF != null || !rectF.equals(this.chartMeasureBounds)) {
                    if (this.completePathBounds == null) {
                        this.completePathBounds = new RectF();
                    }
                    this.completePathBounds.set(this.chartMeasureBounds);
                    this.completePath.rewind();
                    i3 = this.type;
                    if (i3 != 0) {
                        this.completePath.moveTo(this.chartBounds.width() * 0.348f, this.chartBounds.height() * 0.538f);
                        this.completePath.lineTo(this.chartBounds.width() * 0.447f, this.chartBounds.height() * 0.636f);
                        this.completePath.lineTo(this.chartBounds.width() * 0.678f, this.chartBounds.height() * 0.402f);
                    } else if (i3 == z2) {
                        this.completePath.moveTo(this.chartBounds.width() * 0.2929f, this.chartBounds.height() * 0.4369f);
                        this.completePath.lineTo(this.chartBounds.width() * 0.381f, this.chartBounds.height() * 0.35f);
                        this.completePath.lineTo(this.chartBounds.width() * 0.4691f, this.chartBounds.height() * 0.4369f);
                        this.completePath.moveTo(this.chartBounds.width() * 0.381f, this.chartBounds.height() * 0.35f);
                        this.completePath.lineTo(this.chartBounds.width() * 0.381f, this.chartBounds.height() * 0.6548f);
                        this.completePath.moveTo(this.chartBounds.width() * 0.5214f, this.chartBounds.height() * 0.5821f);
                        this.completePath.lineTo(this.chartBounds.width() * 0.6095f, this.chartBounds.height() * 0.669f);
                        this.completePath.lineTo(this.chartBounds.width() * 0.6976f, this.chartBounds.height() * 0.5821f);
                        this.completePath.moveTo(this.chartBounds.width() * 0.6095f, this.chartBounds.height() * 0.669f);
                        this.completePath.lineTo(this.chartBounds.width() * 0.6095f, this.chartBounds.height() * 0.3643f);
                    }
                    Path path = this.completePath;
                    RectF rectF3 = this.chartBounds;
                    path.offset(rectF3.left, rectF3.top);
                }
                if (this.type == 0) {
                    this.completePaintStroke.setStrokeWidth(AndroidUtilities.dpf2(f));
                    canvas.drawPath(this.completePath, this.completePaintStroke);
                }
            }
            float fMin3 = Math.min(getMeasuredHeight(), Math.min(getMeasuredWidth(), AndroidUtilities.dp(150.0f)));
            this.completeDrawable.rect.set(0.0f, 0.0f, fMin3, fMin3);
            this.completeDrawable.rect.offset((getMeasuredWidth() - this.completeDrawable.rect.width()) / 2.0f, (getMeasuredHeight() - this.completeDrawable.rect.height()) / 2.0f);
            this.completeDrawable.rect2.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
            this.completeDrawable.resetPositions();
            canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
            this.completeDrawable.onDraw(canvas, f11);
            int i92 = (int) (f11 * 255.0f);
            this.completePaint.setAlpha(i92);
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.completePaint);
            canvas.restore();
            this.completePaintStroke.setStrokeWidth(fLerp2);
            this.completePaintStroke.setAlpha(i92);
            canvas.drawCircle(this.chartBounds.centerX(), this.chartBounds.centerY(), (this.chartBounds.width() - fLerp2) / 2.0f, this.completePaintStroke);
            rectF = this.completePathBounds;
            if (rectF != null) {
                if (this.completePathBounds == null) {
                }
                this.completePathBounds.set(this.chartMeasureBounds);
                this.completePath.rewind();
                i3 = this.type;
                if (i3 != 0) {
                }
                Path path2 = this.completePath;
                RectF rectF32 = this.chartBounds;
                path2.offset(rectF32.left, rectF32.top);
                if (this.type == 0) {
                }
            }
        }
        if (this.isAttached) {
            invalidate();
        }
    }

    private boolean drawAnimatedText(Canvas canvas, AnimatedTextView.AnimatedTextDrawable animatedTextDrawable, float f, float f2, float f3, float f4) {
        if (f4 <= 0.0f) {
            return false;
        }
        animatedTextDrawable.setAlpha((int) (f4 * 255.0f));
        animatedTextDrawable.setBounds(0, 0, 0, 0);
        canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        animatedTextDrawable.draw(canvas);
        canvas.restore();
        return animatedTextDrawable.isAnimating();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int iDp = AndroidUtilities.dp(heightDp());
        int iDp2 = AndroidUtilities.dp(172.0f);
        this.chartMeasureBounds.set((size - iDp2) / 2.0f, (iDp - iDp2) / 2.0f, (size + iDp2) / 2.0f, (iDp2 + iDp) / 2.0f);
        this.completeGradientMatrix.reset();
        this.completeGradientMatrix.setTranslate(this.chartMeasureBounds.left, 0.0f);
        this.completeGradient.setLocalMatrix(this.completeGradientMatrix);
        this.completeTextGradientMatrix.reset();
        Matrix matrix = this.completeTextGradientMatrix;
        RectF rectF = this.chartMeasureBounds;
        matrix.setTranslate(rectF.left, -rectF.centerY());
        this.completeTextGradient.setLocalMatrix(this.completeTextGradientMatrix);
        StarParticlesView.Drawable drawable = this.completeDrawable;
        if (drawable != null) {
            drawable.rect.set(0.0f, 0.0f, AndroidUtilities.dp(140.0f), AndroidUtilities.dp(140.0f));
            this.completeDrawable.rect.offset((getMeasuredWidth() - this.completeDrawable.rect.width()) / 2.0f, (getMeasuredHeight() - this.completeDrawable.rect.height()) / 2.0f);
            this.completeDrawable.rect2.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
            this.completeDrawable.resetPositions();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(iDp, TLObject.FLAG_30));
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        requestLayout();
    }
}
