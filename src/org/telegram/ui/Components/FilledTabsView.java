package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes7.dex */
public class FilledTabsView extends View {
    private final Paint backgroundPaint;
    private RectF[] bounds;
    private int lastPressedIndex;
    private Utilities.Callback<Integer> onTabClick;
    private final Paint selectedPaint;
    private final Path selectedPath;
    private float selectedTabIndex;
    private int selectedTextColor;
    private Text[] tabs;
    private int textColor;

    public FilledTabsView(Context context) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.selectedPaint = new Paint(1);
        this.selectedPath = new Path();
        this.textColor = -1;
        this.selectedTextColor = -1;
        this.lastPressedIndex = -1;
    }

    public void setTabs(CharSequence... charSequenceArr) {
        this.tabs = new Text[charSequenceArr.length];
        this.bounds = new RectF[charSequenceArr.length];
        for (int i = 0; i < charSequenceArr.length; i++) {
            this.tabs[i] = new Text(charSequenceArr[i], 14.0f, AndroidUtilities.bold());
            this.bounds[i] = new RectF();
        }
        invalidate();
    }

    public void setSelected(float f) {
        if (Math.abs(f - this.selectedTabIndex) > 0.001f) {
            invalidate();
        }
        this.selectedTabIndex = f;
    }

    public FilledTabsView onTabSelected(Utilities.Callback<Integer> callback) {
        this.onTabClick = callback;
        return this;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.backgroundPaint.setColor(i);
        invalidate();
    }

    public void setSelectedColor(int i) {
        this.selectedPaint.setColor(i);
        invalidate();
    }

    public void setTextColor(int i) {
        this.textColor = i;
        invalidate();
    }

    public void setSelectedTextColor(int i) {
        this.selectedTextColor = i;
        invalidate();
    }

    public void setColors(int i, int i2, int i3, int i4) {
        this.backgroundPaint.setColor(i);
        this.selectedPaint.setColor(i2);
        this.textColor = i3;
        this.selectedTextColor = i4;
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.tabs == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float f = 4.0f;
        int iDp = AndroidUtilities.dp(4.0f) + (this.tabs.length * AndroidUtilities.dp(24.0f)) + AndroidUtilities.dp(4.0f);
        int i = 0;
        while (true) {
            Text[] textArr = this.tabs;
            if (i >= textArr.length) {
                break;
            }
            iDp = (int) (iDp + textArr[i].getWidth());
            i++;
        }
        float fDp = (height - AndroidUtilities.dp(36.0f)) / 2.0f;
        float fDp2 = (AndroidUtilities.dp(36.0f) + height) / 2.0f;
        float f2 = (width - iDp) / 2.0f;
        float fDp3 = AndroidUtilities.dp(16.0f) + f2;
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f2, fDp, iDp + f2, fDp2);
        canvas.drawRoundRect(rectF, AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f), this.backgroundPaint);
        float fDp4 = f2 + AndroidUtilities.dp(16.0f);
        int i2 = 0;
        while (i2 < this.tabs.length) {
            this.bounds[i2].set(fDp4 - AndroidUtilities.dp(16.0f), fDp, this.tabs[i2].getWidth() + fDp4 + AndroidUtilities.dp(16.0f), fDp2);
            fDp4 += this.tabs[i2].getWidth() + AndroidUtilities.dp(24.0f);
            i2++;
            f = f;
        }
        AndroidUtilities.dp(f);
        int iClamp = Utilities.clamp((int) Math.floor(this.selectedTabIndex), this.tabs.length - 1, 0);
        int iClamp2 = Utilities.clamp((int) Math.ceil(this.selectedTabIndex), this.tabs.length - 1, 0);
        float fDp5 = this.bounds[iClamp].left + AndroidUtilities.dp(r16);
        float fDp6 = this.bounds[iClamp2].left + AndroidUtilities.dp(r16);
        float f3 = this.selectedTabIndex;
        float fLerp = AndroidUtilities.lerp(fDp5, fDp6, (float) (((double) f3) - Math.floor(f3)));
        float fDp7 = this.bounds[iClamp].right - AndroidUtilities.dp(r16);
        float fDp8 = this.bounds[iClamp2].right - AndroidUtilities.dp(r16);
        float f4 = this.selectedTabIndex;
        float fLerp2 = AndroidUtilities.lerp(fDp7, fDp8, (float) (((double) f4) - Math.floor(f4)));
        RectF rectF2 = AndroidUtilities.rectTmp;
        rectF2.set(fLerp, (height - AndroidUtilities.dp(28.0f)) / 2.0f, fLerp2, (AndroidUtilities.dp(28.0f) + height) / 2.0f);
        this.selectedPath.rewind();
        this.selectedPath.addRoundRect(rectF2, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), Path.Direction.CW);
        canvas.drawRoundRect(rectF2, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), this.selectedPaint);
        drawTabsText(canvas, fDp3, height, this.textColor);
        canvas.save();
        canvas.clipPath(this.selectedPath);
        drawTabsText(canvas, fDp3, height, this.selectedTextColor);
        canvas.restore();
    }

    private void drawTabsText(Canvas canvas, float f, int i, int i2) {
        Text[] textArr = this.tabs;
        int length = textArr.length;
        int i3 = 0;
        float width = f;
        while (i3 < length) {
            Text text = textArr[i3];
            Canvas canvas2 = canvas;
            text.draw(canvas2, width, i / 2.0f, i2, 1.0f);
            width += text.getWidth() + AndroidUtilities.dp(24.0f);
            i3++;
            canvas = canvas2;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i = 0;
        if (this.tabs == null || this.bounds == null) {
            return false;
        }
        while (true) {
            RectF[] rectFArr = this.bounds;
            if (i >= rectFArr.length) {
                i = -1;
                break;
            }
            if (rectFArr[i].contains(motionEvent.getX(), motionEvent.getY())) {
                break;
            }
            i++;
        }
        if (i >= 0 && i != this.lastPressedIndex) {
            this.lastPressedIndex = i;
            Utilities.Callback<Integer> callback = this.onTabClick;
            if (callback != null) {
                callback.run(Integer.valueOf(i));
            }
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.lastPressedIndex = -1;
        }
        if (motionEvent.getAction() != 0 || i < 0) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }
}
