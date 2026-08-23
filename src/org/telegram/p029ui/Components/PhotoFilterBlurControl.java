package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.BubbleActivity;

/* JADX INFO: loaded from: classes7.dex */
public class PhotoFilterBlurControl extends FrameLayout {
    private static final float BlurInsetProximity = AndroidUtilities.m1124dp(20.0f);
    private static final float BlurViewCenterInset = AndroidUtilities.m1124dp(30.0f);
    private static final float BlurViewRadiusInset = AndroidUtilities.m1124dp(30.0f);
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
    private Point centerPoint;
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
    private Point startCenterPoint;
    private float startDistance;
    private float startPointerDistance;
    private float startRadius;
    private int type;

    private enum BlurViewActiveControl {
        BlurViewActiveControlNone,
        BlurViewActiveControlCenter,
        BlurViewActiveControlInnerRadius,
        BlurViewActiveControlOuterRadius,
        BlurViewActiveControlWholeArea,
        BlurViewActiveControlRotation
    }

    public interface PhotoFilterLinearBlurControlDelegate {
        void valueChanged(Point point, float f, float f2, float f3);
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
        this.startCenterPoint = new Point();
        this.actualAreaSize = new Size();
        this.centerPoint = new Point(0.5f, 0.5f);
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
        this.arcPaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
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

    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0047  */
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
                    Point actualCenterPoint = getActualCenterPoint();
                    Point point = new Point(x - actualCenterPoint.f2016x, y - actualCenterPoint.f2017y);
                    float f = point.f2016x;
                    float f2 = point.f2017y;
                    float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
                    float actualInnerRadius = getActualInnerRadius();
                    float actualOuterRadius = getActualOuterRadius();
                    boolean z = Math.abs(actualOuterRadius - actualInnerRadius) < BlurInsetProximity;
                    float f3 = z ? 0.0f : BlurViewRadiusInset;
                    float f4 = z ? 0.0f : BlurViewRadiusInset;
                    int i = this.type;
                    if (i == 0) {
                        float fAbs = (float) Math.abs((((double) point.f2016x) * Math.cos(((double) degreesToRadians(this.angle)) + 1.5707963267948966d)) + (((double) point.f2017y) * Math.sin(((double) degreesToRadians(this.angle)) + 1.5707963267948966d)));
                        if (fSqrt < BlurViewCenterInset) {
                            this.isMoving = true;
                        } else {
                            float f5 = BlurViewRadiusInset;
                            if (fAbs > actualInnerRadius - f5 && fAbs < f3 + actualInnerRadius) {
                                this.isMoving = true;
                            } else if ((fAbs > actualOuterRadius - f4 && fAbs < actualOuterRadius + f5) || fAbs <= actualInnerRadius - f5 || fAbs >= actualOuterRadius + f5) {
                                this.isMoving = true;
                            }
                        }
                    } else if (i == 1) {
                        if (fSqrt < BlurViewCenterInset) {
                            this.isMoving = true;
                        } else {
                            float f6 = BlurViewRadiusInset;
                            if (fSqrt > actualInnerRadius - f6 && fSqrt < actualInnerRadius + f3) {
                                this.isMoving = true;
                            } else if (fSqrt > actualOuterRadius - f4 && fSqrt < actualOuterRadius + f6) {
                                this.isMoving = true;
                            }
                        }
                    }
                    this.checkForMoving = false;
                    if (this.isMoving) {
                        handlePan(1, motionEvent);
                    }
                }
            } else {
                if (this.isMoving) {
                    handlePan(3, motionEvent);
                    this.checkForMoving = true;
                    this.isMoving = false;
                }
                if (motionEvent.getPointerCount() == 2) {
                    if (this.checkForZooming && !this.isZooming) {
                        handlePinch(1, motionEvent);
                        this.isZooming = true;
                    }
                } else {
                    handlePinch(3, motionEvent);
                    this.checkForZooming = true;
                    this.isZooming = false;
                }
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
        Point actualCenterPoint = getActualCenterPoint();
        float f = x - actualCenterPoint.f2016x;
        float f2 = y - actualCenterPoint.f2017y;
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
            int iOrdinal = this.activeControl.ordinal();
            if (iOrdinal == 1) {
                float f9 = x - this.pointerStartX;
                float f10 = y - this.pointerStartY;
                float width = (getWidth() - this.actualAreaSize.width) / 2.0f;
                float f11 = this.inBubbleMode ? 0 : AndroidUtilities.statusBarHeight;
                float height = getHeight();
                Size size2 = this.actualAreaSize;
                float f12 = size2.height;
                Rect rect = new Rect(width, f11 + ((height - f12) / 2.0f), size2.width, f12);
                float f13 = rect.f2057x;
                float fMax = Math.max(f13, Math.min(rect.width + f13, this.startCenterPoint.f2016x + f9));
                float f14 = rect.f2058y;
                Point point = new Point(fMax, Math.max(f14, Math.min(rect.height + f14, this.startCenterPoint.f2017y + f10)));
                float f15 = point.f2016x - rect.f2057x;
                Size size3 = this.actualAreaSize;
                float f16 = size3.width;
                this.centerPoint = new Point(f15 / f16, ((point.f2017y - rect.f2058y) + ((f16 - size3.height) / 2.0f)) / f16);
            } else if (iOrdinal == 2) {
                this.falloff = Math.min(Math.max(0.1f, (this.startRadius + (fAbs - this.startDistance)) / fMin), this.size - 0.02f);
            } else if (iOrdinal == 3) {
                this.size = Math.max(this.falloff + 0.02f, (this.startRadius + (fAbs - this.startDistance)) / fMin);
            } else if (iOrdinal == 5) {
                float f17 = x - this.pointerStartX;
                float f18 = y - this.pointerStartY;
                boolean z = x > actualCenterPoint.f2016x;
                boolean z2 = y > actualCenterPoint.f2017y;
                boolean z3 = Math.abs(f18) > Math.abs(f17);
                if (z || z2 ? !(!z || z2 ? !z || !z2 ? !z3 ? f17 >= 0.0f : f18 >= 0.0f : !z3 ? f17 >= 0.0f : f18 <= 0.0f : !z3 ? f17 <= 0.0f : f18 <= 0.0f) : !(!z3 ? f17 <= 0.0f : f18 >= 0.0f)) {
                    i = 1;
                }
                this.angle += ((((float) Math.sqrt((f17 * f17) + (f18 * f18))) * ((i * 2) - 1)) / 3.1415927f) / 1.15f;
                this.pointerStartX = x;
                this.pointerStartY = y;
            }
        } else if (i3 == 1) {
            int iOrdinal2 = this.activeControl.ordinal();
            if (iOrdinal2 == 1) {
                float f19 = x - this.pointerStartX;
                float f20 = y - this.pointerStartY;
                float width2 = (getWidth() - this.actualAreaSize.width) / 2.0f;
                float f21 = this.inBubbleMode ? 0 : AndroidUtilities.statusBarHeight;
                float height2 = getHeight();
                Size size4 = this.actualAreaSize;
                float f22 = size4.height;
                Rect rect2 = new Rect(width2, f21 + ((height2 - f22) / 2.0f), size4.width, f22);
                float f23 = rect2.f2057x;
                float fMax2 = Math.max(f23, Math.min(rect2.width + f23, this.startCenterPoint.f2016x + f19));
                float f24 = rect2.f2058y;
                Point point2 = new Point(fMax2, Math.max(f24, Math.min(rect2.height + f24, this.startCenterPoint.f2017y + f20)));
                float f25 = point2.f2016x - rect2.f2057x;
                Size size5 = this.actualAreaSize;
                float f26 = size5.width;
                this.centerPoint = new Point(f25 / f26, ((point2.f2017y - rect2.f2058y) + ((f26 - size5.height) / 2.0f)) / f26);
            } else if (iOrdinal2 == 2) {
                this.falloff = Math.min(Math.max(0.1f, (this.startRadius + (fSqrt - this.startDistance)) / fMin), this.size - 0.02f);
            } else if (iOrdinal2 == 3) {
                this.size = Math.max(this.falloff + 0.02f, (this.startRadius + (fSqrt - this.startDistance)) / fMin);
            }
        }
        invalidate();
        PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate = this.delegate;
        if (photoFilterLinearBlurControlDelegate != null) {
            photoFilterLinearBlurControlDelegate.valueChanged(this.centerPoint, this.falloff, this.size, degreesToRadians(this.angle) + 1.5707964f);
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
    protected void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        Point actualCenterPoint = getActualCenterPoint();
        float actualInnerRadius = getActualInnerRadius();
        float actualOuterRadius = getActualOuterRadius();
        canvas2.translate(actualCenterPoint.f2016x, actualCenterPoint.f2017y);
        int i = this.type;
        int i2 = 0;
        if (i == 0) {
            canvas2.rotate(this.angle);
            float fM1124dp = AndroidUtilities.m1124dp(6.0f);
            float fM1124dp2 = AndroidUtilities.m1124dp(12.0f);
            float fM1124dp3 = AndroidUtilities.m1124dp(1.5f);
            for (int i3 = 0; i3 < 30; i3++) {
                float f = fM1124dp2 + fM1124dp;
                float f2 = i3 * f;
                float f3 = -actualInnerRadius;
                float f4 = f2 + fM1124dp2;
                float f5 = fM1124dp3 - actualInnerRadius;
                canvas2.drawRect(f2, f3, f4, f5, this.paint);
                float f6 = ((-i3) * f) - fM1124dp;
                float f7 = f6 - fM1124dp2;
                canvas2 = canvas;
                canvas2.drawRect(f7, f3, f6, f5, this.paint);
                float f8 = fM1124dp3 + actualInnerRadius;
                canvas2.drawRect(f2, actualInnerRadius, f4, f8, this.paint);
                canvas2.drawRect(f7, actualInnerRadius, f6, f8, this.paint);
            }
            float fM1124dp4 = AndroidUtilities.m1124dp(6.0f);
            while (i2 < 64) {
                float f9 = fM1124dp4 + fM1124dp;
                float f10 = i2 * f9;
                float f11 = -actualOuterRadius;
                float f12 = fM1124dp4 + f10;
                float f13 = fM1124dp3 - actualOuterRadius;
                canvas.drawRect(f10, f11, f12, f13, this.paint);
                float f14 = ((-i2) * f9) - fM1124dp;
                float f15 = f14 - fM1124dp4;
                canvas.drawRect(f15, f11, f14, f13, this.paint);
                float f16 = fM1124dp3 + actualOuterRadius;
                canvas.drawRect(f10, actualOuterRadius, f12, f16, this.paint);
                canvas.drawRect(f15, actualOuterRadius, f14, f16, this.paint);
                i2++;
            }
        } else if (i == 1) {
            float f17 = -actualInnerRadius;
            this.arcRect.set(f17, f17, actualInnerRadius, actualInnerRadius);
            for (int i4 = 0; i4 < 22; i4++) {
                canvas.drawArc(this.arcRect, 16.35f * i4, 10.2f, false, this.arcPaint);
            }
            float f18 = -actualOuterRadius;
            this.arcRect.set(f18, f18, actualOuterRadius, actualOuterRadius);
            while (i2 < 64) {
                canvas.drawArc(this.arcRect, 5.62f * i2, 3.6f, false, this.arcPaint);
                i2++;
            }
        }
        canvas.drawCircle(0.0f, 0.0f, AndroidUtilities.m1124dp(8.0f), this.paint);
    }

    private Point getActualCenterPoint() {
        float width = getWidth();
        float f = this.actualAreaSize.width;
        float f2 = ((width - f) / 2.0f) + (this.centerPoint.f2016x * f);
        int i = !this.inBubbleMode ? AndroidUtilities.statusBarHeight : 0;
        float height = getHeight();
        Size size = this.actualAreaSize;
        float f3 = size.height;
        float f4 = i + ((height - f3) / 2.0f);
        float f5 = size.width;
        return new Point(f2, (f4 - ((f5 - f3) / 2.0f)) + (this.centerPoint.f2017y * f5));
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
