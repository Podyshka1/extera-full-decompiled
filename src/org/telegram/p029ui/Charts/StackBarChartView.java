package org.telegram.p029ui.Charts;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.SegmentTree;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Charts.BaseChartView;
import org.telegram.p029ui.Charts.data.ChartData;
import org.telegram.p029ui.Charts.data.StackBarChartData;
import org.telegram.p029ui.Charts.view_data.ChartHorizontalLinesData;
import org.telegram.p029ui.Charts.view_data.LineViewData;
import org.telegram.p029ui.Charts.view_data.StackBarViewData;
import org.telegram.p029ui.Charts.view_data.TransitionParams;

/* JADX INFO: loaded from: classes6.dex */
public class StackBarChartView extends BaseChartView {
    private long[] yMaxPoints;

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void drawSelection(Canvas canvas) {
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected float getMinDistance() {
        return 0.1f;
    }

    public StackBarChartView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.superDraw = true;
        this.useAlphaSignature = true;
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    public StackBarViewData createLineViewData(ChartData.Line line) {
        return new StackBarViewData(line, this.resourcesProvider);
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void drawChart(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        int i;
        Canvas canvas2 = canvas;
        ChartData chartData = this.chartData;
        if (chartData == null) {
            return;
        }
        float f6 = this.chartWidth;
        ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
        float f7 = chartPickerDelegate.pickerEnd;
        float f8 = chartPickerDelegate.pickerStart;
        float f9 = f6 / (f7 - f8);
        float f10 = BaseChartView.HORIZONTAL_PADDING;
        float f11 = (f8 * f9) - f10;
        if (((StackBarChartData) chartData).xPercentage.length < 2) {
            f = 1.0f;
            f2 = 1.0f;
        } else {
            float f12 = ((StackBarChartData) chartData).xPercentage[1] * f9;
            f = ((StackBarChartData) chartData).xPercentage[1] * (f9 - f12);
            f2 = f12;
        }
        int i2 = ((int) (f10 / f2)) + 1;
        int i3 = 0;
        int iMax = Math.max(0, (this.startXIndex - i2) - 2);
        int iMin = Math.min(((StackBarChartData) this.chartData).xPercentage.length - 1, this.endXIndex + i2 + 2);
        for (int i4 = 0; i4 < this.lines.size(); i4++) {
            ((LineViewData) this.lines.get(i4)).linesPathBottomSize = 0;
        }
        canvas2.save();
        int i5 = this.transitionMode;
        float f13 = 0.0f;
        if (i5 == 2) {
            this.postTransition = true;
            this.selectionA = 0.0f;
            TransitionParams transitionParams = this.transitionParams;
            float f14 = transitionParams.progress;
            f4 = 1.0f - f14;
            f3 = 2.0f;
            canvas2.scale((f14 * 2.0f) + 1.0f, 1.0f, transitionParams.f1917pX, transitionParams.f1918pY);
        } else {
            f3 = 2.0f;
            if (i5 == 1) {
                TransitionParams transitionParams2 = this.transitionParams;
                f4 = transitionParams2.progress;
                canvas2.scale(f4, 1.0f, transitionParams2.f1917pX, transitionParams2.f1918pY);
            } else {
                f4 = i5 == 3 ? this.transitionParams.progress : 1.0f;
            }
        }
        boolean z = this.selectedIndex >= 0 && this.legendShowing;
        while (iMax <= iMin) {
            if (this.selectedIndex != iMax || !z) {
                int i6 = i3;
                float f15 = f13;
                while (i6 < this.lines.size()) {
                    LineViewData lineViewData = (LineViewData) this.lines.get(i6);
                    float f16 = f13;
                    if (lineViewData.enabled || lineViewData.alpha != f16) {
                        long[] jArr = lineViewData.line.f1916y;
                        float f17 = ((f2 / f3) + (((StackBarChartData) this.chartData).xPercentage[iMax] * (f9 - f2))) - f11;
                        f5 = f9;
                        float measuredHeight = (jArr[iMax] / this.currentMaxHeight) * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) * lineViewData.alpha;
                        float[] fArr = lineViewData.linesPath;
                        int i7 = lineViewData.linesPathBottomSize;
                        i = iMin;
                        int i8 = i7 + 1;
                        lineViewData.linesPathBottomSize = i8;
                        fArr[i7] = f17;
                        int i9 = i7 + 2;
                        lineViewData.linesPathBottomSize = i9;
                        fArr[i8] = ((getMeasuredHeight() - this.chartBottom) - measuredHeight) - f15;
                        int i10 = i7 + 3;
                        lineViewData.linesPathBottomSize = i10;
                        fArr[i9] = f17;
                        lineViewData.linesPathBottomSize = i7 + 4;
                        fArr[i10] = (getMeasuredHeight() - this.chartBottom) - f15;
                        f15 += measuredHeight;
                    } else {
                        i = iMin;
                        f5 = f9;
                    }
                    i6++;
                    f13 = f16;
                    f9 = f5;
                    iMin = i;
                }
            }
            iMax++;
            f13 = f13;
            f9 = f9;
            iMin = iMin;
            i3 = 0;
        }
        float f18 = f9;
        float f19 = f13;
        for (int i11 = 0; i11 < this.lines.size(); i11++) {
            StackBarViewData stackBarViewData = (StackBarViewData) this.lines.get(i11);
            Paint paint = (z || this.postTransition) ? stackBarViewData.unselectedPaint : stackBarViewData.paint;
            if (z) {
                stackBarViewData.unselectedPaint.setColor(ColorUtils.blendARGB(stackBarViewData.lineColor, stackBarViewData.blendColor, this.selectionA));
            }
            if (this.postTransition) {
                stackBarViewData.unselectedPaint.setColor(ColorUtils.blendARGB(stackBarViewData.lineColor, stackBarViewData.blendColor, 1.0f));
            }
            paint.setAlpha((int) (255.0f * f4));
            paint.setStrokeWidth(f);
            canvas2.drawLines(stackBarViewData.linesPath, 0, stackBarViewData.linesPathBottomSize, paint);
        }
        if (z) {
            int i12 = 0;
            float f20 = f19;
            while (i12 < this.lines.size()) {
                LineViewData lineViewData2 = (LineViewData) this.lines.get(i12);
                if (lineViewData2.enabled || lineViewData2.alpha != f19) {
                    long[] jArr2 = lineViewData2.line.f1916y;
                    float f21 = ((f2 / f3) + (((StackBarChartData) this.chartData).xPercentage[this.selectedIndex] * (f18 - f2))) - f11;
                    float measuredHeight2 = (jArr2[r6] / this.currentMaxHeight) * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) * lineViewData2.alpha;
                    lineViewData2.paint.setStrokeWidth(f);
                    lineViewData2.paint.setAlpha((int) (f4 * 255.0f));
                    canvas2.drawLine(f21, ((getMeasuredHeight() - this.chartBottom) - measuredHeight2) - f20, f21, (getMeasuredHeight() - this.chartBottom) - f20, lineViewData2.paint);
                    f20 += measuredHeight2;
                }
                i12++;
                canvas2 = canvas;
            }
        }
        canvas.restore();
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void selectXOnChart(int i, int i2) {
        ChartData chartData = this.chartData;
        if (chartData == null) {
            return;
        }
        int i3 = this.selectedIndex;
        float f = this.chartFullWidth;
        float f2 = (this.pickerDelegate.pickerStart * f) - BaseChartView.HORIZONTAL_PADDING;
        float f3 = (i + f2) / (f - (((StackBarChartData) chartData).xPercentage.length < 2 ? 1.0f : ((StackBarChartData) chartData).xPercentage[1] * f));
        this.selectedCoordinate = f3;
        if (f3 < 0.0f) {
            this.selectedIndex = 0;
            this.selectedCoordinate = 0.0f;
        } else if (f3 > 1.0f) {
            this.selectedIndex = ((StackBarChartData) chartData).f1914x.length - 1;
            this.selectedCoordinate = 1.0f;
        } else {
            int iFindIndex = ((StackBarChartData) chartData).findIndex(this.startXIndex, this.endXIndex, f3);
            this.selectedIndex = iFindIndex;
            int i4 = this.endXIndex;
            if (iFindIndex > i4) {
                this.selectedIndex = i4;
            }
            int i5 = this.selectedIndex;
            int i6 = this.startXIndex;
            if (i5 < i6) {
                this.selectedIndex = i6;
            }
        }
        if (i3 != this.selectedIndex) {
            this.legendShowing = true;
            animateLegend(true);
            moveLegend(f2);
            BaseChartView.DateSelectionListener dateSelectionListener = this.dateSelectionListener;
            if (dateSelectionListener != null) {
                dateSelectionListener.onDateSelected(getSelectedDate());
            }
            invalidate();
            runSmoothHaptic();
        }
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void drawPickerChart(Canvas canvas) {
        float f;
        float f2;
        boolean z;
        int i;
        ChartData chartData = this.chartData;
        if (chartData != null) {
            int length = ((StackBarChartData) chartData).xPercentage.length;
            int size = this.lines.size();
            int i2 = 0;
            for (int i3 = 0; i3 < this.lines.size(); i3++) {
                ((LineViewData) this.lines.get(i3)).linesPathBottomSize = 0;
            }
            boolean z2 = true;
            int iMax = Math.max(1, Math.round(length / 200.0f));
            long[] jArr = this.yMaxPoints;
            if (jArr == null || jArr.length < size) {
                this.yMaxPoints = new long[size];
            }
            int i4 = 0;
            while (i4 < length) {
                float f3 = ((StackBarChartData) this.chartData).xPercentage[i4] * this.pickerWidth;
                int i5 = i2;
                while (true) {
                    f2 = 0.0f;
                    if (i5 >= size) {
                        break;
                    }
                    LineViewData lineViewData = (LineViewData) this.lines.get(i5);
                    if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                        long j = lineViewData.line.f1916y[i4];
                        long[] jArr2 = this.yMaxPoints;
                        if (j > jArr2[i5]) {
                            jArr2[i5] = j;
                        }
                    }
                    i5++;
                }
                if (i4 % iMax == 0) {
                    int i6 = i2;
                    float f4 = 0.0f;
                    while (i6 < size) {
                        LineViewData lineViewData2 = (LineViewData) this.lines.get(i6);
                        if (lineViewData2.enabled || lineViewData2.alpha != f2) {
                            float f5 = BaseChartView.ANIMATE_PICKER_SIZES ? this.pickerMaxHeight : ((StackBarChartData) this.chartData).maxValue;
                            long[] jArr3 = this.yMaxPoints;
                            float f6 = (jArr3[i6] / f5) * lineViewData2.alpha;
                            int i7 = this.pikerHeight;
                            float f7 = f6 * i7;
                            float[] fArr = lineViewData2.linesPath;
                            z = z2;
                            int i8 = lineViewData2.linesPathBottomSize;
                            int i9 = i8 + 1;
                            lineViewData2.linesPathBottomSize = i9;
                            fArr[i8] = f3;
                            int i10 = i8 + 2;
                            lineViewData2.linesPathBottomSize = i10;
                            i = length;
                            fArr[i9] = (i7 - f7) - f4;
                            int i11 = i8 + 3;
                            lineViewData2.linesPathBottomSize = i11;
                            fArr[i10] = f3;
                            lineViewData2.linesPathBottomSize = i8 + 4;
                            fArr[i11] = i7 - f4;
                            f4 += f7;
                            jArr3[i6] = 0;
                        } else {
                            i = length;
                            z = z2;
                        }
                        i6++;
                        z2 = z;
                        length = i;
                        f2 = 0.0f;
                    }
                }
                i4++;
                z2 = z2;
                length = length;
                i2 = 0;
            }
            boolean z3 = z2;
            ChartData chartData2 = this.chartData;
            if (((StackBarChartData) chartData2).xPercentage.length < 2) {
                f = 1.0f;
            } else {
                f = ((StackBarChartData) chartData2).xPercentage[z3 ? 1 : 0] * this.pickerWidth;
            }
            for (int i12 = 0; i12 < size; i12++) {
                LineViewData lineViewData3 = (LineViewData) this.lines.get(i12);
                lineViewData3.paint.setStrokeWidth(iMax * f);
                lineViewData3.paint.setAlpha(255);
                canvas.drawLines(lineViewData3.linesPath, 0, lineViewData3.linesPathBottomSize, lineViewData3.paint);
            }
        }
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    public void onCheckChanged() {
        int length = ((ChartData.Line) ((StackBarChartData) this.chartData).lines.get(0)).f1916y.length;
        int size = ((StackBarChartData) this.chartData).lines.size();
        ((StackBarChartData) this.chartData).ySum = new long[length];
        for (int i = 0; i < length; i++) {
            ((StackBarChartData) this.chartData).ySum[i] = 0;
            for (int i2 = 0; i2 < size; i2++) {
                if (((StackBarViewData) this.lines.get(i2)).enabled) {
                    ChartData chartData = this.chartData;
                    long[] jArr = ((StackBarChartData) chartData).ySum;
                    jArr[i] = jArr[i] + ((ChartData.Line) ((StackBarChartData) chartData).lines.get(i2)).f1916y[i];
                }
            }
        }
        ChartData chartData2 = this.chartData;
        ((StackBarChartData) chartData2).ySumSegmentTree = new SegmentTree(((StackBarChartData) chartData2).ySum);
        super.onCheckChanged();
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    public long findMaxValue(int i, int i2) {
        return ((StackBarChartData) this.chartData).findMax(i, i2);
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void updatePickerMinMaxHeight() {
        if (BaseChartView.ANIMATE_PICKER_SIZES) {
            int length = ((StackBarChartData) this.chartData).f1914x.length;
            int size = this.lines.size();
            long j = 0;
            for (int i = 0; i < length; i++) {
                long j2 = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    StackBarViewData stackBarViewData = (StackBarViewData) this.lines.get(i2);
                    if (stackBarViewData.enabled) {
                        j2 += stackBarViewData.line.f1916y[i];
                    }
                }
                if (j2 > j) {
                    j = j2;
                }
            }
            if (j > 0) {
                float f = j;
                if (f != this.animatedToPickerMaxHeight) {
                    this.animatedToPickerMaxHeight = f;
                    Animator animator = this.pickerAnimator;
                    if (animator != null) {
                        animator.cancel();
                    }
                    ValueAnimator valueAnimatorCreateAnimator = createAnimator(this.pickerMaxHeight, this.animatedToPickerMaxHeight, new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Charts.StackBarChartView.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            StackBarChartView.this.pickerMaxHeight = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            StackBarChartView stackBarChartView = StackBarChartView.this;
                            stackBarChartView.invalidatePickerChart = true;
                            stackBarChartView.invalidate();
                        }
                    });
                    this.pickerAnimator = valueAnimatorCreateAnimator;
                    valueAnimatorCreateAnimator.start();
                }
            }
        }
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView
    protected void initPickerMaxHeight() {
        super.initPickerMaxHeight();
        this.pickerMaxHeight = 0.0f;
        int length = ((StackBarChartData) this.chartData).f1914x.length;
        int size = this.lines.size();
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < size; i2++) {
                StackBarViewData stackBarViewData = (StackBarViewData) this.lines.get(i2);
                if (stackBarViewData.enabled) {
                    j += stackBarViewData.line.f1916y[i];
                }
            }
            float f = j;
            if (f > this.pickerMaxHeight) {
                this.pickerMaxHeight = f;
            }
        }
    }

    @Override // org.telegram.p029ui.Charts.BaseChartView, android.view.View
    protected void onDraw(Canvas canvas) {
        tick();
        drawChart(canvas);
        drawBottomLine(canvas);
        this.tmpN = this.horizontalLines.size();
        int i = 0;
        while (true) {
            this.tmpI = i;
            int i2 = this.tmpI;
            if (i2 < this.tmpN) {
                drawHorizontalLines(canvas, (ChartHorizontalLinesData) this.horizontalLines.get(i2));
                drawSignaturesToHorizontalLines(canvas, (ChartHorizontalLinesData) this.horizontalLines.get(this.tmpI));
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
