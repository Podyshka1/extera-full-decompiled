package org.telegram.ui.Components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.PhotoFilterView;

/* JADX INFO: loaded from: classes7.dex */
public class PhotoFilterCurvesControl extends View {
    private int activeSegment;
    private RectOld actualArea;
    private boolean checkForMoving;
    private PhotoFilterView.CurvesToolValue curveValue;
    private PhotoFilterCurvesControlDelegate delegate;
    private boolean isMoving;
    private float lastX;
    private float lastY;
    private Paint paint;
    private Paint paintCurve;
    private Paint paintDash;
    private Path path;
    private TextPaint textPaint;

    public interface PhotoFilterCurvesControlDelegate {
        void valueChanged();
    }

    public PhotoFilterCurvesControl(Context context, PhotoFilterView.CurvesToolValue curvesToolValue) {
        super(context);
        this.activeSegment = 0;
        this.checkForMoving = true;
        this.actualArea = new RectOld();
        this.paint = new Paint(1);
        this.paintDash = new Paint(1);
        this.paintCurve = new Paint(1);
        this.textPaint = new TextPaint(1);
        this.path = new Path();
        setWillNotDraw(false);
        this.curveValue = curvesToolValue;
        this.paint.setColor(-1711276033);
        this.paint.setStrokeWidth(AndroidUtilities.dp(1.0f));
        Paint paint = this.paint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.paintDash.setColor(-1711276033);
        this.paintDash.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.paintDash.setStyle(style);
        this.paintCurve.setColor(-1);
        this.paintCurve.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.paintCurve.setStyle(style);
        this.textPaint.setColor(-4210753);
        this.textPaint.setTextSize(AndroidUtilities.dp(13.0f));
    }

    public void setDelegate(PhotoFilterCurvesControlDelegate photoFilterCurvesControlDelegate) {
        this.delegate = photoFilterCurvesControlDelegate;
    }

    public void setActualArea(float f, float f2, float f3, float f4) {
        RectOld rectOld = this.actualArea;
        rectOld.f1160x = f;
        rectOld.f1161y = f2;
        rectOld.width = f3;
        rectOld.height = f4;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (motionEvent.getPointerCount() == 1) {
                if (this.checkForMoving && !this.isMoving) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    this.lastX = x;
                    this.lastY = y;
                    RectOld rectOld = this.actualArea;
                    float f = rectOld.f1160x;
                    if (x >= f && x <= f + rectOld.width) {
                        float f2 = rectOld.f1161y;
                        if (y >= f2 && y <= f2 + rectOld.height) {
                            this.isMoving = true;
                        }
                    }
                    this.checkForMoving = false;
                    if (this.isMoving) {
                        handlePan(1, motionEvent);
                    }
                }
            } else if (this.isMoving) {
                handlePan(3, motionEvent);
                this.checkForMoving = true;
                this.isMoving = false;
            }
        } else if (actionMasked == 1) {
            if (this.isMoving) {
                handlePan(3, motionEvent);
                this.isMoving = false;
            }
            this.checkForMoving = true;
        } else if (actionMasked != 2) {
            if (actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked == 6) {
                    }
                }
            }
        } else if (this.isMoving) {
            handlePan(2, motionEvent);
        }
        return true;
    }

    private void handlePan(int i, MotionEvent motionEvent) {
        PhotoFilterView.CurvesValue curvesValue;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (i == 1) {
            selectSegmentWithPoint(x);
            return;
        }
        if (i != 2) {
            if (i == 3 || i == 4 || i == 5) {
                unselectSegments();
                return;
            }
            return;
        }
        float fMin = Math.min(2.0f, (this.lastY - y) / 8.0f);
        PhotoFilterView.CurvesToolValue curvesToolValue = this.curveValue;
        int i2 = curvesToolValue.activeType;
        if (i2 == 0) {
            curvesValue = curvesToolValue.luminanceCurve;
        } else if (i2 == 1) {
            curvesValue = curvesToolValue.redCurve;
        } else if (i2 == 2) {
            curvesValue = curvesToolValue.greenCurve;
        } else {
            curvesValue = i2 != 3 ? null : curvesToolValue.blueCurve;
        }
        int i3 = this.activeSegment;
        if (i3 == 1) {
            curvesValue.blacksLevel = Math.max(0.0f, Math.min(100.0f, curvesValue.blacksLevel + fMin));
        } else if (i3 == 2) {
            curvesValue.shadowsLevel = Math.max(0.0f, Math.min(100.0f, curvesValue.shadowsLevel + fMin));
        } else if (i3 == 3) {
            curvesValue.midtonesLevel = Math.max(0.0f, Math.min(100.0f, curvesValue.midtonesLevel + fMin));
        } else if (i3 == 4) {
            curvesValue.highlightsLevel = Math.max(0.0f, Math.min(100.0f, curvesValue.highlightsLevel + fMin));
        } else if (i3 == 5) {
            curvesValue.whitesLevel = Math.max(0.0f, Math.min(100.0f, curvesValue.whitesLevel + fMin));
        }
        invalidate();
        PhotoFilterCurvesControlDelegate photoFilterCurvesControlDelegate = this.delegate;
        if (photoFilterCurvesControlDelegate != null) {
            photoFilterCurvesControlDelegate.valueChanged();
        }
        this.lastX = x;
        this.lastY = y;
    }

    private void selectSegmentWithPoint(float f) {
        if (this.activeSegment != 0) {
            return;
        }
        RectOld rectOld = this.actualArea;
        this.activeSegment = (int) Math.floor(((f - rectOld.f1160x) / (rectOld.width / 5.0f)) + 1.0f);
    }

    private void unselectSegments() {
        if (this.activeSegment == 0) {
            return;
        }
        this.activeSegment = 0;
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onDraw(Canvas canvas) {
        RectOld rectOld;
        PhotoFilterView.CurvesValue curvesValue;
        String str;
        float f = this.actualArea.width / 5.0f;
        int i = 0;
        while (true) {
            rectOld = this.actualArea;
            if (i >= 4) {
                break;
            }
            float f2 = rectOld.f1160x;
            float f3 = i * f;
            float f4 = rectOld.f1161y;
            canvas.drawLine(f2 + f + f3, f4, f3 + f2 + f, f4 + rectOld.height, this.paint);
            i++;
        }
        float f5 = rectOld.f1160x;
        float f6 = rectOld.f1161y;
        canvas.drawLine(f5, rectOld.height + f6, f5 + rectOld.width, f6, this.paintDash);
        int i2 = this.curveValue.activeType;
        if (i2 == 0) {
            this.paintCurve.setColor(-1);
            curvesValue = this.curveValue.luminanceCurve;
        } else if (i2 == 1) {
            this.paintCurve.setColor(-1229492);
            curvesValue = this.curveValue.redCurve;
        } else if (i2 == 2) {
            this.paintCurve.setColor(-15667555);
            curvesValue = this.curveValue.greenCurve;
        } else if (i2 != 3) {
            curvesValue = null;
        } else {
            this.paintCurve.setColor(-13404165);
            curvesValue = this.curveValue.blueCurve;
        }
        int i3 = 0;
        while (i3 < 5) {
            if (i3 == 0) {
                str = String.format(Locale.US, "%.2f", Float.valueOf(curvesValue.blacksLevel / 100.0f));
            } else {
                str = i3 != 1 ? i3 != 2 ? i3 != 3 ? i3 != 4 ? _UrlKt.FRAGMENT_ENCODE_SET : String.format(Locale.US, "%.2f", Float.valueOf(curvesValue.whitesLevel / 100.0f)) : String.format(Locale.US, "%.2f", Float.valueOf(curvesValue.highlightsLevel / 100.0f)) : String.format(Locale.US, "%.2f", Float.valueOf(curvesValue.midtonesLevel / 100.0f)) : String.format(Locale.US, "%.2f", Float.valueOf(curvesValue.shadowsLevel / 100.0f));
            }
            float fMeasureText = this.textPaint.measureText(str);
            RectOld rectOld2 = this.actualArea;
            canvas.drawText(str, rectOld2.f1160x + ((f - fMeasureText) / 2.0f) + (i3 * f), (rectOld2.f1161y + rectOld2.height) - AndroidUtilities.dp(4.0f), this.textPaint);
            i3++;
        }
        float[] fArrInterpolateCurve = curvesValue.interpolateCurve();
        invalidate();
        this.path.reset();
        for (int i4 = 0; i4 < fArrInterpolateCurve.length / 2; i4++) {
            Path path = this.path;
            if (i4 == 0) {
                RectOld rectOld3 = this.actualArea;
                int i5 = i4 * 2;
                path.moveTo(rectOld3.f1160x + (fArrInterpolateCurve[i5] * rectOld3.width), rectOld3.f1161y + ((1.0f - fArrInterpolateCurve[i5 + 1]) * rectOld3.height));
            } else {
                RectOld rectOld4 = this.actualArea;
                int i6 = i4 * 2;
                path.lineTo(rectOld4.f1160x + (fArrInterpolateCurve[i6] * rectOld4.width), rectOld4.f1161y + ((1.0f - fArrInterpolateCurve[i6 + 1]) * rectOld4.height));
            }
        }
        canvas.drawPath(this.path, this.paintCurve);
    }
}
