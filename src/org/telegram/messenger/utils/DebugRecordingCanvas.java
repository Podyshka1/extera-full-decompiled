package org.telegram.messenger.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.DrawFilter;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.text.MeasuredText;
import android.os.Build;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes6.dex */
public class DebugRecordingCanvas extends Canvas {
    private final List<Command> mCommands;

    public static abstract class Command {
        public abstract void replay(Canvas canvas);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String paintInfo(Paint paint) {
        if (paint == null) {
            return "paint=null";
        }
        StringBuilder sb = new StringBuilder("paint(alpha=");
        sb.append(paint.getAlpha());
        if (Build.VERSION.SDK_INT >= 29) {
            float shadowLayerRadius = paint.getShadowLayerRadius();
            if (shadowLayerRadius > 0.0f) {
                sb.append(" shadow(r=");
                sb.append(shadowLayerRadius);
                sb.append(" dx=");
                sb.append(paint.getShadowLayerDx());
                sb.append(" dy=");
                sb.append(paint.getShadowLayerDy());
                sb.append(" color=0x");
                sb.append(Integer.toHexString(paint.getShadowLayerColor()));
                sb.append(")");
            }
        }
        sb.append(")");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String bitmapInfo(Bitmap bitmap) {
        if (bitmap == null) {
            return "bitmap=null";
        }
        return "bitmap(" + bitmap.getWidth() + "x" + bitmap.getHeight() + ")";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String matrixInfo(Matrix matrix) {
        if (matrix == null) {
            return "matrix=null";
        }
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return String.format("matrix([%.2f,%.2f,%.2f][%.2f,%.2f,%.2f][%.2f,%.2f,%.2f])", Float.valueOf(fArr[0]), Float.valueOf(fArr[1]), Float.valueOf(fArr[2]), Float.valueOf(fArr[3]), Float.valueOf(fArr[4]), Float.valueOf(fArr[5]), Float.valueOf(fArr[6]), Float.valueOf(fArr[7]), Float.valueOf(fArr[8]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String rectInfo(RectF rectF) {
        if (rectF == null) {
            return "rect=null";
        }
        return "rect(" + rectF.left + "," + rectF.top + "," + rectF.right + "," + rectF.bottom + ")";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String coordWarn(float... fArr) {
        for (float f : fArr) {
            Math.abs(f);
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String pathWarn(Path path) {
        if (path.isEmpty()) {
            return "⚠ PATH_IS_EMPTY ";
        }
        path.isConvex();
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String paintWarn(Paint paint) {
        if (paint == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        if (paint.getAlpha() <= 0) {
            sb.append("⚠ PAINT_ALPHA_ZERO ");
        }
        if (Build.VERSION.SDK_INT >= 29 && paint.getShadowLayerRadius() > 0.0f) {
            sb.append("⚠ PAINT_HAS_SHADOW_LAYER ");
        }
        return sb.toString();
    }

    private void validate(Command command) {
        String string = command.toString();
        if (string.contains("⚠")) {
            Log.w("DebugRecordingCanvas", "recorded [" + this.mCommands.size() + "] " + string);
        }
    }

    private void record(Command command) {
        validate(command);
        this.mCommands.add(command);
    }

    public static final class SaveCmd extends Command {
        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.save();
        }

        public String toString() {
            return "save()";
        }
    }

    public static final class SaveLayerCmd extends Command {
        final RectF bounds;
        final Paint paint;
        final int saveFlags;

        public SaveLayerCmd(RectF rectF, Paint paint) {
            this.bounds = rectF != null ? new RectF(rectF) : null;
            this.paint = paint != null ? new Paint(paint) : null;
            this.saveFlags = 0;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.saveLayer(this.bounds, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + "saveLayer(" + DebugRecordingCanvas.rectInfo(this.bounds) + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class SaveLayerAlphaCmd extends Command {
        final int alpha;
        final RectF bounds;

        public SaveLayerAlphaCmd(RectF rectF, int i) {
            this.bounds = rectF != null ? new RectF(rectF) : null;
            this.alpha = i;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.saveLayerAlpha(this.bounds, this.alpha);
        }

        public String toString() {
            String str;
            int i = this.alpha;
            if (i <= 0 || i >= 255) {
                str = "⚠ ALPHA_SUSPICIOUS(" + this.alpha + ") ";
            } else {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            return str + "saveLayerAlpha(alpha=" + this.alpha + " " + DebugRecordingCanvas.rectInfo(this.bounds) + ")";
        }
    }

    public static final class RestoreCmd extends Command {
        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.restore();
        }

        public String toString() {
            return "restore()";
        }
    }

    public static final class RestoreToCountCmd extends Command {
        final int count;

        public RestoreToCountCmd(int i) {
            this.count = i;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.restoreToCount(this.count);
        }

        public String toString() {
            return "restoreToCount(" + this.count + ")";
        }
    }

    public static final class TranslateCmd extends Command {
        final float dx;
        final float dy;

        public TranslateCmd(float f, float f2) {
            this.dx = f;
            this.dy = f2;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.translate(this.dx, this.dy);
        }

        public String toString() {
            return DebugRecordingCanvas.coordWarn(this.dx, this.dy) + "translate(" + this.dx + "," + this.dy + ")";
        }
    }

    public static final class ScaleCmd extends Command {
        final float sx;
        final float sy;

        public ScaleCmd(float f, float f2) {
            this.sx = f;
            this.sy = f2;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.scale(this.sx, this.sy);
        }

        public String toString() {
            return "scale(" + this.sx + "," + this.sy + ")";
        }
    }

    public static final class RotateCmd extends Command {
        final float deg;

        public RotateCmd(float f) {
            this.deg = f;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.rotate(this.deg);
        }

        public String toString() {
            return "rotate(" + this.deg + ")";
        }
    }

    public static final class SkewCmd extends Command {
        final float sx;
        final float sy;

        public SkewCmd(float f, float f2) {
            this.sx = f;
            this.sy = f2;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.skew(this.sx, this.sy);
        }

        public String toString() {
            return "skew(" + this.sx + "," + this.sy + ")";
        }
    }

    public static final class ConcatCmd extends Command {
        final Matrix matrix;

        public ConcatCmd(Matrix matrix) {
            this.matrix = matrix != null ? new Matrix(matrix) : null;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.concat(this.matrix);
        }

        public String toString() {
            return "concat(" + DebugRecordingCanvas.matrixInfo(this.matrix) + ")";
        }
    }

    public static final class SetMatrixCmd extends Command {
        final Matrix matrix;

        public SetMatrixCmd(Matrix matrix) {
            this.matrix = matrix != null ? new Matrix(matrix) : null;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.setMatrix(this.matrix);
        }

        public String toString() {
            return "setMatrix(" + DebugRecordingCanvas.matrixInfo(this.matrix) + ")";
        }
    }

    public static final class ClipRectCmd extends Command {
        final boolean hasOp;
        final Region.Op op;
        final RectF rect;

        public ClipRectCmd(RectF rectF, Region.Op op) {
            this.rect = new RectF(rectF);
            this.op = op;
            this.hasOp = op != null;
        }

        public ClipRectCmd(float f, float f2, float f3, float f4, Region.Op op) {
            this(new RectF(f, f2, f3, f4), op);
        }

        public ClipRectCmd(float f, float f2, float f3, float f4) {
            this.rect = new RectF(f, f2, f3, f4);
            this.op = null;
            this.hasOp = false;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            boolean z = this.hasOp;
            RectF rectF = this.rect;
            if (z) {
                canvas.clipRect(rectF, this.op);
            } else {
                canvas.clipRect(rectF);
            }
        }

        public String toString() {
            String str;
            if (this.hasOp) {
                str = " op=" + this.op;
            } else {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            StringBuilder sb = new StringBuilder();
            RectF rectF = this.rect;
            sb.append(DebugRecordingCanvas.coordWarn(rectF.left, rectF.top, rectF.right, rectF.bottom));
            sb.append("clipRect(");
            sb.append(DebugRecordingCanvas.rectInfo(this.rect));
            sb.append(str);
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class ClipPathCmd extends Command {
        final boolean hasOp = true;
        final Region.Op op;
        final Path path;

        public ClipPathCmd(Path path, Region.Op op) {
            this.path = new Path(path);
            this.op = op;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            boolean z = this.hasOp;
            Path path = this.path;
            if (z) {
                canvas.clipPath(path, this.op);
            } else {
                canvas.clipPath(path);
            }
        }

        public String toString() {
            String str;
            if (this.hasOp) {
                str = " op=" + this.op;
            } else {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            return DebugRecordingCanvas.pathWarn(this.path) + "clipPath(" + str + ")";
        }
    }

    public static final class QuickRejectCmd extends Command {
        final float bottom;
        final String edgeType;
        final Kind kind;
        final float left;
        final Path path;
        final RectF rectF;
        final boolean rejected;
        final float right;
        final float top;

        public enum Kind {
            RECT_F,
            RECT_F_EDGE,
            COORDS,
            COORDS_EDGE,
            PATH,
            PATH_EDGE
        }

        public QuickRejectCmd(RectF rectF, boolean z) {
            this.kind = Kind.RECT_F;
            this.rectF = new RectF(rectF);
            this.bottom = 0.0f;
            this.right = 0.0f;
            this.top = 0.0f;
            this.left = 0.0f;
            this.path = null;
            this.edgeType = null;
            this.rejected = z;
        }

        public QuickRejectCmd(RectF rectF, Canvas.EdgeType edgeType, boolean z) {
            this.kind = Kind.RECT_F_EDGE;
            this.rectF = new RectF(rectF);
            this.bottom = 0.0f;
            this.right = 0.0f;
            this.top = 0.0f;
            this.left = 0.0f;
            this.path = null;
            this.edgeType = edgeType.name();
            this.rejected = z;
        }

        public QuickRejectCmd(float f, float f2, float f3, float f4, boolean z) {
            this.kind = Kind.COORDS;
            this.rectF = null;
            this.path = null;
            this.edgeType = null;
            this.left = f;
            this.top = f2;
            this.right = f3;
            this.bottom = f4;
            this.rejected = z;
        }

        public QuickRejectCmd(float f, float f2, float f3, float f4, Canvas.EdgeType edgeType, boolean z) {
            this.kind = Kind.COORDS_EDGE;
            this.rectF = null;
            this.path = null;
            this.edgeType = edgeType.name();
            this.left = f;
            this.top = f2;
            this.right = f3;
            this.bottom = f4;
            this.rejected = z;
        }

        public QuickRejectCmd(Path path, boolean z) {
            this.kind = Kind.PATH;
            this.path = new Path(path);
            this.rectF = null;
            this.edgeType = null;
            this.bottom = 0.0f;
            this.right = 0.0f;
            this.top = 0.0f;
            this.left = 0.0f;
            this.rejected = z;
        }

        public QuickRejectCmd(Path path, Canvas.EdgeType edgeType, boolean z) {
            this.kind = Kind.PATH_EDGE;
            this.path = new Path(path);
            this.rectF = null;
            this.edgeType = edgeType.name();
            this.bottom = 0.0f;
            this.right = 0.0f;
            this.top = 0.0f;
            this.left = 0.0f;
            this.rejected = z;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            switch (C28693.f994xd2ce3d03[this.kind.ordinal()]) {
                case 1:
                    if (Build.VERSION.SDK_INT >= 30) {
                        canvas.quickReject(this.rectF);
                    }
                    break;
                case 2:
                    canvas.quickReject(this.rectF, Canvas.EdgeType.valueOf(this.edgeType));
                    break;
                case 3:
                    if (Build.VERSION.SDK_INT >= 30) {
                        canvas.quickReject(this.left, this.top, this.right, this.bottom);
                    }
                    break;
                case 4:
                    canvas.quickReject(this.left, this.top, this.right, this.bottom, Canvas.EdgeType.valueOf(this.edgeType));
                    break;
                case 5:
                    if (Build.VERSION.SDK_INT >= 30) {
                        canvas.quickReject(this.path);
                    }
                    break;
                case 6:
                    canvas.quickReject(this.path, Canvas.EdgeType.valueOf(this.edgeType));
                    break;
            }
        }

        public String toString() {
            String str;
            String str2 = " -> " + this.rejected;
            if (this.edgeType != null) {
                str = " edgeType=" + this.edgeType;
            } else {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            switch (C28693.f994xd2ce3d03[this.kind.ordinal()]) {
                case 1:
                case 2:
                    StringBuilder sb = new StringBuilder();
                    RectF rectF = this.rectF;
                    sb.append(DebugRecordingCanvas.coordWarn(rectF.left, rectF.top, rectF.right, rectF.bottom));
                    sb.append("quickReject(");
                    sb.append(DebugRecordingCanvas.rectInfo(this.rectF));
                    sb.append(str);
                    sb.append(str2);
                    sb.append(")");
                    return sb.toString();
                case 3:
                case 4:
                    return DebugRecordingCanvas.coordWarn(this.left, this.top, this.right, this.bottom) + "quickReject(" + this.left + "," + this.top + "," + this.right + "," + this.bottom + str + str2 + ")";
                case 5:
                case 6:
                    return DebugRecordingCanvas.pathWarn(this.path) + "quickReject(path" + str + str2 + ")";
                default:
                    return "quickReject(?" + str2 + ")";
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.utils.DebugRecordingCanvas$3 */
    public static /* synthetic */ class C28693 {

        /* JADX INFO: renamed from: $SwitchMap$org$telegram$messenger$utils$DebugRecordingCanvas$QuickRejectCmd$Kind */
        static final /* synthetic */ int[] f994xd2ce3d03;

        static {
            int[] iArr = new int[QuickRejectCmd.Kind.values().length];
            f994xd2ce3d03 = iArr;
            try {
                iArr[QuickRejectCmd.Kind.RECT_F.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f994xd2ce3d03[QuickRejectCmd.Kind.RECT_F_EDGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f994xd2ce3d03[QuickRejectCmd.Kind.COORDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f994xd2ce3d03[QuickRejectCmd.Kind.COORDS_EDGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f994xd2ce3d03[QuickRejectCmd.Kind.PATH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f994xd2ce3d03[QuickRejectCmd.Kind.PATH_EDGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class SetDrawFilterCmd extends Command {
        final DrawFilter filter;

        public SetDrawFilterCmd(DrawFilter drawFilter) {
            this.filter = drawFilter;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.setDrawFilter(this.filter);
        }

        public String toString() {
            return "setDrawFilter(" + this.filter + ")";
        }
    }

    public static final class DrawColorCmd extends Command {
        final int color;
        final boolean hasMode;
        final PorterDuff.Mode mode;

        public DrawColorCmd(int i) {
            this.color = i;
            this.mode = null;
            this.hasMode = false;
        }

        public DrawColorCmd(int i, PorterDuff.Mode mode) {
            this.color = i;
            this.mode = mode;
            this.hasMode = true;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            boolean z = this.hasMode;
            int i = this.color;
            if (z) {
                canvas.drawColor(i, this.mode);
            } else {
                canvas.drawColor(i);
            }
        }

        public String toString() {
            int i = this.color >>> 24;
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            String str2 = i <= 0 ? "⚠ PAINT_ALPHA_ZERO " : _UrlKt.FRAGMENT_ENCODE_SET;
            if (this.hasMode) {
                str = " mode=" + this.mode;
            }
            return str2 + "drawColor(0x" + Integer.toHexString(this.color) + str + ")";
        }
    }

    public static final class DrawPaintCmd extends Command {
        final Paint paint;

        public DrawPaintCmd(Paint paint) {
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawPaint(this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + "drawPaint(" + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawArcCmd extends Command {
        final RectF oval;
        final Paint paint;
        final float startAngle;
        final float sweepAngle;
        final boolean useCenter;

        public DrawArcCmd(RectF rectF, float f, float f2, boolean z, Paint paint) {
            this.oval = new RectF(rectF);
            this.startAngle = f;
            this.sweepAngle = f2;
            this.useCenter = z;
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawArc(this.oval, this.startAngle, this.sweepAngle, this.useCenter, this.paint);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(DebugRecordingCanvas.paintWarn(this.paint));
            RectF rectF = this.oval;
            sb.append(DebugRecordingCanvas.coordWarn(rectF.left, rectF.top, rectF.right, rectF.bottom));
            sb.append("drawArc(");
            sb.append(DebugRecordingCanvas.rectInfo(this.oval));
            sb.append(" start=");
            sb.append(this.startAngle);
            sb.append(" sweep=");
            sb.append(this.sweepAngle);
            sb.append(" center=");
            sb.append(this.useCenter);
            sb.append(" ");
            sb.append(DebugRecordingCanvas.paintInfo(this.paint));
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class DrawBitmapCmd extends Command {
        final Bitmap bitmap;
        final float left;
        final Paint paint;
        final float top;

        public DrawBitmapCmd(Bitmap bitmap, float f, float f2, Paint paint) {
            this.bitmap = bitmap.copy(bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888, false);
            this.left = f;
            this.top = f2;
            this.paint = paint != null ? new Paint(paint) : null;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawBitmap(this.bitmap, this.left, this.top, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + DebugRecordingCanvas.coordWarn(this.left, this.top) + "drawBitmap(" + DebugRecordingCanvas.bitmapInfo(this.bitmap) + " x=" + this.left + " y=" + this.top + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawBitmapSrcDstFCmd extends Command {
        final Bitmap bitmap;
        final RectF dst;
        final Paint paint;
        final Rect src;

        public DrawBitmapSrcDstFCmd(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
            this.bitmap = bitmap.copy(bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888, false);
            this.src = rect != null ? new Rect(rect) : null;
            this.dst = new RectF(rectF);
            this.paint = paint != null ? new Paint(paint) : null;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawBitmap(this.bitmap, this.src, this.dst, this.paint);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(DebugRecordingCanvas.paintWarn(this.paint));
            RectF rectF = this.dst;
            sb.append(DebugRecordingCanvas.coordWarn(rectF.left, rectF.top, rectF.right, rectF.bottom));
            sb.append("drawBitmap(");
            sb.append(DebugRecordingCanvas.bitmapInfo(this.bitmap));
            sb.append(" src=");
            sb.append(this.src);
            sb.append(" dst=");
            sb.append(DebugRecordingCanvas.rectInfo(this.dst));
            sb.append(" ");
            sb.append(DebugRecordingCanvas.paintInfo(this.paint));
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class DrawBitmapSrcDstCmd extends Command {
        final Bitmap bitmap;
        final Rect dst;
        final Paint paint;
        final Rect src;

        public DrawBitmapSrcDstCmd(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
            this.bitmap = bitmap.copy(bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888, false);
            this.src = rect != null ? new Rect(rect) : null;
            this.dst = new Rect(rect2);
            this.paint = paint != null ? new Paint(paint) : null;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawBitmap(this.bitmap, this.src, this.dst, this.paint);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(DebugRecordingCanvas.paintWarn(this.paint));
            Rect rect = this.dst;
            sb.append(DebugRecordingCanvas.coordWarn(rect.left, rect.top, rect.right, rect.bottom));
            sb.append("drawBitmap(");
            sb.append(DebugRecordingCanvas.bitmapInfo(this.bitmap));
            sb.append(" src=");
            sb.append(this.src);
            sb.append(" dst=");
            sb.append(this.dst);
            sb.append(" ");
            sb.append(DebugRecordingCanvas.paintInfo(this.paint));
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class DrawBitmapMatrixCmd extends Command {
        final Bitmap bitmap;
        final Matrix matrix;
        final Paint paint;

        public DrawBitmapMatrixCmd(Bitmap bitmap, Matrix matrix, Paint paint) {
            this.bitmap = bitmap.copy(bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888, false);
            this.matrix = new Matrix(matrix);
            this.paint = paint != null ? new Paint(paint) : null;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawBitmap(this.bitmap, this.matrix, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + "drawBitmap(" + DebugRecordingCanvas.bitmapInfo(this.bitmap) + " " + DebugRecordingCanvas.matrixInfo(this.matrix) + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawBitmapMeshCmd extends Command {
        final Bitmap bitmap;
        final int colorOffset;
        final int[] colors;
        final int meshHeight;
        final int meshWidth;
        final Paint paint;
        final int vertOffset;
        final float[] verts;

        public DrawBitmapMeshCmd(Bitmap bitmap, int i, int i2, float[] fArr, int i3, int[] iArr, int i4, Paint paint) {
            this.bitmap = bitmap.copy(bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888, false);
            this.meshWidth = i;
            this.meshHeight = i2;
            this.verts = Arrays.copyOf(fArr, fArr.length);
            this.vertOffset = i3;
            this.colors = iArr != null ? Arrays.copyOf(iArr, iArr.length) : null;
            this.colorOffset = i4;
            this.paint = paint != null ? new Paint(paint) : null;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawBitmapMesh(this.bitmap, this.meshWidth, this.meshHeight, this.verts, this.vertOffset, this.colors, this.colorOffset, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + "drawBitmapMesh(" + DebugRecordingCanvas.bitmapInfo(this.bitmap) + " mesh=" + this.meshWidth + "x" + this.meshHeight + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawCircleCmd extends Command {
        final float cx;
        final float cy;
        final Paint paint;
        final float radius;

        public DrawCircleCmd(float f, float f2, float f3, Paint paint) {
            this.cx = f;
            this.cy = f2;
            this.radius = f3;
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawCircle(this.cx, this.cy, this.radius, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + DebugRecordingCanvas.coordWarn(this.cx, this.cy) + "drawCircle(cx=" + this.cx + " cy=" + this.cy + " r=" + this.radius + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawLineCmd extends Command {
        final Paint paint;
        final float startX;
        final float startY;
        final float stopX;
        final float stopY;

        public DrawLineCmd(float f, float f2, float f3, float f4, Paint paint) {
            this.startX = f;
            this.startY = f2;
            this.stopX = f3;
            this.stopY = f4;
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawLine(this.startX, this.startY, this.stopX, this.stopY, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + DebugRecordingCanvas.coordWarn(this.startX, this.startY, this.stopX, this.stopY) + "drawLine(" + this.startX + "," + this.startY + " → " + this.stopX + "," + this.stopY + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawLinesCmd extends Command {
        final int count;
        final int offset;
        final Paint paint;
        final float[] pts;

        public DrawLinesCmd(float[] fArr, int i, int i2, Paint paint) {
            this.pts = Arrays.copyOf(fArr, fArr.length);
            this.offset = i;
            this.count = i2;
            this.paint = new Paint(paint);
        }

        public DrawLinesCmd(float[] fArr, Paint paint) {
            this(fArr, 0, fArr.length, paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawLines(this.pts, this.offset, this.count, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + "drawLines(count=" + this.count + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawOvalCmd extends Command {
        final RectF oval;
        final Paint paint;

        public DrawOvalCmd(RectF rectF, Paint paint) {
            this.oval = new RectF(rectF);
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawOval(this.oval, this.paint);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(DebugRecordingCanvas.paintWarn(this.paint));
            RectF rectF = this.oval;
            sb.append(DebugRecordingCanvas.coordWarn(rectF.left, rectF.top, rectF.right, rectF.bottom));
            sb.append("drawOval(");
            sb.append(DebugRecordingCanvas.rectInfo(this.oval));
            sb.append(" ");
            sb.append(DebugRecordingCanvas.paintInfo(this.paint));
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class DrawPathCmd extends Command {
        final Paint paint;
        final Path path;

        public DrawPathCmd(Path path, Paint paint) {
            this.path = new Path(path);
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawPath(this.path, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.pathWarn(this.path) + DebugRecordingCanvas.paintWarn(this.paint) + "drawPath(" + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawPictureCmd extends Command {
        final RectF dst;
        final boolean hasDst;
        final Picture picture;

        public DrawPictureCmd(Picture picture) {
            this.picture = picture;
            this.dst = null;
            this.hasDst = false;
        }

        public DrawPictureCmd(Picture picture, RectF rectF) {
            this.picture = picture;
            this.dst = new RectF(rectF);
            this.hasDst = true;
        }

        public DrawPictureCmd(Picture picture, Rect rect) {
            this.picture = picture;
            this.dst = new RectF(rect);
            this.hasDst = true;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            boolean z = this.hasDst;
            Picture picture = this.picture;
            if (z) {
                canvas.drawPicture(picture, this.dst);
            } else {
                canvas.drawPicture(picture);
            }
        }

        public String toString() {
            String str;
            if (this.hasDst) {
                str = " dst=" + DebugRecordingCanvas.rectInfo(this.dst);
            } else {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            return "drawPicture(size=" + this.picture.getWidth() + "x" + this.picture.getHeight() + str + ")";
        }
    }

    public static final class DrawPointCmd extends Command {
        final Paint paint;

        /* JADX INFO: renamed from: x */
        final float f995x;

        /* JADX INFO: renamed from: y */
        final float f996y;

        public DrawPointCmd(float f, float f2, Paint paint) {
            this.f995x = f;
            this.f996y = f2;
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawPoint(this.f995x, this.f996y, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + DebugRecordingCanvas.coordWarn(this.f995x, this.f996y) + "drawPoint(" + this.f995x + "," + this.f996y + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawPointsCmd extends Command {
        final int count;
        final int offset;
        final Paint paint;
        final float[] pts;

        public DrawPointsCmd(float[] fArr, int i, int i2, Paint paint) {
            this.pts = Arrays.copyOf(fArr, fArr.length);
            this.offset = i;
            this.count = i2;
            this.paint = new Paint(paint);
        }

        public DrawPointsCmd(float[] fArr, Paint paint) {
            this(fArr, 0, fArr.length, paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawPoints(this.pts, this.offset, this.count, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + "drawPoints(count=" + this.count + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawRectCmd extends Command {
        final Paint paint;
        final RectF rect;

        public DrawRectCmd(RectF rectF, Paint paint) {
            this.rect = new RectF(rectF);
            this.paint = new Paint(paint);
        }

        public DrawRectCmd(float f, float f2, float f3, float f4, Paint paint) {
            this(new RectF(f, f2, f3, f4), paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawRect(this.rect, this.paint);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(DebugRecordingCanvas.paintWarn(this.paint));
            RectF rectF = this.rect;
            sb.append(DebugRecordingCanvas.coordWarn(rectF.left, rectF.top, rectF.right, rectF.bottom));
            sb.append("drawRect(");
            sb.append(DebugRecordingCanvas.rectInfo(this.rect));
            sb.append(" ");
            sb.append(DebugRecordingCanvas.paintInfo(this.paint));
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class DrawRoundRectCmd extends Command {
        final Paint paint;
        final RectF rect;
        final float rx;
        final float ry;

        public DrawRoundRectCmd(RectF rectF, float f, float f2, Paint paint) {
            this.rect = new RectF(rectF);
            this.rx = f;
            this.ry = f2;
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawRoundRect(this.rect, this.rx, this.ry, this.paint);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(DebugRecordingCanvas.paintWarn(this.paint));
            RectF rectF = this.rect;
            sb.append(DebugRecordingCanvas.coordWarn(rectF.left, rectF.top, rectF.right, rectF.bottom));
            sb.append("drawRoundRect(");
            sb.append(DebugRecordingCanvas.rectInfo(this.rect));
            sb.append(" rx=");
            sb.append(this.rx);
            sb.append(" ry=");
            sb.append(this.ry);
            sb.append(" ");
            sb.append(DebugRecordingCanvas.paintInfo(this.paint));
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class DrawTextCmd extends Command {
        final int charArrayCount;
        final int charArrayOffset;
        final int end;
        final boolean isCharArray;
        final boolean isSpanned;
        final Paint paint;
        final int start;
        final CharSequence text;

        /* JADX INFO: renamed from: x */
        final float f997x;

        /* JADX INFO: renamed from: y */
        final float f998y;

        public DrawTextCmd(char[] cArr, int i, int i2, float f, float f2, Paint paint) {
            this.text = new String(cArr, i, i2);
            this.start = 0;
            this.end = i2;
            this.f997x = f;
            this.f998y = f2;
            this.paint = new Paint(paint);
            this.charArrayOffset = i;
            this.charArrayCount = i2;
            this.isCharArray = true;
            this.isSpanned = false;
        }

        public DrawTextCmd(CharSequence charSequence, int i, int i2, float f, float f2, Paint paint) {
            this.text = charSequence.toString().substring(i, i2);
            this.start = 0;
            this.end = i2 - i;
            this.f997x = f;
            this.f998y = f2;
            this.paint = new Paint(paint);
            this.charArrayOffset = 0;
            this.charArrayCount = 0;
            this.isCharArray = false;
            this.isSpanned = true;
        }

        public DrawTextCmd(String str, float f, float f2, Paint paint) {
            this.text = str;
            this.start = 0;
            this.end = str.length();
            this.f997x = f;
            this.f998y = f2;
            this.paint = new Paint(paint);
            this.charArrayOffset = 0;
            this.charArrayCount = 0;
            this.isCharArray = false;
            this.isSpanned = false;
        }

        public DrawTextCmd(String str, int i, int i2, float f, float f2, Paint paint) {
            this.text = str.substring(i, i2);
            this.start = 0;
            this.end = i2 - i;
            this.f997x = f;
            this.f998y = f2;
            this.paint = new Paint(paint);
            this.charArrayOffset = 0;
            this.charArrayCount = 0;
            this.isCharArray = false;
            this.isSpanned = false;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawText(this.text.toString(), 0, this.text.length(), this.f997x, this.f998y, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + DebugRecordingCanvas.coordWarn(this.f997x, this.f998y) + "drawText(\"" + ((Object) this.text) + "\" x=" + this.f997x + " y=" + this.f998y + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawTextOnPathCmd extends Command {
        final float hOffset;
        final Paint paint;
        final Path path;
        final String text;
        final float vOffset;

        public DrawTextOnPathCmd(char[] cArr, int i, int i2, Path path, float f, float f2, Paint paint) {
            this.text = new String(cArr, i, i2);
            this.path = new Path(path);
            this.hOffset = f;
            this.vOffset = f2;
            this.paint = new Paint(paint);
        }

        public DrawTextOnPathCmd(String str, Path path, float f, float f2, Paint paint) {
            this.text = str;
            this.path = new Path(path);
            this.hOffset = f;
            this.vOffset = f2;
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawTextOnPath(this.text, this.path, this.hOffset, this.vOffset, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.pathWarn(this.path) + DebugRecordingCanvas.paintWarn(this.paint) + "drawTextOnPath(\"" + this.text + "\" h=" + this.hOffset + " v=" + this.vOffset + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawTextRunCmd extends Command {
        final char[] chars;
        final int contextCount;
        final int contextIndex;
        final int count;
        final int end;
        final int index;
        final boolean isCharArray;
        final boolean isRtl;
        final Paint paint;
        final int start;
        final String str;

        /* JADX INFO: renamed from: x */
        final float f999x;

        /* JADX INFO: renamed from: y */
        final float f1000y;

        public DrawTextRunCmd(char[] cArr, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
            this.chars = Arrays.copyOf(cArr, cArr.length);
            this.str = null;
            this.index = i;
            this.count = i2;
            this.contextIndex = i3;
            this.contextCount = i4;
            this.start = 0;
            this.end = 0;
            this.f999x = f;
            this.f1000y = f2;
            this.isRtl = z;
            this.isCharArray = true;
            this.paint = new Paint(paint);
        }

        public DrawTextRunCmd(CharSequence charSequence, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
            this.chars = null;
            this.str = charSequence.toString();
            this.index = 0;
            this.count = 0;
            this.contextIndex = i3;
            this.contextCount = i4;
            this.start = i;
            this.end = i2;
            this.f999x = f;
            this.f1000y = f2;
            this.isRtl = z;
            this.isCharArray = false;
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            if (this.isCharArray) {
                canvas.drawTextRun(this.chars, this.index, this.count, this.contextIndex, this.contextCount, this.f999x, this.f1000y, this.isRtl, this.paint);
            } else {
                canvas.drawTextRun(this.str, this.start, this.end, this.contextIndex, this.contextCount, this.f999x, this.f1000y, this.isRtl, this.paint);
            }
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + DebugRecordingCanvas.coordWarn(this.f999x, this.f1000y) + "drawTextRun(\"" + (this.isCharArray ? new String(this.chars, this.index, this.count) : this.str) + "\" x=" + this.f999x + " y=" + this.f1000y + " rtl=" + this.isRtl + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawTextRunMeasuredCmd extends Command {
        final int contextEnd;
        final int contextStart;
        final int end;
        final boolean isRtl;
        final Paint paint;
        final int start;
        final MeasuredText text;

        /* JADX INFO: renamed from: x */
        final float f1001x;

        /* JADX INFO: renamed from: y */
        final float f1002y;

        public DrawTextRunMeasuredCmd(MeasuredText measuredText, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
            this.text = measuredText;
            this.start = i;
            this.end = i2;
            this.contextStart = i3;
            this.contextEnd = i4;
            this.f1001x = f;
            this.f1002y = f2;
            this.isRtl = z;
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            if (Build.VERSION.SDK_INT >= 29) {
                canvas.drawTextRun(this.text, this.start, this.end, this.contextStart, this.contextEnd, this.f1001x, this.f1002y, this.isRtl, this.paint);
            }
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + DebugRecordingCanvas.coordWarn(this.f1001x, this.f1002y) + "drawTextRun(MeasuredText start=" + this.start + " end=" + this.end + " x=" + this.f1001x + " y=" + this.f1002y + " rtl=" + this.isRtl + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawVerticesCmd extends Command {
        final int colorOffset;
        final int[] colors;
        final int indexCount;
        final int indexOffset;
        final short[] indices;
        final Canvas.VertexMode mode;
        final Paint paint;
        final int texOffset;
        final float[] texs;
        final int vertOffset;
        final int vertexCount;
        final float[] verts;

        public DrawVerticesCmd(Canvas.VertexMode vertexMode, int i, float[] fArr, int i2, float[] fArr2, int i3, int[] iArr, int i4, short[] sArr, int i5, int i6, Paint paint) {
            this.mode = vertexMode;
            this.vertexCount = i;
            this.verts = Arrays.copyOf(fArr, fArr.length);
            this.vertOffset = i2;
            this.texs = fArr2 != null ? Arrays.copyOf(fArr2, fArr2.length) : null;
            this.texOffset = i3;
            this.colors = iArr != null ? Arrays.copyOf(iArr, iArr.length) : null;
            this.colorOffset = i4;
            this.indices = sArr != null ? Arrays.copyOf(sArr, sArr.length) : null;
            this.indexOffset = i5;
            this.indexCount = i6;
            this.paint = new Paint(paint);
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.drawVertices(this.mode, this.vertexCount, this.verts, this.vertOffset, this.texs, this.texOffset, this.colors, this.colorOffset, this.indices, this.indexOffset, this.indexCount, this.paint);
        }

        public String toString() {
            return DebugRecordingCanvas.paintWarn(this.paint) + "drawVertices(mode=" + this.mode + " vertexCount=" + this.vertexCount + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class DrawPatchCmd extends Command {
        final Rect dst;
        final RectF dstF;
        final Paint paint;
        final NinePatch patch;

        private static NinePatch copyPatch(NinePatch ninePatch) {
            return ninePatch;
        }

        public DrawPatchCmd(NinePatch ninePatch, Rect rect, Paint paint) {
            this.patch = copyPatch(ninePatch);
            this.dst = new Rect(rect);
            this.dstF = null;
            this.paint = paint != null ? new Paint(paint) : null;
        }

        public DrawPatchCmd(NinePatch ninePatch, RectF rectF, Paint paint) {
            this.patch = copyPatch(ninePatch);
            this.dst = null;
            this.dstF = new RectF(rectF);
            this.paint = paint != null ? new Paint(paint) : null;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            RectF rectF = this.dstF;
            NinePatch ninePatch = this.patch;
            if (rectF != null) {
                canvas.drawPatch(ninePatch, rectF, this.paint);
            } else {
                canvas.drawPatch(ninePatch, this.dst, this.paint);
            }
        }

        public String toString() {
            RectF rectF = this.dstF;
            return DebugRecordingCanvas.paintWarn(this.paint) + "drawPatch(dst=" + (rectF != null ? DebugRecordingCanvas.rectInfo(rectF) : String.valueOf(this.dst)) + " " + DebugRecordingCanvas.paintInfo(this.paint) + ")";
        }
    }

    public static final class GetClipBoundsCmd extends Command {
        final Rect bounds;
        final boolean nonEmpty;

        public GetClipBoundsCmd(Rect rect, boolean z) {
            this.bounds = new Rect(rect);
            this.nonEmpty = z;
        }

        @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
        public void replay(Canvas canvas) {
            canvas.getClipBounds(new Rect());
        }

        public String toString() {
            return (!this.nonEmpty ? "⚠ CLIP_EMPTY " : _UrlKt.FRAGMENT_ENCODE_SET) + "getClipBounds(Rect) -> nonEmpty=" + this.nonEmpty + " bounds=" + this.bounds.toShortString();
        }
    }

    public DebugRecordingCanvas(Bitmap bitmap) {
        super(bitmap);
        this.mCommands = new ArrayList();
    }

    public int getCommandCount() {
        return this.mCommands.size();
    }

    public void logCommands() {
        Log.i("DebugRecordingCanvas", "=== DebugRecordingCanvas: " + this.mCommands.size() + " command(s) ===");
        for (int i = 0; i < this.mCommands.size(); i++) {
            String str = "[" + i + "] " + this.mCommands.get(i);
            if (str.contains("⚠")) {
                Log.w("DebugRecordingCanvas", str);
            } else {
                Log.i("DebugRecordingCanvas", str);
            }
        }
        Log.i("DebugRecordingCanvas", "=== end ===");
    }

    public void replayCommands(Canvas canvas, int i) {
        int iMin = Math.min(i, this.mCommands.size());
        int saveCount = canvas.getSaveCount();
        for (int i2 = 0; i2 < iMin; i2++) {
            this.mCommands.get(i2).replay(canvas);
        }
        if (canvas.getSaveCount() - saveCount > 0) {
            canvas.restoreToCount(saveCount);
        }
    }

    public void replayAll(Canvas canvas) {
        replayCommands(canvas, this.mCommands.size());
    }

    @Override // android.graphics.Canvas
    public int save() {
        record(new SaveCmd());
        return super.save();
    }

    @Override // android.graphics.Canvas
    public int saveLayer(RectF rectF, Paint paint) {
        return super.saveLayer(rectF, paint);
    }

    @Override // android.graphics.Canvas
    public int saveLayer(RectF rectF, Paint paint, int i) {
        return super.saveLayer(rectF, paint, i);
    }

    @Override // android.graphics.Canvas
    public int saveLayer(float f, float f2, float f3, float f4, Paint paint, int i) {
        record(new SaveLayerCmd(new RectF(f, f2, f3, f4), paint));
        return super.saveLayer(f, f2, f3, f4, paint, i);
    }

    @Override // android.graphics.Canvas
    public int saveLayer(float f, float f2, float f3, float f4, Paint paint) {
        return super.saveLayer(f, f2, f3, f4, paint);
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(RectF rectF, int i) {
        return super.saveLayerAlpha(rectF, i);
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(RectF rectF, int i, int i2) {
        return super.saveLayerAlpha(rectF, i, i2);
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(float f, float f2, float f3, float f4, int i) {
        return super.saveLayerAlpha(f, f2, f3, f4, i);
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(float f, float f2, float f3, float f4, int i, int i2) {
        record(new SaveLayerAlphaCmd(new RectF(f, f2, f3, f4), i));
        return super.saveLayerAlpha(f, f2, f3, f4, i, i2);
    }

    @Override // android.graphics.Canvas
    public void restore() {
        record(new RestoreCmd());
        super.restore();
    }

    @Override // android.graphics.Canvas
    public void restoreToCount(int i) {
        record(new RestoreToCountCmd(i));
        super.restoreToCount(i);
    }

    @Override // android.graphics.Canvas
    public void translate(float f, float f2) {
        record(new TranslateCmd(f, f2));
        super.translate(f, f2);
    }

    @Override // android.graphics.Canvas
    public void scale(float f, float f2) {
        record(new ScaleCmd(f, f2));
        super.scale(f, f2);
    }

    @Override // android.graphics.Canvas
    public void rotate(float f) {
        record(new RotateCmd(f));
        super.rotate(f);
    }

    @Override // android.graphics.Canvas
    public void skew(float f, float f2) {
        record(new SkewCmd(f, f2));
        super.skew(f, f2);
    }

    @Override // android.graphics.Canvas
    public void concat(Matrix matrix) {
        record(new ConcatCmd(matrix));
        super.concat(matrix);
    }

    @Override // android.graphics.Canvas
    public void setMatrix(Matrix matrix) {
        record(new SetMatrixCmd(matrix));
        super.setMatrix(matrix);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(RectF rectF) {
        record(new ClipRectCmd(rectF, null));
        return super.clipRect(rectF);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(RectF rectF, Region.Op op) {
        record(new ClipRectCmd(rectF, op));
        return super.clipRect(rectF, op);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(Rect rect) {
        record(new ClipRectCmd(new RectF(rect), null));
        return super.clipRect(rect);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(Rect rect, Region.Op op) {
        record(new ClipRectCmd(new RectF(rect), op));
        return super.clipRect(rect, op);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(float f, float f2, float f3, float f4) {
        record(new ClipRectCmd(f, f2, f3, f4));
        return super.clipRect(f, f2, f3, f4);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(float f, float f2, float f3, float f4, Region.Op op) {
        record(new ClipRectCmd(f, f2, f3, f4, op));
        return super.clipRect(f, f2, f3, f4, op);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(int i, int i2, int i3, int i4) {
        record(new ClipRectCmd(i, i2, i3, i4));
        return super.clipRect(i, i2, i3, i4);
    }

    @Override // android.graphics.Canvas
    public boolean clipPath(Path path) {
        return super.clipPath(path);
    }

    @Override // android.graphics.Canvas
    public boolean clipPath(Path path, Region.Op op) {
        record(new ClipPathCmd(path, op));
        return super.clipPath(path, op);
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(RectF rectF) {
        boolean zQuickReject = super.quickReject(rectF);
        record(new QuickRejectCmd(rectF, zQuickReject));
        return zQuickReject;
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(RectF rectF, Canvas.EdgeType edgeType) {
        boolean zQuickReject = super.quickReject(rectF, edgeType);
        record(new QuickRejectCmd(rectF, edgeType, zQuickReject));
        return zQuickReject;
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(float f, float f2, float f3, float f4) {
        boolean zQuickReject = super.quickReject(f, f2, f3, f4);
        record(new QuickRejectCmd(f, f2, f3, f4, zQuickReject));
        return zQuickReject;
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(float f, float f2, float f3, float f4, Canvas.EdgeType edgeType) {
        boolean zQuickReject = super.quickReject(f, f2, f3, f4, edgeType);
        record(new QuickRejectCmd(f, f2, f3, f4, edgeType, zQuickReject));
        return zQuickReject;
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(Path path) {
        boolean zQuickReject = super.quickReject(path);
        record(new QuickRejectCmd(path, zQuickReject));
        return zQuickReject;
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(Path path, Canvas.EdgeType edgeType) {
        boolean zQuickReject = super.quickReject(path, edgeType);
        record(new QuickRejectCmd(path, edgeType, zQuickReject));
        return zQuickReject;
    }

    @Override // android.graphics.Canvas
    public void setDrawFilter(DrawFilter drawFilter) {
        record(new SetDrawFilterCmd(drawFilter));
        super.setDrawFilter(drawFilter);
    }

    @Override // android.graphics.Canvas
    public void drawColor(int i) {
        record(new DrawColorCmd(i));
        super.drawColor(i);
    }

    @Override // android.graphics.Canvas
    public void drawColor(int i, PorterDuff.Mode mode) {
        record(new DrawColorCmd(i, mode));
        super.drawColor(i, mode);
    }

    @Override // android.graphics.Canvas
    public void drawPaint(Paint paint) {
        record(new DrawPaintCmd(paint));
        super.drawPaint(paint);
    }

    @Override // android.graphics.Canvas
    public void drawArc(RectF rectF, float f, float f2, boolean z, Paint paint) {
        record(new DrawArcCmd(rectF, f, f2, z, paint));
        super.drawArc(rectF, f, f2, z, paint);
    }

    @Override // android.graphics.Canvas
    public void drawArc(float f, float f2, float f3, float f4, float f5, float f6, boolean z, Paint paint) {
        record(new DrawArcCmd(new RectF(f, f2, f3, f4), f5, f6, z, paint));
        super.drawArc(f, f2, f3, f4, f5, f6, z, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, float f, float f2, Paint paint) {
        record(new DrawBitmapCmd(bitmap, f, f2, paint));
        super.drawBitmap(bitmap, f, f2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        record(new DrawBitmapSrcDstFCmd(bitmap, rect, rectF, paint));
        super.drawBitmap(bitmap, rect, rectF, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        record(new DrawBitmapSrcDstCmd(bitmap, rect, rect2, paint));
        super.drawBitmap(bitmap, rect, rect2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        record(new DrawBitmapMatrixCmd(bitmap, matrix, paint));
        super.drawBitmap(bitmap, matrix, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(int[] iArr, final int i, final int i2, final float f, final float f2, final int i3, final int i4, final boolean z, Paint paint) {
        final int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        final Paint paint2 = paint != null ? new Paint(paint) : null;
        record(new Command() { // from class: org.telegram.messenger.utils.DebugRecordingCanvas.1
            @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
            public void replay(Canvas canvas) {
                canvas.drawBitmap(iArrCopyOf, i, i2, f, f2, i3, i4, z, paint2);
            }

            public String toString() {
                return DebugRecordingCanvas.paintWarn(paint2) + DebugRecordingCanvas.coordWarn(f, f2) + "drawBitmap(int[] " + i3 + "x" + i4 + " x=" + f + " y=" + f2 + " " + DebugRecordingCanvas.paintInfo(paint2) + ")";
            }
        });
        super.drawBitmap(iArr, i, i2, f, f2, i3, i4, z, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(int[] iArr, final int i, final int i2, final int i3, final int i4, final int i5, final int i6, final boolean z, Paint paint) {
        final int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        final Paint paint2 = paint != null ? new Paint(paint) : null;
        record(new Command() { // from class: org.telegram.messenger.utils.DebugRecordingCanvas.2
            @Override // org.telegram.messenger.utils.DebugRecordingCanvas.Command
            public void replay(Canvas canvas) {
                canvas.drawBitmap(iArrCopyOf, i, i2, i3, i4, i5, i6, z, paint2);
            }

            public String toString() {
                return DebugRecordingCanvas.paintWarn(paint2) + DebugRecordingCanvas.coordWarn(i3, i4) + "drawBitmap(int[] " + i5 + "x" + i6 + " x=" + i3 + " y=" + i4 + " " + DebugRecordingCanvas.paintInfo(paint2) + ")";
            }
        });
        super.drawBitmap(iArr, i, i2, i3, i4, i5, i6, z, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmapMesh(Bitmap bitmap, int i, int i2, float[] fArr, int i3, int[] iArr, int i4, Paint paint) {
        record(new DrawBitmapMeshCmd(bitmap, i, i2, fArr, i3, iArr, i4, paint));
        super.drawBitmapMesh(bitmap, i, i2, fArr, i3, iArr, i4, paint);
    }

    @Override // android.graphics.Canvas
    public void drawCircle(float f, float f2, float f3, Paint paint) {
        record(new DrawCircleCmd(f, f2, f3, paint));
        super.drawCircle(f, f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public void drawLine(float f, float f2, float f3, float f4, Paint paint) {
        record(new DrawLineCmd(f, f2, f3, f4, paint));
        super.drawLine(f, f2, f3, f4, paint);
    }

    @Override // android.graphics.Canvas
    public void drawLines(float[] fArr, int i, int i2, Paint paint) {
        record(new DrawLinesCmd(fArr, i, i2, paint));
        super.drawLines(fArr, i, i2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawLines(float[] fArr, Paint paint) {
        record(new DrawLinesCmd(fArr, paint));
        super.drawLines(fArr, paint);
    }

    @Override // android.graphics.Canvas
    public void drawOval(RectF rectF, Paint paint) {
        record(new DrawOvalCmd(rectF, paint));
        super.drawOval(rectF, paint);
    }

    @Override // android.graphics.Canvas
    public void drawOval(float f, float f2, float f3, float f4, Paint paint) {
        record(new DrawOvalCmd(new RectF(f, f2, f3, f4), paint));
        super.drawOval(f, f2, f3, f4, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPath(Path path, Paint paint) {
        record(new DrawPathCmd(path, paint));
        super.drawPath(path, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPicture(Picture picture) {
        record(new DrawPictureCmd(picture));
        super.drawPicture(picture);
    }

    @Override // android.graphics.Canvas
    public void drawPicture(Picture picture, RectF rectF) {
        record(new DrawPictureCmd(picture, rectF));
        super.drawPicture(picture, rectF);
    }

    @Override // android.graphics.Canvas
    public void drawPicture(Picture picture, Rect rect) {
        record(new DrawPictureCmd(picture, rect));
        super.drawPicture(picture, rect);
    }

    @Override // android.graphics.Canvas
    public void drawPoint(float f, float f2, Paint paint) {
        record(new DrawPointCmd(f, f2, paint));
        super.drawPoint(f, f2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPoints(float[] fArr, int i, int i2, Paint paint) {
        record(new DrawPointsCmd(fArr, i, i2, paint));
        super.drawPoints(fArr, i, i2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPoints(float[] fArr, Paint paint) {
        record(new DrawPointsCmd(fArr, paint));
        super.drawPoints(fArr, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRect(RectF rectF, Paint paint) {
        record(new DrawRectCmd(rectF, paint));
        super.drawRect(rectF, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRect(Rect rect, Paint paint) {
        super.drawRect(rect, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRect(float f, float f2, float f3, float f4, Paint paint) {
        record(new DrawRectCmd(f, f2, f3, f4, paint));
        super.drawRect(f, f2, f3, f4, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRoundRect(RectF rectF, float f, float f2, Paint paint) {
        super.drawRoundRect(rectF, f, f2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRoundRect(float f, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        record(new DrawRoundRectCmd(new RectF(f, f2, f3, f4), f5, f6, paint));
        super.drawRoundRect(f, f2, f3, f4, f5, f6, paint);
    }

    @Override // android.graphics.Canvas
    public void drawText(char[] cArr, int i, int i2, float f, float f2, Paint paint) {
        record(new DrawTextCmd(cArr, i, i2, f, f2, paint));
        super.drawText(cArr, i, i2, f, f2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawText(CharSequence charSequence, int i, int i2, float f, float f2, Paint paint) {
        record(new DrawTextCmd(charSequence, i, i2, f, f2, paint));
        super.drawText(charSequence, i, i2, f, f2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawText(String str, float f, float f2, Paint paint) {
        record(new DrawTextCmd(str, f, f2, paint));
        super.drawText(str, f, f2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawText(String str, int i, int i2, float f, float f2, Paint paint) {
        record(new DrawTextCmd(str, i, i2, f, f2, paint));
        super.drawText(str, i, i2, f, f2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextOnPath(char[] cArr, int i, int i2, Path path, float f, float f2, Paint paint) {
        record(new DrawTextOnPathCmd(cArr, i, i2, path, f, f2, paint));
        super.drawTextOnPath(cArr, i, i2, path, f, f2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextOnPath(String str, Path path, float f, float f2, Paint paint) {
        record(new DrawTextOnPathCmd(str, path, f, f2, paint));
        super.drawTextOnPath(str, path, f, f2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextRun(char[] cArr, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
        record(new DrawTextRunCmd(cArr, i, i2, i3, i4, f, f2, z, paint));
        super.drawTextRun(cArr, i, i2, i3, i4, f, f2, z, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextRun(CharSequence charSequence, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
        record(new DrawTextRunCmd(charSequence, i, i2, i3, i4, f, f2, z, paint));
        super.drawTextRun(charSequence, i, i2, i3, i4, f, f2, z, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextRun(MeasuredText measuredText, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
        record(new DrawTextRunMeasuredCmd(measuredText, i, i2, i3, i4, f, f2, z, paint));
        super.drawTextRun(measuredText, i, i2, i3, i4, f, f2, z, paint);
    }

    @Override // android.graphics.Canvas
    public void drawVertices(Canvas.VertexMode vertexMode, int i, float[] fArr, int i2, float[] fArr2, int i3, int[] iArr, int i4, short[] sArr, int i5, int i6, Paint paint) {
        record(new DrawVerticesCmd(vertexMode, i, fArr, i2, fArr2, i3, iArr, i4, sArr, i5, i6, paint));
        super.drawVertices(vertexMode, i, fArr, i2, fArr2, i3, iArr, i4, sArr, i5, i6, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPatch(NinePatch ninePatch, Rect rect, Paint paint) {
        record(new DrawPatchCmd(ninePatch, rect, paint));
        super.drawPatch(ninePatch, rect, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPatch(NinePatch ninePatch, RectF rectF, Paint paint) {
        record(new DrawPatchCmd(ninePatch, rectF, paint));
        super.drawPatch(ninePatch, rectF, paint);
    }

    @Override // android.graphics.Canvas
    public boolean getClipBounds(Rect rect) {
        boolean clipBounds = super.getClipBounds(rect);
        record(new GetClipBoundsCmd(rect, clipBounds));
        return clipBounds;
    }
}
