package org.telegram.ui.QrShare;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import com.exteragram.messenger.utils.ui.QrGlassUiHelper;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
final class RimPainter {
    static float tiltBal;
    static float tiltRot;

    /* JADX INFO: renamed from: b */
    private final Path f1211b;
    private int builtVersion;
    private final Paint fill = new Paint(1);

    /* JADX INFO: renamed from: m */
    private final Matrix f1212m;

    /* JADX INFO: renamed from: r */
    private final RectF f1213r;
    private final RectF r2;
    private final Paint stroke;
    private final SweepGradient[] sweeps;

    public RimPainter() {
        Paint paint = new Paint(1);
        this.stroke = paint;
        this.sweeps = new SweepGradient[4];
        this.builtVersion = -1;
        this.f1212m = new Matrix();
        this.f1211b = new Path();
        this.f1213r = new RectF();
        this.r2 = new RectF();
        paint.setStyle(Paint.Style.STROKE);
    }

    private void ensure() {
        if (this.builtVersion == 1) {
            return;
        }
        this.builtVersion = 1;
        for (int i = 0; i < 4; i++) {
            float[] fArr = RimTune.f1214g[i];
            int[] iArr = new int[73];
            float[] fArr2 = new float[73];
            for (int i2 = 0; i2 < 73; i2++) {
                double radians = Math.toRadians(i2 * 5);
                float fPow = (float) Math.pow(Math.abs(Math.cos(radians)), fArr[6]);
                float f = (((float) Math.sin(radians)) < 0.0f ? fArr[11] : fArr[12]) / 100.0f;
                iArr[i2] = ((int) ((Math.max(0.0f, Math.min(1.0f, f + (((fArr[5] / 100.0f) - f) * fPow))) * 255.0f) + 0.5f)) << 24;
                fArr2[i2] = i2 / 72.0f;
            }
            this.sweeps[i] = new SweepGradient(0.0f, 0.0f, iArr, fArr2);
        }
    }

    public void draw(Canvas canvas, RectF rectF, float f, int i, float f2) {
        draw(canvas, rectF, f, i, f2, false);
    }

    public void draw(Canvas canvas, RectF rectF, float f, int i, float f2, boolean z) {
        byte b2;
        boolean z2;
        if (f2 <= 0.004f || QrGlassUiHelper.drawOutline(canvas, null, rectF, f, f2) || QrGlass.drawRim(canvas, rectF, f, i, f2)) {
            return;
        }
        ensure();
        float[] fArr = RimTune.f1214g[i];
        float f3 = tiltRot;
        float f4 = tiltBal;
        float fDpf2 = AndroidUtilities.dpf2(fArr[8]);
        this.f1213r.set(rectF);
        this.f1213r.inset(fDpf2, fDpf2);
        float fMax = Math.max(0.0f, f - fDpf2);
        this.f1212m.setRotate(f3);
        this.f1212m.postScale(this.f1213r.width() / Math.max(1.0f, this.f1213r.height()), 1.0f);
        this.f1212m.postTranslate(this.f1213r.centerX(), this.f1213r.centerY());
        float fDpf22 = AndroidUtilities.dpf2(fArr[4]);
        byte b3 = -1;
        if (fDpf22 > 0.05f) {
            this.sweeps[i].setLocalMatrix(this.f1212m);
            this.stroke.setShader(this.sweeps[i]);
            this.stroke.setColor(-1);
            this.stroke.setAlpha((int) (f2 * 255.0f));
            this.stroke.setStrokeWidth(fDpf22);
            this.r2.set(this.f1213r);
            float f5 = (-fDpf22) / 2.0f;
            this.r2.inset(f5, f5);
            float f6 = (fDpf22 / 2.0f) + fMax;
            canvas.drawRoundRect(this.r2, f6, f6, this.stroke);
            this.stroke.setShader(null);
        }
        double radians = Math.toRadians(f3);
        float f7 = (float) (-Math.sin(radians));
        float fCos = (float) Math.cos(radians);
        float fDpf23 = AndroidUtilities.dpf2(fArr[0]);
        float fDpf24 = AndroidUtilities.dpf2(fArr[2]);
        boolean z3 = true;
        float fMin = Math.min(1.0f, (fArr[1] / 100.0f) * (f4 + 1.0f));
        float fMin2 = Math.min(1.0f, (fArr[3] / 100.0f) * (1.0f - f4));
        boolean z4 = !z && QrRender.hasNodes();
        float fMin3 = Math.min(fMax, Math.min(this.f1213r.width(), this.f1213r.height()) / 2.0f);
        int i2 = 0;
        for (int i3 = 2; i2 < i3; i3 = 2) {
            float f8 = i2 == 0 ? fMin : fMin2;
            float f9 = i2 == 0 ? fDpf23 : -fDpf24;
            if (f8 <= 0.004f || Math.abs(f9) < 0.1f) {
                boolean z5 = z3;
                b2 = b3;
                z2 = z5;
            } else {
                this.r2.set(this.f1213r);
                this.r2.offset(f7 * f9, f9 * fCos);
                this.f1211b.rewind();
                this.f1211b.addRoundRect(this.r2, fMin3, fMin3, Path.Direction.CW);
                canvas.save();
                QrRender.clipOut(canvas, this.f1211b);
                if (z4) {
                    int iRound = Math.round(Math.min(1.0f, f8) * 255.0f);
                    this.fill.setColor(iRound | (iRound << 16) | (-16777216) | (iRound << 8));
                    this.fill.setAlpha((int) (f2 * 255.0f));
                    z2 = true;
                    QrRender.setBlendMode(this.fill, 1);
                    b2 = -1;
                } else {
                    z2 = true;
                    b2 = -1;
                    this.fill.setColor(-1);
                    this.fill.setAlpha((int) (f8 * 255.0f * f2));
                }
                canvas.drawRoundRect(this.f1213r, fMin3, fMin3, this.fill);
                if (z4) {
                    QrRender.setBlendMode(this.fill, 0);
                }
                canvas.restore();
            }
            i2++;
            byte b4 = b2;
            z3 = z2;
            b3 = b4;
        }
    }
}
