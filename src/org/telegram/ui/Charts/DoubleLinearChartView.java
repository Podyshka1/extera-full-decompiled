package org.telegram.ui.Charts;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import java.util.ArrayList;
import kotlin.jvm.internal.LongCompanionObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Charts.data.ChartData;
import org.telegram.ui.Charts.data.DoubleLinearChartData;
import org.telegram.ui.Charts.view_data.ChartHorizontalLinesData;
import org.telegram.ui.Charts.view_data.LineViewData;
import org.telegram.ui.Charts.view_data.TransitionParams;

/* JADX INFO: loaded from: classes6.dex */
public class DoubleLinearChartView extends BaseChartView<DoubleLinearChartData, LineViewData> {
    public DoubleLinearChartView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void init() {
        this.useMinHeight = true;
        super.init();
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawChart(Canvas canvas) {
        float f;
        float f2;
        float f3;
        int i;
        float f4;
        if (this.chartData != 0) {
            float f5 = this.chartWidth;
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            float f6 = chartPickerDelegate.pickerEnd;
            float f7 = chartPickerDelegate.pickerStart;
            float f8 = f5 / (f6 - f7);
            float f9 = (f7 * f8) - BaseChartView.HORIZONTAL_PADDING;
            canvas.save();
            int i2 = this.transitionMode;
            float f10 = 2.0f;
            float f11 = 0.0f;
            int i3 = 2;
            float f12 = 1.0f;
            int i4 = 1;
            if (i2 == 2) {
                TransitionParams transitionParams = this.transitionParams;
                float f13 = transitionParams.progress;
                f = f13 > 0.5f ? 0.0f : 1.0f - (f13 * 2.0f);
                canvas.scale((f13 * 2.0f) + 1.0f, 1.0f, transitionParams.pX, transitionParams.pY);
            } else if (i2 == 1) {
                float f14 = this.transitionParams.progress;
                f = f14 < 0.3f ? 0.0f : f14;
                canvas.save();
                TransitionParams transitionParams2 = this.transitionParams;
                float f15 = transitionParams2.progress;
                canvas.scale(f15, f15, transitionParams2.pX, transitionParams2.pY);
            } else {
                f = i2 == 3 ? this.transitionParams.progress : 1.0f;
            }
            int i5 = 0;
            int i6 = 0;
            while (i6 < this.lines.size()) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i6);
                if (lineViewData.enabled || lineViewData.alpha != f11) {
                    long[] jArr = lineViewData.line.f1082y;
                    lineViewData.chartPath.reset();
                    T t = this.chartData;
                    int i7 = ((int) (BaseChartView.HORIZONTAL_PADDING / (((DoubleLinearChartData) t).xPercentage.length < i3 ? f12 : ((DoubleLinearChartData) t).xPercentage[i4] * f8))) + i4;
                    int iMax = Math.max(i5, this.startXIndex - i7);
                    f2 = f10;
                    int iMin = Math.min(((DoubleLinearChartData) this.chartData).xPercentage.length - i4, this.endXIndex + i7);
                    int i8 = i5;
                    int i9 = i4;
                    while (iMax <= iMin) {
                        long j = jArr[iMax];
                        if (j < 0) {
                            f4 = f8;
                        } else {
                            T t2 = this.chartData;
                            float f16 = (((DoubleLinearChartData) t2).xPercentage[iMax] * f8) - f9;
                            float f17 = j * ((DoubleLinearChartData) t2).linesK[i6];
                            float f18 = this.currentMinHeight;
                            float f19 = (f17 - f18) / (this.currentMaxHeight - f18);
                            float strokeWidth = lineViewData.paint.getStrokeWidth() / f2;
                            f4 = f8;
                            float measuredHeight = ((getMeasuredHeight() - this.chartBottom) - strokeWidth) - (f19 * (((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) - strokeWidth));
                            if (BaseChartView.USE_LINES) {
                                float[] fArr = lineViewData.linesPath;
                                if (i8 == 0) {
                                    int i10 = i8 + 1;
                                    fArr[i8] = f16;
                                    i8 += 2;
                                    fArr[i10] = measuredHeight;
                                } else {
                                    fArr[i8] = f16;
                                    fArr[i8 + 1] = measuredHeight;
                                    int i11 = i8 + 3;
                                    fArr[i8 + 2] = f16;
                                    i8 += 4;
                                    fArr[i11] = measuredHeight;
                                }
                            } else {
                                Path path = lineViewData.chartPath;
                                if (i9 != 0) {
                                    path.moveTo(f16, measuredHeight);
                                    i9 = 0;
                                } else {
                                    path.lineTo(f16, measuredHeight);
                                }
                            }
                        }
                        iMax++;
                        f8 = f4;
                    }
                    f3 = f8;
                    int i12 = this.endXIndex - this.startXIndex;
                    Paint paint = lineViewData.paint;
                    if (i12 > 100) {
                        paint.setStrokeCap(Paint.Cap.SQUARE);
                    } else {
                        paint.setStrokeCap(Paint.Cap.ROUND);
                    }
                    lineViewData.paint.setAlpha((int) (lineViewData.alpha * 255.0f * f));
                    if (BaseChartView.USE_LINES) {
                        i = 0;
                        canvas.drawLines(lineViewData.linesPath, 0, i8, lineViewData.paint);
                    } else {
                        canvas.drawPath(lineViewData.chartPath, lineViewData.paint);
                        i = 0;
                    }
                } else {
                    f3 = f8;
                    f2 = f10;
                    i = i5;
                }
                i6++;
                i5 = i;
                f10 = f2;
                f8 = f3;
                f11 = 0.0f;
                i3 = 2;
                f12 = 1.0f;
                i4 = 1;
            }
            canvas.restore();
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawPickerChart(Canvas canvas) {
        int i;
        int i2;
        float f;
        int i3;
        int i4;
        float f2;
        int measuredHeight = getMeasuredHeight();
        int i5 = BaseChartView.PICKER_PADDING;
        int i6 = measuredHeight - i5;
        int measuredHeight2 = (getMeasuredHeight() - this.pikerHeight) - i5;
        int size = this.lines.size();
        if (this.chartData != 0) {
            int i7 = 0;
            while (i7 < size) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i7);
                float f3 = 0.0f;
                if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                    lineViewData.bottomLinePath.reset();
                    int length = ((DoubleLinearChartData) this.chartData).xPercentage.length;
                    long[] jArr = lineViewData.line.f1082y;
                    lineViewData.chartPath.reset();
                    int i8 = 0;
                    int i9 = 0;
                    while (i8 < length) {
                        long j = jArr[i8];
                        if (j < 0) {
                            i3 = i6;
                            i4 = size;
                            f = f3;
                        } else {
                            T t = this.chartData;
                            f = f3;
                            float f4 = ((DoubleLinearChartData) t).xPercentage[i8] * this.pickerWidth;
                            if (BaseChartView.ANIMATE_PICKER_SIZES) {
                                f2 = this.pickerMaxHeight;
                                i3 = i6;
                                i4 = size;
                            } else {
                                i3 = i6;
                                i4 = size;
                                f2 = ((DoubleLinearChartData) t).maxValue;
                            }
                            float f5 = (1.0f - ((j * ((DoubleLinearChartData) t).linesK[i7]) / f2)) * (i3 - measuredHeight2);
                            if (BaseChartView.USE_LINES) {
                                float[] fArr = lineViewData.linesPathBottom;
                                if (i9 == 0) {
                                    int i10 = i9 + 1;
                                    fArr[i9] = f4;
                                    i9 += 2;
                                    fArr[i10] = f5;
                                } else {
                                    fArr[i9] = f4;
                                    fArr[i9 + 1] = f5;
                                    int i11 = i9 + 3;
                                    fArr[i9 + 2] = f4;
                                    i9 += 4;
                                    fArr[i11] = f5;
                                }
                            } else {
                                Path path = lineViewData.bottomLinePath;
                                if (i8 == 0) {
                                    path.moveTo(f4, f5);
                                } else {
                                    path.lineTo(f4, f5);
                                }
                            }
                        }
                        i8++;
                        f3 = f;
                        i6 = i3;
                        size = i4;
                    }
                    i = i6;
                    i2 = size;
                    float f6 = f3;
                    lineViewData.linesPathBottomSize = i9;
                    if (lineViewData.enabled || lineViewData.alpha != f6) {
                        lineViewData.bottomLinePaint.setAlpha((int) (lineViewData.alpha * 255.0f));
                        if (BaseChartView.USE_LINES) {
                            canvas.drawLines(lineViewData.linesPathBottom, 0, lineViewData.linesPathBottomSize, lineViewData.bottomLinePaint);
                        } else {
                            canvas.drawPath(lineViewData.bottomLinePath, lineViewData.bottomLinePaint);
                        }
                    }
                    i7++;
                    i6 = i;
                    size = i2;
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
    public void drawSelection(Canvas canvas) {
        int i = this.selectedIndex;
        if (i < 0 || !this.legendShowing) {
            return;
        }
        int i2 = (int) (this.chartActiveLineAlpha * this.selectionA);
        float f = this.chartWidth;
        ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
        float f2 = chartPickerDelegate.pickerEnd;
        float f3 = chartPickerDelegate.pickerStart;
        float f4 = f / (f2 - f3);
        float f5 = (((DoubleLinearChartData) this.chartData).xPercentage[i] * f4) - ((f3 * f4) - BaseChartView.HORIZONTAL_PADDING);
        this.selectedLinePaint.setAlpha(i2);
        canvas.drawLine(f5, 0.0f, f5, this.chartArea.bottom, this.selectedLinePaint);
        this.tmpN = this.lines.size();
        int i3 = 0;
        while (true) {
            this.tmpI = i3;
            int i4 = this.tmpI;
            if (i4 >= this.tmpN) {
                return;
            }
            LineViewData lineViewData = (LineViewData) this.lines.get(i4);
            if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                float f6 = lineViewData.line.f1082y[this.selectedIndex] * ((DoubleLinearChartData) this.chartData).linesK[this.tmpI];
                float f7 = this.currentMinHeight;
                float measuredHeight = (getMeasuredHeight() - this.chartBottom) - (((f6 - f7) / (this.currentMaxHeight - f7)) * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT));
                lineViewData.selectionPaint.setAlpha((int) (lineViewData.alpha * 255.0f * this.selectionA));
                this.selectionBackgroundPaint.setAlpha((int) (lineViewData.alpha * 255.0f * this.selectionA));
                canvas.drawPoint(f5, measuredHeight, lineViewData.selectionPaint);
                canvas.drawPoint(f5, measuredHeight, this.selectionBackgroundPaint);
            }
            i3 = this.tmpI + 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    @Override // org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawSignaturesToHorizontalLines(Canvas canvas, ChartHorizontalLinesData chartHorizontalLinesData) {
        float f;
        int i;
        boolean z;
        ChartHorizontalLinesData chartHorizontalLinesData2 = chartHorizontalLinesData;
        int length = chartHorizontalLinesData2.values.length;
        int i2 = 0;
        float f2 = 1.0f;
        int i3 = ((DoubleLinearChartData) this.chartData).linesK[0] == 1.0f ? 1 : 0;
        int i4 = (i3 + 1) % 2;
        if (length > 2) {
            float f3 = (r2[1] - r2[0]) / (this.currentMaxHeight - this.currentMinHeight);
            f = ((double) f3) < 0.1d ? f3 / 0.1f : 1.0f;
        }
        int i5 = this.transitionMode;
        if (i5 == 2) {
            f2 = 1.0f - this.transitionParams.progress;
        } else if (i5 == 1 || i5 == 3) {
            f2 = this.transitionParams.progress;
        }
        float f4 = f2;
        this.linePaint.setAlpha((int) (chartHorizontalLinesData2.alpha * 0.1f * f4));
        int measuredHeight = getMeasuredHeight() - this.chartBottom;
        int i6 = BaseChartView.SIGNATURE_TEXT_HEIGHT;
        int i7 = measuredHeight - i6;
        int textSize = (int) (i6 - this.signaturePaint.getTextSize());
        while (i2 < length) {
            float measuredHeight2 = getMeasuredHeight() - this.chartBottom;
            int i8 = i3;
            float f5 = chartHorizontalLinesData2.values[i2];
            float f6 = this.currentMinHeight;
            int i9 = (int) (measuredHeight2 - (i7 * ((f5 - f6) / (this.currentMaxHeight - f6))));
            if (chartHorizontalLinesData2.valuesStr == null || this.lines.size() <= 0) {
                i = textSize;
            } else {
                if (chartHorizontalLinesData2.valuesStr2 == null || this.lines.size() < 2) {
                    this.signaturePaint.setColor(Theme.getColor(Theme.key_statisticChartSignature, this.resourcesProvider));
                    this.signaturePaint.setAlpha((int) (chartHorizontalLinesData2.alpha * this.signaturePaintAlpha * f4 * f));
                } else {
                    this.signaturePaint.setColor(((LineViewData) this.lines.get(i4)).lineColor);
                    this.signaturePaint.setAlpha((int) (chartHorizontalLinesData2.alpha * ((LineViewData) this.lines.get(i4)).alpha * f4 * f));
                }
                i = textSize;
                chartHorizontalLinesData2.drawText(canvas, 0, i2, BaseChartView.HORIZONTAL_PADDING, i9 - textSize, this.signaturePaint);
            }
            if (chartHorizontalLinesData2.valuesStr2 == null) {
                z = true;
            } else if (this.lines.size() > 1) {
                this.signaturePaint2.setColor(((LineViewData) this.lines.get(i8)).lineColor);
                this.signaturePaint2.setAlpha((int) (chartHorizontalLinesData2.alpha * ((LineViewData) this.lines.get(i8)).alpha * f4 * f));
                z = true;
                chartHorizontalLinesData2.drawText(canvas, 1, i2, getMeasuredWidth() - BaseChartView.HORIZONTAL_PADDING, i9 - i, this.signaturePaint2);
            } else {
                z = true;
            }
            i2++;
            chartHorizontalLinesData2 = chartHorizontalLinesData;
            textSize = i;
            i3 = i8;
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public LineViewData createLineViewData(ChartData.Line line) {
        return new LineViewData(line, false, this.resourcesProvider);
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public long findMaxValue(int i, int i2) {
        if (this.lines.isEmpty()) {
            return 0L;
        }
        int size = this.lines.size();
        long j = 0;
        for (int i3 = 0; i3 < size; i3++) {
            long jRMaxQ = ((LineViewData) this.lines.get(i3)).enabled ? (long) (((DoubleLinearChartData) this.chartData).lines.get(i3).segmentTree.rMaxQ(i, i2) * ((DoubleLinearChartData) this.chartData).linesK[i3]) : 0L;
            if (jRMaxQ > j) {
                j = jRMaxQ;
            }
        }
        return j;
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public long findMinValue(int i, int i2) {
        if (this.lines.isEmpty()) {
            return 0L;
        }
        int size = this.lines.size();
        long j = LongCompanionObject.MAX_VALUE;
        for (int i3 = 0; i3 < size; i3++) {
            long jRMinQ = ((LineViewData) this.lines.get(i3)).enabled ? (int) (((DoubleLinearChartData) this.chartData).lines.get(i3).segmentTree.rMinQ(i, i2) * ((DoubleLinearChartData) this.chartData).linesK[i3]) : 2147483647L;
            if (jRMinQ < j) {
                j = jRMinQ;
            }
        }
        return j;
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void updatePickerMinMaxHeight() {
        if (BaseChartView.ANIMATE_PICKER_SIZES) {
            int i = 0;
            if (((LineViewData) this.lines.get(0)).enabled) {
                super.updatePickerMinMaxHeight();
                return;
            }
            ArrayList<L> arrayList = this.lines;
            int size = arrayList.size();
            long j = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                LineViewData lineViewData = (LineViewData) obj;
                if (lineViewData.enabled) {
                    long j2 = lineViewData.line.maxValue;
                    if (j2 > j) {
                        j = j2;
                    }
                }
            }
            if (this.lines.size() > 1) {
                j = (long) (j * ((DoubleLinearChartData) this.chartData).linesK[1]);
            }
            if (j > 0) {
                float f = j;
                if (f != this.animatedToPickerMaxHeight) {
                    this.animatedToPickerMaxHeight = f;
                    Animator animator = this.pickerAnimator;
                    if (animator != null) {
                        animator.cancel();
                    }
                    ValueAnimator valueAnimatorCreateAnimator = createAnimator(this.pickerMaxHeight, this.animatedToPickerMaxHeight, new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Charts.DoubleLinearChartView.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            DoubleLinearChartView.this.pickerMaxHeight = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            DoubleLinearChartView doubleLinearChartView = DoubleLinearChartView.this;
                            doubleLinearChartView.invalidatePickerChart = true;
                            doubleLinearChartView.invalidate();
                        }
                    });
                    this.pickerAnimator = valueAnimatorCreateAnimator;
                    valueAnimatorCreateAnimator.start();
                }
            }
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public ChartHorizontalLinesData createHorizontalLinesData(long j, long j2, int i) {
        T t = this.chartData;
        float f = 1.0f;
        if (((DoubleLinearChartData) t).linesK.length >= 2) {
            f = ((DoubleLinearChartData) t).linesK[((DoubleLinearChartData) t).linesK[0] == 1.0f ? (char) 1 : (char) 0];
        }
        return new ChartHorizontalLinesData(j, j2, this.useMinHeight, f, i, this.signaturePaint, this.signaturePaint2);
    }
}
