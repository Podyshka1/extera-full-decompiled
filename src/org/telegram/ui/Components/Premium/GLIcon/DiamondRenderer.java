package org.telegram.ui.Components.Premium.GLIcon;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.opengl.Matrix;
import androidx.mediarouter.media.GlobalMediaRouter;
import com.google.android.gms.cast.MediaTrack;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes7.dex */
final class DiamondRenderer {
    private static final String[] LIGHTS = {"crownGradient", "pavilionGradient", "lightSweep", "crownSweep", "rightCrownSweep", "leftCrownSweep", "pavilionSweep", "rightPavilionSweep", "leftPavilionSweep"};
    private float[] anchors;
    int appearance;
    private final int[] buffers;
    private float[] camera;
    private double clock;
    private final int[] counts;
    private float[] facetProjection;
    private final float[] frame;
    private float[] frames;
    private boolean hasPreviousYaw;
    private int height;
    private float horizontalScale;
    private final float[] inverse;
    private final HashMap<String, Integer> locations;
    private final float[] model;
    private float[] planes;
    private float previousPitch;
    private float previousYaw;
    private int program;
    private final int[] programs;
    private final float[] projection;
    private final int[] renderbuffers;
    float resolutionScale;
    private int samples;
    private float[] silhouetteWidths;
    private final int[] targets;
    private final int[] texture;
    private final int[] vaos;
    private int width;

    public DiamondRenderer(Context context) {
        this(context, 4);
    }

    public DiamondRenderer(Context context, int i) {
        this.programs = new int[3];
        this.vaos = new int[4];
        this.buffers = new int[3];
        this.counts = new int[3];
        this.targets = new int[2];
        this.renderbuffers = new int[2];
        this.texture = new int[1];
        this.locations = new HashMap<>();
        this.model = new float[16];
        this.inverse = new float[16];
        this.projection = new float[16];
        this.frame = new float[42];
        this.horizontalScale = 1.0f;
        this.resolutionScale = 1.0f;
        try {
            String[] strArr = {"diamond", "sparkle", "copy"};
            for (int i2 = 0; i2 < 3; i2++) {
                this.programs[i2] = DiamondProgram.create(context, source(context, i2 == 2 ? "fullscreenVertex" : strArr[i2] + "Vertex"), source(context, strArr[i2] + "Fragment"));
            }
            this.frames = data(context, "frames");
            this.planes = data(context, "planes");
            this.anchors = data(context, "anchors");
            this.silhouetteWidths = data(context, "widths");
            this.facetProjection = data(context, "facetProjection");
            float[] fArrData = data(context, "camera");
            this.camera = fArrData;
            if (this.anchors.length != 64 || this.silhouetteWidths.length != 91 || this.facetProjection.length != 4 || fArrData.length != 3) {
                throw new IllegalStateException("Invalid Swift diamond camera data");
            }
            if (this.frames.length != 60522 || this.planes.length != 68) {
                throw new IllegalStateException("Invalid Swift diamond animation data");
            }
            int[] iArr = this.vaos;
            GLES30.glGenVertexArrays(iArr.length, iArr, 0);
            int[] iArr2 = this.buffers;
            GLES20.glGenBuffers(iArr2.length, iArr2, 0);
            String[] strArr2 = {"vertices", MediaTrack.ROLE_MAIN, "small"};
            int i3 = 0;
            while (i3 < 3) {
                float[] fArrData2 = data(context, strArr2[i3]);
                int i4 = i3 == 0 ? 3 : 2;
                this.counts[i3] = fArrData2.length / (i4 * 4);
                GLES30.glBindVertexArray(this.vaos[i3]);
                GLES20.glBindBuffer(34962, this.buffers[i3]);
                FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArrData2.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
                floatBufferAsFloatBuffer.put(fArrData2).position(0);
                GLES20.glBufferData(34962, fArrData2.length * 4, floatBufferAsFloatBuffer, 35044);
                for (int i5 = 0; i5 < i4; i5++) {
                    GLES20.glEnableVertexAttribArray(i5);
                    GLES20.glVertexAttribPointer(i5, 4, 5126, false, i4 * 16, i5 * 16);
                }
                i3++;
            }
            GLES20.glGenFramebuffers(2, this.targets, 0);
            GLES20.glGenRenderbuffers(2, this.renderbuffers, 0);
            GLES20.glGenTextures(1, this.texture, 0);
            GLES20.glBindTexture(3553, this.texture[0]);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            int[] iArr3 = new int[1];
            GLES20.glGetIntegerv(36183, iArr3, 0);
            this.samples = Math.min(i, iArr3[0]);
        } catch (Exception e) {
            destroy();
            Constants$$ExternalSyntheticBUOutline0.m1006m("Cannot load Swift diamond", e);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0037 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] read(Context context, String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStreamOpen = context.getAssets().open(str);
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
            }
            throw th;
        }
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i == -1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    inputStreamOpen.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, i);
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } finally {
        }
    }

    private static String source(Context context, String str) {
        return new String(read(context, "shaders/diamond/" + str + ".glsl"), StandardCharsets.UTF_8);
    }

    private static float[] data(Context context, String str) throws IOException {
        byte[] bArr = read(context, "models/diamond_ios/" + str + ".bin");
        float[] fArr = new float[bArr.length / 4];
        ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asFloatBuffer().get(fArr);
        return fArr;
    }

    private void use(int i) {
        this.program = i;
        GLES20.glUseProgram(i);
    }

    private int loc(String str) {
        String str2 = this.program + ":" + str;
        Integer numValueOf = this.locations.get(str2);
        if (numValueOf == null) {
            numValueOf = Integer.valueOf(GLES20.glGetUniformLocation(this.program, str));
            this.locations.put(str2, numValueOf);
        }
        return numValueOf.intValue();
    }

    private void vector(String str, float f, float f2, float f3, float f4) {
        GLES20.glUniform4f(loc("u." + str), f, f2, f3, f4);
    }

    private void matrix(String str, float[] fArr) {
        GLES20.glUniformMatrix4fv(loc("u." + str), 1, false, fArr, 0);
    }

    private void resize(int i, int i2) {
        if (i == this.width && i2 == this.height) {
            return;
        }
        this.width = i;
        this.height = i2;
        GLES20.glBindFramebuffer(36160, this.targets[0]);
        int i3 = 0;
        while (true) {
            int i4 = 36064;
            if (i3 < 2) {
                GLES20.glBindRenderbuffer(36161, this.renderbuffers[i3]);
                GLES30.glRenderbufferStorageMultisample(36161, this.samples, i3 == 0 ? 32856 : 33189, i, i2);
                if (i3 != 0) {
                    i4 = 36096;
                }
                GLES20.glFramebufferRenderbuffer(36160, i4, 36161, this.renderbuffers[i3]);
                i3++;
            } else {
                checkTarget();
                GLES20.glBindFramebuffer(36160, this.targets[1]);
                GLES20.glBindTexture(3553, this.texture[0]);
                GLES20.glTexImage2D(3553, 0, 32856, i, i2, 0, 6408, 5121, null);
                GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.texture[0], 0);
                checkTarget();
                return;
            }
        }
    }

    private static void checkTarget() {
        if (GLES20.glCheckFramebufferStatus(36160) == 36053) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Incomplete diamond framebuffer");
    }

    private void projection(float f, float f2) {
        float fMax = (1.52f / f2) * Math.max(1.0f, 1.0f / f);
        Matrix.setIdentityM(this.projection, 0);
        float[] fArr = this.projection;
        float f3 = 1.0f / (f * fMax);
        fArr[0] = f3;
        fArr[5] = 1.0f / fMax;
        float[] fArr2 = this.camera;
        float f4 = 1.0f / fArr2[2];
        float f5 = -f4;
        float f6 = f5 / fArr2[1];
        fArr[0] = f3 * this.horizontalScale;
        float f7 = 0.12f / fMax;
        fArr[9] = f7 * f6;
        fArr[10] = f5 / 6.0f;
        fArr[11] = f6;
        fArr[13] = f7 * f4;
        fArr[14] = 0.5f * f4;
        fArr[15] = f4;
    }

    private float horizontalScale(float f, float f2) {
        float fMin = Math.min(90.0f, (360.0f * Math.abs((float) Math.IEEEremainder(f, 1.5707963267948966d))) / 3.1415927f);
        int iMin = Math.min(89, (int) fMin);
        float f3 = fMin - iMin;
        float[] fArr = this.silhouetteWidths;
        float f4 = fArr[iMin];
        float f5 = fArr[iMin + 1];
        float f6 = iMin == 0 ? 0.0f : (f5 - fArr[iMin - 1]) / 2.0f;
        float f7 = iMin != 89 ? (fArr[iMin + 2] - f4) / 2.0f : 0.0f;
        float f8 = f4 + (f3 * (f6 + ((((((f5 - f4) * 3.0f) - (f6 * 2.0f)) - f7) + ((((f4 - f5) * 2.0f) + f6 + f7) * f3)) * f3)));
        float fSin = (float) Math.sin(r10 * 2.0f);
        return ((((this.silhouetteWidths[0] * (1.0f - ((0.035f * fSin) * fSin))) / f8) - 1.0f) * (1.0f - smooth((float) ((Math.abs(Math.sin(f2)) - Math.sin(0.25d)) / (Math.sin(0.96d) - Math.sin(0.25d)))))) + 1.0f;
    }

    private void setup(int i, float f, float f2, float f3) {
        use(i);
        matrix("model", this.model);
        matrix("inverseModel", this.inverse);
        matrix("projection", this.projection);
        vector("parameters", f, 0.72f, 1.0f, 1.0f);
        GLES20.glUniform4fv(loc("u.facetProjection"), 1, this.facetProjection, 0);
        vector("appearance", this.appearance, 0.0f, 0.0f, 0.0f);
        vector("referenceCrownFlash", 0.0f, 0.0f, 0.0f, 0.0f);
        vector("referencePavilionFlash", 0.0f, 0.0f, 0.0f, 0.0f);
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = i2 * 8;
            GLES20.glUniform4fv(loc("anchors[" + i2 + "].position"), 1, this.anchors, i3);
            GLES20.glUniform4fv(loc("anchors[" + i2 + "].normal"), 1, this.anchors, i3 + 4);
        }
        vector("viewport", this.width, this.height, 17.0f, 0.0f);
        GLES20.glUniform4fv(loc("u.sparkleShape"), 1, this.frame, 36);
        vector("sparkleHalo", this.frame[40], f2, this.horizontalScale, f3);
        int i4 = 0;
        while (true) {
            String[] strArr = LIGHTS;
            if (i4 >= strArr.length) {
                GLES20.glUniform4fv(loc("planes[0]"), 17, this.planes, 0);
                return;
            }
            GLES20.glUniform4fv(loc("u." + strArr[i4]), 1, this.frame, i4 * 4);
            i4++;
        }
    }

    public void draw(int i, int i2, float f, float f2, float f3, float f4, float f5, float f6) {
        draw(i, i2, f, f2, f3, f4, f5, f6, false);
    }

    public void drawToTexture(int i, float f, float f2, float f3) {
        draw(i, i, f, f2, 0.0f, f3, 1.0f, 0.0f, true);
    }

    private void draw(int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        float fMax = Math.max(0.0f, Math.min(f4, 0.1f));
        double d = this.clock + ((double) fMax);
        this.clock = d;
        float f7 = (float) d;
        double d2 = (d * 240.0d) % 1440.0d;
        int i3 = (int) d2;
        float f8 = (float) (d2 - ((double) i3));
        int i4 = 0;
        int i5 = 0;
        while (true) {
            float[] fArr = this.frame;
            if (i5 >= fArr.length) {
                break;
            }
            float[] fArr2 = this.frames;
            float f9 = fArr2[(i3 * 42) + i5];
            fArr[i5] = f9 + ((fArr2[((1 + i3) * 42) + i5] - f9) * f8);
            i5++;
        }
        float f10 = i;
        float f11 = i2;
        resize(Math.max(1, Math.round(this.resolutionScale * f10)), Math.max(1, Math.round(this.resolutionScale * f11)));
        float f12 = f2 + this.camera[0];
        this.horizontalScale = horizontalScale(f, f12);
        Matrix.setIdentityM(this.model, 0);
        Matrix.rotateM(this.model, 0, -((float) Math.toDegrees(f3)), 0.0f, 0.0f, 1.0f);
        Matrix.rotateM(this.model, 0, (float) Math.toDegrees(f12), 1.0f, 0.0f, 0.0f);
        Matrix.rotateM(this.model, 0, (float) Math.toDegrees(f), 0.0f, 1.0f, 0.0f);
        Matrix.transposeM(this.inverse, 0, this.model, 0);
        float f13 = 0.0f;
        int i6 = 0;
        float f14 = -1.0f;
        while (i6 < 4) {
            float f15 = (i6 * 3.1415927f) / 2.0f;
            int i7 = i4;
            int i8 = i6;
            float f16 = f14;
            float fCos = (float) (Math.cos(f + f15) * Math.cos(f12 - this.camera[i7]));
            if (fCos > f16) {
                f13 = f15;
                f14 = fCos;
            } else {
                f14 = f16;
            }
            i6 = i8 + 1;
            i4 = i7;
        }
        int i9 = i4;
        float f17 = f14;
        float fHypot = (!this.hasPreviousYaw || fMax <= 0.0f) ? 0.596f : ((float) Math.hypot((float) Math.atan2(Math.sin(f - this.previousYaw), Math.cos(f - this.previousYaw)), f12 - this.previousPitch)) / fMax;
        this.previousYaw = f;
        this.previousPitch = f12;
        this.hasPreviousYaw = true;
        float fSmooth = smooth(1.0f - (((float) Math.acos(Math.max(-1.0f, Math.min(1.0f, f17)))) / 0.20943952f)) * smooth(((0.41887903f / Math.max(fHypot, 0.001f)) - 0.06f) / 0.34f);
        GLES20.glBindFramebuffer(36160, this.targets[i9]);
        GLES20.glViewport(i9, i9, this.width, this.height);
        GLES20.glDepthMask(true);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(16640);
        GLES20.glDisable(2929);
        GLES20.glDisable(2884);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(1, 771);
        projection(f10 / f11, 0.9975f / this.silhouetteWidths[0]);
        setup(this.programs[0], f7, f13, fSmooth);
        GLES20.glDisable(3042);
        GLES20.glEnable(2929);
        GLES20.glEnable(2884);
        GLES20.glDepthFunc(GlobalMediaRouter.CallbackHandler.MSG_PROVIDER_CHANGED);
        GLES30.glBindVertexArray(this.vaos[0]);
        GLES20.glDrawArrays(4, 0, this.counts[0]);
        setup(this.programs[1], f7, f13, fSmooth);
        GLES20.glEnable(3042);
        GLES20.glDisable(2884);
        GLES20.glDisable(2929);
        int i10 = 1;
        while (i10 <= 2) {
            GLES30.glBindVertexArray(this.vaos[i10]);
            GLES30.glUniform1ui(loc("baseInstance"), i10 - 1);
            GLES30.glDrawArraysInstanced(4, 0, this.counts[i10], i10 == 1 ? 1 : 7);
            i10++;
        }
        GLES20.glBindFramebuffer(36008, this.targets[0]);
        GLES20.glBindFramebuffer(36009, this.targets[1]);
        int i11 = this.width;
        int i12 = this.height;
        GLES30.glBlitFramebuffer(0, 0, i11, i12, 0, 0, i11, i12, 16384, 9728);
        if (z) {
            GLES20.glBindFramebuffer(36160, this.targets[1]);
            GLES30.glBindVertexArray(0);
        } else {
            drawTexture(i, i2, f5, f6);
        }
    }

    public void drawTexture(int i, int i2, float f) {
        drawTexture(i, i2, f, 0.0f);
    }

    private void drawTexture(int i, int i2, float f, float f2) {
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glViewport(0, 0, i, i2);
        GLES20.glDisable(3042);
        GLES20.glDisable(2929);
        use(this.programs[2]);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.texture[0]);
        GLES20.glUniform1i(loc("image"), 0);
        GLES20.glUniform1f(loc("opacity"), f);
        GLES20.glUniform1f(loc("white"), f2);
        GLES30.glBindVertexArray(this.vaos[3]);
        GLES20.glDrawArrays(4, 0, 3);
        GLES30.glBindVertexArray(0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glEnable(2929);
    }

    private static float smooth(float f) {
        float fMax = Math.max(0.0f, Math.min(1.0f, f));
        return fMax * fMax * (3.0f - (fMax * 2.0f));
    }

    public void destroy() {
        for (int i : this.programs) {
            if (i != 0) {
                GLES20.glDeleteProgram(i);
            }
        }
        int[] iArr = this.buffers;
        GLES20.glDeleteBuffers(iArr.length, iArr, 0);
        int[] iArr2 = this.vaos;
        GLES30.glDeleteVertexArrays(iArr2.length, iArr2, 0);
        int[] iArr3 = this.texture;
        GLES20.glDeleteTextures(iArr3.length, iArr3, 0);
        int[] iArr4 = this.targets;
        GLES20.glDeleteFramebuffers(iArr4.length, iArr4, 0);
        int[] iArr5 = this.renderbuffers;
        GLES20.glDeleteRenderbuffers(iArr5.length, iArr5, 0);
    }
}
