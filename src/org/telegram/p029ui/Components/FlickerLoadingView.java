package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.text.TextPaint;
import android.view.View;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class FlickerLoadingView extends View implements Theme.Colorable {
    private Paint backgroundPaint;
    private int color0;
    private int color1;
    private int colorKey1;
    private int colorKey2;
    private int colorKey3;
    FlickerLoadingView globalGradientView;
    private LinearGradient gradient;
    private int gradientWidth;
    private Paint headerPaint;
    private boolean ignoreHeightCheck;
    private boolean isSingleCell;
    private int itemsCount;
    private long lastUpdateTime;
    private Matrix matrix;
    private float memberRequestButtonWidth;
    private int paddingLeft;
    private int paddingTop;
    private Paint paint;
    private int parentHeight;
    private int parentWidth;
    private float parentXOffset;
    float[] randomParams;
    private RectF rectF;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean showDate;
    private int skipDrawItemsCount;
    private int totalTranslation;
    private boolean useHeaderOffset;
    private int viewType;

    public int getAdditionalHeight() {
        return 0;
    }

    public int getColumnsCount() {
        return 2;
    }

    public void setViewType(int i) {
        this.viewType = i;
        if (i == 11) {
            Random random = new Random();
            this.randomParams = new float[2];
            for (int i2 = 0; i2 < 2; i2++) {
                this.randomParams[i2] = Math.abs(random.nextInt() % MediaDataController.MAX_STYLE_RUNS_COUNT) / 1000.0f;
            }
        }
        invalidate();
    }

    public void setIsSingleCell(boolean z) {
        this.isSingleCell = z;
    }

    public int getViewType() {
        return this.viewType;
    }

    public void setColors(int i, int i2, int i3) {
        this.colorKey1 = i;
        this.colorKey2 = i2;
        this.colorKey3 = i3;
        invalidate();
    }

    public FlickerLoadingView(Context context) {
        this(context, null);
    }

    public FlickerLoadingView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.paint = new Paint();
        this.headerPaint = new Paint();
        this.rectF = new RectF();
        this.showDate = true;
        this.colorKey1 = Theme.key_actionBarDefaultSubmenuBackground;
        this.colorKey2 = Theme.key_listSelector;
        this.colorKey3 = -1;
        this.itemsCount = 1;
        this.resourcesProvider = resourcesProvider;
        this.matrix = new Matrix();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.isSingleCell) {
            int i3 = this.itemsCount;
            if (i3 > 1 && this.ignoreHeightCheck) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((getCellHeight(View.MeasureSpec.getSize(i)) * this.itemsCount) + getAdditionalHeight(), TLObject.FLAG_30));
                return;
            } else if (i3 > 1 && View.MeasureSpec.getSize(i2) > 0) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), getCellHeight(View.MeasureSpec.getSize(i)) * this.itemsCount) + getAdditionalHeight(), TLObject.FLAG_30));
                return;
            } else {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getCellHeight(View.MeasureSpec.getSize(i)) + getAdditionalHeight(), TLObject.FLAG_30));
                return;
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Canvas canvas2;
        Paint paint;
        int i;
        Paint paint2 = this.paint;
        if (this.globalGradientView != null) {
            if (getParent() != null) {
                View view = (View) getParent();
                this.globalGradientView.setParentSize(view.getMeasuredWidth(), view.getMeasuredHeight(), -getX());
            }
            paint2 = this.globalGradientView.paint;
        }
        Paint paint3 = paint2;
        if (getViewType() == 34 || getViewType() == 35 || getViewType() == 36) {
            this.parentXOffset = -getX();
        }
        updateColors();
        updateGradient();
        int cellHeight = this.paddingTop;
        if (this.useHeaderOffset) {
            int iM1124dp = cellHeight + AndroidUtilities.m1124dp(32.0f);
            int i2 = this.colorKey3;
            if (i2 >= 0) {
                this.headerPaint.setColor(getThemedColor(i2));
            }
            canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), AndroidUtilities.m1124dp(32.0f), this.colorKey3 >= 0 ? this.headerPaint : paint3);
            canvas2 = canvas;
            cellHeight = iM1124dp;
        } else {
            canvas2 = canvas;
        }
        int i3 = 0;
        int i4 = 1;
        if (getViewType() == 7) {
            while (cellHeight <= getMeasuredHeight()) {
                int cellHeight2 = getCellHeight(getMeasuredWidth());
                canvas2.drawCircle(checkRtl(AndroidUtilities.m1124dp(10.0f) + r4), (cellHeight2 >> 1) + cellHeight, AndroidUtilities.m1124dp(28.0f), paint3);
                this.rectF.set(AndroidUtilities.m1124dp(76.0f), AndroidUtilities.m1124dp(16.0f) + cellHeight, AndroidUtilities.m1124dp(148.0f), cellHeight + AndroidUtilities.m1124dp(24.0f));
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                this.rectF.set(AndroidUtilities.m1124dp(76.0f), AndroidUtilities.m1124dp(38.0f) + cellHeight, AndroidUtilities.m1124dp(268.0f), AndroidUtilities.m1124dp(46.0f) + cellHeight);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                if (SharedConfig.useThreeLinesLayout) {
                    this.rectF.set(AndroidUtilities.m1124dp(76.0f), AndroidUtilities.m1124dp(54.0f) + cellHeight, AndroidUtilities.m1124dp(220.0f), AndroidUtilities.m1124dp(62.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                }
                if (this.showDate) {
                    this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(16.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(24.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                }
                cellHeight += getCellHeight(getMeasuredWidth());
                i3++;
                if (this.isSingleCell && i3 >= this.itemsCount) {
                    break;
                }
            }
        } else if (getViewType() == 24) {
            while (cellHeight <= getMeasuredHeight()) {
                canvas2.drawCircle(checkRtl(AndroidUtilities.m1124dp(10.0f) + r3), AndroidUtilities.m1124dp(10.0f) + cellHeight + r3, AndroidUtilities.m1124dp(14.0f), paint3);
                canvas2.save();
                canvas2.translate(0.0f, -AndroidUtilities.m1124dp(4.0f));
                this.rectF.set(AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(16.0f) + cellHeight, AndroidUtilities.m1124dp(148.0f), AndroidUtilities.m1124dp(24.0f) + cellHeight);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                this.rectF.set(AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(38.0f) + cellHeight, AndroidUtilities.m1124dp(268.0f), AndroidUtilities.m1124dp(46.0f) + cellHeight);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                if (SharedConfig.useThreeLinesLayout) {
                    this.rectF.set(AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(54.0f) + cellHeight, AndroidUtilities.m1124dp(220.0f), AndroidUtilities.m1124dp(62.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                }
                if (this.showDate) {
                    this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(16.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(24.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                }
                canvas2.restore();
                cellHeight += getCellHeight(getMeasuredWidth());
                i3++;
                if (this.isSingleCell && i3 >= this.itemsCount) {
                    break;
                }
            }
        } else if (getViewType() == 18) {
            int cellHeight3 = cellHeight;
            while (cellHeight3 <= getMeasuredHeight()) {
                canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m1124dp(9.0f) + r1), AndroidUtilities.m1124dp(32.0f) + cellHeight3, AndroidUtilities.m1124dp(25.0f), paint3);
                int i5 = i3 % 2 == 0 ? 52 : 72;
                float f = 76;
                this.rectF.set(AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(20.0f) + cellHeight3, AndroidUtilities.m1124dp(i5 + 76), AndroidUtilities.m1124dp(28.0f) + cellHeight3);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                this.rectF.set(AndroidUtilities.m1124dp(i5 + 84), AndroidUtilities.m1124dp(20.0f) + cellHeight3, AndroidUtilities.m1124dp(i5 + 168), AndroidUtilities.m1124dp(28.0f) + cellHeight3);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                this.rectF.set(AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(42.0f) + cellHeight3, AndroidUtilities.m1124dp(140), AndroidUtilities.m1124dp(50.0f) + cellHeight3);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint3);
                Canvas canvas3 = canvas2;
                Paint paint4 = paint3;
                canvas3.drawLine(AndroidUtilities.m1124dp(f), getCellHeight(getMeasuredWidth()) + cellHeight3, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + cellHeight3, paint4);
                canvas2 = canvas3;
                cellHeight3 += getCellHeight(getMeasuredWidth());
                i3++;
                if (this.isSingleCell && i3 >= this.itemsCount) {
                    break;
                } else {
                    paint3 = paint4;
                }
            }
        } else {
            Paint paint5 = paint3;
            if (getViewType() == 19) {
                int cellHeight4 = cellHeight;
                while (cellHeight4 <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m1124dp(9.0f) + r1), AndroidUtilities.m1124dp(29.0f) + cellHeight4, AndroidUtilities.m1124dp(20.0f), paint5);
                    float f2 = 76;
                    this.rectF.set(AndroidUtilities.m1124dp(f2), AndroidUtilities.m1124dp(16.0f) + cellHeight4, AndroidUtilities.m1124dp((i3 % 2 == 0 ? 92 : 128) + 76), AndroidUtilities.m1124dp(24.0f) + cellHeight4);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(f2), AndroidUtilities.m1124dp(38.0f) + cellHeight4, AndroidUtilities.m1124dp(240), AndroidUtilities.m1124dp(46.0f) + cellHeight4);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    Canvas canvas4 = canvas2;
                    Paint paint6 = paint5;
                    canvas4.drawLine(AndroidUtilities.m1124dp(f2), getCellHeight(getMeasuredWidth()) + cellHeight4, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + cellHeight4, paint6);
                    canvas2 = canvas4;
                    paint5 = paint6;
                    cellHeight4 += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 1) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(AndroidUtilities.m1124dp(9.0f) + r4), (AndroidUtilities.m1124dp(78.0f) >> 1) + cellHeight, AndroidUtilities.m1124dp(25.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight, AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(28.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(42.0f) + cellHeight, AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(50.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(28.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 2 || getViewType() == 27) {
                int measuredWidth = (getMeasuredWidth() - (AndroidUtilities.m1124dp(2.0f) * (getColumnsCount() - 1))) / getColumnsCount();
                int i6 = getViewType() == 27 ? (int) (measuredWidth * 1.25f) : measuredWidth;
                int iM1124dp2 = cellHeight;
                int i7 = 0;
                while (true) {
                    if (iM1124dp2 >= getMeasuredHeight() && !this.isSingleCell) {
                        break;
                    }
                    int i8 = 0;
                    while (i8 < getColumnsCount()) {
                        if (i7 != 0 || i8 >= this.skipDrawItemsCount) {
                            paint = paint5;
                            canvas.drawRect((AndroidUtilities.m1124dp(2.0f) + measuredWidth) * i8, iM1124dp2, r1 + measuredWidth, iM1124dp2 + i6, paint);
                        } else {
                            paint = paint5;
                        }
                        i8++;
                        paint5 = paint;
                    }
                    Paint paint7 = paint5;
                    iM1124dp2 += AndroidUtilities.m1124dp(2.0f) + i6;
                    i7++;
                    if (this.isSingleCell && i7 >= 2) {
                        break;
                    } else {
                        paint5 = paint7;
                    }
                }
            } else if (getViewType() == 3) {
                while (cellHeight <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(8.0f) + cellHeight, AndroidUtilities.m1124dp(52.0f), AndroidUtilities.m1124dp(48.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(12.0f) + cellHeight, AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(34.0f) + cellHeight, AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(42.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(12.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 4) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(AndroidUtilities.m1124dp(12.0f) + r4), AndroidUtilities.m1124dp(6.0f) + cellHeight + r4, AndroidUtilities.m1124dp(44.0f) >> 1, paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(12.0f) + cellHeight, AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(34.0f) + cellHeight, AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(42.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(12.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 5) {
                while (cellHeight <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(11.0f) + cellHeight, AndroidUtilities.m1124dp(62.0f), AndroidUtilities.m1124dp(63.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(12.0f) + cellHeight, AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(34.0f) + cellHeight, AndroidUtilities.m1124dp(268.0f), AndroidUtilities.m1124dp(42.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(54.0f) + cellHeight, AndroidUtilities.m1124dp(188.0f), AndroidUtilities.m1124dp(62.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(12.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 6 || getViewType() == 10) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m1124dp(9.0f) + r4), (AndroidUtilities.m1124dp(64.0f) >> 1) + cellHeight, AndroidUtilities.m1124dp(23.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(25.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(47.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(28.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 29) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m1124dp(9.0f) + r4), (AndroidUtilities.m1124dp(64.0f) >> 1) + cellHeight, AndroidUtilities.m1124dp(23.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(25.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(47.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 33) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m1124dp(13.0f) + r4), (AndroidUtilities.m1124dp(58.0f) >> 1) + cellHeight, AndroidUtilities.m1124dp(23.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(72.0f), AndroidUtilities.m1124dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(25.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(72.0f), AndroidUtilities.m1124dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(47.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 30) {
                while (cellHeight <= getMeasuredHeight()) {
                    cellHeight += getCellHeight(getMeasuredWidth());
                    this.rectF.set(0.0f, cellHeight, getMeasuredWidth(), cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRect(this.rectF, paint5);
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 8) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m1124dp(11.0f) + r4), (AndroidUtilities.m1124dp(64.0f) >> 1) + cellHeight, AndroidUtilities.m1124dp(23.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(25.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(47.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(28.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 9) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(AndroidUtilities.m1124dp(35.0f)), (getCellHeight(getMeasuredWidth()) >> 1) + cellHeight, AndroidUtilities.m1124dp(32.0f) / 2, paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(72.0f), AndroidUtilities.m1124dp(16.0f) + cellHeight, AndroidUtilities.m1124dp(268.0f), AndroidUtilities.m1124dp(24.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.m1124dp(72.0f), AndroidUtilities.m1124dp(38.0f) + cellHeight, AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(46.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(16.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(24.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 11) {
                int i9 = 0;
                while (cellHeight <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(14.0f), (getMeasuredWidth() * 0.5f) + AndroidUtilities.m1124dp(this.randomParams[0] * 40.0f), AndroidUtilities.m1124dp(14.0f) + AndroidUtilities.m1124dp(8.0f));
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(14.0f), (getMeasuredWidth() - (getMeasuredWidth() * 0.2f)) - AndroidUtilities.m1124dp(this.randomParams[0] * 20.0f), AndroidUtilities.m1124dp(14.0f) + AndroidUtilities.m1124dp(8.0f));
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i9++;
                    if (this.isSingleCell && i9 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 12) {
                int iM1124dp3 = cellHeight + AndroidUtilities.m1124dp(14.0f);
                while (iM1124dp3 <= getMeasuredHeight()) {
                    int measuredWidth2 = getMeasuredWidth() / 4;
                    for (int i10 = 0; i10 < 4; i10++) {
                        float f3 = (measuredWidth2 * i10) + (measuredWidth2 / 2.0f);
                        canvas2.drawCircle(f3, AndroidUtilities.m1124dp(7.0f) + iM1124dp3 + (AndroidUtilities.m1124dp(56.0f) / 2.0f), AndroidUtilities.m1124dp(28.0f), paint5);
                        float fM1124dp = AndroidUtilities.m1124dp(7.0f) + iM1124dp3 + AndroidUtilities.m1124dp(56.0f) + AndroidUtilities.m1124dp(16.0f);
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(f3 - AndroidUtilities.m1124dp(24.0f), fM1124dp - AndroidUtilities.m1124dp(4.0f), f3 + AndroidUtilities.m1124dp(24.0f), fM1124dp + AndroidUtilities.m1124dp(4.0f));
                        canvas2.drawRoundRect(rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                    }
                    iM1124dp3 += getCellHeight(getMeasuredWidth());
                    if (this.isSingleCell) {
                        break;
                    }
                }
            } else if (getViewType() == 13) {
                float measuredHeight = getMeasuredHeight() / 2.0f;
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(AndroidUtilities.m1124dp(40.0f), measuredHeight - AndroidUtilities.m1124dp(4.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(120.0f), AndroidUtilities.m1124dp(4.0f) + measuredHeight);
                canvas2.drawRoundRect(rectF2, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                if (this.backgroundPaint == null) {
                    Paint paint8 = new Paint(1);
                    this.backgroundPaint = paint8;
                    paint8.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
                }
                while (i3 < 3) {
                    canvas2.drawCircle((getMeasuredWidth() - AndroidUtilities.m1124dp(56.0f)) + AndroidUtilities.m1124dp(13.0f) + (AndroidUtilities.m1124dp(12.0f) * i3), measuredHeight, AndroidUtilities.m1124dp(13.0f), this.backgroundPaint);
                    canvas2.drawCircle((getMeasuredWidth() - AndroidUtilities.m1124dp(56.0f)) + AndroidUtilities.m1124dp(13.0f) + (AndroidUtilities.m1124dp(12.0f) * i3), measuredHeight, AndroidUtilities.m1124dp(12.0f), paint5);
                    i3++;
                }
            } else if (getViewType() == 14 || getViewType() == 17) {
                int iM1124dp4 = AndroidUtilities.m1124dp(12.0f);
                int iM1124dp5 = AndroidUtilities.m1124dp(77.0f);
                int iM1124dp6 = AndroidUtilities.m1124dp(4.0f);
                float fM1124dp2 = AndroidUtilities.m1124dp(21.0f);
                float fM1124dp3 = AndroidUtilities.m1124dp(41.0f);
                while (iM1124dp4 < getMeasuredWidth()) {
                    if (this.backgroundPaint == null) {
                        this.backgroundPaint = new Paint(i4);
                    }
                    this.backgroundPaint.setColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    int i11 = iM1124dp4 + iM1124dp5;
                    rectF3.set(AndroidUtilities.m1124dp(4.0f) + iM1124dp4, AndroidUtilities.m1124dp(4.0f), i11 - AndroidUtilities.m1124dp(4.0f), getMeasuredHeight() - AndroidUtilities.m1124dp(4.0f));
                    canvas2.drawRoundRect(rectF3, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), paint5);
                    if (getViewType() == 14) {
                        float fM1124dp4 = AndroidUtilities.m1124dp(8.0f) + iM1124dp6;
                        float f4 = iM1124dp4;
                        float fM1124dp5 = AndroidUtilities.m1124dp(22.0f) + iM1124dp6 + f4;
                        i = i4;
                        this.rectF.set(fM1124dp5, fM1124dp4, fM1124dp5 + fM1124dp3, fM1124dp4 + fM1124dp2);
                        RectF rectF4 = this.rectF;
                        canvas2.drawRoundRect(rectF4, rectF4.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                        float fM1124dp6 = fM1124dp4 + AndroidUtilities.m1124dp(4.0f) + fM1124dp2;
                        float fM1124dp7 = f4 + AndroidUtilities.m1124dp(5.0f) + iM1124dp6;
                        this.rectF.set(fM1124dp7, fM1124dp6, fM1124dp7 + fM1124dp3, fM1124dp6 + fM1124dp2);
                        RectF rectF5 = this.rectF;
                        canvas2.drawRoundRect(rectF5, rectF5.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                    } else {
                        i = i4;
                        if (getViewType() == 17) {
                            float fM1124dp8 = AndroidUtilities.m1124dp(5.0f);
                            float fM1124dp9 = AndroidUtilities.m1124dp(32.0f);
                            float f5 = iM1124dp4 + ((iM1124dp5 - fM1124dp9) / 2.0f);
                            rectF3.set(f5, AndroidUtilities.m1124dp(21.0f), fM1124dp9 + f5, r14 + AndroidUtilities.m1124dp(32.0f));
                            canvas2.drawRoundRect(rectF3, fM1124dp8, fM1124dp8, this.backgroundPaint);
                        }
                    }
                    canvas2.drawCircle(iM1124dp4 + (iM1124dp5 / 2), getMeasuredHeight() - AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(8.0f), this.backgroundPaint);
                    iM1124dp4 = i11;
                    i4 = i;
                }
            } else if (getViewType() == 15) {
                int iM1124dp7 = AndroidUtilities.m1124dp(23.0f);
                int iM1124dp8 = AndroidUtilities.m1124dp(4.0f);
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m1124dp(12.0f) + iM1124dp7), AndroidUtilities.m1124dp(8.0f) + cellHeight + iM1124dp7, iM1124dp7, paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(74.0f), AndroidUtilities.m1124dp(12.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight);
                    checkRtl(this.rectF);
                    float f6 = iM1124dp8;
                    canvas2.drawRoundRect(this.rectF, f6, f6, paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(74.0f), AndroidUtilities.m1124dp(36.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(42.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, f6, f6, paint5);
                    if (this.memberRequestButtonWidth > 0.0f) {
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(73.0f), AndroidUtilities.m1124dp(62.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(73.0f) + this.memberRequestButtonWidth, AndroidUtilities.m1124dp(94.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, f6, f6, paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 16 || getViewType() == 23) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m1124dp(8.0f) + r4), AndroidUtilities.m1124dp(24.0f) + cellHeight, AndroidUtilities.m1124dp(18.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(58.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight, getWidth() - AndroidUtilities.m1124dp(53.0f), AndroidUtilities.m1124dp(28.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), paint5);
                    if (i3 < 4) {
                        canvas2.drawCircle(checkRtl((getWidth() - AndroidUtilities.m1124dp(12.0f)) - r4), AndroidUtilities.m1124dp(24.0f) + cellHeight, AndroidUtilities.m1124dp(12.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
                this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight, getWidth() - AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(28.0f) + cellHeight);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), paint5);
                this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(36.0f) + cellHeight, getWidth() - AndroidUtilities.m1124dp(53.0f), cellHeight + AndroidUtilities.m1124dp(44.0f));
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), paint5);
            } else {
                int i12 = this.viewType;
                if (i12 == 21) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(checkRtl(AndroidUtilities.m1124dp(20.0f) + r4), (AndroidUtilities.m1124dp(58.0f) >> 1) + cellHeight, AndroidUtilities.m1124dp(46.0f) >> 1, paint5);
                        this.rectF.set(AndroidUtilities.m1124dp(74.0f), AndroidUtilities.m1124dp(16.0f) + cellHeight, AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(24.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        this.rectF.set(AndroidUtilities.m1124dp(74.0f), AndroidUtilities.m1124dp(38.0f) + cellHeight, AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(46.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        cellHeight += getCellHeight(getMeasuredWidth());
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (i12 == 22) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(checkRtl(AndroidUtilities.m1124dp(20.0f) + r4), AndroidUtilities.m1124dp(6.0f) + cellHeight + r4, AndroidUtilities.m1124dp(48.0f) >> 1, paint5);
                        this.rectF.set(AndroidUtilities.m1124dp(76.0f), AndroidUtilities.m1124dp(16.0f) + cellHeight, AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(24.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        this.rectF.set(AndroidUtilities.m1124dp(76.0f), AndroidUtilities.m1124dp(38.0f) + cellHeight, AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(46.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        cellHeight += getCellHeight(getMeasuredWidth());
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (i12 == 25) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(AndroidUtilities.m1124dp(17.0f) + r4, AndroidUtilities.m1124dp(6.0f) + cellHeight + r4, AndroidUtilities.m1124dp(38.0f) >> 1, paint5);
                        this.rectF.set(AndroidUtilities.m1124dp(76.0f), AndroidUtilities.m1124dp(21.0f) + cellHeight, AndroidUtilities.m1124dp(220.0f), AndroidUtilities.m1124dp(29.0f) + cellHeight);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        cellHeight += getCellHeight(getMeasuredWidth());
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (i12 == 26) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(LocaleController.isRTL ? (getMeasuredWidth() - AndroidUtilities.m1124dp(21.0f)) - r4 : AndroidUtilities.m1124dp(21.0f) + r4, AndroidUtilities.m1124dp(16.0f) + cellHeight + r4, AndroidUtilities.m1124dp(21.0f) >> 1, paint5);
                        this.rectF.set(AndroidUtilities.m1124dp(60.0f), AndroidUtilities.m1124dp(21.0f) + cellHeight, AndroidUtilities.m1124dp(190.0f), AndroidUtilities.m1124dp(29.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(21.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(62.0f), AndroidUtilities.m1124dp(29.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        cellHeight += getCellHeight(getMeasuredWidth());
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (getViewType() == 28) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m1124dp(10.0f) + r4), (AndroidUtilities.m1124dp(58.0f) >> 1) + cellHeight, AndroidUtilities.m1124dp(24.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(260.0f), AndroidUtilities.m1124dp(25.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.m1124dp(140.0f), AndroidUtilities.m1124dp(47.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(20.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(28.0f) + cellHeight);
                            checkRtl(this.rectF);
                            canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        }
                        cellHeight += getCellHeight(getMeasuredWidth());
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (getViewType() == 31) {
                    while (cellHeight <= getMeasuredHeight()) {
                        int cellHeight5 = getCellHeight(getMeasuredWidth());
                        float f7 = cellHeight;
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(18.0f), ((cellHeight5 - AndroidUtilities.m1124dp(22.0f)) / 2.0f) + f7, this.paddingLeft + AndroidUtilities.m1124dp(40.0f), ((AndroidUtilities.m1124dp(22.0f) + cellHeight5) / 2.0f) + f7);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(11.0f), AndroidUtilities.m1124dp(11.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(58.0f), ((cellHeight5 - AndroidUtilities.m1124dp(8.0f)) / 2.0f) + f7, Math.min(this.paddingLeft + AndroidUtilities.m1124dp(132.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(19.0f)), f7 + ((AndroidUtilities.m1124dp(8.0f) + cellHeight5) / 2.0f));
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        cellHeight += cellHeight5;
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (getViewType() == 32) {
                    while (cellHeight <= getMeasuredHeight()) {
                        int cellHeight6 = getCellHeight(getMeasuredWidth());
                        float f8 = cellHeight;
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(10.0f), ((cellHeight6 - AndroidUtilities.m1124dp(32.0f)) / 2.0f) + f8, this.paddingLeft + AndroidUtilities.m1124dp(42.0f), ((AndroidUtilities.m1124dp(32.0f) + cellHeight6) / 2.0f) + f8);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(64.0f), (((cellHeight6 - AndroidUtilities.m1124dp(14.0f)) - AndroidUtilities.m1124dp(10.0f)) / 2.0f) + f8, Math.min(this.paddingLeft + AndroidUtilities.m1124dp(118.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(19.0f)), (((cellHeight6 - AndroidUtilities.m1124dp(14.0f)) + AndroidUtilities.m1124dp(10.0f)) / 2.0f) + f8);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m1124dp(64.0f), (((AndroidUtilities.m1124dp(14.0f) + cellHeight6) - AndroidUtilities.m1124dp(8.0f)) / 2.0f) + f8, Math.min(this.paddingLeft + AndroidUtilities.m1124dp(144.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(19.0f)), f8 + (((AndroidUtilities.m1124dp(14.0f) + cellHeight6) + AndroidUtilities.m1124dp(8.0f)) / 2.0f));
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), paint5);
                        cellHeight += cellHeight6;
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (getViewType() == 34 || getViewType() == 35 || getViewType() == 36) {
                    this.rectF.set(this.paddingLeft, this.paddingTop, getMeasuredWidth() - this.paddingLeft, getMeasuredHeight() - this.paddingTop);
                    this.rectF.inset(AndroidUtilities.m1124dp(3.33f), AndroidUtilities.m1124dp(4.0f));
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(11.0f), AndroidUtilities.m1124dp(11.0f), paint5);
                }
            }
        }
        invalidate();
    }

    public void updateGradient() {
        FlickerLoadingView flickerLoadingView = this.globalGradientView;
        if (flickerLoadingView != null) {
            flickerLoadingView.updateGradient();
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jAbs = Math.abs(this.lastUpdateTime - jElapsedRealtime);
        if (jAbs > 17) {
            jAbs = 16;
        }
        if (jAbs < 4) {
            jAbs = 0;
        }
        int iMax = this.parentWidth;
        if (iMax == 0) {
            iMax = getMeasuredWidth();
        }
        int i = this.viewType;
        if (i == 34 || i == 35 || i == 36) {
            iMax = Math.max(iMax, AndroidUtilities.displaySize.x);
        }
        int measuredHeight = this.parentHeight;
        if (measuredHeight == 0) {
            measuredHeight = getMeasuredHeight();
        }
        this.lastUpdateTime = jElapsedRealtime;
        if (this.isSingleCell || this.viewType == 13 || getViewType() == 14 || getViewType() == 17) {
            int i2 = (int) (this.totalTranslation + ((jAbs * ((long) iMax)) / 400.0f));
            this.totalTranslation = i2;
            if (i2 >= iMax * 2) {
                this.totalTranslation = (-this.gradientWidth) * 2;
            }
            this.matrix.setTranslate(this.totalTranslation + this.parentXOffset, 0.0f);
        } else {
            int i3 = (int) (this.totalTranslation + ((jAbs * ((long) measuredHeight)) / 400.0f));
            this.totalTranslation = i3;
            if (i3 >= measuredHeight * 2) {
                this.totalTranslation = (-this.gradientWidth) * 2;
            }
            this.matrix.setTranslate(this.parentXOffset, this.totalTranslation);
        }
        LinearGradient linearGradient = this.gradient;
        if (linearGradient != null) {
            linearGradient.setLocalMatrix(this.matrix);
        }
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        int i;
        FlickerLoadingView flickerLoadingView = this.globalGradientView;
        if (flickerLoadingView != null) {
            flickerLoadingView.updateColors();
            return;
        }
        int themedColor = getThemedColor(this.colorKey1);
        int themedColor2 = getThemedColor(this.colorKey2);
        if (this.color1 == themedColor2 && this.color0 == themedColor) {
            return;
        }
        this.color0 = themedColor;
        this.color1 = themedColor2;
        int i2 = this.viewType;
        if (i2 == 34 || i2 == 35 || i2 == 36) {
            this.gradientWidth = AndroidUtilities.displaySize.x;
        } else if (this.isSingleCell || i2 == 13 || i2 == 14 || i2 == 17) {
            this.gradientWidth = AndroidUtilities.m1124dp(200.0f);
        } else {
            this.gradientWidth = AndroidUtilities.m1124dp(600.0f);
        }
        if (this.isSingleCell || (i = this.viewType) == 13 || i == 14 || i == 17) {
            this.gradient = new LinearGradient(0.0f, 0.0f, this.gradientWidth, 0.0f, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{0.0f, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
        } else {
            this.gradient = new LinearGradient(0.0f, 0.0f, 0.0f, this.gradientWidth, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{0.0f, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
        }
        this.paint.setShader(this.gradient);
    }

    private float checkRtl(float f) {
        return LocaleController.isRTL ? getMeasuredWidth() - f : f;
    }

    private void checkRtl(RectF rectF) {
        if (LocaleController.isRTL) {
            rectF.left = getMeasuredWidth() - rectF.left;
            rectF.right = getMeasuredWidth() - rectF.right;
        }
    }

    private int getCellHeight(int i) {
        switch (getViewType()) {
            case 1:
                return AndroidUtilities.m1124dp(78.0f) + 1;
            case 2:
                return ((i - (AndroidUtilities.m1124dp(2.0f) * (getColumnsCount() - 1))) / getColumnsCount()) + AndroidUtilities.m1124dp(2.0f);
            case 3:
            case 4:
                return AndroidUtilities.m1124dp(56.0f);
            case 5:
                return AndroidUtilities.m1124dp(80.0f);
            case 6:
            case 18:
                return AndroidUtilities.m1124dp(64.0f);
            case 7:
                return AndroidUtilities.m1124dp((SharedConfig.useThreeLinesLayout ? 78 : 72) + 1);
            case 8:
                return AndroidUtilities.m1124dp(61.0f);
            case 9:
                return AndroidUtilities.m1124dp(66.0f);
            case 10:
                return AndroidUtilities.m1124dp(58.0f);
            case 11:
                return AndroidUtilities.m1124dp(36.0f);
            case 12:
                return AndroidUtilities.m1124dp(103.0f);
            case 13:
            case 14:
            case 17:
            case 20:
            case 27:
            default:
                return 0;
            case 15:
                return AndroidUtilities.m1124dp(107.0f);
            case 16:
            case 23:
                return AndroidUtilities.m1124dp(50.0f);
            case 19:
                return AndroidUtilities.m1124dp(58.0f);
            case 21:
                return AndroidUtilities.m1124dp(58.0f);
            case 22:
                return AndroidUtilities.m1124dp(60.0f);
            case 24:
                return AndroidUtilities.m1124dp((SharedConfig.useThreeLinesLayout ? 76 : 64) + 1);
            case 25:
                return AndroidUtilities.m1124dp(51.0f);
            case 26:
                return AndroidUtilities.m1124dp(50.0f) + 1;
            case 28:
                return AndroidUtilities.m1124dp(58.0f);
            case 29:
                return AndroidUtilities.m1124dp(60.0f) + 1;
            case 30:
                return AndroidUtilities.m1124dp(32.0f);
            case 31:
                return AndroidUtilities.m1124dp(48.0f) + 1;
            case 32:
                return AndroidUtilities.m1124dp(56.0f) + 1;
            case 33:
                return AndroidUtilities.m1124dp(58.0f);
            case 34:
                return AndroidUtilities.m1124dp(140.0f);
            case 35:
                return AndroidUtilities.m1124dp(112.0f);
            case 36:
                return AndroidUtilities.m1124dp(108.0f);
        }
    }

    public void showDate(boolean z) {
        this.showDate = z;
    }

    public void setUseHeaderOffset(boolean z) {
        this.useHeaderOffset = z;
    }

    public void skipDrawItemsCount(int i) {
        this.skipDrawItemsCount = i;
    }

    public void setPaddingTop(int i) {
        this.paddingTop = i;
        invalidate();
    }

    public void setPaddingLeft(int i) {
        this.paddingLeft = i;
        invalidate();
    }

    public void setItemsCount(int i) {
        this.itemsCount = i;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setGlobalGradientView(FlickerLoadingView flickerLoadingView) {
        this.globalGradientView = flickerLoadingView;
    }

    public void setParentSize(int i, int i2, float f) {
        this.parentWidth = i;
        this.parentHeight = i2;
        this.parentXOffset = f;
    }

    public Paint getPaint() {
        return this.paint;
    }

    public void setIgnoreHeightCheck(boolean z) {
        this.ignoreHeightCheck = z;
    }

    public void setMemberRequestButton(boolean z) {
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint.setTextSize(AndroidUtilities.m1124dp(14.0f));
        this.memberRequestButtonWidth = AndroidUtilities.m1124dp(34.0f) + textPaint.measureText(LocaleController.getString(z ? C2888R.string.AddToChannel : C2888R.string.AddToGroup));
    }
}
