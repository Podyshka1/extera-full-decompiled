package org.telegram.p029ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import org.telegram.p029ui.Charts.data.ChartData;
import org.telegram.p029ui.Charts.view_data.LineViewData;
import org.telegram.p029ui.Charts.view_data.TransitionParams;

/* JADX INFO: loaded from: classes6.dex */
public class LinearChartView extends BaseChartView {
    public LinearChartView(Context context) {
        super(context);
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void init() {
        this.useMinHeight = true;
        super.init();
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void drawChart(Canvas canvas) {
        int i;
        if (this.chartData != null) {
            float f = this.chartWidth;
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            float f2 = chartPickerDelegate.pickerEnd;
            float f3 = chartPickerDelegate.pickerStart;
            float f4 = f / (f2 - f3);
            float f5 = (f3 * f4) - BaseChartView.HORIZONTAL_PADDING;
            int i2 = 0;
            int i3 = 0;
            while (i3 < this.lines.size()) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i3);
                if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                    float[] fArr = this.chartData.xPercentage;
                    float f6 = fArr.length < 2 ? 0.0f : fArr[1] * f4;
                    long[] jArr = lineViewData.line.f1916y;
                    int i4 = ((int) (BaseChartView.HORIZONTAL_PADDING / f6)) + 1;
                    lineViewData.chartPath.reset();
                    int iMax = Math.max(i2, this.startXIndex - i4);
                    int iMin = Math.min(this.chartData.xPercentage.length - 1, this.endXIndex + i4);
                    int i5 = i2;
                    boolean z = true;
                    while (iMax <= iMin) {
                        long[] jArr2 = jArr;
                        long j = jArr2[iMax];
                        if (j >= 0) {
                            float f7 = (this.chartData.xPercentage[iMax] * f4) - f5;
                            float f8 = this.currentMinHeight;
                            float f9 = (j - f8) / (this.currentMaxHeight - f8);
                            float strokeWidth = lineViewData.paint.getStrokeWidth() / 2.0f;
                            float measuredHeight = ((getMeasuredHeight() - this.chartBottom) - strokeWidth) - (f9 * (((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) - strokeWidth));
                            if (BaseChartView.USE_LINES) {
                                if (i5 == 0) {
                                    float[] fArr2 = lineViewData.linesPath;
                                    int i6 = i5 + 1;
                                    fArr2[i5] = f7;
                                    i5 += 2;
                                    fArr2[i6] = measuredHeight;
                                } else {
                                    float[] fArr3 = lineViewData.linesPath;
                                    fArr3[i5] = f7;
                                    fArr3[i5 + 1] = measuredHeight;
                                    int i7 = i5 + 3;
                                    fArr3[i5 + 2] = f7;
                                    i5 += 4;
                                    fArr3[i7] = measuredHeight;
                                }
                            } else if (z) {
                                lineViewData.chartPath.moveTo(f7, measuredHeight);
                                z = false;
                            } else {
                                lineViewData.chartPath.lineTo(f7, measuredHeight);
                            }
                        }
                        iMax++;
                        jArr = jArr2;
                    }
                    canvas.save();
                    int i8 = this.transitionMode;
                    if (i8 == 2) {
                        TransitionParams transitionParams = this.transitionParams;
                        float f10 = transitionParams.progress;
                        float f11 = f10 > 0.5f ? 0.0f : 1.0f - (f10 * 2.0f);
                        canvas.scale((f10 * 2.0f) + 1.0f, 1.0f, transitionParams.f1917pX, transitionParams.f1918pY);
                        f = f11;
                    } else if (i8 == 1) {
                        float f12 = this.transitionParams.progress;
                        float f13 = f12 < 0.3f ? 0.0f : f12;
                        canvas.save();
                        TransitionParams transitionParams2 = this.transitionParams;
                        float f14 = transitionParams2.progress;
                        canvas.scale(f14, transitionParams2.needScaleY ? f14 : 1.0f, transitionParams2.f1917pX, transitionParams2.f1918pY);
                        f = f13;
                    } else if (i8 == 3) {
                        f = this.transitionParams.progress;
                    }
                    lineViewData.paint.setAlpha((int) (lineViewData.alpha * 255.0f * f));
                    if (this.endXIndex - this.startXIndex > 100) {
                        lineViewData.paint.setStrokeCap(Paint.Cap.SQUARE);
                    } else {
                        lineViewData.paint.setStrokeCap(Paint.Cap.ROUND);
                    }
                    if (BaseChartView.USE_LINES) {
                        i = 0;
                        canvas.drawLines(lineViewData.linesPath, 0, i5, lineViewData.paint);
                    } else {
                        canvas.drawPath(lineViewData.chartPath, lineViewData.paint);
                        i = 0;
                    }
                    canvas.restore();
                } else {
                    i = i2;
                }
                i3++;
                i2 = i;
            }
        }
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void drawPickerChart(Canvas canvas) {
        int i;
        int i2;
        float f;
        float f2;
        long[] jArr;
        float f3;
        getMeasuredHeight();
        getMeasuredHeight();
        int size = this.lines.size();
        if (this.chartData != null) {
            int i3 = 0;
            while (i3 < size) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i3);
                float f4 = 0.0f;
                if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                    lineViewData.bottomLinePath.reset();
                    int length = this.chartData.xPercentage.length;
                    long[] jArr2 = lineViewData.line.f1916y;
                    lineViewData.chartPath.reset();
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < length) {
                        long j = jArr2[i4];
                        if (j < 0) {
                            i2 = i3;
                            f = f4;
                            jArr = jArr2;
                        } else {
                            ChartData chartData = this.chartData;
                            float f5 = chartData.xPercentage[i4] * this.pickerWidth;
                            boolean z = BaseChartView.ANIMATE_PICKER_SIZES;
                            if (z) {
                                f = f4;
                                i2 = i3;
                                f2 = this.pickerMaxHeight;
                            } else {
                                i2 = i3;
                                f = f4;
                                f2 = chartData.maxValue;
                            }
                            if (z) {
                                f3 = this.pickerMinHeight;
                                jArr = jArr2;
                            } else {
                                jArr = jArr2;
                                f3 = chartData.minValue;
                            }
                            float f6 = (1.0f - ((j - f3) / (f2 - f3))) * this.pikerHeight;
                            if (BaseChartView.USE_LINES) {
                                if (i5 == 0) {
                                    float[] fArr = lineViewData.linesPathBottom;
                                    int i6 = i5 + 1;
                                    fArr[i5] = f5;
                                    i5 += 2;
                                    fArr[i6] = f6;
                                } else {
                                    float[] fArr2 = lineViewData.linesPathBottom;
                                    fArr2[i5] = f5;
                                    fArr2[i5 + 1] = f6;
                                    int i7 = i5 + 3;
                                    fArr2[i5 + 2] = f5;
                                    i5 += 4;
                                    fArr2[i7] = f6;
                                }
                            } else if (i4 == 0) {
                                lineViewData.bottomLinePath.moveTo(f5, f6);
                            } else {
                                lineViewData.bottomLinePath.lineTo(f5, f6);
                            }
                        }
                        i4++;
                        jArr2 = jArr;
                        f4 = f;
                        i3 = i2;
                    }
                    i = i3;
                    float f7 = f4;
                    lineViewData.linesPathBottomSize = i5;
                    if (lineViewData.enabled || lineViewData.alpha != f7) {
                        lineViewData.bottomLinePaint.setAlpha((int) (lineViewData.alpha * 255.0f));
                        if (BaseChartView.USE_LINES) {
                            canvas.drawLines(lineViewData.linesPathBottom, 0, lineViewData.linesPathBottomSize, lineViewData.bottomLinePaint);
                        } else {
                            canvas.drawPath(lineViewData.bottomLinePath, lineViewData.bottomLinePaint);
                        }
                    }
                    i3 = i + 1;
                } else {
                    i = i3;
                }
                i3 = i + 1;
            }
        }
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    public LineViewData createLineViewData(ChartData.Line line) {
        return new LineViewData(line, false);
    }
}
