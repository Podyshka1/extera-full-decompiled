package org.telegram.p029ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import org.telegram.p029ui.Charts.data.ChartData;
import org.telegram.p029ui.Charts.view_data.LineViewData;
import org.telegram.p029ui.Charts.view_data.TransitionParams;

/* JADX INFO: loaded from: classes6.dex */
public class LinearBarChartView extends BaseChartView {
    public LinearBarChartView(Context context) {
        super(context);
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void init() {
        this.useMinHeight = true;
        super.init();
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01e6  */
    @Override // org.telegram.p029ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void drawChart(Canvas canvas) {
        float f;
        float f2;
        int i;
        float f3;
        if (this.chartData != null) {
            float f4 = this.chartWidth;
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            float f5 = chartPickerDelegate.pickerEnd;
            float f6 = chartPickerDelegate.pickerStart;
            float f7 = f4 / (f5 - f6);
            float f8 = (f6 * f7) - BaseChartView.HORIZONTAL_PADDING;
            int i2 = 0;
            int i3 = 0;
            while (i3 < this.lines.size()) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i3);
                if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                    float[] fArr = this.chartData.xPercentage;
                    float f9 = fArr.length < 2 ? 0.0f : fArr[1] * f7;
                    long[] jArr = lineViewData.line.f1916y;
                    int i4 = ((int) (BaseChartView.HORIZONTAL_PADDING / f9)) + 1;
                    lineViewData.chartPath.reset();
                    int iMax = Math.max(i2, this.startXIndex - i4);
                    int iMin = Math.min(this.chartData.xPercentage.length - 1, this.endXIndex + i4);
                    int i5 = i2;
                    boolean z = true;
                    while (iMax <= iMin) {
                        long[] jArr2 = jArr;
                        long j = jArr2[iMax];
                        if (j < 0) {
                            f3 = f7;
                        } else {
                            float f10 = (this.chartData.xPercentage[iMax] * f7) - f8;
                            float f11 = this.currentMinHeight;
                            float f12 = (j - f11) / (this.currentMaxHeight - f11);
                            float strokeWidth = lineViewData.paint.getStrokeWidth() / 2.0f;
                            f3 = f7;
                            float measuredHeight = ((getMeasuredHeight() - this.chartBottom) - strokeWidth) - (f12 * (((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) - strokeWidth));
                            if (!BaseChartView.USE_LINES) {
                                if (z) {
                                    lineViewData.chartPath.moveTo(f10 - (f9 / 2.0f), measuredHeight);
                                    z = false;
                                } else {
                                    lineViewData.chartPath.lineTo(f10 - (f9 / 2.0f), measuredHeight);
                                }
                                lineViewData.chartPath.lineTo(f10 + (f9 / 2.0f), measuredHeight);
                            } else if (i5 == 0) {
                                float[] fArr2 = lineViewData.linesPath;
                                float f13 = f9 / 2.0f;
                                fArr2[i5] = f10 - f13;
                                fArr2[i5 + 1] = measuredHeight;
                                float f14 = f10 + f13;
                                fArr2[i5 + 2] = f14;
                                fArr2[i5 + 3] = measuredHeight;
                                int i6 = i5 + 5;
                                fArr2[i5 + 4] = f14;
                                i5 += 6;
                                fArr2[i6] = measuredHeight;
                            } else if (iMax == iMin) {
                                float[] fArr3 = lineViewData.linesPath;
                                float f15 = f9 / 2.0f;
                                float f16 = f10 - f15;
                                fArr3[i5] = f16;
                                fArr3[i5 + 1] = measuredHeight;
                                fArr3[i5 + 2] = f16;
                                fArr3[i5 + 3] = measuredHeight;
                                float f17 = f10 + f15;
                                fArr3[i5 + 4] = f17;
                                fArr3[i5 + 5] = measuredHeight;
                                fArr3[i5 + 6] = f17;
                                fArr3[i5 + 7] = measuredHeight;
                                int i7 = i5 + 9;
                                fArr3[i5 + 8] = f17;
                                i5 += 10;
                                fArr3[i7] = (getMeasuredHeight() - this.chartBottom) - strokeWidth;
                            } else {
                                float[] fArr4 = lineViewData.linesPath;
                                float f18 = f9 / 2.0f;
                                float f19 = f10 - f18;
                                fArr4[i5] = f19;
                                fArr4[i5 + 1] = measuredHeight;
                                fArr4[i5 + 2] = f19;
                                fArr4[i5 + 3] = measuredHeight;
                                float f20 = f10 + f18;
                                fArr4[i5 + 4] = f20;
                                fArr4[i5 + 5] = measuredHeight;
                                int i8 = i5 + 7;
                                fArr4[i5 + 6] = f20;
                                i5 += 8;
                                fArr4[i8] = measuredHeight;
                            }
                        }
                        iMax++;
                        jArr = jArr2;
                        f7 = f3;
                    }
                    f = f7;
                    canvas.save();
                    int i9 = this.transitionMode;
                    if (i9 == 2) {
                        TransitionParams transitionParams = this.transitionParams;
                        float f21 = transitionParams.progress;
                        f2 = f21 > 0.5f ? 0.0f : 1.0f - (f21 * 2.0f);
                        canvas.scale((f21 * 2.0f) + 1.0f, 1.0f, transitionParams.f1917pX, transitionParams.f1918pY);
                    } else if (i9 == 1) {
                        float f22 = this.transitionParams.progress;
                        f2 = f22 < 0.3f ? 0.0f : f22;
                        canvas.save();
                        TransitionParams transitionParams2 = this.transitionParams;
                        float f23 = transitionParams2.progress;
                        canvas.scale(f23, transitionParams2.needScaleY ? f23 : 1.0f, transitionParams2.f1917pX, transitionParams2.f1918pY);
                    } else {
                        if (i9 == 3) {
                            f = this.transitionParams.progress;
                        }
                        lineViewData.paint.setAlpha((int) (lineViewData.alpha * 255.0f * f));
                        if (this.endXIndex - this.startXIndex <= 100) {
                            lineViewData.paint.setStrokeCap(Paint.Cap.SQUARE);
                        } else {
                            lineViewData.paint.setStrokeCap(Paint.Cap.ROUND);
                        }
                        if (BaseChartView.USE_LINES) {
                            canvas.drawPath(lineViewData.chartPath, lineViewData.paint);
                            i = 0;
                        } else {
                            float[] fArr5 = lineViewData.linesPath;
                            Paint paint = lineViewData.paint;
                            i = 0;
                            canvas.drawLines(fArr5, 0, i5, paint);
                        }
                        canvas.restore();
                    }
                    f = f2;
                    lineViewData.paint.setAlpha((int) (lineViewData.alpha * 255.0f * f));
                    if (this.endXIndex - this.startXIndex <= 100) {
                    }
                    if (BaseChartView.USE_LINES) {
                    }
                    canvas.restore();
                } else {
                    f = f7;
                    i = i2;
                }
                i3++;
                i2 = i;
                f7 = f;
            }
        }
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void drawPickerChart(Canvas canvas) {
        int i;
        float f;
        float f2;
        int i2;
        float f3;
        float f4;
        float f5;
        float f6;
        getMeasuredHeight();
        getMeasuredHeight();
        int size = this.lines.size();
        ChartData chartData = this.chartData;
        if (chartData != null) {
            float[] fArr = chartData.xPercentage;
            float f7 = fArr.length < 2 ? 1.0f : fArr[1] * this.pickerWidth;
            int i3 = 0;
            while (i3 < size) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i3);
                float f8 = 0.0f;
                if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                    lineViewData.bottomLinePath.reset();
                    int length = this.chartData.xPercentage.length;
                    long[] jArr = lineViewData.line.f1916y;
                    lineViewData.chartPath.reset();
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < length) {
                        long j = jArr[i4];
                        if (j < 0) {
                            i2 = size;
                            f3 = f7;
                            f2 = f8;
                        } else {
                            ChartData chartData2 = this.chartData;
                            f2 = f8;
                            float f9 = chartData2.xPercentage[i4] * this.pickerWidth;
                            boolean z = BaseChartView.ANIMATE_PICKER_SIZES;
                            if (z) {
                                i2 = size;
                                f4 = this.pickerMaxHeight;
                                f3 = f7;
                            } else {
                                i2 = size;
                                f3 = f7;
                                f4 = chartData2.maxValue;
                            }
                            if (z) {
                                f6 = this.pickerMinHeight;
                                f5 = f4;
                            } else {
                                f5 = f4;
                                f6 = chartData2.minValue;
                            }
                            float f10 = (1.0f - ((j - f6) / (f5 - f6))) * this.pikerHeight;
                            if (!BaseChartView.USE_LINES) {
                                if (i4 == 0) {
                                    lineViewData.bottomLinePath.moveTo(f9 - (f3 / 2.0f), f10);
                                } else {
                                    lineViewData.bottomLinePath.lineTo(f9 - (f3 / 2.0f), f10);
                                }
                                lineViewData.bottomLinePath.lineTo(f9 + (f3 / 2.0f), f10);
                            } else if (i5 == 0) {
                                float[] fArr2 = lineViewData.linesPathBottom;
                                float f11 = f3 / 2.0f;
                                fArr2[i5] = f9 - f11;
                                fArr2[i5 + 1] = f10;
                                float f12 = f9 + f11;
                                fArr2[i5 + 2] = f12;
                                fArr2[i5 + 3] = f10;
                                int i6 = i5 + 5;
                                fArr2[i5 + 4] = f12;
                                i5 += 6;
                                fArr2[i6] = f10;
                            } else if (i4 == length - 1) {
                                float[] fArr3 = lineViewData.linesPathBottom;
                                float f13 = f3 / 2.0f;
                                float f14 = f9 - f13;
                                fArr3[i5] = f14;
                                fArr3[i5 + 1] = f10;
                                fArr3[i5 + 2] = f14;
                                fArr3[i5 + 3] = f10;
                                float f15 = f9 + f13;
                                fArr3[i5 + 4] = f15;
                                fArr3[i5 + 5] = f10;
                                fArr3[i5 + 6] = f15;
                                fArr3[i5 + 7] = f10;
                                int i7 = i5 + 9;
                                fArr3[i5 + 8] = f15;
                                i5 += 10;
                                fArr3[i7] = f2;
                            } else {
                                float[] fArr4 = lineViewData.linesPathBottom;
                                float f16 = f3 / 2.0f;
                                float f17 = f9 - f16;
                                fArr4[i5] = f17;
                                fArr4[i5 + 1] = f10;
                                fArr4[i5 + 2] = f17;
                                fArr4[i5 + 3] = f10;
                                float f18 = f9 + f16;
                                fArr4[i5 + 4] = f18;
                                fArr4[i5 + 5] = f10;
                                int i8 = i5 + 7;
                                fArr4[i5 + 6] = f18;
                                i5 += 8;
                                fArr4[i8] = f10;
                            }
                        }
                        i4++;
                        size = i2;
                        f8 = f2;
                        f7 = f3;
                    }
                    i = size;
                    f = f7;
                    float f19 = f8;
                    lineViewData.linesPathBottomSize = i5;
                    if (lineViewData.enabled || lineViewData.alpha != f19) {
                        lineViewData.bottomLinePaint.setAlpha((int) (lineViewData.alpha * 255.0f));
                        if (BaseChartView.USE_LINES) {
                            canvas.drawLines(lineViewData.linesPathBottom, 0, lineViewData.linesPathBottomSize, lineViewData.bottomLinePaint);
                        } else {
                            canvas.drawPath(lineViewData.bottomLinePath, lineViewData.bottomLinePaint);
                        }
                    }
                } else {
                    i = size;
                    f = f7;
                }
                i3++;
                size = i;
                f7 = f;
            }
        }
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    public LineViewData createLineViewData(ChartData.Line line) {
        return new LineViewData(line, true);
    }
}
