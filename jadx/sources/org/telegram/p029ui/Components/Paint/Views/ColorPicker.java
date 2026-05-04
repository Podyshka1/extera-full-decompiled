package org.telegram.p029ui.Components.Paint.Views;

import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Keep;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.Components.Paint.Swatch;

/* JADX INFO: loaded from: classes7.dex */
public class ColorPicker extends FrameLayout {
    private static final int[] COLORS = {-1431751, -2409774, -13610525, -11942419, -8337308, -205211, -223667, -16777216, -1};
    private static final float[] LOCATIONS = {0.0f, 0.14f, 0.24f, 0.39f, 0.49f, 0.62f, 0.73f, 0.85f, 1.0f};
    private Paint backgroundPaint;
    private boolean changingWeight;
    private boolean dragging;
    private float draggingFactor;
    private Paint gradientPaint;
    private boolean interacting;
    private OvershootInterpolator interpolator;
    private float location;
    private RectF rectF;
    public ImageView settingsButton;
    private Paint swatchPaint;
    private Paint swatchStrokePaint;
    private ImageView undoButton;
    private boolean wasChangingWeight;
    private float weight;

    public interface ColorPickerDelegate {
    }

    public void setDelegate(ColorPickerDelegate colorPickerDelegate) {
    }

    public void setUndoEnabled(boolean z) {
        this.undoButton.setAlpha(z ? 1.0f : 0.3f);
        this.undoButton.setEnabled(z);
    }

    public View getSettingsButton() {
        return this.settingsButton;
    }

    public void setSettingsButtonImage(int i) {
        this.settingsButton.setImageResource(i);
    }

    public Swatch getSwatch() {
        return new Swatch(colorForLocation(this.location), this.location, this.weight);
    }

    public void setSwatch(Swatch swatch) {
        setLocation(swatch.colorLocation);
        setWeight(swatch.brushWeight);
    }

    public int colorForLocation(float f) {
        float[] fArr;
        int i;
        if (f <= 0.0f) {
            return COLORS[0];
        }
        int i2 = 1;
        if (f >= 1.0f) {
            int[] iArr = COLORS;
            return iArr[iArr.length - 1];
        }
        while (true) {
            fArr = LOCATIONS;
            if (i2 >= fArr.length) {
                i2 = -1;
                i = -1;
                break;
            }
            if (fArr[i2] >= f) {
                i = i2 - 1;
                break;
            }
            i2++;
        }
        float f2 = fArr[i];
        int[] iArr2 = COLORS;
        return interpolateColors(iArr2[i], iArr2[i2], (f - f2) / (fArr[i2] - f2));
    }

    private int interpolateColors(int i, int i2, float f) {
        float fMin = Math.min(Math.max(f, 0.0f), 1.0f);
        int iRed = Color.red(i);
        int iRed2 = Color.red(i2);
        int iGreen = Color.green(i);
        int iGreen2 = Color.green(i2);
        return Color.argb(255, Math.min(255, (int) (iRed + ((iRed2 - iRed) * fMin))), Math.min(255, (int) (iGreen + ((iGreen2 - iGreen) * fMin))), Math.min(255, (int) (Color.blue(i) + ((Color.blue(i2) - r6) * fMin))));
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setLocation(float f) {
        this.location = f;
        int iColorForLocation = colorForLocation(f);
        this.swatchPaint.setColor(iColorForLocation);
        float[] fArr = new float[3];
        Color.colorToHSV(iColorForLocation, fArr);
        if (fArr[0] >= 0.001d || fArr[1] >= 0.001d) {
            this.swatchStrokePaint.setColor(iColorForLocation);
        } else {
            float f2 = fArr[2];
            if (f2 > 0.92f) {
                int i = (int) ((1.0f - (((f2 - 0.92f) / 0.08f) * 0.22f)) * 255.0f);
                this.swatchStrokePaint.setColor(Color.rgb(i, i, i));
            }
        }
        invalidate();
    }

    public void setWeight(float f) {
        this.weight = f;
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() > 1) {
            return false;
        }
        float x = motionEvent.getX() - this.rectF.left;
        float y = motionEvent.getY() - this.rectF.top;
        if (!this.interacting && y < (-AndroidUtilities.m1124dp(10.0f))) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 3 || actionMasked == 1 || actionMasked == 6) {
            this.interacting = false;
            this.wasChangingWeight = this.changingWeight;
            this.changingWeight = false;
            setDragging(false, true);
        } else if (actionMasked == 0 || actionMasked == 2) {
            if (!this.interacting) {
                this.interacting = true;
            }
            setLocation(Math.max(0.0f, Math.min(1.0f, x / this.rectF.width())));
            setDragging(true, true);
            if (y < (-AndroidUtilities.m1124dp(10.0f))) {
                this.changingWeight = true;
                setWeight(Math.max(0.0f, Math.min(1.0f, ((-y) - AndroidUtilities.m1124dp(10.0f)) / AndroidUtilities.m1124dp(190.0f))));
            }
            return true;
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.gradientPaint.setShader(new LinearGradient(AndroidUtilities.m1124dp(56.0f), 0.0f, i5 - AndroidUtilities.m1124dp(56.0f), 0.0f, COLORS, LOCATIONS, Shader.TileMode.REPEAT));
        this.rectF.set(AndroidUtilities.m1124dp(56.0f), i6 - AndroidUtilities.m1124dp(32.0f), i5 - AndroidUtilities.m1124dp(56.0f), r9 + AndroidUtilities.m1124dp(12.0f));
        ImageView imageView = this.settingsButton;
        imageView.layout(i5 - imageView.getMeasuredWidth(), i6 - AndroidUtilities.m1124dp(52.0f), i5, i6);
        this.undoButton.layout(0, i6 - AndroidUtilities.m1124dp(52.0f), this.settingsButton.getMeasuredWidth(), i6);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), this.gradientPaint);
        RectF rectF = this.rectF;
        int iWidth = (int) (rectF.left + (rectF.width() * this.location));
        int iCenterY = (int) ((this.rectF.centerY() + (this.draggingFactor * (-AndroidUtilities.m1124dp(70.0f)))) - (this.changingWeight ? this.weight * AndroidUtilities.m1124dp(190.0f) : 0.0f));
        AndroidUtilities.m1124dp(24.0f);
        float fFloor = (((int) Math.floor(AndroidUtilities.m1124dp(4.0f) + ((AndroidUtilities.m1124dp(19.0f) - AndroidUtilities.m1124dp(4.0f)) * this.weight))) * (this.draggingFactor + 1.0f)) / 2.0f;
        float f = iWidth;
        float f2 = iCenterY;
        canvas.drawCircle(f, f2, ((AndroidUtilities.m1124dp(22.0f) / 2) * (this.draggingFactor + 1.0f)) + 0.5f, this.swatchStrokePaint);
        canvas.drawCircle(f, f2, (AndroidUtilities.m1124dp(22.0f) / 2) * (this.draggingFactor + 1.0f), this.backgroundPaint);
        canvas.drawCircle(f, f2, fFloor, this.swatchPaint);
        canvas.drawCircle(f, f2, fFloor - AndroidUtilities.m1124dp(0.5f), this.swatchStrokePaint);
    }

    @Keep
    private void setDraggingFactor(float f) {
        this.draggingFactor = f;
        invalidate();
    }

    @Keep
    public float getDraggingFactor() {
        return this.draggingFactor;
    }

    private void setDragging(boolean z, boolean z2) {
        if (this.dragging == z) {
            return;
        }
        this.dragging = z;
        float f = z ? 1.0f : 0.0f;
        if (z2) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "draggingFactor", this.draggingFactor, f);
            objectAnimatorOfFloat.setInterpolator(this.interpolator);
            objectAnimatorOfFloat.setDuration(this.wasChangingWeight ? (int) (300 + (this.weight * 75.0f)) : 300);
            objectAnimatorOfFloat.start();
            return;
        }
        setDraggingFactor(f);
    }
}
