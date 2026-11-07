package org.telegram.ui.QrShare;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.google.zxing.EncodeHintType;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.Encoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Random;
import kotlin.jvm.internal.LongCompanionObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.TelegramQRCodeWriter;

/* JADX INFO: loaded from: classes7.dex */
public final class QrCodeLayer {
    private static final float NAT_HALF;
    private static final float U80;
    private static Bitmap atlas;
    private boolean burstPending;
    private float cardCx;
    private float cardCy;
    private float codeSize;
    private float codeTop;
    private Code current;
    private int[] dc;
    private float[] dt;
    private float[] dv;
    private PorterDuffColorFilter filter;
    private long introAt;
    private boolean introRunning;
    private long lastFrame;
    private BitmapShader maskShader;
    private Bitmap maskShaderFor;
    private int[] mc;
    private float[] mt;
    private float[] mv;
    private BitmapShader oldShader;
    private Bitmap oldShaderFor;
    private int pcount;
    private Code previous;
    private short[] quadIdx;
    private boolean[] spawned;
    private long swapStart;
    private final float[] px = new float[2400];
    private final float[] py = new float[2400];
    private final float[] pvx = new float[2400];
    private final float[] pvy = new float[2400];
    private final float[] psize = new float[2400];
    private final float[] plife = new float[2400];
    private final float[] page = new float[2400];
    private final float[] prot = new float[2400];
    private final float[] pvr = new float[2400];
    private final float[] pfloor = new float[2400];
    private final byte[] pkind = new byte[2400];
    private float progress = 1.0f;
    private int mode = 0;
    private final RectF card = new RectF();
    private final Paint maskPaint = new Paint(3);
    private final Paint particlePaint = new Paint(1);
    private final Rect src = new Rect();
    private final RectF dst = new RectF();
    private final Random random = new Random();
    private int color = -16777216;
    long assembleDelay = 0;
    private float buildOverride = -1.0f;
    private final Paint oldPaint = new Paint(3);
    private final Paint modPaint = new Paint(3);

    public static final class Code {
        int atlasY;
        float cell;
        boolean[] dark;
        float[] hcx;
        float[] hcy;
        float[] hdelay;
        int hm;
        boolean[] hon;
        int[] hsrc;
        int imageSize;
        int logoFrom;
        int logoTo;
        Bitmap mask;

        /* JADX INFO: renamed from: n */
        int f1204n;
        float[] noise;
        int size;
        final Rect maskSrc = new Rect();
        int pad = 16;
    }

    private static float backOut(float f) {
        float f2 = f - 1.0f;
        return (3.2f * f2 * f2 * f2) + 1.0f + (2.2f * f2 * f2);
    }

    private static float easeInOutPoly(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f < 0.5f) {
            return 4.0f * f * f * f;
        }
        float f2 = (f * (-2.0f)) + 2.0f;
        return 1.0f - (((f2 * f2) * f2) * 0.5f);
    }

    private static float pop(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f < 0.6f) {
            float f2 = 1.0f - (f / 0.6f);
            return (1.0f - ((f2 * f2) * f2)) * 1.08f;
        }
        float f3 = (f - 0.6f) / 0.4f;
        return 1.08f - (((0.08f * f3) * f3) * (3.0f - (f3 * 2.0f)));
    }

    private static float popScale(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f < 0.45f) {
            float f2 = 1.0f - (f / 0.45f);
            return ((1.0f - (f2 * f2)) * 0.12f) + 0.92f;
        }
        float f3 = (f - 0.45f) / 0.55f;
        return 1.04f - (((0.04f * f3) * f3) * (3.0f - (f3 * 2.0f)));
    }

    private static void prepareHalftone(Code code) {
        int i;
        int i2;
        if (code.hcx != null) {
            return;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= code.f1204n) {
                break;
            }
            for (int i5 = 0; i5 < code.f1204n; i5++) {
                int i6 = code.logoFrom;
                if (i5 < i6 || i5 >= (i2 = code.logoTo) || i3 < i6 || i3 >= i2) {
                    i4++;
                }
            }
            i3++;
        }
        code.hm = i4;
        code.hcx = new float[i4];
        code.hcy = new float[i4];
        code.hdelay = new float[i4];
        code.hon = new boolean[i4];
        code.hsrc = new int[i4 * 4];
        float f = 1.4142f * ((r4 - 1) / 2.0f);
        int i7 = 0;
        for (int i8 = 0; i8 < code.f1204n; i8++) {
            int i9 = 0;
            while (true) {
                int i10 = code.f1204n;
                if (i9 < i10) {
                    int i11 = code.logoFrom;
                    if (i9 < i11 || i9 >= (i = code.logoTo) || i8 < i11 || i8 >= i) {
                        int i12 = (i10 * i8) + i9;
                        float fHypot = ((float) Math.hypot(r8 - r2, r11 - r2)) / f;
                        float fFract = fract(code.noise[i12] * 3.17f);
                        boolean zInFinder = inFinder(code, i9, i8);
                        float[] fArr = code.hcx;
                        int i13 = code.pad;
                        float f2 = code.cell;
                        fArr[i7] = i13 + ((i9 + 0.5f) * f2);
                        code.hcy[i7] = i13 + ((i8 + 0.5f) * f2);
                        float f3 = fHypot * 0.5f;
                        code.hdelay[i7] = zInFinder ? f3 * 0.85f : f3 + (fFract * 0.06f);
                        code.hon[i7] = code.dark[i12];
                        int[] iArr = code.hsrc;
                        int i14 = i7 * 4;
                        iArr[i14] = i9;
                        iArr[i14 + 1] = i8;
                        i7++;
                    }
                    i9++;
                }
            }
        }
    }

    public static Code build(String str, int i) {
        return build(str, i, ErrorCorrectionLevel.M, 0.75f, null);
    }

    public static Code build(String str, int i, ErrorCorrectionLevel errorCorrectionLevel, float f, Drawable drawable) {
        try {
            HashMap map = new HashMap();
            map.put(EncodeHintType.ERROR_CORRECTION, errorCorrectionLevel);
            map.put(EncodeHintType.MARGIN, 0);
            TelegramQRCodeWriter telegramQRCodeWriter = new TelegramQRCodeWriter();
            if (drawable != null) {
                telegramQRCodeWriter.setCenterDrawable(drawable);
            }
            Code code = new Code();
            Bitmap bitmapEncode = telegramQRCodeWriter.encode(str, i, i, map, null, f, 0, -1);
            code.size = bitmapEncode.getWidth();
            int width = Encoder.encode(str, errorCorrectionLevel, map).getMatrix().getWidth();
            code.f1204n = width;
            code.cell = (code.size - (code.pad * 2.0f)) / width;
            code.dark = new boolean[width * width];
            code.noise = new float[width * width];
            Random random = new Random(str.hashCode());
            for (int i2 = 0; i2 < code.f1204n; i2++) {
                for (int i3 = 0; i3 < code.f1204n; i3++) {
                    int i4 = code.pad;
                    float f2 = code.cell;
                    int i5 = (int) (i4 + ((i3 + 0.5f) * f2));
                    int i6 = (int) (i4 + ((i2 + 0.5f) * f2));
                    boolean z = false;
                    for (int i7 = -1; i7 <= 1 && !z; i7++) {
                        z = Color.alpha(bitmapEncode.getPixel(Math.max(0, Math.min(code.size - 1, ((int) ((((float) i7) * code.cell) * 0.3f)) + i5)), i6)) > 40;
                    }
                    boolean[] zArr = code.dark;
                    int i8 = code.f1204n;
                    zArr[(i2 * i8) + i3] = z;
                    code.noise[(i8 * i2) + i3] = random.nextFloat();
                }
            }
            Bitmap bitmapAtlas = atlas();
            int i9 = code.size;
            code.atlasY = i9 + 2;
            code.mask = Bitmap.createBitmap(Math.max(i9, bitmapAtlas.getWidth()), code.atlasY + bitmapAtlas.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(code.mask);
            canvas.drawBitmap(bitmapEncode, 0.0f, 0.0f, (Paint) null);
            canvas.drawBitmap(bitmapAtlas, 0.0f, code.atlasY, (Paint) null);
            bitmapEncode.recycle();
            code.mask.prepareToDraw();
            Rect rect = code.maskSrc;
            int i10 = code.size;
            rect.set(0, 0, i10, i10);
            code.imageSize = telegramQRCodeWriter.getImageSize();
            int iRound = Math.round(telegramQRCodeWriter.getImageSize() / code.cell) + 2;
            int i11 = (code.f1204n - iRound) / 2;
            code.logoFrom = i11;
            code.logoTo = i11 + iRound;
            return code;
        } catch (Exception unused) {
            return null;
        }
    }

    public void setCardBounds(float f, float f2, float f3, float f4) {
        this.card.set(f, f2, f3, f4);
    }

    private static float srgbToLin(float f) {
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    private static float linToSrgb(float f) {
        return f <= 0.0031308f ? f * 12.92f : (((float) Math.pow(f, 0.4166666567325592d)) * 1.055f) - 0.055f;
    }

    public static int mixOklab(int i, int i2, float f) {
        if (f <= 0.0f) {
            return i;
        }
        if (f >= 1.0f) {
            return i2;
        }
        float fSrgbToLin = srgbToLin(Color.red(i) / 255.0f);
        float fSrgbToLin2 = srgbToLin(Color.green(i) / 255.0f);
        float fSrgbToLin3 = srgbToLin(Color.blue(i) / 255.0f);
        float fSrgbToLin4 = srgbToLin(Color.red(i2) / 255.0f);
        float fSrgbToLin5 = srgbToLin(Color.green(i2) / 255.0f);
        float fSrgbToLin6 = srgbToLin(Color.blue(i2) / 255.0f);
        float fCbrt = (float) Math.cbrt((fSrgbToLin * 0.41222146f) + (fSrgbToLin2 * 0.53633255f) + (fSrgbToLin3 * 0.051445995f));
        float fCbrt2 = (float) Math.cbrt((fSrgbToLin * 0.2119035f) + (fSrgbToLin2 * 0.6806995f) + (fSrgbToLin3 * 0.10739696f));
        float fCbrt3 = (float) Math.cbrt((fSrgbToLin * 0.08830246f) + (fSrgbToLin2 * 0.28171885f) + (fSrgbToLin3 * 0.6299787f));
        float fCbrt4 = fCbrt + ((((float) Math.cbrt(((0.41222146f * fSrgbToLin4) + (0.53633255f * fSrgbToLin5)) + (0.051445995f * fSrgbToLin6))) - fCbrt) * f);
        float fCbrt5 = fCbrt2 + ((((float) Math.cbrt(((0.2119035f * fSrgbToLin4) + (0.6806995f * fSrgbToLin5)) + (0.10739696f * fSrgbToLin6))) - fCbrt2) * f);
        float fCbrt6 = fCbrt3 + ((((float) Math.cbrt(((fSrgbToLin4 * 0.08830246f) + (fSrgbToLin5 * 0.28171885f)) + (fSrgbToLin6 * 0.6299787f))) - fCbrt3) * f);
        float f2 = fCbrt4 * fCbrt4 * fCbrt4;
        float f3 = fCbrt5 * fCbrt5 * fCbrt5;
        float f4 = fCbrt6 * fCbrt6 * fCbrt6;
        return Color.argb((int) (Color.alpha(i) + ((Color.alpha(i2) - Color.alpha(i)) * f)), clamp255(linToSrgb(((4.0767417f * f2) - (3.3077116f * f3)) + (0.23096994f * f4))), clamp255(linToSrgb((((-1.268438f) * f2) + (2.6097574f * f3)) - (0.34131938f * f4))), clamp255(linToSrgb(((f2 * (-0.0041960864f)) - (f3 * 0.7034186f)) + (f4 * 1.7076147f))));
    }

    private static int clamp255(float f) {
        return Math.max(0, Math.min(255, Math.round(f * 255.0f)));
    }

    public void set(Code code) {
        this.current = code;
        this.previous = null;
        this.progress = 1.0f;
    }

    public void setBuildOverride(float f) {
        this.buildOverride = f;
    }

    private static float introProgress(long j) {
        float[] fArr = RimTune.f1215v;
        float fMin = Math.min(1.0f, j / Math.max(100.0f, fArr[51]));
        float f = fArr[53] / 100.0f;
        if (f > 0.01f) {
            float f2 = NAT_HALF;
            fMin = fMin < f ? (fMin * f2) / f : f2 + (((fMin - f) * (1.0f - f2)) / Math.max(0.01f, 1.0f - f));
        }
        float fSpringP = springP(fMin * 0.467f);
        float f3 = fArr[52];
        if (f3 > 0.0f) {
            float f4 = U80;
            if (fMin > f4) {
                float fSpringP2 = springP(f4 * 0.467f);
                float fMin2 = Math.min(((springP((f4 + 0.002f) * 0.467f) - fSpringP2) / 0.002f) * (1.0f - f4), (1.0f - fSpringP2) * 3.0f);
                float f5 = (fMin - f4) / (1.0f - f4);
                float f6 = f5 * f5;
                float f7 = f6 * f5;
                float f8 = 3.0f * f6;
                fSpringP += (((((((f7 * 2.0f) - f8) + 1.0f) * fSpringP2) + (((f7 - (f6 * 2.0f)) + f5) * fMin2)) + (((f7 * (-2.0f)) + f8) * 1.0f)) - fSpringP) * f3;
            }
        }
        if (fMin >= 1.0f) {
            return 1.0f;
        }
        return Math.min(1.0f, fSpringP);
    }

    private static float springP(float f) {
        double d = f;
        double dSqrt = Math.sqrt(0.18999999999999995d) * 10.134169850289656d * d;
        return (float) Math.min(1.0d, (1.0d - (Math.exp((-9.120752865260691d) * d) * (Math.cos(dSqrt) + ((0.9d / Math.sqrt(0.18999999999999995d)) * Math.sin(dSqrt))))) * 1.02d);
    }

    static {
        float f;
        float f2;
        int i = 0;
        int i2 = 0;
        while (true) {
            f = 0.5f;
            if (i2 > 1000) {
                break;
            }
            float f3 = i2 / 1000.0f;
            if (springP(f3 * 0.467f) >= 0.5f) {
                f = f3;
                break;
            }
            i2++;
        }
        while (true) {
            f2 = 0.8f;
            if (i > 1000) {
                break;
            }
            float f4 = i / 1000.0f;
            if (springP(f4 * 0.467f) >= 0.8f) {
                f2 = f4;
                break;
            }
            i++;
        }
        NAT_HALF = f;
        U80 = f2;
    }

    public long buildElapsedMs() {
        if (this.mode != 2) {
            return LongCompanionObject.MAX_VALUE;
        }
        if (this.swapStart == 0) {
            return -1L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.swapStart;
        return jCurrentTimeMillis > 1500 ? LongCompanionObject.MAX_VALUE : jCurrentTimeMillis;
    }

    public float buildProgress() {
        if (this.mode == 2) {
            return Math.max(0.0f, this.progress);
        }
        return 1.0f;
    }

    public void assemble(Code code) {
        this.current = code;
        this.previous = null;
        this.mode = 2;
        this.progress = 0.0f;
        this.swapStart = 0L;
        this.introAt = 0L;
        this.introRunning = false;
    }

    public void swapTo(Code code) {
        swapTo(code, 0);
    }

    public static boolean introPlays() {
        return QrRender.hasVertices() && SharedConfig.getDevicePerformanceClass() == 2;
    }

    public boolean inIntro() {
        return this.mode == 2 && this.progress < 1.0f;
    }

    public void replaceSilently(Code code) {
        this.current = code;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void swapTo(Code code, int i) {
        Code code2;
        if (this.current == null) {
            set(code);
            return;
        }
        if (i == 0 && !QrRender.hasVertices()) {
            i = 1;
        }
        if (this.progress >= 1.0f || (code2 = this.previous) == null) {
            code2 = this.current;
        }
        this.previous = code2;
        this.current = code;
        this.progress = 0.0f;
        this.mode = i;
        this.swapStart = System.currentTimeMillis();
        boolean[] zArr = this.spawned;
        if (zArr != null) {
            int length = zArr.length;
            int i2 = this.previous.f1204n;
            if (length < i2 * i2) {
                int i3 = this.previous.f1204n;
                this.spawned = new boolean[i3 * i3];
            } else {
                Arrays.fill(zArr, false);
            }
        }
        this.burstPending = i == 1;
    }

    public boolean isAnimating() {
        return this.progress < 1.0f || this.pcount > 0;
    }

    private int rgb() {
        return this.color & 16777215;
    }

    public void setColor(int i) {
        if (this.color != i || this.filter == null) {
            this.color = i;
            this.filter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
    }

    private float front(Code code, float f) {
        float f2 = 1.0f - f;
        return ((1.0f - ((f2 * f2) * ((f2 * 0.45f) + 0.55f))) * (code.f1204n + 6.0f)) - 1.5f;
    }

    public static float logoShare(Code code) {
        if (code == null) {
            return 0.0f;
        }
        return code.imageSize / code.size;
    }

    public float logoSize(float f) {
        if (this.current == null) {
            return 0.0f;
        }
        return (r1.imageSize * f) / r1.size;
    }

    public void draw(Canvas canvas, float f, float f2, float f3) {
        long j;
        float f4;
        float f5;
        float f6;
        Canvas canvas2;
        Code code;
        long jCurrentTimeMillis = System.currentTimeMillis();
        float fMin = this.lastFrame == 0 ? 0.016f : Math.min(0.05f, (jCurrentTimeMillis - r6) / 1000.0f);
        this.lastFrame = jCurrentTimeMillis;
        if (this.current == null) {
            return;
        }
        if (this.mode == 2 && this.progress < 1.0f && canvas.isHardwareAccelerated() && !introPlays()) {
            if (this.swapStart == 0) {
                this.swapStart = jCurrentTimeMillis;
            }
            this.progress = 1.0f;
            this.introRunning = false;
        }
        int i = this.mode;
        long j2 = 450;
        if (i != 1 && i == 2) {
            j2 = 380;
        }
        float f7 = this.progress;
        if (f7 < 1.0f) {
            j = 0;
            if (this.swapStart == 0) {
                this.swapStart = (i == 2 ? this.assembleDelay : 0L) + jCurrentTimeMillis;
            }
        } else {
            j = 0;
        }
        if (i == 2 && (this.buildOverride >= 0.0f || this.introRunning)) {
            if (this.introAt == j) {
                this.introAt = jCurrentTimeMillis;
            }
            this.introRunning = true;
            float fMax = Math.max(f7, introProgress(jCurrentTimeMillis - this.introAt));
            this.progress = fMax;
            if (fMax >= 1.0f) {
                this.introRunning = false;
            }
        } else if (f7 < 1.0f) {
            this.progress = Math.min(1.0f, (jCurrentTimeMillis - this.swapStart) / j2);
        }
        this.maskPaint.setColorFilter(this.filter);
        float f8 = f3 / 2.0f;
        this.cardCx = f + f8;
        this.cardCy = f8 + f2;
        this.codeSize = f3;
        this.codeTop = f2;
        int i2 = this.mode;
        if (i2 == 2) {
            float f9 = this.progress;
            if (f9 < 1.0f) {
                canvas2 = canvas;
                drawAssemble(canvas2, this.current, f, f2, f3, f9);
                drawParticles(canvas2, fMin);
            } else {
                f4 = f;
                f6 = f3;
                f5 = 0.0f;
            }
        } else {
            f4 = f;
            f5 = 0.0f;
            f6 = f3;
        }
        if (i2 == 1 && (code = this.previous) != null && this.progress < 1.0f) {
            if (this.burstPending) {
                this.burstPending = false;
                burstAll(code, f4, f2, f6);
            }
            float fMax2 = Math.max(f5, this.progress / 0.92f);
            if (fMax2 > f5) {
                float fPopScale = popScale(fMax2);
                canvas.save();
                canvas.scale(fPopScale, fPopScale, this.cardCx, this.cardCy);
                drawAssemble(canvas, this.current, f4, f2, f6, fMax2);
                canvas.restore();
            }
        } else {
            if (this.progress >= 1.0f || this.previous == null) {
                canvas2 = canvas;
                drawCode(canvas2, this.current, f, f2, f3, Float.NaN, true);
                drawParticles(canvas2, fMin);
            }
            drawSwap(canvas, f, f2, f3);
        }
        canvas2 = canvas;
        drawParticles(canvas2, fMin);
    }

    private void drawCode(Canvas canvas, Code code, float f, float f2, float f3, float f4, boolean z) {
        int i = code.size;
        if (z) {
            this.dst.set(f, f2, f + f3, f3 + f2);
            canvas.drawBitmap(code.mask, code.maskSrc, this.dst, this.maskPaint);
        }
    }

    private void drawSwap(Canvas canvas, float f, float f2, float f3) {
        Code code;
        Canvas canvas2;
        float f4;
        Code code2 = this.previous;
        Code code3 = this.current;
        prepareHalftone(code2);
        prepareHalftone(code3);
        ensureBuffers(Math.max(code2.hm, code3.hm));
        if (this.oldShaderFor != code2.mask) {
            Bitmap bitmap = code2.mask;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            this.oldShader = bitmapShader;
            this.oldPaint.setShader(bitmapShader);
            this.oldShaderFor = code2.mask;
        }
        if (this.maskShaderFor != code3.mask) {
            Bitmap bitmap2 = code3.mask;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader2 = new BitmapShader(bitmap2, tileMode2, tileMode2);
            this.maskShader = bitmapShader2;
            this.modPaint.setShader(bitmapShader2);
            this.maskShaderFor = code3.mask;
        }
        float fFront = front(code2, this.progress);
        float fFront2 = front(code3, this.progress);
        float f5 = f3 / code2.size;
        float f6 = f3 / code3.size;
        int i = 0;
        int i2 = 0;
        while (i < code2.hm) {
            if (code2.hon[i]) {
                int[] iArr = code2.hsrc;
                int i3 = i * 4;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                int i6 = (i5 * code2.f1204n) + i4;
                float f7 = ((r10 - 1) - i5) + (code2.noise[i6] * 3.2f);
                if (fFront > f7) {
                    boolean[] zArr = this.spawned;
                    if (!zArr[i6]) {
                        zArr[i6] = true;
                        int i7 = code2.pad;
                        float f8 = code2.cell;
                        spawn(f + ((i7 + ((i4 + 0.5f) * f8)) * f5), f2 + ((i7 + ((i5 + 0.5f) * f8)) * f5), f8 * f5);
                    }
                    f4 = fFront;
                } else {
                    float fMin = 1.0f - Math.min(1.0f, (f7 - fFront) / 2.2f);
                    float fSin = fMin > 0.0f ? ((float) Math.sin((i4 * 13) + (i5 * 7) + (this.progress * 60.0f))) * AndroidUtilities.dpf2(1.4f) * fMin : 0.0f;
                    float fDpf2 = (-fMin) * AndroidUtilities.dpf2(1.5f);
                    int i8 = code2.pad;
                    f4 = fFront;
                    float f9 = code2.cell;
                    float f10 = i8 + (i4 * f9);
                    float f11 = i8 + (i5 * f9);
                    float f12 = f10 + f9;
                    float f13 = f11 + f9;
                    quad(this.dv, this.dt, this.dc, i2, f + (f10 * f5) + fSin, f2 + (f11 * f5) + fDpf2, f + (f12 * f5) + fSin, (f13 * f5) + f2 + fDpf2, f10, f11, f12, f13, (((int) ((1.0f - (fMin * 0.25f)) * 255.0f)) << 24) | rgb());
                    i2++;
                }
            } else {
                f4 = fFront;
            }
            i++;
            fFront = f4;
        }
        float f14 = 1.0f;
        boolean z = true;
        int i9 = 0;
        int i10 = 0;
        while (i9 < code3.hm) {
            if (code3.hon[i9]) {
                int[] iArr2 = code3.hsrc;
                int i11 = i9 * 4;
                int i12 = iArr2[i11];
                int i13 = iArr2[i11 + 1];
                float f15 = ((r7 - 1) - i13) + (code3.noise[(i13 * code3.f1204n) + i12] * 3.2f) + 1.6f;
                if (fFront2 <= f15) {
                    z = false;
                } else {
                    float fMin2 = Math.min(f14, (fFront2 - f15) / 2.4f);
                    int i14 = code3.pad;
                    float f16 = code3.cell;
                    float f17 = i14 + (i12 * f16);
                    float f18 = i14 + (i13 * f16);
                    float f19 = f17 + f16;
                    float f20 = f18 + f16;
                    float fBackOut = (backOut(fMin2) * 0.65f) + 0.35f;
                    if (fMin2 >= 1.0f || (fMin2 > 0.4f && Math.abs(fBackOut - 1.0f) < 0.01f)) {
                        quad(this.mv, this.mt, this.mc, i10, f + (f17 * f6), f2 + (f18 * f6), f + (f19 * f6), f2 + (f20 * f6), f17, f18, f19, f20, rgb() | (-16777216));
                        i10++;
                    } else {
                        float f21 = ((f17 + f19) * 0.5f * f6) + f;
                        float f22 = ((f18 + f20) * 0.5f * f6) + f2;
                        float f23 = code3.cell * 0.5f * f6 * fBackOut;
                        quad(this.mv, this.mt, this.mc, i10, f21 - f23, f22 - f23, f21 + f23, f22 + f23, f17, f18, f19, f20, (((int) (Math.min(1.0f, fMin2 * 2.5f) * 255.0f)) << 24) | rgb());
                        i10++;
                        z = false;
                    }
                }
            }
            i9++;
            f14 = 1.0f;
        }
        if (i2 == 0 && z) {
            this.progress = 1.0f;
            this.dst.set(f, f2, f + f3, f2 + f3);
            canvas.drawBitmap(code3.mask, code3.maskSrc, this.dst, this.maskPaint);
            return;
        }
        if (i2 > 0) {
            code = code3;
            canvas.drawVertices(Canvas.VertexMode.TRIANGLES, i2 * 8, this.dv, 0, this.dt, 0, this.dc, 0, this.quadIdx, 0, i2 * 6, this.oldPaint);
        } else {
            code = code3;
        }
        if (i10 > 0) {
            canvas2 = canvas;
            canvas2.drawVertices(Canvas.VertexMode.TRIANGLES, i10 * 8, this.mv, 0, this.mt, 0, this.mc, 0, this.quadIdx, 0, i10 * 6, this.modPaint);
        } else {
            canvas2 = canvas;
        }
        int i15 = code.pad;
        int i16 = code.logoFrom;
        float f24 = code.cell;
        int i17 = code.logoTo;
        canvas2.save();
        canvas2.clipRect(f + ((i15 + (i16 * f24)) * f6), f2 + ((i15 + (i16 * f24)) * f6), f + ((i15 + (i17 * f24)) * f6), ((i15 + (i17 * f24)) * f6) + f2);
        this.dst.set(f, f2, f + f3, f2 + f3);
        canvas2.drawBitmap(code.mask, code.maskSrc, this.dst, this.maskPaint);
        canvas2.restore();
    }

    private void drawCell(Canvas canvas, Code code, int i, int i2, float f, float f2, float f3, float f4, float f5) {
        int i3;
        int i4 = code.logoFrom;
        if (i < i4 || i >= (i3 = code.logoTo) || i2 < i4 || i2 >= i3) {
            int i5 = code.pad;
            float f6 = code.cell;
            this.src.set((int) (i5 + (i * f6)), (int) (i5 + (i2 * f6)), (int) Math.ceil(i5 + ((i + 1) * f6)), (int) Math.ceil(code.pad + ((i2 + 1) * code.cell)));
            float f7 = f + (((r1 + r8) / 2.0f) * f3);
            float f8 = f2 + (((r2 + r9) / 2.0f) * f3);
            float f9 = ((r8 - r1) / 2.0f) * f3 * f4;
            float f10 = ((r9 - r2) / 2.0f) * f3 * f4;
            this.dst.set(f7 - f9, f8 - f10, f7 + f9, f8 + f10);
            this.maskPaint.setAlpha((int) (f5 * 255.0f));
            Code code2 = this.previous;
            canvas.drawBitmap(code.mask, this.src, this.dst, this.maskPaint);
            this.maskPaint.setAlpha(255);
        }
    }

    private static boolean inFinder(Code code, int i, int i2) {
        if (i < 7 && i2 < 7) {
            return true;
        }
        int i3 = code.f1204n;
        if (i < i3 - 7 || i2 >= 7) {
            return i < 7 && i2 >= i3 - 7;
        }
        return true;
    }

    private void drawAssemble(Canvas canvas, Code code, float f, float f2, float f3, float f4) {
        float fMin;
        Code code2 = code;
        if (this.mode == 2) {
            drawVariant(canvas, code, f, f2, f3, f4);
            return;
        }
        float f5 = f3 / code2.size;
        float f6 = ((code2.f1204n - 1) / 2.0f) * 1.4142f;
        int i = 0;
        while (i < code2.f1204n) {
            int i2 = 0;
            while (true) {
                int i3 = code2.f1204n;
                if (i2 < i3) {
                    int i4 = (i3 * i) + i2;
                    if (code2.dark[i4] && !inFinder(code2, i2, i)) {
                        float fHypot = (f4 - ((((((float) Math.hypot(i2 - r11, i - r11)) / f6) * 0.52f) + 0.05f) + (code2.noise[i4] * 0.06f))) / 0.367f;
                        if (fHypot > 0.0f) {
                            if (fHypot >= 1.0f) {
                                fMin = 1.0f;
                            } else {
                                float f7 = 1.0f - fHypot;
                                fMin = 1.0f - ((f7 * f7) * f7);
                            }
                            float fPop = this.mode == 2 ? (0.6f * fMin) + 0.4f : pop(fHypot);
                            if (this.mode != 2) {
                                fMin = Math.min(1.0f, fHypot * 6.0f);
                            }
                            drawCell(canvas, code2, i2, i, f, f2, f5, fPop, fMin);
                        }
                    }
                    i2++;
                    code2 = code;
                }
            }
            i++;
            code2 = code;
        }
        drawFinders(canvas, code, f, f2, f3, f4);
    }

    private static float fract(float f) {
        return f - ((float) Math.floor(f));
    }

    private static float easeOut(float f) {
        float fMax = 1.0f - Math.max(0.0f, Math.min(1.0f, f));
        return 1.0f - ((fMax * fMax) * fMax);
    }

    private static synchronized Bitmap atlas() {
        try {
            if (atlas == null) {
                atlas = Bitmap.createBitmap(384, 48, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(atlas);
                Paint paint = new Paint(1);
                paint.setColor(-1);
                RectF rectF = new RectF();
                for (int i = 0; i < 8; i++) {
                    rectF.set((i * 48) + 1.5f, 1.5f, (r7 + 48) - 1.5f, 46.5f);
                    float f = (1.0f - ((i * 0.7f) / 7.0f)) * 22.5f;
                    canvas.drawRoundRect(rectF, f, f, paint);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return atlas;
    }

    private void ensureBuffers(int i) {
        float[] fArr = this.dv;
        if (fArr == null || fArr.length < i * 8) {
            int i2 = i * 8;
            this.dv = new float[i2];
            this.dt = new float[i2];
            int i3 = i * 4;
            this.dc = new int[i3];
            this.mv = new float[i2];
            this.mt = new float[i2];
            this.mc = new int[i3];
            this.quadIdx = new short[i * 6];
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = i4 * 4;
                short[] sArr = this.quadIdx;
                int i6 = i4 * 6;
                short s = (short) i5;
                sArr[i6] = s;
                sArr[i6 + 1] = (short) (i5 + 1);
                short s2 = (short) (i5 + 2);
                sArr[i6 + 2] = s2;
                sArr[i6 + 3] = s;
                sArr[i6 + 4] = s2;
                sArr[i6 + 5] = (short) (i5 + 3);
            }
        }
    }

    private static void quad(float[] fArr, float[] fArr2, int[] iArr, int i, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i2) {
        int i3 = i * 8;
        fArr[i3] = f;
        int i4 = i3 + 1;
        fArr[i4] = f2;
        int i5 = i3 + 2;
        fArr[i5] = f3;
        int i6 = i3 + 3;
        fArr[i6] = f2;
        int i7 = i3 + 4;
        fArr[i7] = f3;
        int i8 = i3 + 5;
        fArr[i8] = f4;
        int i9 = i3 + 6;
        fArr[i9] = f;
        int i10 = i3 + 7;
        fArr[i10] = f4;
        fArr2[i3] = f5;
        fArr2[i4] = f6;
        fArr2[i5] = f7;
        fArr2[i6] = f6;
        fArr2[i7] = f7;
        fArr2[i8] = f8;
        fArr2[i9] = f5;
        fArr2[i10] = f8;
        int i11 = i * 4;
        iArr[i11] = i2;
        iArr[i11 + 1] = i2;
        iArr[i11 + 2] = i2;
        iArr[i11 + 3] = i2;
    }

    private void drawHalftone(Canvas canvas, Code code, float f, float f2, float f3, float f4) {
        float f5;
        float f6 = f4;
        prepareHalftone(code);
        int i = code.hm * 2;
        int i2 = code.f1204n;
        ensureBuffers(i + (i2 * i2));
        if (this.maskShaderFor != code.mask) {
            Bitmap bitmap = code.mask;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            this.maskShader = bitmapShader;
            this.modPaint.setShader(bitmapShader);
            this.maskShaderFor = code.mask;
        }
        float f7 = f3 / code.size;
        float f8 = 0.0f;
        float f9 = 1.0f;
        float fMin = Math.min(1.0f, Math.max(0.0f, f6) / 0.1f);
        float f10 = 0.5f;
        float f11 = code.cell * 0.5f;
        int i3 = 0;
        boolean z = true;
        int i4 = 0;
        int i5 = 0;
        while (i3 < code.hm) {
            float fEaseInOutPoly = easeInOutPoly((f6 - code.hdelay[i3]) / 0.434f);
            float f12 = f8;
            float f13 = (code.hcx[i3] * f7) + f;
            float f14 = f9;
            float f15 = (code.hcy[i3] * f7) + f2;
            float f16 = f10;
            if (code.hon[i3]) {
                float f17 = fEaseInOutPoly > 0.75f ? (fEaseInOutPoly - 0.75f) * 4.0f : f12;
                if (f17 < f14) {
                    float f18 = f11 * f7 * ((0.8f * fEaseInOutPoly) + 0.2f);
                    int iMin = Math.min(7, (int) ((fEaseInOutPoly * 7.0f) + f16));
                    float f19 = (f14 - f17) * fMin;
                    if (f19 > 0.004f) {
                        f5 = f7;
                        quad(this.dv, this.dt, this.dc, i4, f13 - f18, f15 - f18, f13 + f18, f15 + f18, iMin * 48, code.atlasY, r12 + 48, r4 + 48, (((int) (f19 * 255.0f)) << 24) | rgb());
                        i4++;
                    } else {
                        f5 = f7;
                    }
                    z = false;
                } else {
                    f5 = f7;
                }
                if (f17 > f12) {
                    int i6 = code.pad;
                    int[] iArr = code.hsrc;
                    float f20 = iArr[i3 * 4];
                    float f21 = code.cell;
                    float f22 = i6 + (f20 * f21);
                    float f23 = i6 + (iArr[r4 + 1] * f21);
                    float f24 = f22 + f21;
                    float f25 = f23 + f21;
                    quad(this.mv, this.mt, this.mc, i5, f + (f22 * f5), f2 + (f23 * f5), f + (f24 * f5), f2 + (f25 * f5), f22, f23, f24, f25, (((int) (255.0f * fMin)) << 24) | rgb());
                    i5++;
                }
            } else {
                f5 = f7;
                boolean z2 = fEaseInOutPoly < f14 ? false : z;
                float f26 = (f14 - fEaseInOutPoly) * 0.2f;
                float f27 = 0.9f * fMin * (fEaseInOutPoly < 0.7f ? f14 : f14 - ((fEaseInOutPoly - 0.7f) / 0.3f));
                if (f26 <= 0.01f || f27 <= 0.004f) {
                    z = z2;
                } else {
                    float f28 = f11 * f5 * f26;
                    quad(this.dv, this.dt, this.dc, i4, f13 - f28, f15 - f28, f13 + f28, f15 + f28, 0.0f, code.atlasY, 48.0f, r6 + 48, (((int) (f27 * 255.0f)) << 24) | rgb());
                    z = z2;
                    i4++;
                }
            }
            i3++;
            f6 = f4;
            f8 = f12;
            f9 = f14;
            f10 = f16;
            f7 = f5;
        }
        float f29 = f7;
        float f30 = f8;
        float f31 = f9;
        float fEaseOut = easeOut((f4 - 0.05f) / 0.45f);
        if (fEaseOut > f30) {
            int i7 = code.logoFrom;
            while (i7 < code.logoTo) {
                int i8 = i5;
                for (int i9 = code.logoFrom; i9 < code.logoTo; i9++) {
                    if (code.dark[(code.f1204n * i7) + i9]) {
                        int i10 = code.pad;
                        float f32 = code.cell;
                        float f33 = i10 + (i9 * f32);
                        float f34 = i10 + (i7 * f32);
                        quad(this.mv, this.mt, this.mc, i8, f + (f33 * f29), f2 + (f34 * f29), f + ((f33 + f32) * f29), f2 + ((f34 + f32) * f29), f33, f34, f33 + f32, f34 + f32, (((int) ((fMin * 255.0f) * fEaseOut)) << 24) | rgb());
                        i8++;
                    }
                }
                i7++;
                i5 = i8;
            }
        }
        if (z && fMin >= f31) {
            this.dst.set(f, f2, f + f3, f2 + f3);
            canvas.drawBitmap(code.mask, code.maskSrc, this.dst, this.maskPaint);
            return;
        }
        if (i4 > 0) {
            int i11 = i5 * 8;
            int i12 = i4 * 8;
            System.arraycopy(this.dv, 0, this.mv, i11, i12);
            System.arraycopy(this.dt, 0, this.mt, i11, i12);
            System.arraycopy(this.dc, 0, this.mc, i5 * 4, i4 * 4);
        }
        int i13 = i5 + i4;
        if (i13 > 0) {
            canvas.drawVertices(Canvas.VertexMode.TRIANGLES, i13 * 8, this.mv, 0, this.mt, 0, this.mc, 0, this.quadIdx, 0, i13 * 6, this.modPaint);
        }
    }

    private void drawVariant(Canvas canvas, Code code, float f, float f2, float f3, float f4) {
        drawHalftone(canvas, code, f, f2, f3, f4);
    }

    private void drawFinders(Canvas canvas, Code code, float f, float f2, float f3, float f4) {
        float f5 = f3 / code.size;
        int i = 0;
        while (i < 3) {
            int i2 = i == 1 ? code.f1204n - 7 : 0;
            int i3 = i == 2 ? code.f1204n - 7 : 0;
            float f6 = f4 / 0.32f;
            if (f6 > 0.0f) {
                int i4 = code.pad;
                float f7 = code.cell;
                float f8 = ((i4 + (i2 * f7)) * f5) + f;
                float f9 = f2 + ((i4 + (i3 * f7)) * f5);
                float f10 = f + ((i4 + ((i2 + 7) * f7)) * f5);
                float f11 = f2 + ((i4 + ((i3 + 7) * f7)) * f5);
                float fPop = pop(f6);
                canvas.save();
                canvas.scale(fPop, fPop, (f8 + f10) / 2.0f, (f9 + f11) / 2.0f);
                canvas.clipRect(f8 - 1.0f, f9 - 1.0f, f10 + 1.0f, f11 + 1.0f);
                this.dst.set(f, f2, f + f3, f2 + f3);
                this.maskPaint.setAlpha(255);
                canvas.drawBitmap(code.mask, code.maskSrc, this.dst, this.maskPaint);
                canvas.restore();
            }
            i++;
        }
        this.maskPaint.setAlpha(255);
    }

    private int add() {
        int i = this.pcount;
        if (i >= 2400) {
            return -1;
        }
        this.pcount = i + 1;
        return i;
    }

    private void spawn(float f, float f2, float f3) {
        float f4 = f - this.cardCx;
        float f5 = f2 - this.cardCy;
        float f6 = 1.0f;
        float fMax = Math.max(1.0f, (float) Math.hypot(f4, f5));
        float f7 = f4 / fMax;
        float f8 = f5 / fMax;
        float fNextFloat = this.random.nextFloat();
        int i = fNextFloat < 0.12f ? 2 : fNextFloat < 0.7f ? 3 : 5;
        int i2 = 0;
        while (i2 < i) {
            int iAdd = add();
            if (iAdd < 0) {
                return;
            }
            int i3 = 1;
            boolean z = i2 > 0 && this.random.nextFloat() < 0.3f;
            byte[] bArr = this.pkind;
            if (z) {
                i3 = 2;
            } else if (this.random.nextFloat() >= 0.14f) {
                i3 = 0;
            }
            bArr[iAdd] = (byte) i3;
            this.px[iAdd] = f + ((this.random.nextFloat() - 0.5f) * f3 * 0.5f);
            this.py[iAdd] = f2 + ((this.random.nextFloat() - 0.5f) * f3 * 0.5f);
            if (z) {
                this.psize[iAdd] = AndroidUtilities.dpf2((this.random.nextFloat() * 0.9f) + 0.9f);
            } else if (i2 == 0 && fNextFloat < 0.12f) {
                this.psize[iAdd] = ((this.random.nextFloat() * 0.45f) + 1.25f) * f3;
            } else {
                this.psize[iAdd] = ((this.random.nextFloat() * 0.55f) + 0.3f) * f3;
            }
            float fDp = AndroidUtilities.dp(110.0f) + (this.random.nextFloat() * AndroidUtilities.dp(150.0f));
            float fNextFloat2 = (this.random.nextFloat() * 0.35f) + 0.45f;
            float f9 = f6;
            this.pvx[iAdd] = (f7 * fDp * fNextFloat2) + ((this.random.nextFloat() - 0.5f) * AndroidUtilities.dp(90.0f));
            this.pvy[iAdd] = (((f8 * fDp) * fNextFloat2) - (fDp * (f9 - fNextFloat2))) - AndroidUtilities.dp(30.0f);
            this.plife[iAdd] = (this.random.nextFloat() * 0.2f) + 0.3f;
            this.page[iAdd] = 0.0f;
            this.prot[iAdd] = this.random.nextFloat() * 90.0f;
            this.pvr[iAdd] = (this.random.nextFloat() - 0.5f) * 720.0f;
            this.pfloor[iAdd] = Float.NaN;
            i2++;
            f6 = f9;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x012e, code lost:
    
        r4 = r4 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void burstAll(Code code, float f, float f2, float f3) {
        int i;
        int i2;
        float f4 = f3 / code.size;
        int i3 = 0;
        while (i3 < code.f1204n) {
            int i4 = 0;
            while (true) {
                int i5 = code.f1204n;
                if (i4 < i5) {
                    if (code.dark[(i5 * i3) + i4] && ((i4 < (i = code.logoFrom) || i4 >= (i2 = code.logoTo) || i3 < i || i3 >= i2) && this.random.nextFloat() >= 0.4f)) {
                        int iAdd = add();
                        if (iAdd < 0) {
                            return;
                        }
                        int i6 = code.pad;
                        float f5 = code.cell;
                        float f6 = f + ((i6 + ((i4 + 0.5f) * f5)) * f4);
                        float f7 = f2 + ((i6 + ((i3 + 0.5f) * f5)) * f4);
                        float f8 = f6 - this.cardCx;
                        float fMax = Math.max(1.0f, Math.abs(f8));
                        float fDp = AndroidUtilities.dp(1000.0f) + (this.random.nextFloat() * AndroidUtilities.dp(900.0f));
                        float radians = (float) Math.toRadians((this.random.nextFloat() - 0.5f) * 36.0f);
                        this.pkind[iAdd] = (byte) (this.random.nextFloat() < 0.12f ? 1 : 0);
                        this.px[iAdd] = f6;
                        this.py[iAdd] = f7;
                        this.psize[iAdd] = code.cell * f4 * ((this.random.nextFloat() * 0.6f) + 0.7f);
                        double d = radians;
                        this.pvx[iAdd] = (((float) Math.sin(d)) * fDp) + (Math.signum(f8) * Math.min(1.0f, fMax / (f3 * 0.5f)) * fDp * 0.18f);
                        this.pvy[iAdd] = (-((float) Math.cos(d))) * fDp;
                        this.plife[iAdd] = (this.random.nextFloat() * 0.06f) + 0.24f;
                        this.page[iAdd] = (-(((code.f1204n - 1) - i3) / 4)) * 0.018f;
                        this.prot[iAdd] = this.random.nextFloat() * 90.0f;
                        this.pvr[iAdd] = (this.random.nextFloat() - 0.5f) * 720.0f;
                        this.pfloor[iAdd] = 1.0f;
                    }
                    i4++;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawParticles(Canvas canvas, float f) {
        float f2;
        float f3;
        float fMax;
        float f4;
        float fMin;
        float fDp;
        for (int i = this.pcount - 1; i >= 0; i--) {
            float[] fArr = this.page;
            float f5 = fArr[i] + f;
            fArr[i] = f5;
            float[] fArr2 = this.plife;
            if (f5 >= fArr2[i]) {
                int i2 = this.pcount - 1;
                this.pcount = i2;
                float[] fArr3 = this.px;
                fArr3[i] = fArr3[i2];
                float[] fArr4 = this.py;
                fArr4[i] = fArr4[i2];
                float[] fArr5 = this.pvx;
                fArr5[i] = fArr5[i2];
                float[] fArr6 = this.pvy;
                fArr6[i] = fArr6[i2];
                float[] fArr7 = this.psize;
                fArr7[i] = fArr7[i2];
                fArr2[i] = fArr2[i2];
                fArr[i] = fArr[i2];
                float[] fArr8 = this.prot;
                fArr8[i] = fArr8[i2];
                float[] fArr9 = this.pvr;
                fArr9[i] = fArr9[i2];
                float[] fArr10 = this.pfloor;
                fArr10[i] = fArr10[i2];
                byte[] bArr = this.pkind;
                bArr[i] = bArr[i2];
            } else {
                boolean zIsNaN = Float.isNaN(this.pfloor[i]);
                if (!zIsNaN && this.page[i] < 0.0f) {
                    this.particlePaint.setColor(this.color);
                    this.particlePaint.setAlpha(255);
                    float f6 = this.psize[i];
                    RectF rectF = this.dst;
                    float f7 = this.px[i];
                    float f8 = f6 / 2.0f;
                    float f9 = this.py[i];
                    rectF.set(f7 - f8, f9 - f8, f7 + f8, f9 + f8);
                    float f10 = f6 * 0.3f;
                    canvas.drawRoundRect(this.dst, f10, f10, this.particlePaint);
                } else {
                    if (!zIsNaN) {
                        float fMax2 = Math.max(0.0f, 1.0f - (6.5f * f));
                        float[] fArr11 = this.pvx;
                        fArr11[i] = fArr11[i] * fMax2;
                        float[] fArr12 = this.pvy;
                        fArr12[i] = (fArr12[i] * fMax2) - (AndroidUtilities.dp(260.0f) * f);
                    } else {
                        float[] fArr13 = this.pvy;
                        fArr13[i] = fArr13[i] - (AndroidUtilities.dp(20.0f) * f);
                        float[] fArr14 = this.pvx;
                        fArr14[i] = fArr14[i] * (1.0f - (2.4f * f));
                        float[] fArr15 = this.pvy;
                        fArr15[i] = fArr15[i] * (1.0f - (3.0f * f));
                        if (!this.card.isEmpty() && this.py[i] < this.card.top - AndroidUtilities.dp(56.0f)) {
                            float[] fArr16 = this.pvy;
                            fArr16[i] = fArr16[i] * 0.85f;
                        }
                    }
                    float[] fArr17 = this.px;
                    fArr17[i] = fArr17[i] + (this.pvx[i] * f);
                    float[] fArr18 = this.py;
                    fArr18[i] = fArr18[i] + (this.pvy[i] * f);
                    float[] fArr19 = this.prot;
                    fArr19[i] = fArr19[i] + (this.pvr[i] * f);
                    float f11 = this.page[i] / this.plife[i];
                    if (zIsNaN) {
                        if (f11 < 0.08f) {
                            fMax = f11 / 0.08f;
                            if (zIsNaN) {
                            }
                            float f12 = 1.0f - f11;
                            float f13 = this.psize[i] * (1.0f - ((1.0f - (f12 * f12)) * (zIsNaN ? 0.85f : 0.35f)));
                            if (this.pkind[i] != 2) {
                            }
                        } else {
                            f2 = f11 - 0.08f;
                            f3 = 0.92f;
                            fMax = 1.0f - (f2 / f3);
                            if (zIsNaN) {
                            }
                            float f122 = 1.0f - f11;
                            float f132 = this.psize[i] * (1.0f - ((1.0f - (f122 * f122)) * (zIsNaN ? 0.85f : 0.35f)));
                            if (this.pkind[i] != 2) {
                            }
                        }
                    } else if (f11 < 0.35f) {
                        fMax = 1.0f;
                        if (zIsNaN && !this.card.isEmpty()) {
                            fDp = (this.card.top - AndroidUtilities.dp(56.0f)) - this.py[i];
                            if (fDp > 0.0f) {
                                fMax *= Math.max(0.0f, 1.0f - (fDp / AndroidUtilities.dp(24.0f)));
                            }
                        }
                        float f1222 = 1.0f - f11;
                        float f1322 = this.psize[i] * (1.0f - ((1.0f - (f1222 * f1222)) * (zIsNaN ? 0.85f : 0.35f)));
                        if (this.pkind[i] != 2) {
                            this.particlePaint.setColor(-1);
                            float f14 = fMax * 255.0f;
                            this.particlePaint.setAlpha((int) (0.9f * f14));
                            canvas.drawCircle(this.px[i], this.py[i], f1322, this.particlePaint);
                            this.particlePaint.setAlpha((int) (f14 * 0.22f));
                            canvas.drawCircle(this.px[i], this.py[i], f1322 * 2.6f, this.particlePaint);
                        } else {
                            if (this.card.isEmpty()) {
                                f4 = 0.3f;
                                fMin = 0.0f;
                            } else {
                                RectF rectF2 = this.card;
                                float f15 = rectF2.left;
                                float f16 = this.px[i];
                                float fMax3 = Math.max(f15 - f16, Math.max(0.0f, f16 - rectF2.right));
                                RectF rectF3 = this.card;
                                float f17 = rectF3.top;
                                f4 = 0.3f;
                                float f18 = this.py[i];
                                fMin = Math.min(1.0f, Math.max(fMax3, Math.max(f17 - f18, Math.max(0.0f, f18 - rectF3.bottom))) / AndroidUtilities.dp(36.0f));
                            }
                            Paint paint = this.particlePaint;
                            int iMixOklab = this.color;
                            if (fMin > 0.0f) {
                                iMixOklab = mixOklab(iMixOklab, -1, fMin);
                            }
                            paint.setColor(iMixOklab);
                            this.particlePaint.setAlpha((int) (255.0f * fMax));
                            canvas.save();
                            canvas.rotate(this.prot[i], this.px[i], this.py[i]);
                            RectF rectF4 = this.dst;
                            float f19 = this.px[i];
                            float f20 = f1322 / 2.0f;
                            float f21 = this.py[i];
                            rectF4.set(f19 - f20, f21 - f20, f19 + f20, f21 + f20);
                            float f22 = f1322 * f4;
                            canvas.drawRoundRect(this.dst, f22, f22, this.particlePaint);
                            if (this.pkind[i] == 1) {
                                float fSin = (float) Math.sin(((double) Math.min(1.0f, f11 * 1.6f)) * 3.141592653589793d);
                                this.particlePaint.setColor(-1);
                                this.particlePaint.setAlpha((int) (fMax * 200.0f * fSin));
                                canvas.drawRoundRect(this.dst, f22, f22, this.particlePaint);
                            }
                            canvas.restore();
                        }
                    } else {
                        f2 = f11 - 0.35f;
                        f3 = 0.65f;
                        fMax = 1.0f - (f2 / f3);
                        if (zIsNaN) {
                            fDp = (this.card.top - AndroidUtilities.dp(56.0f)) - this.py[i];
                            if (fDp > 0.0f) {
                            }
                        }
                        float f12222 = 1.0f - f11;
                        float f13222 = this.psize[i] * (1.0f - ((1.0f - (f12222 * f12222)) * (zIsNaN ? 0.85f : 0.35f)));
                        if (this.pkind[i] != 2) {
                        }
                    }
                }
            }
        }
    }
}
