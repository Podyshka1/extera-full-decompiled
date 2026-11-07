package org.telegram.ui.Wallet;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.os.Build;
import android.util.LruCache;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes8.dex */
final class WalletCard2DMaterial {
    private static Bitmap[][] faceMasks;
    private static volatile boolean prepared;
    private static Bitmap[] textures;
    private final Context context;
    private boolean depthBackFacing;
    private float depthScale;
    private final SweepGradient finishMask;
    private Shader grainFinish;
    private PorterDuffColorFilter grooveColorFilter;
    private int grooveTint;
    private boolean hasRotation;
    private float hx;
    private float hy;
    private Bitmap iconMask;
    private int iconRes;
    private final Runnable invalidate;
    private float lx;
    private float ly;
    private float pitch;
    private final RectF qr;
    private Shader qrBrush;
    private final SweepGradient qrBrushMask;
    private SweepGradient qrGradient;
    private final SweepGradient reflection;
    private PorterDuffColorFilter reflectionColorFilter;
    private int reflectionTint;
    private float shine;
    private float sweep;
    private float yaw;
    private static final AtomicBoolean preparing = new AtomicBoolean();
    static final DispatchQueue ASSET_QUEUE = new DispatchQueue("walletCardAssets", true, 10);
    private static final int[] STOCK_FACE_COLORS = {-16748837, -16747809, -16746781, -16745754, -16744728, -16743955, -16743183, -16742412, -16741643};
    private static final LruCache<Integer, Bitmap[]> ICON_CACHE = new LruCache<>(2);
    private final Paint paint = new Paint(3);
    private final Paint screenPaint = new Paint(3);
    private final Paint stroke = new Paint(1);
    private final Matrix matrix = new Matrix();
    private final RectF face = new RectF(0.0f, 0.0f, 336.0f, 205.0f);
    private final RectF inset = new RectF();
    private final RectF faceTextureBounds = new RectF(-42.0f, -107.5f, 378.0f, 312.5f);
    private final float[] depthUv = new float[152];
    private final float[] depthNormals = new float[152];
    private final float[] depthFront = new float[152];
    private final float[] depthBack = new float[152];
    private final float[] depthZ = new float[76];
    private final float[] stripZ = new float[76];
    private final int[] depthOrder = new int[76];
    private final Path depthPath = new Path();
    private final Path clip = new Path();
    private final Path star = new Path();
    private final Path reveal = new Path();
    private final Shader[] finishes = new Shader[2];
    private final int[] reflectionTints = new int[2];
    private final Shader[] grooves = new Shader[2];
    private final SweepGradient[] grooveMasks = new SweepGradient[2];
    private final boolean[] surfaceGifts = new boolean[2];
    private final int[][] faceColors = new int[2][];
    private final PorterDuffColorFilter[][] faceFilters = (PorterDuffColorFilter[][]) Array.newInstance((Class<?>) PorterDuffColorFilter.class, 2, 8);
    private final int[] darks = {0, 0};
    private final int[] lights = {0, 0};
    private final float[][] stars = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 22, 6);
    private final int[] qrColors = new int[65];
    private final Bitmap[] iconLight = new Bitmap[8];
    private final Bitmap[] iconDark = new Bitmap[8];
    private float lz = 1.0f;
    private float hz = 1.0f;
    private int rimDark = -14456619;
    private int rimLight = -14184457;

    /* JADX INFO: renamed from: $r8$lambda$Q72mVEck2kKRYmFGAJG-fKHTEw8, reason: not valid java name */
    public static /* synthetic */ void m23306$r8$lambda$Q72mVEck2kKRYmFGAJGfKHTEw8() {
    }

    private static float mix(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    public static boolean isPrepared(int i) {
        return prepared && ICON_CACHE.get(Integer.valueOf(i)) != null;
    }

    public static void prewarm(final Context context) {
        if (preparing.compareAndSet(false, true)) {
            ASSET_QUEUE.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.WalletCard2DMaterial$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    WalletCard2DMaterial.$r8$lambda$9h71qEfuXRp5vOiTwrUh8lZMjOk(context);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$9h71qEfuXRp5vOiTwrUh8lZMjOk(Context context) {
        new WalletCard2DMaterial(context.getApplicationContext(), C2807R.drawable.wallet_card_qr, 46, new Runnable() { // from class: org.telegram.ui.Wallet.WalletCard2DMaterial$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                WalletCard2DMaterial.m23306$r8$lambda$Q72mVEck2kKRYmFGAJGfKHTEw8();
            }
        });
    }

    public WalletCard2DMaterial(Context context, int i, int i2, Runnable runnable) {
        char c2;
        double d;
        int i3;
        float f;
        int i4;
        double d2;
        int i5 = 3;
        boolean z = true;
        float f2 = 336.0f;
        float f3 = 205.0f;
        int i6 = 2;
        int i7 = 0;
        char c3 = 6;
        float f4 = 1.0f;
        this.invalidate = runnable;
        this.context = context;
        float fRadiusY = WalletCardGeometry.radiusY(205.0f);
        int i8 = 0;
        while (true) {
            c2 = 4;
            if (i8 >= 4) {
                break;
            }
            float f5 = i8 < 2 ? 310.8f : 25.2f;
            float f6 = (i8 == 0 || i8 == i5) ? fRadiusY : 205.0f - fRadiusY;
            int i9 = i5;
            boolean z2 = z;
            int i10 = i7;
            while (i10 <= 18) {
                float f7 = f2;
                int i11 = i7;
                char c4 = c3;
                double radians = Math.toRadians(((i8 * 90) - 90) + (i10 * 5));
                float f8 = f4;
                float fCos = (float) Math.cos(radians);
                float fSin = (float) Math.sin(radians);
                float[] fArr = this.depthUv;
                int i12 = ((i8 * 19) + i10) * 2;
                fArr[i12] = (f5 + (fCos * 25.2f)) / f7;
                int i13 = i12 + 1;
                fArr[i13] = (f6 + (fRadiusY * fSin)) / 205.0f;
                float[] fArr2 = this.depthNormals;
                fArr2[i12] = fCos;
                fArr2[i13] = fSin;
                i10++;
                f4 = f8;
                i7 = i11;
                c3 = c4;
                f2 = f7;
            }
            i8++;
            i5 = i9;
            z = z2;
            f2 = f2;
        }
        int i14 = i5;
        boolean z3 = z;
        float f9 = f2;
        int i15 = i7;
        char c5 = c3;
        float f10 = f4;
        float f11 = f9 - i2;
        this.qr = new RectF(f11 - 48.0f, 74.0f, f11, 110.0f);
        if (textures == null) {
            String[] strArr = {"finish_light", "finish_dark", "groove_along", "groove_across", "qr_brush_light", "qr_brush_dark", "grain"};
            textures = new Bitmap[7];
            for (int i16 = i15; i16 < 7; i16++) {
                try {
                    InputStream inputStreamOpen = context.getAssets().open("wallet_card_2d/" + strArr[i16] + ".webp");
                    try {
                        textures[i16] = BitmapFactory.decodeStream(inputStreamOpen);
                        Bitmap bitmap = textures[i16];
                        if (bitmap != null) {
                            bitmap.prepareToDraw();
                        }
                        if (inputStreamOpen != null) {
                            inputStreamOpen.close();
                        }
                    } catch (Throwable th) {
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            }
        }
        if (faceMasks == null) {
            int[] iArr = new int[2];
            iArr[z3 ? 1 : 0] = 8;
            iArr[i15] = 2;
            Bitmap[][] bitmapArr = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, iArr);
            for (int i17 = i15; i17 < 2; i17++) {
                for (int i18 = i15; i18 < 8; i18++) {
                    try {
                        InputStream inputStreamOpen2 = context.getAssets().open("wallet_card_2d/face_" + i17 + "_" + i18 + ".webp");
                        try {
                            bitmapArr[i17][i18] = BitmapFactory.decodeStream(inputStreamOpen2);
                            Bitmap bitmap2 = bitmapArr[i17][i18];
                            if (bitmap2 != null) {
                                bitmap2.prepareToDraw();
                            }
                            if (inputStreamOpen2 != null) {
                                inputStreamOpen2.close();
                            }
                        } catch (Throwable th3) {
                            if (inputStreamOpen2 != null) {
                                try {
                                    inputStreamOpen2.close();
                                } catch (Throwable th4) {
                                    th3.addSuppressed(th4);
                                }
                            }
                            throw th3;
                        }
                    } catch (Exception e2) {
                        FileLog.m1040e(e2);
                    }
                }
            }
            faceMasks = bitmapArr;
        }
        int[] iArr2 = new int[129];
        int[] iArr3 = new int[129];
        int i19 = i15;
        while (true) {
            d = 128.0d;
            i3 = 128;
            if (i19 > 128) {
                break;
            }
            float f12 = f10;
            double d3 = ((((double) i19) * 3.141592653589793d) * 2.0d) / 128.0d;
            iArr2[i19] = Color.argb(Math.round(secondary(d3) * 64.0f), 255, 255, 255);
            iArr3[i19] = Color.argb(Math.round(smooth(0.18f, 0.88f, (float) Math.abs(Math.cos(Math.atan2(Math.sin(d3) / 2.0d, Math.cos(d3))))) * 255.0f), 255, 255, 255);
            i19++;
            f3 = f3;
            f10 = f12;
            c2 = c2;
        }
        float f13 = f10;
        float f14 = f3;
        char c6 = c2;
        this.reflection = new SweepGradient(168.0f, 102.5f, iArr2, (float[]) null);
        SweepGradient sweepGradient = new SweepGradient(168.0f, 102.5f, iArr3, (float[]) null);
        this.finishMask = sweepGradient;
        if (textures[c5] != null) {
            Bitmap bitmap3 = textures[c5];
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap3, tileMode, tileMode);
            f = 0.88f;
            this.matrix.setScale(f9 / textures[c5].getWidth(), f14 / textures[c5].getHeight());
            bitmapShader.setLocalMatrix(this.matrix);
            this.grainFinish = new ComposeShader(bitmapShader, sweepGradient, PorterDuff.Mode.DST_IN);
        } else {
            f = 0.88f;
        }
        int i20 = i15;
        while (i20 < i6) {
            if (textures[i20] != null) {
                Bitmap bitmap4 = textures[i20];
                Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
                BitmapShader bitmapShader2 = new BitmapShader(bitmap4, tileMode2, tileMode2);
                i4 = i6;
                this.matrix.setScale(f9 / textures[i20].getWidth(), f14 / textures[i20].getHeight());
                bitmapShader2.setLocalMatrix(this.matrix);
                d2 = d;
                this.finishes[i20] = new ComposeShader(bitmapShader2, this.finishMask, PorterDuff.Mode.DST_IN);
            } else {
                i4 = i6;
                d2 = d;
            }
            int i21 = i20 + 2;
            if (textures[i21] != null) {
                Bitmap bitmap5 = textures[i21];
                Shader.TileMode tileMode3 = Shader.TileMode.CLAMP;
                BitmapShader bitmapShader3 = new BitmapShader(bitmap5, tileMode3, tileMode3);
                this.matrix.setScale(f9 / textures[i21].getWidth(), f14 / textures[i21].getHeight());
                bitmapShader3.setLocalMatrix(this.matrix);
                int[] iArr4 = new int[129];
                int i22 = i15;
                while (i22 <= i3) {
                    double d4 = ((((double) i22) * 3.141592653589793d) * 2.0d) / d2;
                    float fAbs = (float) Math.abs(Math.cos(Math.atan2(Math.sin(d4) / 2.0d, Math.cos(d4))));
                    float fSmooth = smooth((float) Math.cos(1.350884841043611d), (float) Math.cos(0.3782477554922111d), fAbs);
                    float f15 = fAbs * fAbs;
                    if (i20 != 0) {
                        f15 = f13 - f15;
                    }
                    iArr4[i22] = alpha(-1, fSmooth * f15);
                    i22++;
                    i3 = 128;
                }
                this.grooveMasks[i20] = new SweepGradient(168.0f, 102.5f, iArr4, (float[]) null);
                this.grooves[i20] = new ComposeShader(bitmapShader3, this.grooveMasks[i20], PorterDuff.Mode.DST_IN);
            }
            i20++;
            i6 = i4;
            d = d2;
            i3 = 128;
        }
        int i23 = i6;
        this.screenPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SCREEN));
        this.stroke.setStyle(Paint.Style.STROKE);
        Random random = new Random(24560118926758988L);
        int i24 = i15;
        while (i24 < this.stars.length) {
            float f16 = -1.0f;
            int i25 = i15;
            while (true) {
                if (i25 < (i24 == 0 ? z3 ? 1 : 0 : 32)) {
                    float fNextFloat = random.nextFloat() * f9;
                    float fNextFloat2 = random.nextFloat() * f14;
                    float fMin = Float.MAX_VALUE;
                    for (int i26 = i15; i26 < i24; i26++) {
                        float fAbs2 = Math.abs(fNextFloat - this.stars[i26][i15]);
                        float fAbs3 = Math.abs(fNextFloat2 - this.stars[i26][z3 ? 1 : 0]);
                        float fMin2 = Math.min(fAbs2, f9 - fAbs2);
                        float fMin3 = Math.min(fAbs3, f14 - fAbs3);
                        fMin = Math.min(fMin, (fMin2 * fMin2) + (fMin3 * fMin3));
                    }
                    if (fMin > f16) {
                        float[] fArr3 = this.stars[i24];
                        fArr3[i15] = fNextFloat;
                        fArr3[z3 ? 1 : 0] = fNextFloat2;
                        f16 = fMin;
                    }
                    i25++;
                }
            }
            this.stars[i24][i23] = (((random.nextFloat() * 6.0f) + f13) * f9) / 512.0f;
            double dNextFloat = ((double) random.nextFloat()) * 3.141592653589793d * 2.0d;
            float fNextFloat3 = (random.nextFloat() * 0.45f) + 0.05f;
            float fSqrt = f13 / ((float) Math.sqrt((fNextFloat3 * fNextFloat3) + f13));
            this.stars[i24][i14] = ((float) Math.cos(dNextFloat)) * fNextFloat3 * fSqrt;
            this.stars[i24][c6] = ((float) Math.sin(dNextFloat)) * fNextFloat3 * fSqrt;
            this.stars[i24][5] = fSqrt;
            i24++;
        }
        int[] iArr5 = new int[65];
        for (int i27 = i15; i27 <= 64; i27++) {
            iArr5[i27] = alpha(-1, (((float) Math.pow(Math.abs(Math.cos(((((double) i27) * 3.141592653589793d) * 2.0d) / 64.0d)), 8.0d)) * f) + 0.12f);
        }
        SweepGradient sweepGradient2 = new SweepGradient(this.qr.centerX(), this.qr.centerY(), iArr5, (float[]) null);
        this.qrBrushMask = sweepGradient2;
        if (textures[c6] != null) {
            Bitmap bitmap6 = textures[c6];
            Shader.TileMode tileMode4 = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader4 = new BitmapShader(bitmap6, tileMode4, tileMode4);
            this.matrix.setScale(this.qr.width() / textures[c6].getWidth(), this.qr.height() / textures[c6].getHeight());
            Matrix matrix = this.matrix;
            RectF rectF = this.qr;
            matrix.postTranslate(rectF.left, rectF.top);
            bitmapShader4.setLocalMatrix(this.matrix);
            this.qrBrush = new ComposeShader(bitmapShader4, sweepGradient2, PorterDuff.Mode.DST_IN);
        }
        installIcon(loadIcon(context, i));
        this.iconRes = i;
        setRotation(0.0f, 0.0f);
        prepared = z3;
    }

    public void setRotation(float f, float f2) {
        if (this.hasRotation && this.pitch == f && this.yaw == f2) {
            return;
        }
        this.hasRotation = true;
        this.pitch = f;
        this.yaw = f2;
        double d = f;
        double radians = Math.toRadians(d);
        double radians2 = Math.toRadians(f2);
        float fCos = (float) (Math.cos(radians) * Math.sin(radians2));
        float fSin = (float) Math.sin(radians);
        float fCos2 = (float) (Math.cos(radians) * Math.cos(radians2));
        this.lx = (float) ((Math.cos(radians2) * 0.175d) + (((double) fCos) * 0.83d));
        this.ly = 0.83f * fSin;
        this.lz = (float) ((Math.sin(radians2) * (-0.175d)) + (((double) fCos2) * 0.83d));
        float f3 = this.lx;
        float f4 = this.ly;
        float fSqrt = (float) Math.sqrt((f3 * f3) + (f4 * f4) + (r11 * r11));
        float f5 = this.lx / fSqrt;
        this.lx = f5;
        float f6 = this.ly / fSqrt;
        this.ly = f6;
        float f7 = this.lz / fSqrt;
        this.lz = f7;
        this.hx = f5 + fCos;
        this.hy = f6 + fSin;
        this.hz = f7 + fCos2;
        float fSqrt2 = (float) Math.sqrt((r12 * r12) + (r13 * r13) + (r14 * r14));
        this.hx /= fSqrt2;
        this.hy /= fSqrt2;
        this.hz /= fSqrt2;
        this.sweep = (float) Math.toRadians((((double) (f2 * 2.0f)) + 1.72d) - (d * 1.25d));
        float f8 = ((this.hx - 0.103713065f) * (-2.0f)) + (this.hy * 4.0f);
        this.shine = f8;
        this.matrix.setRotate((float) Math.toDegrees(f8), 168.0f, 102.5f);
        this.reflection.setLocalMatrix(this.matrix);
        this.finishMask.setLocalMatrix(this.matrix);
        for (SweepGradient sweepGradient : this.grooveMasks) {
            if (sweepGradient != null) {
                sweepGradient.setLocalMatrix(this.matrix);
            }
        }
        float fCos3 = (float) Math.cos(radians);
        float fSin2 = (float) Math.sin(radians);
        float fCos4 = (float) Math.cos(radians2);
        float f9 = -((float) Math.sin(radians2));
        float fClamp = clamp((studio(((-fCos4) * fCos) + (f9 * fCos2), ((((-fSin2) * f9) * fCos) - (fCos3 * fSin)) - ((fSin2 * fCos4) * fCos2), (((f9 * fCos3) * fCos) - (fSin2 * fSin)) + ((fCos3 * fCos4) * fCos2)) - 0.12f) / 1.8f);
        float fMix = mix(0.25f, 2.2f, fClamp);
        float fMix2 = mix(0.9f, 1.2f, fClamp) * 0.35f;
        for (int i = 0; i < this.qrColors.length; i++) {
            double dAbs = Math.abs(Math.cos(((((double) i) * 3.141592653589793d) * 2.0d) / 64.0d));
            double dPow = ((((double) fMix) * ((0.4d * dAbs * dAbs) + 0.72d)) + (dAbs * 0.65d * dAbs) + (Math.pow(dAbs, 22.0d) * 13.0d)) * 6.0d * ((((double) clamp(this.lz)) * 0.35d) + 0.65d);
            float fMix3 = mix(fMix2, 1.0f, (float) Math.pow(dPow / (1.0d + dPow), 0.9545454545454545d));
            this.qrColors[i] = Color.rgb(Math.round(0.992f * fMix3 * 255.0f), Math.round(0.996f * fMix3 * 255.0f), Math.round(fMix3 * 255.0f));
        }
        this.qrGradient = new SweepGradient(this.qr.centerX(), this.qr.centerY(), this.qrColors, (float[]) null);
        this.matrix.setRotate((float) Math.toDegrees(this.shine), this.qr.centerX(), this.qr.centerY());
        this.qrGradient.setLocalMatrix(this.matrix);
        this.qrBrushMask.setLocalMatrix(this.matrix);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawSurface(Canvas canvas, float[] fArr) {
        float f;
        int i;
        float f2;
        char c2;
        float f3;
        int i2 = 0;
        while (true) {
            float f4 = 0.0f;
            if (i2 >= (fArr == null ? 1 : 2)) {
                break;
            }
            int iTint = -14184457;
            int iTint2 = -14456619;
            if (fArr != null) {
                int i3 = i2 * 4;
                int i4 = i3 + 10;
                i = 0;
                if (fArr.length >= 18) {
                    float f5 = fArr[i4];
                    if (f5 >= 0.0f) {
                        int i5 = i3 + 11;
                        iTint2 = WalletGiftPalette.surface2DEdge(-16216082, (int) f5, (int) fArr[i5]);
                        int i6 = (int) fArr[i4];
                        int i7 = (int) fArr[i5];
                        f = 255.0f;
                        iTint = WalletGiftPalette.surface2DEdge(-15291399, i6, i7);
                    } else {
                        f = 255.0f;
                        int i8 = i2 * 3;
                        iTint2 = WalletGiftPalette.tint(-14456619, fArr, i8);
                        iTint = WalletGiftPalette.tint(-14184457, fArr, i8);
                    }
                }
            } else {
                f = 255.0f;
                i = 0;
            }
            boolean z = (fArr == null || fArr.length < 18 || fArr[(i2 * 4) + 10] < 0.0f) ? i : true;
            int[][] iArr = this.faceColors;
            if (iArr[i2] != null && this.darks[i2] == iTint2 && this.lights[i2] == iTint && this.surfaceGifts[i2] == z) {
                f2 = 0.0f;
                c2 = 6;
            } else {
                this.darks[i2] = iTint2;
                this.lights[i2] = iTint;
                this.surfaceGifts[i2] = z;
                iArr[i2] = faceStops(iTint2, iTint, z);
                int i9 = i;
                while (i9 < 8) {
                    int i10 = i9 + 1;
                    this.faceFilters[i2][i9] = new PorterDuffColorFilter(this.faceColors[i2][i10], PorterDuff.Mode.SRC_IN);
                    i9 = i10;
                    f4 = f4;
                }
                f2 = f4;
                c2 = 6;
                this.reflectionTints[i2] = materialReflectionTint(iTint2, iTint);
            }
            if (fArr == null || ((i2 != 0 || fArr[8] < 1.0f) && (i2 != 1 || fArr[8] > f2))) {
                int iSave = canvas.save();
                if (i2 != 1 || fArr[9] >= 0.5f || fArr[8] >= 1.0f) {
                    f3 = 0.5f;
                } else {
                    this.reveal.rewind();
                    f3 = 0.5f;
                    this.reveal.addCircle(fArr[c2] * 336.0f, fArr[7] * 205.0f, 1.2f * fArr[8] * 336.0f, Path.Direction.CW);
                    canvas.clipPath(this.reveal);
                }
                canvas.rotate((float) Math.toDegrees(this.sweep), 168.0f, 102.5f);
                int iRound = (i2 != 1 || fArr[9] <= f3) ? 255 : Math.round(fArr[8] * f);
                int iSaveLayerAlpha = iRound < 255 ? canvas.saveLayerAlpha(this.faceTextureBounds, iRound) : -1;
                this.paint.setShader(null);
                this.paint.setColorFilter(null);
                this.paint.setColor(this.faceColors[i2][i]);
                canvas.drawRect(this.faceTextureBounds, this.paint);
                for (int i11 = i; i11 < 8; i11++) {
                    Bitmap bitmap = faceMasks[z ? 1 : 0][i11];
                    if (bitmap != null) {
                        this.paint.setColorFilter(this.faceFilters[i2][i11]);
                        canvas.drawBitmap(bitmap, (Rect) null, this.faceTextureBounds, this.paint);
                    }
                }
                this.paint.setColorFilter(null);
                if (iSaveLayerAlpha != -1) {
                    canvas.restoreToCount(iSaveLayerAlpha);
                }
                this.paint.setAlpha(255);
                canvas.restoreToCount(iSave);
            }
            i2++;
        }
        int[] iArr2 = this.darks;
        this.rimDark = fArr == null ? iArr2[0] : ColorUtils.blendARGB(iArr2[0], iArr2[1], fArr[8]);
        int[] iArr3 = this.lights;
        this.rimLight = fArr == null ? iArr3[0] : ColorUtils.blendARGB(iArr3[0], iArr3[1], fArr[8]);
        Object[] objArr = fArr != null && fArr.length >= 18 && fArr[10] >= 0.0f;
        Object[] objArr2 = fArr != null && fArr.length >= 18 && fArr[14] >= 0.0f;
        float fClamp = (fArr == null || fArr.length < 18) ? 0.0f : clamp(fArr[8]);
        int iBlendARGB = ColorUtils.blendARGB(objArr != false ? this.reflectionTints[0] : -11227905, objArr2 == true ? this.reflectionTints[1] : -11227905, fClamp);
        if (this.reflectionColorFilter == null || this.reflectionTint != iBlendARGB) {
            this.reflectionTint = iBlendARGB;
            this.reflectionColorFilter = new PorterDuffColorFilter(iBlendARGB, PorterDuff.Mode.SRC_IN);
        }
        float fMix = mix(objArr != false ? 0.18f : 0.25f, objArr2 == true ? 0.18f : 0.25f, fClamp);
        this.screenPaint.setColorFilter(this.reflectionColorFilter);
        this.screenPaint.setShader(this.reflection);
        this.screenPaint.setAlpha(Math.round(((((clamp(this.lz) * 0.28f) + 0.72f) * 255.0f) * fMix) / 0.25f));
        canvas.drawRect(this.face, this.screenPaint);
        this.screenPaint.setColorFilter(null);
        this.screenPaint.setShader(null);
        this.paint.setShader(null);
        if (Build.VERSION.SDK_INT >= 29 && this.grainFinish != null) {
            this.paint.setBlendMode(BlendMode.SOFT_LIGHT);
            bitmap(canvas, textures[6], this.face, Math.round(9.817499f));
            this.paint.setShader(this.grainFinish);
            this.paint.setAlpha(Math.round(53.55f));
            canvas.drawRect(this.face, this.paint);
            this.paint.setShader(null);
            this.paint.setAlpha(255);
            this.paint.setBlendMode(BlendMode.SRC_OVER);
        } else {
            bitmap(canvas, textures[0], this.face, 5);
            bitmap(canvas, textures[1], this.face, 5);
            for (Shader shader : this.finishes) {
                if (shader != null) {
                    this.paint.setShader(shader);
                    this.paint.setAlpha(25);
                    canvas.drawRect(this.face, this.paint);
                }
            }
            this.paint.setShader(null);
            this.paint.setAlpha(255);
        }
        int iRgb = fArr == null ? -13003265 : Color.rgb(Math.min(255, Math.round(Color.red(this.rimLight) * 1.12f)), Math.min(255, Math.round(Color.green(this.rimLight) * 1.12f)), Math.min(255, Math.round(Color.blue(this.rimLight) * 1.12f)));
        if (this.grooveColorFilter == null || this.grooveTint != iRgb) {
            this.grooveTint = iRgb;
            this.grooveColorFilter = new PorterDuffColorFilter(iRgb, PorterDuff.Mode.SRC_IN);
        }
        this.screenPaint.setColorFilter(this.grooveColorFilter);
        for (Shader shader2 : this.grooves) {
            if (shader2 != null) {
                this.screenPaint.setShader(shader2);
                this.screenPaint.setAlpha(Math.round(41.055f));
                canvas.drawRect(this.face, this.screenPaint);
            }
        }
        this.screenPaint.setColorFilter(null);
        this.screenPaint.setShader(null);
        this.screenPaint.setAlpha(255);
    }

    private static int materialReflectionTint(int i, int i2) {
        float fMax = Math.max(1.0E-6f, Math.max((linearChannel(Color.red(i)) + linearChannel(Color.red(i2))) * 0.5f, Math.max((linearChannel(Color.green(i)) + linearChannel(Color.green(i2))) * 0.5f, (linearChannel(Color.blue(i)) + linearChannel(Color.blue(i2))) * 0.5f)));
        return Color.rgb(Math.round(((float) Math.sqrt(r0 / fMax)) * 255.0f), Math.round(((float) Math.sqrt(r2 / fMax)) * 255.0f), Math.round(((float) Math.sqrt(r4 / fMax)) * 255.0f));
    }

    private static float linearChannel(int i) {
        float f = i / 255.0f;
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4d);
    }

    private static float encodeSrgb(float f) {
        return f <= 0.0031308f ? f * 12.92f : (((float) Math.pow(f, 0.4166666567325592d)) * 1.055f) - 0.055f;
    }

    private static int[] faceStops(int i, int i2, boolean z) {
        if (!z) {
            return STOCK_FACE_COLORS;
        }
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = 16 - (i3 * 8);
            fArr[i3] = encodeSrgb(linearChannel((i >> i4) & 255) * 0.73f);
            fArr2[i3] = encodeSrgb(linearChannel((i2 >> i4) & 255) * 0.73f);
        }
        float fMix = ((mix(0.91f, 1.06f, 0.825f) * (mix(0.061f, 0.356f, smooth(-0.45f, 0.72f, 0.0f)) + (((float) Math.pow(0.9757d, mix(3.6f, 1.25f, 0.1066f))) * 0.2556f) + (((float) Math.pow(0.571d, mix(5.0f, 1.5f, 0.1066f))) * 0.1133f) + (((float) Math.pow(0.72d, mix(18.0f, 3.5f, 0.1066f))) * 2.5191f) + (((float) Math.pow(0.68d, mix(34.0f, 5.5f, 0.1066f))) * 0.7832f)) * 0.82f * mix(0.92f, 0.6f, 0.1066f) * 1.1f * 1.45f) + 0.136598f) * 1.0760401f * 1.02925f;
        int[] iArr = new int[9];
        for (int i5 = 0; i5 <= 8; i5++) {
            float f = i5 / 8.0f;
            int iRound = -16777216;
            for (int i6 = 0; i6 < 3; i6++) {
                float fMix2 = mix(fArr[i6], fArr2[i6], f) * ((0.2f * f) + 0.8f);
                float fPow = (fMix2 <= 0.04045f ? fMix2 / 12.92f : (float) Math.pow((fMix2 + 0.055f) / 1.055f, 2.4d)) * 1.3f * fMix * 1.765f;
                iRound |= Math.round(((float) Math.pow(mix(clamp((((2.51f * fPow) + 0.03f) * fPow) / ((((2.43f * fPow) + 0.59f) * fPow) + 0.14f)), clamp(fPow), 0.65f), 0.45454543828964233d)) * 255.0f) << (16 - (i6 * 8));
            }
            iArr[i5] = iRound;
        }
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawStars(Canvas canvas, boolean z) {
        this.paint.setShader(null);
        this.paint.setColor(-1);
        for (float[] fArr : this.stars) {
            if (!this.qr.contains(fArr[0], fArr[1])) {
                if (z) {
                    float f = fArr[0];
                    float f2 = fArr[2];
                    if (f + f2 < 298.0f || f - f2 > 328.0f) {
                    }
                }
                double dAtan2 = Math.atan2(fArr[1] - 102.5f, fArr[0] - 168.0f);
                this.paint.setAlpha(Math.round((1.0f - ((1.0f - smooth(0.25f, 0.85f, broad(dAtan2 - ((double) this.sweep)))) * (1.0f - smooth(0.12f, 0.85f, secondary(dAtan2 - ((double) this.shine)))))) * 255.0f * mix(0.16f, 0.96f, Math.max(0.0f, (fArr[3] * this.lx) + (fArr[4] * this.ly) + (fArr[5] * this.lz)) * ((float) Math.pow(Math.max(0.0f, (fArr[3] * this.hx) + (fArr[4] * this.hy) + (fArr[5] * this.hz)), 10.0d)))));
                float f3 = fArr[0];
                float f4 = fArr[1];
                float f5 = fArr[2];
                float f6 = 0.15f * f5;
                this.star.rewind();
                this.star.moveTo(f3 - f5, f4);
                float f7 = f3 - f6;
                float f8 = f4 - f6;
                this.star.lineTo(f7, f8);
                this.star.lineTo(f3, f4 - f5);
                float f9 = f3 + f6;
                this.star.lineTo(f9, f8);
                this.star.lineTo(f3 + f5, f4);
                float f10 = f6 + f4;
                this.star.lineTo(f9, f10);
                this.star.lineTo(f3, f4 + f5);
                this.star.lineTo(f7, f10);
                this.star.close();
                canvas.drawPath(this.star, this.paint);
            }
        }
        this.paint.setAlpha(255);
    }

    public void drawQr(Canvas canvas) {
        int iSave = canvas.save();
        this.clip.rewind();
        this.clip.addRoundRect(this.qr, 8.0f, 8.0f, Path.Direction.CW);
        canvas.clipPath(this.clip);
        this.paint.setShader(this.qrGradient);
        canvas.drawRect(this.qr, this.paint);
        this.paint.setShader(null);
        bitmap(canvas, textures[4], this.qr, 55);
        bitmap(canvas, textures[5], this.qr, 95);
        Shader shader = this.qrBrush;
        if (shader != null) {
            this.paint.setShader(shader);
            this.paint.setAlpha(95);
            canvas.drawRect(this.qr, this.paint);
            this.paint.setShader(null);
            this.paint.setAlpha(255);
        }
        if (this.iconMask != null) {
            float fSmooth = (smooth(0.05f, 0.42f, -((float) Math.sin(Math.toRadians(this.pitch)))) * 0.65f) + 0.35f;
            this.paint.setColorFilter(new PorterDuffColorFilter(-14405316, PorterDuff.Mode.SRC_IN));
            bitmap(canvas, this.iconMask, this.qr, Math.round(((fSmooth * 0.495f) + 0.1f) * 255.0f));
            this.paint.setColorFilter(null);
            float f = (float) (((((((double) this.shine) / 6.283185307179586d) % 1.0d) + 1.0d) % 1.0d) * 8.0d);
            int i = (int) f;
            float f2 = f - i;
            int i2 = 0;
            while (i2 < 2) {
                float f3 = i2 == 0 ? 1.0f - f2 : f2;
                int i3 = (i + i2) % 8;
                bitmap(canvas, this.iconDark[i3], this.qr, Math.round(204.0f * f3));
                bitmap(canvas, this.iconLight[i3], this.qr, Math.round(f3 * 248.0f));
                i2++;
            }
        }
        float fCos = ((float) Math.cos(((double) this.shine) - 0.7d)) * 24.0f;
        float fSin = ((float) Math.sin(((double) this.shine) - 0.7d)) * 18.0f;
        this.stroke.setShader(new LinearGradient(this.qr.centerX() - fCos, this.qr.centerY() - fSin, this.qr.centerX() + fCos, this.qr.centerY() + fSin, new int[]{1812994342, 268435455, -1493172225}, new float[]{0.0f, 0.45f, 1.0f}, Shader.TileMode.CLAMP));
        this.stroke.setStrokeWidth(0.7f);
        this.inset.set(this.qr);
        this.inset.inset(0.35f, 0.35f);
        canvas.drawRoundRect(this.inset, 7.65f, 7.65f, this.stroke);
        canvas.restoreToCount(iSave);
    }

    public void drawRim(Canvas canvas) {
        double radians = Math.toRadians((((double) this.yaw) * 3.6d) - (((double) this.pitch) * 3.2d)) - 2.0420352248333655d;
        float fCos = (float) Math.cos(radians);
        float fSin = (float) Math.sin(radians);
        float fAbs = ((Math.abs(fCos) * 336.0f) + (Math.abs(fSin) * 205.0f)) * 0.5f;
        int i = 0;
        while (true) {
            float f = 0.8f;
            if (i < 3) {
                if (i == 0) {
                    f = 0.66f;
                } else if (i != 1) {
                    f = 0.92f;
                }
                float f2 = i == 0 ? 0.4f : i == 1 ? 0.24f : 0.1f;
                int iRgb = Color.rgb(Math.round(Color.red(this.rimDark) * f), Math.round(Color.green(this.rimDark) * f), Math.round(Color.blue(this.rimDark) * f));
                int iBlendARGB = ColorUtils.blendARGB(this.rimDark, this.rimLight, 0.45f);
                int iBlendARGB2 = ColorUtils.blendARGB(this.rimLight, -1, f2);
                float f3 = fCos * fAbs;
                float f4 = fSin * fAbs;
                this.stroke.setShader(new LinearGradient(168.0f - f3, 102.5f - f4, f3 + 168.0f, f4 + 102.5f, new int[]{iRgb, iRgb, iBlendARGB, iBlendARGB2, iBlendARGB2}, new float[]{0.0f, 0.32f, 0.53f, 0.76f, 1.0f}, Shader.TileMode.CLAMP));
                float f5 = i == 0 ? 0.3f : i == 1 ? 0.88f : 1.47f;
                this.stroke.setStrokeWidth(i == 0 ? 0.6f : i == 1 ? 1.0f : 0.43f);
                this.inset.set(f5, f5, 336.0f - f5, 205.0f - f5);
                float f6 = 25.2f - f5;
                canvas.drawRoundRect(this.inset, f6, f6, this.stroke);
                i++;
            } else {
                float fClamp = clamp(((float) Math.sin(Math.toRadians(this.yaw))) * 1.7f);
                float fClamp2 = clamp((-((float) Math.sin(Math.toRadians(this.yaw)))) * 1.7f);
                int iBlendARGB3 = ColorUtils.blendARGB(this.rimLight, -1, 0.38f);
                this.stroke.setShader(new LinearGradient(0.0f, 102.5f, 336.0f, 102.5f, new int[]{alpha(iBlendARGB3, fClamp2 * 0.8f), alpha(iBlendARGB3, fClamp2 * 0.38f), alpha(iBlendARGB3, 0.0f), alpha(iBlendARGB3, 0.0f), alpha(iBlendARGB3, 0.38f * fClamp), alpha(iBlendARGB3, fClamp * 0.8f)}, new float[]{0.0f, 0.15f, 0.34f, 0.66f, 0.85f, 1.0f}, Shader.TileMode.CLAMP));
                this.stroke.setStrokeWidth(1.05f);
                this.inset.set(0.95f, 0.95f, 335.05f, 204.05f);
                canvas.drawRoundRect(this.inset, 24.25f, 24.25f, this.stroke);
                this.stroke.setShader(null);
                return;
            }
        }
    }

    public void updateDepthProjection(WalletCardProjection walletCardProjection, int i, int i2, boolean z) {
        this.depthBackFacing = z;
        walletCardProjection.projectDepthContour(i, i2, this.depthUv, z ? this.depthBack : this.depthFront, z ? this.depthFront : this.depthBack, this.depthZ);
        this.depthScale = i / 336.0f;
        int i3 = 0;
        while (i3 < 76) {
            float[] fArr = this.stripZ;
            float[] fArr2 = this.depthZ;
            int i4 = i3 + 1;
            fArr[i3] = (fArr2[i3] + fArr2[i4 % 76]) * 0.5f;
            this.depthOrder[i3] = i3;
            i3 = i4;
        }
        for (int i5 = 1; i5 < 76; i5++) {
            int i6 = this.depthOrder[i5];
            int i7 = i5 - 1;
            while (i7 >= 0) {
                float[] fArr3 = this.stripZ;
                int[] iArr = this.depthOrder;
                int i8 = iArr[i7];
                if (fArr3[i8] < fArr3[i6]) {
                    iArr[i7 + 1] = i8;
                    i7--;
                }
            }
            this.depthOrder[i7 + 1] = i6;
        }
    }

    public void drawDepth(Canvas canvas, float[] fArr) {
        Path path;
        int i;
        Canvas canvas2 = canvas;
        if (this.depthScale == 0.0f) {
            return;
        }
        if (Math.abs(Math.sin(Math.toRadians(this.pitch))) >= 0.009999999776482582d || Math.abs(Math.sin(Math.toRadians(this.yaw))) >= 0.009999999776482582d) {
            int iCard2DEdgeTone = WalletGiftPalette.card2DEdgeTone(-16216082, fArr);
            int iCard2DEdgeTone2 = WalletGiftPalette.card2DEdgeTone(-15291399, fArr);
            this.paint.setShader(null);
            this.paint.setAlpha(255);
            this.paint.setColor(depthColor(iCard2DEdgeTone, iCard2DEdgeTone2, 0.82500005f, 0.0f, 0.0f));
            this.depthPath.rewind();
            Path path2 = this.depthPath;
            float[] fArr2 = this.depthBack;
            path2.moveTo(fArr2[0], fArr2[1]);
            int i2 = 1;
            while (true) {
                path = this.depthPath;
                i = 76;
                if (i2 >= 76) {
                    break;
                }
                float[] fArr3 = this.depthBack;
                int i3 = i2 * 2;
                path.lineTo(fArr3[i3], fArr3[i3 + 1]);
                i2++;
            }
            path.close();
            canvas2.drawPath(this.depthPath, this.paint);
            this.stroke.setShader(null);
            this.stroke.setAlpha(255);
            float f = 0.6f;
            this.stroke.setStrokeWidth(this.depthScale * 0.6f);
            int[] iArr = this.depthOrder;
            int length = iArr.length;
            int i4 = 0;
            while (i4 < length) {
                int i5 = iArr[i4];
                int i6 = (i5 + 1) % i;
                int i7 = i5 * 2;
                int i8 = i6 * 2;
                float[] fArr4 = this.depthNormals;
                float f2 = (fArr4[i7] + fArr4[i8]) * 0.5f;
                int i9 = i7 + 1;
                int i10 = i8 + 1;
                float f3 = (fArr4[i9] + fArr4[i10]) * 0.5f;
                float f4 = f;
                float fSqrt = 1.0f / ((float) Math.sqrt(((f2 * f2) + (f3 * f3)) + 0.0144f));
                float f5 = f2 * fSqrt;
                float f6 = f3 * fSqrt;
                float fClamp = ((clamp((this.lx * f5) + (this.ly * f6) + (this.lz * (this.depthBackFacing ? -0.12f : 0.12f) * fSqrt)) * 0.38f) + 0.36f) * 1.5f;
                float fPow = ((float) Math.pow(clamp((f5 * this.hx) + (f6 * this.hy) + (r4 * this.hz)), 24.0d)) * 0.1f * 1.5f;
                int iDepthColor = depthColor(iCard2DEdgeTone, iCard2DEdgeTone2, fClamp, 0.089999996f, fPow);
                this.paint.setColor(iDepthColor);
                this.stroke.setColor(iDepthColor);
                this.depthPath.rewind();
                Path path3 = this.depthPath;
                float[] fArr5 = this.depthFront;
                path3.moveTo(fArr5[i7], fArr5[i9]);
                Path path4 = this.depthPath;
                float[] fArr6 = this.depthFront;
                path4.lineTo(fArr6[i8], fArr6[i10]);
                Path path5 = this.depthPath;
                float[] fArr7 = this.depthBack;
                path5.lineTo(fArr7[i8], fArr7[i10]);
                Path path6 = this.depthPath;
                float[] fArr8 = this.depthBack;
                path6.lineTo(fArr8[i7], fArr8[i9]);
                this.depthPath.close();
                this.stroke.setStrokeWidth(this.depthScale * f4);
                canvas2.drawPath(this.depthPath, this.paint);
                canvas2.drawPath(this.depthPath, this.stroke);
                this.stroke.setColor(depthColor(iCard2DEdgeTone, iCard2DEdgeTone2, fClamp * 0.75f, 0.067499995f, fPow * 0.75f));
                this.stroke.setStrokeWidth(this.depthScale * 0.7f);
                float[] fArr9 = this.depthBack;
                canvas2.drawLine(fArr9[i7], fArr9[i9], fArr9[i8], fArr9[i10], this.stroke);
                i4++;
                canvas2 = canvas;
                f = f4;
                i = 76;
            }
        }
    }

    private static int depthColor(int i, int i2, float f, float f2, float f3) {
        float f4 = f3 * 255.0f;
        return Color.rgb(Math.min(255, Math.round((Color.red(i) * f) + (Color.red(i2) * f2) + f4)), Math.min(255, Math.round((Color.green(i) * f) + (Color.green(i2) * f2) + f4)), Math.min(255, Math.round((Color.blue(i) * f) + (Color.blue(i2) * f2) + f4)));
    }

    public void setIcon(final int i) {
        if (i == this.iconRes) {
            return;
        }
        this.iconRes = i;
        Bitmap[] bitmapArr = ICON_CACHE.get(Integer.valueOf(i));
        if (bitmapArr != null) {
            installIcon(bitmapArr);
        } else {
            ASSET_QUEUE.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.WalletCard2DMaterial$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setIcon$3(i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIcon$3(final int i) {
        final Bitmap[] bitmapArrLoadIcon = loadIcon(this.context, i);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletCard2DMaterial$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setIcon$2(i, bitmapArrLoadIcon);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIcon$2(int i, Bitmap[] bitmapArr) {
        if (this.iconRes != i) {
            return;
        }
        installIcon(bitmapArr);
        this.invalidate.run();
    }

    private void installIcon(Bitmap[] bitmapArr) {
        if (bitmapArr == null) {
            return;
        }
        this.iconMask = bitmapArr[0];
        System.arraycopy(bitmapArr, 1, this.iconLight, 0, 8);
        System.arraycopy(bitmapArr, 9, this.iconDark, 0, 8);
    }

    private static Bitmap[] loadIcon(Context context, int i) {
        String str;
        StringBuilder sb;
        int i2;
        String string;
        Bitmap[] bitmapArr = ICON_CACHE.get(Integer.valueOf(i));
        if (bitmapArr != null) {
            return bitmapArr;
        }
        if (i == C2807R.drawable.wallet_card_qr) {
            str = "qr";
        } else {
            if (i != C2807R.drawable.wallet_card_info) {
                CharCodeKt$$ExternalSyntheticBUOutline0.m908m("Missing packaged wallet icon: ", i);
                return null;
            }
            str = "info";
        }
        Bitmap[] bitmapArr2 = new Bitmap[17];
        for (int i3 = 0; i3 < 17; i3++) {
            if (i3 == 0) {
                string = PluginsConstants.Settings.MASK;
            } else {
                if (i3 <= 8) {
                    sb = new StringBuilder("light_");
                    i2 = i3 - 1;
                } else {
                    sb = new StringBuilder("dark_");
                    i2 = i3 - 9;
                }
                sb.append(i2);
                string = sb.toString();
            }
            try {
                InputStream inputStreamOpen = context.getAssets().open("wallet_card_2d/icon_" + str + "_" + string + ".webp");
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
                    bitmapArr2[i3] = bitmapDecodeStream;
                    if (bitmapDecodeStream == null) {
                        throw new IllegalStateException("Invalid wallet icon texture");
                    }
                    bitmapDecodeStream.prepareToDraw();
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                } finally {
                }
            } catch (IOException e) {
                Constants$$ExternalSyntheticBUOutline0.m1006m("Missing wallet icon texture", e);
                return null;
            }
            Constants$$ExternalSyntheticBUOutline0.m1006m("Missing wallet icon texture", e);
            return null;
        }
        ICON_CACHE.put(Integer.valueOf(i), bitmapArr2);
        return bitmapArr2;
    }

    private void bitmap(Canvas canvas, Bitmap bitmap, RectF rectF, int i) {
        if (bitmap == null) {
            return;
        }
        this.paint.setAlpha(i);
        canvas.drawBitmap(bitmap, (Rect) null, rectF, this.paint);
        this.paint.setAlpha(255);
    }

    private static int alpha(int i, float f) {
        return ColorUtils.setAlphaComponent(i, Math.round(clamp(f) * 255.0f));
    }

    private static float clamp(float f) {
        return Math.max(0.0f, Math.min(1.0f, f));
    }

    private static float smooth(float f, float f2, float f3) {
        float fClamp = clamp((f3 - f) / (f2 - f));
        return fClamp * fClamp * (3.0f - (fClamp * 2.0f));
    }

    private static float broad(double d) {
        double dCos = Math.cos(d);
        return (float) Math.pow(Math.abs(dCos), dCos >= 0.0d ? 3.081664098613251d : 5.0d);
    }

    private static float secondary(double d) {
        return (float) Math.pow(Math.pow(Math.sin(d) / 0.64d, 2.0d) + 1.0d, -2.0d);
    }

    private static float studio(float f, float f2, float f3) {
        float fMix = mix(0.061f, 0.356f, smooth(-0.45f, 0.72f, f2));
        double d = f2;
        double d2 = f3;
        return fMix + (((float) Math.pow(Math.max(0.0d, (0.2191d * d) + (0.9757d * d2)), 3.365d)) * 0.2556f) + (((float) Math.pow(Math.max(0.0d, (0.821d * d) + (0.571d * d2)), 4.65d)) * 0.1133f) + (((float) Math.pow(Math.max(0.0d, (((double) (-f)) * 0.52d) + (0.46d * d) + (d2 * 0.72d)), 16.55d)) * 2.5191f) + (((float) Math.pow(Math.max(0.0d, (((double) f) * 0.72d) + (d * 0.12d) + (d2 * 0.68d)), 31.15d)) * 0.7832f);
    }
}
