package org.telegram.ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.graphics.ColorUtils;
import org.telegram.ui.Charts.data.ChartData;
import org.telegram.ui.Charts.view_data.BarViewData;
import org.telegram.ui.Charts.view_data.TransitionParams;

/* JADX INFO: loaded from: classes7.dex */
public class BarChartView extends BaseChartView<ChartData, BarViewData> {
    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawSelection(Canvas canvas) {
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public float getMinDistance() {
        return 0.1f;
    }

    public BarChartView(Context context) {
        super(context);
        this.superDraw = true;
        this.useAlphaSignature = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0091  */
    @Override // org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawChart(Canvas canvas) {
        float f;
        float f2;
        int i;
        float f3;
        int i2;
        float f4;
        int i3;
        int i4;
        Canvas canvas2 = canvas;
        T t = this.chartData;
        if (t != 0) {
            float f5 = this.chartWidth;
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            float f6 = chartPickerDelegate.pickerEnd;
            float f7 = chartPickerDelegate.pickerStart;
            float f8 = f5 / (f6 - f7);
            float f9 = (f7 * f8) - BaseChartView.HORIZONTAL_PADDING;
            char c2 = 1;
            int i5 = this.startXIndex - 1;
            int i6 = 0;
            int i7 = i5 < 0 ? 0 : i5;
            int length = this.endXIndex + 1;
            if (length > t.lines.get(0).f1084y.length - 1) {
                length = this.chartData.lines.get(0).f1084y.length - 1;
            }
            int i8 = length;
            canvas2.save();
            float f10 = 0.0f;
            canvas2.clipRect(this.chartStart, 0.0f, this.chartEnd, getMeasuredHeight() - this.chartBottom);
            canvas2.save();
            int i9 = this.transitionMode;
            float f11 = 2.0f;
            int i10 = 2;
            float f12 = 1.0f;
            if (i9 == 2) {
                this.postTransition = true;
                this.selectionA = 0.0f;
                TransitionParams transitionParams = this.transitionParams;
                float f13 = transitionParams.progress;
                f2 = 1.0f - f13;
                canvas2.scale((f13 * 2.0f) + 1.0f, 1.0f, transitionParams.pX, transitionParams.pY);
            } else if (i9 == 1) {
                TransitionParams transitionParams2 = this.transitionParams;
                f2 = transitionParams2.progress;
                canvas2.scale(f2, 1.0f, transitionParams2.pX, transitionParams2.pY);
            } else {
                f = 1.0f;
                i = 0;
                while (i < this.lines.size()) {
                    BarViewData barViewData = (BarViewData) this.lines.get(i);
                    if (barViewData.enabled || barViewData.alpha != f10) {
                        float[] fArr = this.chartData.xPercentage;
                        float f14 = fArr.length < i10 ? f12 : fArr[c2] * f8;
                        long[] jArr = barViewData.line.f1084y;
                        f3 = f12;
                        float f15 = barViewData.alpha;
                        i2 = i;
                        int i11 = i6;
                        int i12 = i7;
                        float f16 = f10;
                        float f17 = f16;
                        f4 = f11;
                        int i13 = i11;
                        while (i12 <= i8) {
                            float f18 = ((f14 / f4) + (this.chartData.xPercentage[i12] * f8)) - f9;
                            int i14 = i7;
                            float measuredHeight = (getMeasuredHeight() - this.chartBottom) - (((jArr[i12] / this.currentMaxHeight) * f15) * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT));
                            if (i12 == this.selectedIndex && this.legendShowing) {
                                f17 = measuredHeight;
                                f16 = f18;
                                i11 = 1;
                            } else {
                                float[] fArr2 = barViewData.linesPath;
                                fArr2[i13] = f18;
                                fArr2[i13 + 1] = measuredHeight;
                                int i15 = i13 + 3;
                                fArr2[i13 + 2] = f18;
                                i13 += 4;
                                fArr2[i15] = getMeasuredHeight() - this.chartBottom;
                            }
                            i12++;
                            i7 = i14;
                        }
                        i3 = i7;
                        Paint paint = (i11 != 0 || this.postTransition) ? barViewData.unselectedPaint : barViewData.paint;
                        paint.setStrokeWidth(f14);
                        if (i11 != 0) {
                            barViewData.unselectedPaint.setColor(ColorUtils.blendARGB(barViewData.lineColor, barViewData.blendColor, f3 - this.selectionA));
                        }
                        if (this.postTransition) {
                            f10 = 0.0f;
                            barViewData.unselectedPaint.setColor(ColorUtils.blendARGB(barViewData.lineColor, barViewData.blendColor, 0.0f));
                        } else {
                            f10 = 0.0f;
                        }
                        int i16 = (int) (255.0f * f);
                        paint.setAlpha(i16);
                        i4 = 0;
                        canvas2.drawLines(barViewData.linesPath, 0, i13, paint);
                        if (i11 != 0) {
                            barViewData.paint.setStrokeWidth(f14);
                            barViewData.paint.setAlpha(i16);
                            canvas2.drawLine(f16, f17, f16, getMeasuredHeight() - this.chartBottom, barViewData.paint);
                            barViewData.paint.setAlpha(255);
                        }
                    } else {
                        i2 = i;
                        f3 = f12;
                        i4 = i6;
                        i3 = i7;
                        f4 = f11;
                    }
                    i = i2 + 1;
                    canvas2 = canvas;
                    i6 = i4;
                    f12 = f3;
                    f11 = f4;
                    i7 = i3;
                    c2 = 1;
                    i10 = 2;
                }
                canvas.restore();
                canvas.restore();
            }
            f = f2;
            i = 0;
            while (i < this.lines.size()) {
            }
            canvas.restore();
            canvas.restore();
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawPickerChart(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        int measuredHeight = getMeasuredHeight();
        int i5 = BaseChartView.PICKER_PADDING;
        int i6 = measuredHeight - i5;
        int measuredHeight2 = (getMeasuredHeight() - this.pikerHeight) - i5;
        int size = this.lines.size();
        if (this.chartData != 0) {
            int i7 = 0;
            while (i7 < size) {
                BarViewData barViewData = (BarViewData) this.lines.get(i7);
                if (barViewData.enabled || barViewData.alpha != 0.0f) {
                    barViewData.bottomLinePath.reset();
                    float[] fArr = this.chartData.xPercentage;
                    int length = fArr.length;
                    float f2 = fArr.length < 2 ? 1.0f : fArr[1] * this.pickerWidth;
                    long[] jArr = barViewData.line.f1084y;
                    float f3 = barViewData.alpha;
                    int i8 = 0;
                    int i9 = 0;
                    while (i8 < length) {
                        long j = jArr[i8];
                        if (j < 0) {
                            i3 = i6;
                            i4 = size;
                        } else {
                            T t = this.chartData;
                            i3 = i6;
                            float f4 = t.xPercentage[i8] * this.pickerWidth;
                            if (BaseChartView.ANIMATE_PICKER_SIZES) {
                                f = this.pickerMaxHeight;
                                i4 = size;
                            } else {
                                i4 = size;
                                f = t.maxValue;
                            }
                            float f5 = (1.0f - ((j / f) * f3)) * (i3 - measuredHeight2);
                            float[] fArr2 = barViewData.linesPath;
                            fArr2[i9] = f4;
                            fArr2[i9 + 1] = f5;
                            int i10 = i9 + 3;
                            fArr2[i9 + 2] = f4;
                            i9 += 4;
                            fArr2[i10] = getMeasuredHeight() - this.chartBottom;
                        }
                        i8++;
                        i6 = i3;
                        size = i4;
                    }
                    i = i6;
                    i2 = size;
                    barViewData.paint.setStrokeWidth(f2 + 2.0f);
                    canvas.drawLines(barViewData.linesPath, 0, i9, barViewData.paint);
                } else {
                    i = i6;
                    i2 = size;
                }
                i7++;
                i6 = i;
                size = i2;
            }
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public BarViewData createLineViewData(ChartData.Line line) {
        return new BarViewData(line, this.resourcesProvider);
    }

    @Override // org.telegram.ui.Charts.BaseChartView, android.view.View
    public void onDraw(Canvas canvas) {
        tick();
        drawChart(canvas);
        drawBottomLine(canvas);
        this.tmpN = this.horizontalLines.size();
        int i = 0;
        while (true) {
            this.tmpI = i;
            int i2 = this.tmpI;
            if (i2 < this.tmpN) {
                drawHorizontalLines(canvas, this.horizontalLines.get(i2));
                drawSignaturesToHorizontalLines(canvas, this.horizontalLines.get(this.tmpI));
                i = this.tmpI + 1;
            } else {
                drawBottomSignature(canvas);
                drawPicker(canvas);
                drawSelection(canvas);
                super.onDraw(canvas);
                return;
            }
        }
    }
}
