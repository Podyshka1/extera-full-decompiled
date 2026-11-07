package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.BubbleActivity;

/* JADX INFO: loaded from: classes7.dex */
public class PhotoFilterBlurControl extends FrameLayout {
    private static final float BlurInsetProximity = AndroidUtilities.dp(20.0f);
    private static final float BlurViewCenterInset = AndroidUtilities.dp(30.0f);
    private static final float BlurViewRadiusInset = AndroidUtilities.dp(30.0f);
    private final int GestureStateBegan;
    private final int GestureStateCancelled;
    private final int GestureStateChanged;
    private final int GestureStateEnded;
    private final int GestureStateFailed;
    private BlurViewActiveControl activeControl;
    private Size actualAreaSize;
    private float angle;
    private Paint arcPaint;
    private RectF arcRect;
    private PointF centerPoint;
    private boolean checkForMoving;
    private boolean checkForZooming;
    private PhotoFilterLinearBlurControlDelegate delegate;
    private float falloff;
    private boolean inBubbleMode;
    private boolean isMoving;
    private boolean isZooming;
    private Paint paint;
    private float pointerScale;
    private float pointerStartX;
    private float pointerStartY;
    private float size;
    private PointF startCenterPoint;
    private float startDistance;
    private float startPointerDistance;
    private float startRadius;
    private int type;

    public enum BlurViewActiveControl {
        BlurViewActiveControlNone,
        BlurViewActiveControlCenter,
        BlurViewActiveControlInnerRadius,
        BlurViewActiveControlOuterRadius,
        BlurViewActiveControlWholeArea,
        BlurViewActiveControlRotation
    }

    public interface PhotoFilterLinearBlurControlDelegate {
        void valueChanged(PointF pointF, float f, float f2, float f3);
    }

    private float degreesToRadians(float f) {
        return (f * 3.1415927f) / 180.0f;
    }

    private void setSelected(boolean z, boolean z2) {
    }

    public PhotoFilterBlurControl(Context context) {
        super(context);
        this.GestureStateBegan = 1;
        this.GestureStateChanged = 2;
        this.GestureStateEnded = 3;
        this.GestureStateCancelled = 4;
        this.GestureStateFailed = 5;
        this.startCenterPoint = new PointF();
        this.actualAreaSize = new Size();
        this.centerPoint = new PointF(0.5f, 0.5f);
        this.falloff = 0.15f;
        this.size = 0.35f;
        this.arcRect = new RectF();
        this.pointerScale = 1.0f;
        this.checkForMoving = true;
        this.paint = new Paint(1);
        this.arcPaint = new Paint(1);
        setWillNotDraw(false);
        this.paint.setColor(-1);
        this.arcPaint.setColor(-1);
        this.arcPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.arcPaint.setStyle(Paint.Style.STROKE);
        this.inBubbleMode = context instanceof BubbleActivity;
    }

    public void setType(int i) {
        this.type = i;
        invalidate();
    }

    public void setDelegate(PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate) {
        this.delegate = photoFilterLinearBlurControlDelegate;
    }

    private float getDistance(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 2) {
            return 0.0f;
        }
        float x = motionEvent.getX(0);
        float y = motionEvent.getY(0);
        float x2 = x - motionEvent.getX(1);
        float y2 = y - motionEvent.getY(1);
        return (float) Math.sqrt((x2 * x2) + (y2 * y2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0045  */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ?? r5;
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (motionEvent.getPointerCount() == 1) {
                if (this.checkForMoving && !this.isMoving) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    PointF actualCenterPoint = getActualCenterPoint();
                    PointF pointF = new PointF(x - actualCenterPoint.x, y - actualCenterPoint.y);
                    float f = pointF.x;
                    float f2 = pointF.y;
                    float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
                    float actualInnerRadius = getActualInnerRadius();
                    float actualOuterRadius = getActualOuterRadius();
                    boolean z2 = Math.abs(actualOuterRadius - actualInnerRadius) < BlurInsetProximity;
                    float f3 = z2 ? 0.0f : BlurViewRadiusInset;
                    float f4 = z2 ? 0.0f : BlurViewRadiusInset;
                    int i = this.type;
                    if (i == 0) {
                        float fAbs = (float) Math.abs((((double) pointF.x) * Math.cos(((double) degreesToRadians(this.angle)) + 1.5707963267948966d)) + (((double) pointF.y) * Math.sin(((double) degreesToRadians(this.angle)) + 1.5707963267948966d)));
                        if (fSqrt < BlurViewCenterInset) {
                            z = true;
                            this.isMoving = true;
                        } else {
                            z = true;
                            float f5 = BlurViewRadiusInset;
                            if (fAbs > actualInnerRadius - f5 && fAbs < f3 + actualInnerRadius) {
                                this.isMoving = true;
                            } else if (fAbs > actualOuterRadius - f4 && fAbs < actualOuterRadius + f5) {
                                this.isMoving = true;
                            } else if (fAbs <= actualInnerRadius - f5 || fAbs >= actualOuterRadius + f5) {
                                r5 = 1;
                                this.isMoving = true;
                            } else {
                                r5 = 1;
                            }
                        }
                        r5 = z;
                    } else {
                        boolean z3 = true;
                        r5 = z3;
                        if (i == 1) {
                            if (fSqrt < BlurViewCenterInset) {
                                this.isMoving = true;
                                r5 = z3;
                            } else {
                                float f6 = BlurViewRadiusInset;
                                if (fSqrt <= actualInnerRadius - f6 || fSqrt >= actualInnerRadius + f3) {
                                    r5 = z3;
                                    if (fSqrt > actualOuterRadius - f4) {
                                        r5 = z3;
                                        if (fSqrt < actualOuterRadius + f6) {
                                            this.isMoving = true;
                                            r5 = z3;
                                        }
                                    }
                                } else {
                                    this.isMoving = true;
                                    r5 = z3;
                                }
                            }
                        }
                    }
                    this.checkForMoving = false;
                    if (!this.isMoving) {
                        return r5;
                    }
                    handlePan(r5, motionEvent);
                    return r5;
                }
            } else {
                if (this.isMoving) {
                    handlePan(3, motionEvent);
                    this.checkForMoving = true;
                    this.isMoving = false;
                }
                if (motionEvent.getPointerCount() == 2) {
                    if (!this.checkForZooming || this.isZooming) {
                        return true;
                    }
                    handlePinch(1, motionEvent);
                    this.isZooming = true;
                    return true;
                }
                handlePinch(3, motionEvent);
                this.checkForZooming = true;
                this.isZooming = false;
                return true;
            }
        } else if (actionMasked == 1) {
            if (this.isMoving) {
                handlePan(3, motionEvent);
                this.isMoving = false;
            } else if (this.isZooming) {
                handlePinch(3, motionEvent);
                this.isZooming = false;
            }
            this.checkForMoving = true;
            this.checkForZooming = true;
        } else if (actionMasked != 2) {
            if (actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked == 6) {
                    }
                }
            }
        } else if (this.isMoving) {
            handlePan(2, motionEvent);
        } else if (this.isZooming) {
            handlePinch(2, motionEvent);
        }
        return true;
    }

    private void handlePan(int i, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        PointF actualCenterPoint = getActualCenterPoint();
        float f = x - actualCenterPoint.x;
        float f2 = y - actualCenterPoint.y;
        float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        Size size = this.actualAreaSize;
        float fMin = Math.min(size.width, size.height);
        float f3 = this.falloff * fMin;
        float f4 = this.size * fMin;
        float fAbs = (float) Math.abs((((double) f) * Math.cos(((double) degreesToRadians(this.angle)) + 1.5707963267948966d)) + (((double) f2) * Math.sin(((double) degreesToRadians(this.angle)) + 1.5707963267948966d)));
        if (i == 1) {
            this.pointerStartX = motionEvent.getX();
            this.pointerStartY = motionEvent.getY();
            i = Math.abs(f4 - f3) < BlurInsetProximity ? 1 : 0;
            float f5 = i != 0 ? 0.0f : BlurViewRadiusInset;
            float f6 = i == 0 ? BlurViewRadiusInset : 0.0f;
            int i2 = this.type;
            if (i2 == 0) {
                if (fSqrt < BlurViewCenterInset) {
                    this.activeControl = BlurViewActiveControl.BlurViewActiveControlCenter;
                    this.startCenterPoint = actualCenterPoint;
                } else {
                    float f7 = BlurViewRadiusInset;
                    if (fAbs > f3 - f7 && fAbs < f5 + f3) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlInnerRadius;
                        this.startDistance = fAbs;
                        this.startRadius = f3;
                    } else if (fAbs > f4 - f6 && fAbs < f4 + f7) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlOuterRadius;
                        this.startDistance = fAbs;
                        this.startRadius = f4;
                    } else if (fAbs <= f3 - f7 || fAbs >= f4 + f7) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlRotation;
                    }
                }
            } else if (i2 == 1) {
                if (fSqrt < BlurViewCenterInset) {
                    this.activeControl = BlurViewActiveControl.BlurViewActiveControlCenter;
                    this.startCenterPoint = actualCenterPoint;
                } else {
                    float f8 = BlurViewRadiusInset;
                    if (fSqrt > f3 - f8 && fSqrt < f5 + f3) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlInnerRadius;
                        this.startDistance = fSqrt;
                        this.startRadius = f3;
                    } else if (fSqrt > f4 - f6 && fSqrt < f8 + f4) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlOuterRadius;
                        this.startDistance = fSqrt;
                        this.startRadius = f4;
                    }
                }
            }
            setSelected(true, true);
            return;
        }
        if (i != 2) {
            if (i == 3 || i == 4 || i == 5) {
                this.activeControl = BlurViewActiveControl.BlurViewActiveControlNone;
                setSelected(false, true);
                return;
            }
            return;
        }
        int i3 = this.type;
        if (i3 == 0) {
            int i4 = C42601.f1143xcde84254[this.activeControl.ordinal()];
            if (i4 == 1) {
                float f9 = x - this.pointerStartX;
                float f10 = y - this.pointerStartY;
                float width = (getWidth() - this.actualAreaSize.width) / 2.0f;
                float f11 = this.inBubbleMode ? 0 : AndroidUtilities.statusBarHeight;
                float height = getHeight();
                Size size2 = this.actualAreaSize;
                float f12 = size2.height;
                RectOld rectOld = new RectOld(width, f11 + ((height - f12) / 2.0f), size2.width, f12);
                float f13 = rectOld.f1162x;
                float fMax = Math.max(f13, Math.min(rectOld.width + f13, this.startCenterPoint.x + f9));
                float f14 = rectOld.f1163y;
                PointF pointF = new PointF(fMax, Math.max(f14, Math.min(rectOld.height + f14, this.startCenterPoint.y + f10)));
                float f15 = pointF.x - rectOld.f1162x;
                Size size3 = this.actualAreaSize;
                float f16 = size3.width;
                this.centerPoint = new PointF(f15 / f16, ((pointF.y - rectOld.f1163y) + ((f16 - size3.height) / 2.0f)) / f16);
            } else if (i4 == 2) {
                this.falloff = Math.min(Math.max(0.1f, (this.startRadius + (fAbs - this.startDistance)) / fMin), this.size - 0.02f);
            } else if (i4 == 3) {
                this.size = Math.max(this.falloff + 0.02f, (this.startRadius + (fAbs - this.startDistance)) / fMin);
            } else if (i4 == 4) {
                float f17 = x - this.pointerStartX;
                float f18 = y - this.pointerStartY;
                boolean z = x > actualCenterPoint.x;
                boolean z2 = y > actualCenterPoint.y;
                boolean z3 = Math.abs(f18) > Math.abs(f17);
                if (z || z2 ? !(!z || z2 ? !z || !z2 ? !z3 ? f17 >= 0.0f : f18 >= 0.0f : !z3 ? f17 >= 0.0f : f18 <= 0.0f : !z3 ? f17 <= 0.0f : f18 <= 0.0f) : !(!z3 ? f17 <= 0.0f : f18 >= 0.0f)) {
                    i = 1;
                }
                this.angle += ((((float) Math.sqrt((f17 * f17) + (f18 * f18))) * ((i * 2) - 1)) / 3.1415927f) / 1.15f;
                this.pointerStartX = x;
                this.pointerStartY = y;
            }
        } else if (i3 == 1) {
            int i5 = C42601.f1143xcde84254[this.activeControl.ordinal()];
            if (i5 == 1) {
                float f19 = x - this.pointerStartX;
                float f20 = y - this.pointerStartY;
                float width2 = (getWidth() - this.actualAreaSize.width) / 2.0f;
                float f21 = this.inBubbleMode ? 0 : AndroidUtilities.statusBarHeight;
                float height2 = getHeight();
                Size size4 = this.actualAreaSize;
                float f22 = size4.height;
                RectOld rectOld2 = new RectOld(width2, f21 + ((height2 - f22) / 2.0f), size4.width, f22);
                float f23 = rectOld2.f1162x;
                float fMax2 = Math.max(f23, Math.min(rectOld2.width + f23, this.startCenterPoint.x + f19));
                float f24 = rectOld2.f1163y;
                PointF pointF2 = new PointF(fMax2, Math.max(f24, Math.min(rectOld2.height + f24, this.startCenterPoint.y + f20)));
                float f25 = pointF2.x - rectOld2.f1162x;
                Size size5 = this.actualAreaSize;
                float f26 = size5.width;
                this.centerPoint = new PointF(f25 / f26, ((pointF2.y - rectOld2.f1163y) + ((f26 - size5.height) / 2.0f)) / f26);
            } else if (i5 == 2) {
                this.falloff = Math.min(Math.max(0.1f, (this.startRadius + (fSqrt - this.startDistance)) / fMin), this.size - 0.02f);
            } else if (i5 == 3) {
                this.size = Math.max(this.falloff + 0.02f, (this.startRadius + (fSqrt - this.startDistance)) / fMin);
            }
        }
        invalidate();
        PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate = this.delegate;
        if (photoFilterLinearBlurControlDelegate != null) {
            photoFilterLinearBlurControlDelegate.valueChanged(this.centerPoint, this.falloff, this.size, degreesToRadians(this.angle) + 1.5707964f);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.PhotoFilterBlurControl$1 */
    public static /* synthetic */ class C42601 {

        /* JADX INFO: renamed from: $SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl */
        static final /* synthetic */ int[] f1143xcde84254;

        static {
            int[] iArr = new int[BlurViewActiveControl.values().length];
            f1143xcde84254 = iArr;
            try {
                iArr[BlurViewActiveControl.BlurViewActiveControlCenter.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1143xcde84254[BlurViewActiveControl.BlurViewActiveControlInnerRadius.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1143xcde84254[BlurViewActiveControl.BlurViewActiveControlOuterRadius.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1143xcde84254[BlurViewActiveControl.BlurViewActiveControlRotation.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void handlePinch(int i, MotionEvent motionEvent) {
        if (i == 1) {
            this.startPointerDistance = getDistance(motionEvent);
            this.pointerScale = 1.0f;
            this.activeControl = BlurViewActiveControl.BlurViewActiveControlWholeArea;
            setSelected(true, true);
        } else if (i != 2) {
            if (i == 3 || i == 4 || i == 5) {
                this.activeControl = BlurViewActiveControl.BlurViewActiveControlNone;
                setSelected(false, true);
                return;
            }
            return;
        }
        float distance = getDistance(motionEvent);
        float f = this.pointerScale + (((distance - this.startPointerDistance) / AndroidUtilities.density) * 0.01f);
        this.pointerScale = f;
        float fMax = Math.max(0.1f, this.falloff * f);
        this.falloff = fMax;
        this.size = Math.max(fMax + 0.02f, this.size * this.pointerScale);
        this.pointerScale = 1.0f;
        this.startPointerDistance = distance;
        invalidate();
        PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate = this.delegate;
        if (photoFilterLinearBlurControlDelegate != null) {
            photoFilterLinearBlurControlDelegate.valueChanged(this.centerPoint, this.falloff, this.size, degreesToRadians(this.angle) + 1.5707964f);
        }
    }

    public void setActualAreaSize(float f, float f2) {
        Size size = this.actualAreaSize;
        size.width = f;
        size.height = f2;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF;
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        PointF actualCenterPoint = getActualCenterPoint();
        float actualInnerRadius = getActualInnerRadius();
        float actualOuterRadius = getActualOuterRadius();
        canvas2.translate(actualCenterPoint.x, actualCenterPoint.y);
        int i = this.type;
        int i2 = 0;
        if (i == 0) {
            canvas2.rotate(this.angle);
            float fDp = AndroidUtilities.dp(6.0f);
            float fDp2 = AndroidUtilities.dp(12.0f);
            float fDp3 = AndroidUtilities.dp(1.5f);
            for (int i3 = 0; i3 < 30; i3++) {
                float f = fDp2 + fDp;
                float f2 = i3 * f;
                float f3 = -actualInnerRadius;
                float f4 = f2 + fDp2;
                float f5 = fDp3 - actualInnerRadius;
                canvas2.drawRect(f2, f3, f4, f5, this.paint);
                float f6 = ((-i3) * f) - fDp;
                float f7 = f6 - fDp2;
                canvas2 = canvas;
                canvas2.drawRect(f7, f3, f6, f5, this.paint);
                float f8 = fDp3 + actualInnerRadius;
                canvas2.drawRect(f2, actualInnerRadius, f4, f8, this.paint);
                canvas2.drawRect(f7, actualInnerRadius, f6, f8, this.paint);
            }
            float fDp4 = AndroidUtilities.dp(6.0f);
            while (i2 < 64) {
                float f9 = fDp4 + fDp;
                float f10 = i2 * f9;
                float f11 = -actualOuterRadius;
                float f12 = fDp4 + f10;
                float f13 = fDp3 - actualOuterRadius;
                canvas.drawRect(f10, f11, f12, f13, this.paint);
                float f14 = ((-i2) * f9) - fDp;
                float f15 = f14 - fDp4;
                canvas.drawRect(f15, f11, f14, f13, this.paint);
                float f16 = fDp3 + actualOuterRadius;
                canvas.drawRect(f10, actualOuterRadius, f12, f16, this.paint);
                canvas.drawRect(f15, actualOuterRadius, f14, f16, this.paint);
                i2++;
            }
        } else if (i == 1) {
            float f17 = -actualInnerRadius;
            this.arcRect.set(f17, f17, actualInnerRadius, actualInnerRadius);
            int i4 = 0;
            while (true) {
                rectF = this.arcRect;
                if (i4 >= 22) {
                    break;
                }
                canvas.drawArc(rectF, 16.35f * i4, 10.2f, false, this.arcPaint);
                i4++;
            }
            float f18 = -actualOuterRadius;
            rectF.set(f18, f18, actualOuterRadius, actualOuterRadius);
            while (i2 < 64) {
                canvas.drawArc(this.arcRect, 5.62f * i2, 3.6f, false, this.arcPaint);
                i2++;
            }
        }
        canvas.drawCircle(0.0f, 0.0f, AndroidUtilities.dp(8.0f), this.paint);
    }

    private PointF getActualCenterPoint() {
        float width = getWidth();
        float f = this.actualAreaSize.width;
        float f2 = ((width - f) / 2.0f) + (this.centerPoint.x * f);
        int i = !this.inBubbleMode ? AndroidUtilities.statusBarHeight : 0;
        float height = getHeight();
        Size size = this.actualAreaSize;
        float f3 = size.height;
        float f4 = i + ((height - f3) / 2.0f);
        float f5 = size.width;
        return new PointF(f2, (f4 - ((f5 - f3) / 2.0f)) + (this.centerPoint.y * f5));
    }

    private float getActualInnerRadius() {
        Size size = this.actualAreaSize;
        return Math.min(size.width, size.height) * this.falloff;
    }

    private float getActualOuterRadius() {
        Size size = this.actualAreaSize;
        return Math.min(size.width, size.height) * this.size;
    }
}
