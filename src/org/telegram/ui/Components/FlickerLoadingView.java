package org.telegram.ui.Components;

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
import org.telegram.messenger.C2484R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;

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
            int iDp = cellHeight + AndroidUtilities.dp(32.0f);
            int i2 = this.colorKey3;
            if (i2 >= 0) {
                this.headerPaint.setColor(getThemedColor(i2));
            }
            canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), AndroidUtilities.dp(32.0f), this.colorKey3 >= 0 ? this.headerPaint : paint3);
            canvas2 = canvas;
            cellHeight = iDp;
        } else {
            canvas2 = canvas;
        }
        int i3 = 0;
        int i4 = 1;
        if (getViewType() == 7) {
            while (cellHeight <= getMeasuredHeight()) {
                int cellHeight2 = getCellHeight(getMeasuredWidth());
                canvas2.drawCircle(checkRtl(AndroidUtilities.dp(10.0f) + r4), (cellHeight2 >> 1) + cellHeight, AndroidUtilities.dp(28.0f), paint3);
                this.rectF.set(AndroidUtilities.dp(76.0f), AndroidUtilities.dp(16.0f) + cellHeight, AndroidUtilities.dp(148.0f), cellHeight + AndroidUtilities.dp(24.0f));
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                this.rectF.set(AndroidUtilities.dp(76.0f), AndroidUtilities.dp(38.0f) + cellHeight, AndroidUtilities.dp(268.0f), AndroidUtilities.dp(46.0f) + cellHeight);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                if (SharedConfig.useThreeLinesLayout) {
                    this.rectF.set(AndroidUtilities.dp(76.0f), AndroidUtilities.dp(54.0f) + cellHeight, AndroidUtilities.dp(220.0f), AndroidUtilities.dp(62.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                }
                if (this.showDate) {
                    this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(16.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(24.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                }
                cellHeight += getCellHeight(getMeasuredWidth());
                i3++;
                if (this.isSingleCell && i3 >= this.itemsCount) {
                    break;
                }
            }
        } else if (getViewType() == 24) {
            while (cellHeight <= getMeasuredHeight()) {
                canvas2.drawCircle(checkRtl(AndroidUtilities.dp(10.0f) + r3), AndroidUtilities.dp(10.0f) + cellHeight + r3, AndroidUtilities.dp(14.0f), paint3);
                canvas2.save();
                canvas2.translate(0.0f, -AndroidUtilities.dp(4.0f));
                this.rectF.set(AndroidUtilities.dp(50.0f), AndroidUtilities.dp(16.0f) + cellHeight, AndroidUtilities.dp(148.0f), AndroidUtilities.dp(24.0f) + cellHeight);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                this.rectF.set(AndroidUtilities.dp(50.0f), AndroidUtilities.dp(38.0f) + cellHeight, AndroidUtilities.dp(268.0f), AndroidUtilities.dp(46.0f) + cellHeight);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                if (SharedConfig.useThreeLinesLayout) {
                    this.rectF.set(AndroidUtilities.dp(50.0f), AndroidUtilities.dp(54.0f) + cellHeight, AndroidUtilities.dp(220.0f), AndroidUtilities.dp(62.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                }
                if (this.showDate) {
                    this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(16.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(24.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
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
                canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.dp(9.0f) + r1), AndroidUtilities.dp(32.0f) + cellHeight3, AndroidUtilities.dp(25.0f), paint3);
                int i5 = i3 % 2 == 0 ? 52 : 72;
                float f = 76;
                this.rectF.set(AndroidUtilities.dp(f), AndroidUtilities.dp(20.0f) + cellHeight3, AndroidUtilities.dp(i5 + 76), AndroidUtilities.dp(28.0f) + cellHeight3);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                this.rectF.set(AndroidUtilities.dp(i5 + 84), AndroidUtilities.dp(20.0f) + cellHeight3, AndroidUtilities.dp(i5 + 168), AndroidUtilities.dp(28.0f) + cellHeight3);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                this.rectF.set(AndroidUtilities.dp(f), AndroidUtilities.dp(42.0f) + cellHeight3, AndroidUtilities.dp(140), AndroidUtilities.dp(50.0f) + cellHeight3);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint3);
                Canvas canvas3 = canvas2;
                Paint paint4 = paint3;
                canvas3.drawLine(AndroidUtilities.dp(f), getCellHeight(getMeasuredWidth()) + cellHeight3, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + cellHeight3, paint4);
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
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.dp(9.0f) + r1), AndroidUtilities.dp(29.0f) + cellHeight4, AndroidUtilities.dp(20.0f), paint5);
                    float f2 = 76;
                    this.rectF.set(AndroidUtilities.dp(f2), AndroidUtilities.dp(16.0f) + cellHeight4, AndroidUtilities.dp((i3 % 2 == 0 ? 92 : 128) + 76), AndroidUtilities.dp(24.0f) + cellHeight4);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(f2), AndroidUtilities.dp(38.0f) + cellHeight4, AndroidUtilities.dp(240), AndroidUtilities.dp(46.0f) + cellHeight4);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    Canvas canvas4 = canvas2;
                    Paint paint6 = paint5;
                    canvas4.drawLine(AndroidUtilities.dp(f2), getCellHeight(getMeasuredWidth()) + cellHeight4, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + cellHeight4, paint6);
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
                    canvas2.drawCircle(checkRtl(AndroidUtilities.dp(9.0f) + r4), (AndroidUtilities.dp(78.0f) >> 1) + cellHeight, AndroidUtilities.dp(25.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(68.0f), AndroidUtilities.dp(20.0f) + cellHeight, AndroidUtilities.dp(140.0f), AndroidUtilities.dp(28.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(68.0f), AndroidUtilities.dp(42.0f) + cellHeight, AndroidUtilities.dp(260.0f), AndroidUtilities.dp(50.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(20.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(28.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 2 || getViewType() == 27) {
                int measuredWidth = (getMeasuredWidth() - (AndroidUtilities.dp(2.0f) * (getColumnsCount() - 1))) / getColumnsCount();
                int i6 = getViewType() == 27 ? (int) (measuredWidth * 1.25f) : measuredWidth;
                int iDp2 = cellHeight;
                int i7 = 0;
                while (true) {
                    if (iDp2 >= getMeasuredHeight() && !this.isSingleCell) {
                        break;
                    }
                    int i8 = 0;
                    while (i8 < getColumnsCount()) {
                        if (i7 != 0 || i8 >= this.skipDrawItemsCount) {
                            paint = paint5;
                            canvas.drawRect((AndroidUtilities.dp(2.0f) + measuredWidth) * i8, iDp2, r1 + measuredWidth, iDp2 + i6, paint);
                        } else {
                            paint = paint5;
                        }
                        i8++;
                        paint5 = paint;
                    }
                    Paint paint7 = paint5;
                    iDp2 += AndroidUtilities.dp(2.0f) + i6;
                    i7++;
                    if (this.isSingleCell && i7 >= 2) {
                        break;
                    } else {
                        paint5 = paint7;
                    }
                }
            } else if (getViewType() == 3) {
                while (cellHeight <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f) + cellHeight, AndroidUtilities.dp(52.0f), AndroidUtilities.dp(48.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(68.0f), AndroidUtilities.dp(12.0f) + cellHeight, AndroidUtilities.dp(140.0f), AndroidUtilities.dp(20.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(68.0f), AndroidUtilities.dp(34.0f) + cellHeight, AndroidUtilities.dp(260.0f), AndroidUtilities.dp(42.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(12.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(20.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 4) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(AndroidUtilities.dp(12.0f) + r4), AndroidUtilities.dp(6.0f) + cellHeight + r4, AndroidUtilities.dp(44.0f) >> 1, paint5);
                    this.rectF.set(AndroidUtilities.dp(68.0f), AndroidUtilities.dp(12.0f) + cellHeight, AndroidUtilities.dp(140.0f), AndroidUtilities.dp(20.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(68.0f), AndroidUtilities.dp(34.0f) + cellHeight, AndroidUtilities.dp(260.0f), AndroidUtilities.dp(42.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(12.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(20.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 5) {
                while (cellHeight <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(11.0f) + cellHeight, AndroidUtilities.dp(62.0f), AndroidUtilities.dp(63.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(68.0f), AndroidUtilities.dp(12.0f) + cellHeight, AndroidUtilities.dp(140.0f), AndroidUtilities.dp(20.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(68.0f), AndroidUtilities.dp(34.0f) + cellHeight, AndroidUtilities.dp(268.0f), AndroidUtilities.dp(42.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(68.0f), AndroidUtilities.dp(54.0f) + cellHeight, AndroidUtilities.dp(188.0f), AndroidUtilities.dp(62.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(12.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(20.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 6 || getViewType() == 10) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.dp(9.0f) + r4), (AndroidUtilities.dp(64.0f) >> 1) + cellHeight, AndroidUtilities.dp(23.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(68.0f), AndroidUtilities.dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(260.0f), AndroidUtilities.dp(25.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(68.0f), AndroidUtilities.dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(140.0f), AndroidUtilities.dp(47.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(20.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(28.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 29) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.dp(9.0f) + r4), (AndroidUtilities.dp(64.0f) >> 1) + cellHeight, AndroidUtilities.dp(23.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(68.0f), AndroidUtilities.dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(260.0f), AndroidUtilities.dp(25.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(68.0f), AndroidUtilities.dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(140.0f), AndroidUtilities.dp(47.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 33) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.dp(13.0f) + r4), (AndroidUtilities.dp(58.0f) >> 1) + cellHeight, AndroidUtilities.dp(23.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(72.0f), AndroidUtilities.dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(260.0f), AndroidUtilities.dp(25.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(72.0f), AndroidUtilities.dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(140.0f), AndroidUtilities.dp(47.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
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
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.dp(11.0f) + r4), (AndroidUtilities.dp(64.0f) >> 1) + cellHeight, AndroidUtilities.dp(23.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(68.0f), AndroidUtilities.dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(140.0f), AndroidUtilities.dp(25.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(68.0f), AndroidUtilities.dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(260.0f), AndroidUtilities.dp(47.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(20.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(28.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 9) {
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(AndroidUtilities.dp(35.0f)), (getCellHeight(getMeasuredWidth()) >> 1) + cellHeight, AndroidUtilities.dp(32.0f) / 2, paint5);
                    this.rectF.set(AndroidUtilities.dp(72.0f), AndroidUtilities.dp(16.0f) + cellHeight, AndroidUtilities.dp(268.0f), AndroidUtilities.dp(24.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(AndroidUtilities.dp(72.0f), AndroidUtilities.dp(38.0f) + cellHeight, AndroidUtilities.dp(140.0f), AndroidUtilities.dp(46.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(16.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(24.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
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
                    this.rectF.set(AndroidUtilities.dp(18.0f), AndroidUtilities.dp(14.0f), (getMeasuredWidth() * 0.5f) + AndroidUtilities.dp(this.randomParams[0] * 40.0f), AndroidUtilities.dp(14.0f) + AndroidUtilities.dp(8.0f));
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(18.0f), AndroidUtilities.dp(14.0f), (getMeasuredWidth() - (getMeasuredWidth() * 0.2f)) - AndroidUtilities.dp(this.randomParams[0] * 20.0f), AndroidUtilities.dp(14.0f) + AndroidUtilities.dp(8.0f));
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i9++;
                    if (this.isSingleCell && i9 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 12) {
                int iDp3 = cellHeight + AndroidUtilities.dp(14.0f);
                while (iDp3 <= getMeasuredHeight()) {
                    int measuredWidth2 = getMeasuredWidth() / 4;
                    for (int i10 = 0; i10 < 4; i10++) {
                        float f3 = (measuredWidth2 * i10) + (measuredWidth2 / 2.0f);
                        canvas2.drawCircle(f3, AndroidUtilities.dp(7.0f) + iDp3 + (AndroidUtilities.dp(56.0f) / 2.0f), AndroidUtilities.dp(28.0f), paint5);
                        float fDp = AndroidUtilities.dp(7.0f) + iDp3 + AndroidUtilities.dp(56.0f) + AndroidUtilities.dp(16.0f);
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(f3 - AndroidUtilities.dp(24.0f), fDp - AndroidUtilities.dp(4.0f), f3 + AndroidUtilities.dp(24.0f), fDp + AndroidUtilities.dp(4.0f));
                        canvas2.drawRoundRect(rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                    }
                    iDp3 += getCellHeight(getMeasuredWidth());
                    if (this.isSingleCell) {
                        break;
                    }
                }
            } else if (getViewType() == 13) {
                float measuredHeight = getMeasuredHeight() / 2.0f;
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(AndroidUtilities.dp(40.0f), measuredHeight - AndroidUtilities.dp(4.0f), getMeasuredWidth() - AndroidUtilities.dp(120.0f), AndroidUtilities.dp(4.0f) + measuredHeight);
                canvas2.drawRoundRect(rectF2, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                if (this.backgroundPaint == null) {
                    Paint paint8 = new Paint(1);
                    this.backgroundPaint = paint8;
                    paint8.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
                }
                while (i3 < 3) {
                    canvas2.drawCircle((getMeasuredWidth() - AndroidUtilities.dp(56.0f)) + AndroidUtilities.dp(13.0f) + (AndroidUtilities.dp(12.0f) * i3), measuredHeight, AndroidUtilities.dp(13.0f), this.backgroundPaint);
                    canvas2.drawCircle((getMeasuredWidth() - AndroidUtilities.dp(56.0f)) + AndroidUtilities.dp(13.0f) + (AndroidUtilities.dp(12.0f) * i3), measuredHeight, AndroidUtilities.dp(12.0f), paint5);
                    i3++;
                }
            } else if (getViewType() == 14 || getViewType() == 17) {
                int iDp4 = AndroidUtilities.dp(12.0f);
                int iDp5 = AndroidUtilities.dp(77.0f);
                int iDp6 = AndroidUtilities.dp(4.0f);
                float fDp2 = AndroidUtilities.dp(21.0f);
                float fDp3 = AndroidUtilities.dp(41.0f);
                while (iDp4 < getMeasuredWidth()) {
                    if (this.backgroundPaint == null) {
                        this.backgroundPaint = new Paint(i4);
                    }
                    this.backgroundPaint.setColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    int i11 = iDp4 + iDp5;
                    rectF3.set(AndroidUtilities.dp(4.0f) + iDp4, AndroidUtilities.dp(4.0f), i11 - AndroidUtilities.dp(4.0f), getMeasuredHeight() - AndroidUtilities.dp(4.0f));
                    canvas2.drawRoundRect(rectF3, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), paint5);
                    if (getViewType() == 14) {
                        float fDp4 = AndroidUtilities.dp(8.0f) + iDp6;
                        float f4 = iDp4;
                        float fDp5 = AndroidUtilities.dp(22.0f) + iDp6 + f4;
                        i = i4;
                        this.rectF.set(fDp5, fDp4, fDp5 + fDp3, fDp4 + fDp2);
                        RectF rectF4 = this.rectF;
                        canvas2.drawRoundRect(rectF4, rectF4.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                        float fDp6 = fDp4 + AndroidUtilities.dp(4.0f) + fDp2;
                        float fDp7 = f4 + AndroidUtilities.dp(5.0f) + iDp6;
                        this.rectF.set(fDp7, fDp6, fDp7 + fDp3, fDp6 + fDp2);
                        RectF rectF5 = this.rectF;
                        canvas2.drawRoundRect(rectF5, rectF5.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                    } else {
                        i = i4;
                        if (getViewType() == 17) {
                            float fDp8 = AndroidUtilities.dp(5.0f);
                            float fDp9 = AndroidUtilities.dp(32.0f);
                            float f5 = iDp4 + ((iDp5 - fDp9) / 2.0f);
                            rectF3.set(f5, AndroidUtilities.dp(21.0f), fDp9 + f5, r14 + AndroidUtilities.dp(32.0f));
                            canvas2.drawRoundRect(rectF3, fDp8, fDp8, this.backgroundPaint);
                        }
                    }
                    canvas2.drawCircle(iDp4 + (iDp5 / 2), getMeasuredHeight() - AndroidUtilities.dp(20.0f), AndroidUtilities.dp(8.0f), this.backgroundPaint);
                    iDp4 = i11;
                    i4 = i;
                }
            } else if (getViewType() == 15) {
                int iDp7 = AndroidUtilities.dp(23.0f);
                int iDp8 = AndroidUtilities.dp(4.0f);
                while (cellHeight <= getMeasuredHeight()) {
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.dp(12.0f) + iDp7), AndroidUtilities.dp(8.0f) + cellHeight + iDp7, iDp7, paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(74.0f), AndroidUtilities.dp(12.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(260.0f), AndroidUtilities.dp(20.0f) + cellHeight);
                    checkRtl(this.rectF);
                    float f6 = iDp8;
                    canvas2.drawRoundRect(this.rectF, f6, f6, paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(74.0f), AndroidUtilities.dp(36.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(140.0f), AndroidUtilities.dp(42.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, f6, f6, paint5);
                    if (this.memberRequestButtonWidth > 0.0f) {
                        this.rectF.set(this.paddingLeft + AndroidUtilities.dp(73.0f), AndroidUtilities.dp(62.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(73.0f) + this.memberRequestButtonWidth, AndroidUtilities.dp(94.0f) + cellHeight);
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
                    canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.dp(8.0f) + r4), AndroidUtilities.dp(24.0f) + cellHeight, AndroidUtilities.dp(18.0f), paint5);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.dp(58.0f), AndroidUtilities.dp(20.0f) + cellHeight, getWidth() - AndroidUtilities.dp(53.0f), AndroidUtilities.dp(28.0f) + cellHeight);
                    checkRtl(this.rectF);
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), paint5);
                    if (i3 < 4) {
                        canvas2.drawCircle(checkRtl((getWidth() - AndroidUtilities.dp(12.0f)) - r4), AndroidUtilities.dp(24.0f) + cellHeight, AndroidUtilities.dp(12.0f), paint5);
                    }
                    cellHeight += getCellHeight(getMeasuredWidth());
                    i3++;
                    if (this.isSingleCell && i3 >= this.itemsCount) {
                        break;
                    }
                }
                this.rectF.set(this.paddingLeft + AndroidUtilities.dp(8.0f), AndroidUtilities.dp(20.0f) + cellHeight, getWidth() - AndroidUtilities.dp(8.0f), AndroidUtilities.dp(28.0f) + cellHeight);
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), paint5);
                this.rectF.set(this.paddingLeft + AndroidUtilities.dp(8.0f), AndroidUtilities.dp(36.0f) + cellHeight, getWidth() - AndroidUtilities.dp(53.0f), cellHeight + AndroidUtilities.dp(44.0f));
                checkRtl(this.rectF);
                canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), paint5);
            } else {
                int i12 = this.viewType;
                if (i12 == 21) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(checkRtl(AndroidUtilities.dp(20.0f) + r4), (AndroidUtilities.dp(58.0f) >> 1) + cellHeight, AndroidUtilities.dp(46.0f) >> 1, paint5);
                        this.rectF.set(AndroidUtilities.dp(74.0f), AndroidUtilities.dp(16.0f) + cellHeight, AndroidUtilities.dp(140.0f), AndroidUtilities.dp(24.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        this.rectF.set(AndroidUtilities.dp(74.0f), AndroidUtilities.dp(38.0f) + cellHeight, AndroidUtilities.dp(260.0f), AndroidUtilities.dp(46.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        cellHeight += getCellHeight(getMeasuredWidth());
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (i12 == 22) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(checkRtl(AndroidUtilities.dp(20.0f) + r4), AndroidUtilities.dp(6.0f) + cellHeight + r4, AndroidUtilities.dp(48.0f) >> 1, paint5);
                        this.rectF.set(AndroidUtilities.dp(76.0f), AndroidUtilities.dp(16.0f) + cellHeight, AndroidUtilities.dp(140.0f), AndroidUtilities.dp(24.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        this.rectF.set(AndroidUtilities.dp(76.0f), AndroidUtilities.dp(38.0f) + cellHeight, AndroidUtilities.dp(260.0f), AndroidUtilities.dp(46.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        cellHeight += getCellHeight(getMeasuredWidth());
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (i12 == 25) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(AndroidUtilities.dp(17.0f) + r4, AndroidUtilities.dp(6.0f) + cellHeight + r4, AndroidUtilities.dp(38.0f) >> 1, paint5);
                        this.rectF.set(AndroidUtilities.dp(76.0f), AndroidUtilities.dp(21.0f) + cellHeight, AndroidUtilities.dp(220.0f), AndroidUtilities.dp(29.0f) + cellHeight);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        cellHeight += getCellHeight(getMeasuredWidth());
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (i12 == 26) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(LocaleController.isRTL ? (getMeasuredWidth() - AndroidUtilities.dp(21.0f)) - r4 : AndroidUtilities.dp(21.0f) + r4, AndroidUtilities.dp(16.0f) + cellHeight + r4, AndroidUtilities.dp(21.0f) >> 1, paint5);
                        this.rectF.set(AndroidUtilities.dp(60.0f), AndroidUtilities.dp(21.0f) + cellHeight, AndroidUtilities.dp(190.0f), AndroidUtilities.dp(29.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(16.0f), AndroidUtilities.dp(21.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(62.0f), AndroidUtilities.dp(29.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        cellHeight += getCellHeight(getMeasuredWidth());
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (getViewType() == 28) {
                    while (cellHeight <= getMeasuredHeight()) {
                        canvas2.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.dp(10.0f) + r4), (AndroidUtilities.dp(58.0f) >> 1) + cellHeight, AndroidUtilities.dp(24.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.dp(68.0f), AndroidUtilities.dp(17.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(260.0f), AndroidUtilities.dp(25.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.dp(68.0f), AndroidUtilities.dp(39.0f) + cellHeight, this.paddingLeft + AndroidUtilities.dp(140.0f), AndroidUtilities.dp(47.0f) + cellHeight);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.dp(50.0f), AndroidUtilities.dp(20.0f) + cellHeight, getMeasuredWidth() - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(28.0f) + cellHeight);
                            checkRtl(this.rectF);
                            canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
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
                        this.rectF.set(this.paddingLeft + AndroidUtilities.dp(18.0f), ((cellHeight5 - AndroidUtilities.dp(22.0f)) / 2.0f) + f7, this.paddingLeft + AndroidUtilities.dp(40.0f), ((AndroidUtilities.dp(22.0f) + cellHeight5) / 2.0f) + f7);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(11.0f), AndroidUtilities.dp(11.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.dp(58.0f), ((cellHeight5 - AndroidUtilities.dp(8.0f)) / 2.0f) + f7, Math.min(this.paddingLeft + AndroidUtilities.dp(132.0f), getMeasuredWidth() - AndroidUtilities.dp(19.0f)), f7 + ((AndroidUtilities.dp(8.0f) + cellHeight5) / 2.0f));
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
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
                        this.rectF.set(this.paddingLeft + AndroidUtilities.dp(10.0f), ((cellHeight6 - AndroidUtilities.dp(32.0f)) / 2.0f) + f8, this.paddingLeft + AndroidUtilities.dp(42.0f), ((AndroidUtilities.dp(32.0f) + cellHeight6) / 2.0f) + f8);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.dp(64.0f), (((cellHeight6 - AndroidUtilities.dp(14.0f)) - AndroidUtilities.dp(10.0f)) / 2.0f) + f8, Math.min(this.paddingLeft + AndroidUtilities.dp(118.0f), getMeasuredWidth() - AndroidUtilities.dp(19.0f)), (((cellHeight6 - AndroidUtilities.dp(14.0f)) + AndroidUtilities.dp(10.0f)) / 2.0f) + f8);
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.dp(64.0f), (((AndroidUtilities.dp(14.0f) + cellHeight6) - AndroidUtilities.dp(8.0f)) / 2.0f) + f8, Math.min(this.paddingLeft + AndroidUtilities.dp(144.0f), getMeasuredWidth() - AndroidUtilities.dp(19.0f)), f8 + (((AndroidUtilities.dp(14.0f) + cellHeight6) + AndroidUtilities.dp(8.0f)) / 2.0f));
                        checkRtl(this.rectF);
                        canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), paint5);
                        cellHeight += cellHeight6;
                        i3++;
                        if (this.isSingleCell && i3 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (getViewType() == 34 || getViewType() == 35 || getViewType() == 36) {
                    this.rectF.set(this.paddingLeft, this.paddingTop, getMeasuredWidth() - this.paddingLeft, getMeasuredHeight() - this.paddingTop);
                    this.rectF.inset(AndroidUtilities.dp(3.33f), AndroidUtilities.dp(4.0f));
                    canvas2.drawRoundRect(this.rectF, AndroidUtilities.dp(11.0f), AndroidUtilities.dp(11.0f), paint5);
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
            this.gradientWidth = AndroidUtilities.dp(200.0f);
        } else {
            this.gradientWidth = AndroidUtilities.dp(600.0f);
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
                return AndroidUtilities.dp(78.0f) + 1;
            case 2:
                return ((i - (AndroidUtilities.dp(2.0f) * (getColumnsCount() - 1))) / getColumnsCount()) + AndroidUtilities.dp(2.0f);
            case 3:
            case 4:
                return AndroidUtilities.dp(56.0f);
            case 5:
                return AndroidUtilities.dp(80.0f);
            case 6:
            case 18:
                return AndroidUtilities.dp(64.0f);
            case 7:
                return AndroidUtilities.dp((SharedConfig.useThreeLinesLayout ? 78 : 72) + 1);
            case 8:
                return AndroidUtilities.dp(61.0f);
            case 9:
                return AndroidUtilities.dp(66.0f);
            case 10:
                return AndroidUtilities.dp(58.0f);
            case 11:
                return AndroidUtilities.dp(36.0f);
            case 12:
                return AndroidUtilities.dp(103.0f);
            case 13:
            case 14:
            case 17:
            case 20:
            case 27:
            default:
                return 0;
            case 15:
                return AndroidUtilities.dp(107.0f);
            case 16:
            case 23:
                return AndroidUtilities.dp(50.0f);
            case 19:
                return AndroidUtilities.dp(58.0f);
            case 21:
                return AndroidUtilities.dp(58.0f);
            case 22:
                return AndroidUtilities.dp(60.0f);
            case 24:
                return AndroidUtilities.dp((SharedConfig.useThreeLinesLayout ? 76 : 64) + 1);
            case 25:
                return AndroidUtilities.dp(51.0f);
            case 26:
                return AndroidUtilities.dp(50.0f) + 1;
            case 28:
                return AndroidUtilities.dp(58.0f);
            case 29:
                return AndroidUtilities.dp(60.0f) + 1;
            case 30:
                return AndroidUtilities.dp(32.0f);
            case 31:
                return AndroidUtilities.dp(48.0f) + 1;
            case 32:
                return AndroidUtilities.dp(56.0f) + 1;
            case 33:
                return AndroidUtilities.dp(58.0f);
            case 34:
                return AndroidUtilities.dp(140.0f);
            case 35:
                return AndroidUtilities.dp(112.0f);
            case 36:
                return AndroidUtilities.dp(108.0f);
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
        textPaint.setTextSize(AndroidUtilities.dp(14.0f));
        this.memberRequestButtonWidth = AndroidUtilities.dp(34.0f) + textPaint.measureText(LocaleController.getString(z ? C2484R.string.AddToChannel : C2484R.string.AddToGroup));
    }
}
