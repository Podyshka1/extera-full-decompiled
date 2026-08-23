package org.telegram.ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import org.telegram.ui.Charts.data.ChartData;
import org.telegram.ui.Charts.view_data.LineViewData;
import org.telegram.ui.Charts.view_data.TransitionParams;

/* JADX INFO: loaded from: classes6.dex */
public class LinearBarChartView extends BaseChartView<ChartData, LineViewData> {
    public LinearBarChartView(Context context) {
        super(context);
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void init() {
        this.useMinHeight = true;
        super.init();
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e0  */
    @Override // org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawChart(Canvas canvas) {
        float f;
        float f2;
        int i;
        int i2;
        float f3;
        if (this.chartData != 0) {
            float f4 = this.chartWidth;
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            float f5 = chartPickerDelegate.pickerEnd;
            float f6 = chartPickerDelegate.pickerStart;
            float f7 = f4 / (f5 - f6);
            float f8 = (f6 * f7) - BaseChartView.HORIZONTAL_PADDING;
            int i3 = 0;
            int i4 = 0;
            while (i4 < this.lines.size()) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i4);
                if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                    float[] fArr = this.chartData.xPercentage;
                    float f9 = fArr.length < 2 ? 0.0f : fArr[1] * f7;
                    long[] jArr = lineViewData.line.f923y;
                    int i5 = ((int) (BaseChartView.HORIZONTAL_PADDING / f9)) + 1;
                    lineViewData.chartPath.reset();
                    int iMax = Math.max(i3, this.startXIndex - i5);
                    int iMin = Math.min(this.chartData.xPercentage.length - 1, this.endXIndex + i5);
                    int i6 = i3;
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
                                Path path = lineViewData.chartPath;
                                if (z) {
                                    path.moveTo(f10 - (f9 / 2.0f), measuredHeight);
                                    z = false;
                                } else {
                                    path.lineTo(f10 - (f9 / 2.0f), measuredHeight);
                                }
                                lineViewData.chartPath.lineTo(f10 + (f9 / 2.0f), measuredHeight);
                            } else if (i6 == 0) {
                                float[] fArr2 = lineViewData.linesPath;
                                float f13 = f9 / 2.0f;
                                fArr2[i6] = f10 - f13;
                                fArr2[i6 + 1] = measuredHeight;
                                float f14 = f10 + f13;
                                fArr2[i6 + 2] = f14;
                                fArr2[i6 + 3] = measuredHeight;
                                int i7 = i6 + 5;
                                fArr2[i6 + 4] = f14;
                                i6 += 6;
                                fArr2[i7] = measuredHeight;
                            } else {
                                float[] fArr3 = lineViewData.linesPath;
                                if (iMax == iMin) {
                                    float f15 = f9 / 2.0f;
                                    float f16 = f10 - f15;
                                    fArr3[i6] = f16;
                                    fArr3[i6 + 1] = measuredHeight;
                                    fArr3[i6 + 2] = f16;
                                    fArr3[i6 + 3] = measuredHeight;
                                    float f17 = f10 + f15;
                                    fArr3[i6 + 4] = f17;
                                    fArr3[i6 + 5] = measuredHeight;
                                    fArr3[i6 + 6] = f17;
                                    fArr3[i6 + 7] = measuredHeight;
                                    int i8 = i6 + 9;
                                    fArr3[i6 + 8] = f17;
                                    i6 += 10;
                                    fArr3[i8] = (getMeasuredHeight() - this.chartBottom) - strokeWidth;
                                } else {
                                    float f18 = f9 / 2.0f;
                                    float f19 = f10 - f18;
                                    fArr3[i6] = f19;
                                    fArr3[i6 + 1] = measuredHeight;
                                    fArr3[i6 + 2] = f19;
                                    fArr3[i6 + 3] = measuredHeight;
                                    float f20 = f10 + f18;
                                    fArr3[i6 + 4] = f20;
                                    fArr3[i6 + 5] = measuredHeight;
                                    int i9 = i6 + 7;
                                    fArr3[i6 + 6] = f20;
                                    i6 += 8;
                                    fArr3[i9] = measuredHeight;
                                }
                            }
                        }
                        iMax++;
                        jArr = jArr2;
                        f7 = f3;
                    }
                    f = f7;
                    canvas.save();
                    int i10 = this.transitionMode;
                    if (i10 == 2) {
                        TransitionParams transitionParams = this.transitionParams;
                        float f21 = transitionParams.progress;
                        f2 = f21 > 0.5f ? 0.0f : 1.0f - (f21 * 2.0f);
                        canvas.scale((f21 * 2.0f) + 1.0f, 1.0f, transitionParams.pX, transitionParams.pY);
                    } else if (i10 == 1) {
                        float f22 = this.transitionParams.progress;
                        f2 = f22 < 0.3f ? 0.0f : f22;
                        canvas.save();
                        TransitionParams transitionParams2 = this.transitionParams;
                        float f23 = transitionParams2.progress;
                        canvas.scale(f23, transitionParams2.needScaleY ? f23 : 1.0f, transitionParams2.pX, transitionParams2.pY);
                    } else {
                        if (i10 == 3) {
                            f = this.transitionParams.progress;
                        }
                        lineViewData.paint.setAlpha((int) (lineViewData.alpha * 255.0f * f));
                        i = this.endXIndex - this.startXIndex;
                        Paint paint = lineViewData.paint;
                        if (i <= 100) {
                            paint.setStrokeCap(Paint.Cap.SQUARE);
                        } else {
                            paint.setStrokeCap(Paint.Cap.ROUND);
                        }
                        if (BaseChartView.USE_LINES) {
                            canvas.drawPath(lineViewData.chartPath, lineViewData.paint);
                            i2 = 0;
                        } else {
                            float[] fArr4 = lineViewData.linesPath;
                            Paint paint2 = lineViewData.paint;
                            i2 = 0;
                            canvas.drawLines(fArr4, 0, i6, paint2);
                        }
                        canvas.restore();
                    }
                    f = f2;
                    lineViewData.paint.setAlpha((int) (lineViewData.alpha * 255.0f * f));
                    i = this.endXIndex - this.startXIndex;
                    Paint paint3 = lineViewData.paint;
                    if (i <= 100) {
                    }
                    if (BaseChartView.USE_LINES) {
                    }
                    canvas.restore();
                } else {
                    f = f7;
                    i2 = i3;
                }
                i4++;
                i3 = i2;
                f7 = f;
            }
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawPickerChart(Canvas canvas) {
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
        T t = this.chartData;
        if (t != 0) {
            float[] fArr = t.xPercentage;
            float f7 = fArr.length < 2 ? 1.0f : fArr[1] * this.pickerWidth;
            int i3 = 0;
            while (i3 < size) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i3);
                float f8 = 0.0f;
                if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                    lineViewData.bottomLinePath.reset();
                    int length = this.chartData.xPercentage.length;
                    long[] jArr = lineViewData.line.f923y;
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
                            T t2 = this.chartData;
                            f2 = f8;
                            float f9 = t2.xPercentage[i4] * this.pickerWidth;
                            boolean z = BaseChartView.ANIMATE_PICKER_SIZES;
                            if (z) {
                                i2 = size;
                                f4 = this.pickerMaxHeight;
                                f3 = f7;
                            } else {
                                i2 = size;
                                f3 = f7;
                                f4 = t2.maxValue;
                            }
                            if (z) {
                                f6 = this.pickerMinHeight;
                                f5 = f4;
                            } else {
                                f5 = f4;
                                f6 = t2.minValue;
                            }
                            float f10 = (1.0f - ((j - f6) / (f5 - f6))) * this.pikerHeight;
                            if (!BaseChartView.USE_LINES) {
                                Path path = lineViewData.bottomLinePath;
                                if (i4 == 0) {
                                    path.moveTo(f9 - (f3 / 2.0f), f10);
                                } else {
                                    path.lineTo(f9 - (f3 / 2.0f), f10);
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
                            } else {
                                int i7 = length - 1;
                                float[] fArr3 = lineViewData.linesPathBottom;
                                if (i4 == i7) {
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
                                    int i8 = i5 + 9;
                                    fArr3[i5 + 8] = f15;
                                    i5 += 10;
                                    fArr3[i8] = f2;
                                } else {
                                    float f16 = f3 / 2.0f;
                                    float f17 = f9 - f16;
                                    fArr3[i5] = f17;
                                    fArr3[i5 + 1] = f10;
                                    fArr3[i5 + 2] = f17;
                                    fArr3[i5 + 3] = f10;
                                    float f18 = f9 + f16;
                                    fArr3[i5 + 4] = f18;
                                    fArr3[i5 + 5] = f10;
                                    int i9 = i5 + 7;
                                    fArr3[i5 + 6] = f18;
                                    i5 += 8;
                                    fArr3[i9] = f10;
                                }
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

    @Override // org.telegram.ui.Charts.BaseChartView
    public LineViewData createLineViewData(ChartData.Line line) {
        return new LineViewData(line, true);
    }
}
