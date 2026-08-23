package org.telegram.ui.Charts;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.view.View;
import java.util.ArrayList;
import kotlin.time.DurationKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Charts.data.ChartData;
import org.telegram.ui.Charts.data.StackLinearChartData;
import org.telegram.ui.Charts.view_data.ChartHorizontalLinesData;
import org.telegram.ui.Charts.view_data.LegendSignatureView;
import org.telegram.ui.Charts.view_data.LineViewData;
import org.telegram.ui.Charts.view_data.PieLegendView;
import org.telegram.ui.Charts.view_data.TransitionParams;

/* JADX INFO: loaded from: classes6.dex */
public class PieChartView extends StackLinearChartView<PieChartViewData> {
    float MAX_TEXT_SIZE;
    float MIN_TEXT_SIZE;
    int currentSelection;
    float[] darawingValuesPercentage;
    float emptyDataAlpha;
    boolean isEmpty;
    int lastEndIndex;
    int lastStartIndex;
    String[] lookupTable;
    int oldW;
    PieLegendView pieLegendView;
    RectF rectF;
    float sum;
    TextPaint textPaint;
    float[] values;

    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawBottomLine(Canvas canvas) {
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawBottomSignature(Canvas canvas) {
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawHorizontalLines(Canvas canvas, ChartHorizontalLinesData chartHorizontalLinesData) {
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawSelection(Canvas canvas) {
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void drawSignaturesToHorizontalLines(Canvas canvas, ChartHorizontalLinesData chartHorizontalLinesData) {
    }

    public PieChartView(Context context) {
        super(context);
        this.currentSelection = -1;
        this.rectF = new RectF();
        this.MIN_TEXT_SIZE = AndroidUtilities.dp(9.0f);
        this.MAX_TEXT_SIZE = AndroidUtilities.dp(13.0f);
        this.lookupTable = new String[101];
        this.emptyDataAlpha = 1.0f;
        this.oldW = 0;
        this.lastStartIndex = -1;
        this.lastEndIndex = -1;
        for (int i = 1; i <= 100; i++) {
            this.lookupTable[i] = i + "%";
        }
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        textPaint.setTextAlign(Paint.Align.CENTER);
        this.textPaint.setColor(-1);
        this.textPaint.setTypeface(Typeface.create("sans-serif-medium", 0));
        this.canCaptureChartSelection = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0204  */
    @Override // org.telegram.ui.Charts.StackLinearChartView, org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawChart(Canvas canvas) {
        int i;
        float f;
        float f2;
        int i2;
        float f3;
        float f4;
        int i3;
        int i4;
        if (this.chartData == 0) {
            return;
        }
        if (canvas != null) {
            canvas.save();
        }
        int i5 = 1;
        if (this.transitionMode == 1) {
            float f5 = this.transitionParams.progress;
            i = (int) (f5 * f5 * 255.0f);
        } else {
            i = 255;
        }
        boolean z = this.isEmpty;
        float f6 = this.emptyDataAlpha;
        float f7 = 1.0f;
        float f8 = 0.0f;
        if (z) {
            if (f6 != 0.0f) {
                float f9 = f6 - 0.12f;
                this.emptyDataAlpha = f9;
                if (f9 < 0.0f) {
                    this.emptyDataAlpha = 0.0f;
                }
                invalidate();
            }
        } else if (f6 != 1.0f) {
            float f10 = f6 + 0.12f;
            this.emptyDataAlpha = f10;
            if (f10 > 1.0f) {
                this.emptyDataAlpha = 1.0f;
            }
            invalidate();
        }
        float f11 = this.emptyDataAlpha;
        int i6 = (int) (i * f11);
        float f12 = (f11 * 0.6f) + 0.4f;
        if (canvas != null) {
            canvas.scale(f12, f12, this.chartArea.centerX(), this.chartArea.centerY());
        }
        float fWidth = this.chartArea.width();
        float fHeight = this.chartArea.height();
        RectF rectF = this.chartArea;
        float fHeight2 = (int) ((fWidth > fHeight ? rectF.height() : rectF.width()) * 0.45f);
        this.rectF.set(this.chartArea.centerX() - fHeight2, (this.chartArea.centerY() + AndroidUtilities.dp(16.0f)) - fHeight2, this.chartArea.centerX() + fHeight2, this.chartArea.centerY() + AndroidUtilities.dp(16.0f) + fHeight2);
        int size = this.lines.size();
        float f13 = 0.0f;
        for (int i7 = 0; i7 < size; i7++) {
            f13 += ((PieChartViewData) this.lines.get(i7)).drawingPart * ((PieChartViewData) this.lines.get(i7)).alpha;
        }
        if (f13 == 0.0f) {
            if (canvas != null) {
                canvas.restore();
                return;
            }
            return;
        }
        float f14 = -90.0f;
        float f15 = -90.0f;
        int i8 = 0;
        while (i8 < size) {
            if (((PieChartViewData) this.lines.get(i8)).alpha > f8 || ((PieChartViewData) this.lines.get(i8)).enabled) {
                ((PieChartViewData) this.lines.get(i8)).paint.setAlpha(i6);
                float f16 = (((PieChartViewData) this.lines.get(i8)).drawingPart / f13) * ((PieChartViewData) this.lines.get(i8)).alpha;
                this.darawingValuesPercentage[i8] = f16;
                if (f16 == f8) {
                    i3 = i8;
                    i4 = i5;
                    f3 = f8;
                    f4 = f13;
                } else {
                    if (canvas != null) {
                        canvas.save();
                    }
                    double d = ((f16 / 2.0f) * 360.0f) + f15;
                    if (((PieChartViewData) this.lines.get(i8)).selectionA > f8) {
                        f3 = f8;
                        float interpolation = BaseChartView.INTERPOLATOR.getInterpolation(((PieChartViewData) this.lines.get(i8)).selectionA);
                        if (canvas != null) {
                            f4 = f13;
                            double d2 = interpolation;
                            i2 = i5;
                            canvas.translate((float) (Math.cos(Math.toRadians(d)) * ((double) AndroidUtilities.dp(8.0f)) * d2), (float) (Math.sin(Math.toRadians(d)) * ((double) AndroidUtilities.dp(8.0f)) * d2));
                            ((PieChartViewData) this.lines.get(i8)).paint.setStyle(Paint.Style.FILL_AND_STROKE);
                            ((PieChartViewData) this.lines.get(i8)).paint.setStrokeWidth(1.0f);
                            ((PieChartViewData) this.lines.get(i8)).paint.setAntiAlias(!BaseChartView.USE_LINES);
                            if (canvas == null) {
                                i4 = i2;
                                if (this.transitionMode != i4) {
                                    i3 = i8;
                                    canvas.drawArc(this.rectF, f15, f16 * 360.0f, true, ((PieChartViewData) this.lines.get(i8)).paint);
                                    ((PieChartViewData) this.lines.get(i3)).paint.setStyle(Paint.Style.STROKE);
                                    canvas.restore();
                                } else {
                                    i3 = i8;
                                }
                            } else {
                                i3 = i8;
                                i4 = i2;
                            }
                            ((PieChartViewData) this.lines.get(i3)).paint.setAlpha(255);
                            f15 += f16 * 360.0f;
                        } else {
                            i2 = i5;
                        }
                    } else {
                        i2 = i5;
                        f3 = f8;
                    }
                    f4 = f13;
                    ((PieChartViewData) this.lines.get(i8)).paint.setStyle(Paint.Style.FILL_AND_STROKE);
                    ((PieChartViewData) this.lines.get(i8)).paint.setStrokeWidth(1.0f);
                    ((PieChartViewData) this.lines.get(i8)).paint.setAntiAlias(!BaseChartView.USE_LINES);
                    if (canvas == null) {
                    }
                    ((PieChartViewData) this.lines.get(i3)).paint.setAlpha(255);
                    f15 += f16 * 360.0f;
                }
            }
            i8 = i3 + 1;
            i5 = i4;
            f8 = f3;
            f13 = f4;
        }
        float f17 = f8;
        float f18 = f13;
        if (canvas != null) {
            int i9 = 0;
            while (i9 < size) {
                if (((PieChartViewData) this.lines.get(i9)).alpha > f17 || ((PieChartViewData) this.lines.get(i9)).enabled) {
                    float f19 = (((PieChartViewData) this.lines.get(i9)).drawingPart * ((PieChartViewData) this.lines.get(i9)).alpha) / f18;
                    canvas.save();
                    double d3 = ((f19 / 2.0f) * 360.0f) + f14;
                    if (((PieChartViewData) this.lines.get(i9)).selectionA > f17) {
                        double interpolation2 = BaseChartView.INTERPOLATOR.getInterpolation(((PieChartViewData) this.lines.get(i9)).selectionA);
                        f = f7;
                        f2 = f14;
                        canvas.translate((float) (Math.cos(Math.toRadians(d3)) * ((double) AndroidUtilities.dp(8.0f)) * interpolation2), (float) (Math.sin(Math.toRadians(d3)) * ((double) AndroidUtilities.dp(8.0f)) * interpolation2));
                    } else {
                        f = f7;
                        f2 = f14;
                    }
                    int i10 = (int) (100.0f * f19);
                    if (f19 >= 0.02f && i10 > 0 && i10 <= 100) {
                        float fWidth2 = (float) (((double) (this.rectF.width() * 0.42f)) * Math.sqrt(f - f19));
                        this.textPaint.setTextSize(this.MIN_TEXT_SIZE + (this.MAX_TEXT_SIZE * f19));
                        this.textPaint.setAlpha((int) (i6 * ((PieChartViewData) this.lines.get(i9)).alpha));
                        double d4 = fWidth2;
                        canvas.drawText(this.lookupTable[i10], (float) (((double) this.rectF.centerX()) + (Math.cos(Math.toRadians(d3)) * d4)), ((float) (((double) this.rectF.centerY()) + (d4 * Math.sin(Math.toRadians(d3))))) - ((this.textPaint.descent() + this.textPaint.ascent()) / 2.0f), this.textPaint);
                    }
                    canvas.restore();
                    ((PieChartViewData) this.lines.get(i9)).paint.setAlpha(255);
                    f14 = f2 + (f19 * 360.0f);
                } else {
                    f = f7;
                }
                i9++;
                f7 = f;
            }
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ac  */
    @Override // org.telegram.ui.Charts.StackLinearChartView, org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawPickerChart(Canvas canvas) {
        float f;
        float f2;
        float f3;
        int i;
        int i2;
        T t = this.chartData;
        if (t != 0) {
            int length = ((StackLinearChartData) t).xPercentage.length;
            int size = this.lines.size();
            int i3 = 0;
            for (int i4 = 0; i4 < this.lines.size(); i4++) {
                ((LineViewData) this.lines.get(i4)).linesPathBottomSize = 0;
            }
            float length2 = (1.0f / ((StackLinearChartData) this.chartData).xPercentage.length) * this.pickerWidth;
            int i5 = 0;
            while (i5 < length) {
                float f4 = (length2 / 2.0f) + (((StackLinearChartData) this.chartData).xPercentage[i5] * (this.pickerWidth - length2));
                float f5 = 0.0f;
                int i6 = 1;
                int i7 = i3;
                int i8 = i7;
                float f6 = 0.0f;
                boolean z = true;
                while (i7 < size) {
                    LineViewData lineViewData = (LineViewData) this.lines.get(i7);
                    boolean z2 = lineViewData.enabled;
                    if (z2 || lineViewData.alpha != 0.0f) {
                        i2 = i5;
                        float f7 = lineViewData.line.f923y[i2] * lineViewData.alpha;
                        f6 += f7;
                        if (f7 > 0.0f) {
                            i8++;
                            if (z2) {
                                z = false;
                            }
                        }
                    } else {
                        i2 = i5;
                    }
                    i7++;
                    i5 = i2;
                }
                int i9 = i5;
                float f8 = 0.0f;
                int i10 = 0;
                while (i10 < size) {
                    LineViewData lineViewData2 = (LineViewData) this.lines.get(i10);
                    if (lineViewData2.enabled || lineViewData2.alpha != f5) {
                        long[] jArr = lineViewData2.line.f923y;
                        if (i8 == i6) {
                            f3 = jArr[i9] == 0 ? f5 : lineViewData2.alpha;
                            int i11 = this.pikerHeight;
                            float f9 = f3 * i11;
                            float[] fArr = lineViewData2.linesPath;
                            int i12 = lineViewData2.linesPathBottomSize;
                            int i13 = i12 + 1;
                            lineViewData2.linesPathBottomSize = i13;
                            fArr[i12] = f4;
                            i = length;
                            int i14 = i12 + 2;
                            lineViewData2.linesPathBottomSize = i14;
                            fArr[i13] = (i11 - f9) - f8;
                            int i15 = i12 + 3;
                            lineViewData2.linesPathBottomSize = i15;
                            fArr[i14] = f4;
                            lineViewData2.linesPathBottomSize = i12 + 4;
                            fArr[i15] = i11 - f8;
                            f8 += f9;
                        } else {
                            if (f6 != f5) {
                                if (z) {
                                    f2 = lineViewData2.alpha;
                                    f = (jArr[i9] / f6) * f2;
                                } else {
                                    f = jArr[i9] / f6;
                                    f2 = lineViewData2.alpha;
                                }
                                f3 = f * f2;
                            }
                            int i112 = this.pikerHeight;
                            float f92 = f3 * i112;
                            float[] fArr2 = lineViewData2.linesPath;
                            int i122 = lineViewData2.linesPathBottomSize;
                            int i132 = i122 + 1;
                            lineViewData2.linesPathBottomSize = i132;
                            fArr2[i122] = f4;
                            i = length;
                            int i142 = i122 + 2;
                            lineViewData2.linesPathBottomSize = i142;
                            fArr2[i132] = (i112 - f92) - f8;
                            int i152 = i122 + 3;
                            lineViewData2.linesPathBottomSize = i152;
                            fArr2[i142] = f4;
                            lineViewData2.linesPathBottomSize = i122 + 4;
                            fArr2[i152] = i112 - f8;
                            f8 += f92;
                        }
                    } else {
                        i = length;
                    }
                    i10++;
                    length = i;
                    f5 = 0.0f;
                    i6 = 1;
                }
                i5 = i9 + 1;
                i3 = 0;
            }
            for (int i16 = 0; i16 < size; i16++) {
                LineViewData lineViewData3 = (LineViewData) this.lines.get(i16);
                lineViewData3.paint.setStrokeWidth(length2);
                lineViewData3.paint.setAlpha(255);
                lineViewData3.paint.setAntiAlias(false);
                canvas.drawLines(lineViewData3.linesPath, 0, lineViewData3.linesPathBottomSize, lineViewData3.paint);
            }
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public boolean setData(StackLinearChartData stackLinearChartData) {
        boolean data = super.setData(stackLinearChartData);
        if (stackLinearChartData != null) {
            this.values = new float[stackLinearChartData.lines.size()];
            this.darawingValuesPercentage = new float[stackLinearChartData.lines.size()];
            onPickerDataChanged(false, true, false);
        }
        return data;
    }

    @Override // org.telegram.ui.Charts.StackLinearChartView, org.telegram.ui.Charts.BaseChartView
    public PieChartViewData createLineViewData(ChartData.Line line) {
        return new PieChartViewData(line);
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void selectXOnChart(int i, int i2) {
        if (this.chartData == 0 || this.isEmpty) {
            return;
        }
        float degrees = (float) (Math.toDegrees(Math.atan2((this.chartArea.centerY() + AndroidUtilities.dp(16.0f)) - i2, this.chartArea.centerX() - i)) - 90.0d);
        float f = 0.0f;
        if (degrees < 0.0f) {
            degrees = (float) (((double) degrees) + 360.0d);
        }
        float f2 = degrees / 360.0f;
        float f3 = 0.0f;
        int i3 = 0;
        while (true) {
            if (i3 >= this.lines.size()) {
                i3 = -1;
                f3 = 0.0f;
                break;
            }
            if (((PieChartViewData) this.lines.get(i3)).enabled || ((PieChartViewData) this.lines.get(i3)).alpha != 0.0f) {
                if (f2 > f3) {
                    float f4 = this.darawingValuesPercentage[i3];
                    if (f2 < f3 + f4) {
                        f = f3 + f4;
                        break;
                    }
                }
                f3 += this.darawingValuesPercentage[i3];
            }
            i3++;
        }
        if (this.currentSelection != i3 && i3 >= 0) {
            this.currentSelection = i3;
            invalidate();
            this.pieLegendView.setVisibility(0);
            LineViewData lineViewData = (LineViewData) this.lines.get(i3);
            this.pieLegendView.setData(lineViewData.line.name, (int) this.values[this.currentSelection], lineViewData.lineColor);
            this.pieLegendView.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
            double dWidth = this.rectF.width() / 2.0f;
            int iMin = (int) Math.min(((double) this.rectF.centerX()) + (Math.cos(Math.toRadians((f * 360.0f) - 90.0f)) * dWidth), ((double) this.rectF.centerX()) + (Math.cos(Math.toRadians((f3 * 360.0f) - 90.0f)) * dWidth));
            int measuredWidth = iMin >= 0 ? iMin : 0;
            if (this.pieLegendView.getMeasuredWidth() + measuredWidth > getMeasuredWidth() - AndroidUtilities.dp(16.0f)) {
                measuredWidth -= (this.pieLegendView.getMeasuredWidth() + measuredWidth) - (getMeasuredWidth() - AndroidUtilities.dp(16.0f));
            }
            int iMin2 = ((int) Math.min(this.rectF.centerY(), (int) Math.min(((double) this.rectF.centerY()) + (Math.sin(Math.toRadians(r14)) * dWidth), ((double) this.rectF.centerY()) + (dWidth * Math.sin(Math.toRadians(r9)))))) - AndroidUtilities.dp(50.0f);
            this.pieLegendView.setTranslationX(measuredWidth);
            this.pieLegendView.setTranslationY(iMin2);
            AndroidUtilities.vibrateCursor(this);
        }
        moveLegend();
    }

    @Override // org.telegram.ui.Charts.StackLinearChartView, org.telegram.ui.Charts.BaseChartView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.chartData != 0) {
            for (int i = 0; i < this.lines.size(); i++) {
                int i2 = this.currentSelection;
                ArrayList<L> arrayList = this.lines;
                if (i == i2) {
                    if (((PieChartViewData) arrayList.get(i)).selectionA < 1.0f) {
                        ((PieChartViewData) this.lines.get(i)).selectionA += 0.1f;
                        if (((PieChartViewData) this.lines.get(i)).selectionA > 1.0f) {
                            ((PieChartViewData) this.lines.get(i)).selectionA = 1.0f;
                        }
                        invalidate();
                    }
                } else if (((PieChartViewData) arrayList.get(i)).selectionA > 0.0f) {
                    ((PieChartViewData) this.lines.get(i)).selectionA -= 0.1f;
                    if (((PieChartViewData) this.lines.get(i)).selectionA < 0.0f) {
                        ((PieChartViewData) this.lines.get(i)).selectionA = 0.0f;
                    }
                    invalidate();
                }
            }
        }
        super.onDraw(canvas);
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void onActionUp() {
        this.currentSelection = -1;
        this.pieLegendView.setVisibility(8);
        invalidate();
    }

    @Override // org.telegram.ui.Charts.BaseChartView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getMeasuredWidth() != this.oldW) {
            this.oldW = getMeasuredWidth();
            float fWidth = this.chartArea.width();
            float fHeight = this.chartArea.height();
            RectF rectF = this.chartArea;
            int iHeight = (int) ((fWidth > fHeight ? rectF.height() : rectF.width()) * 0.45f);
            this.MIN_TEXT_SIZE = iHeight / 13;
            this.MAX_TEXT_SIZE = iHeight / 7;
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void updatePicker(ChartData chartData, long j) {
        int length = chartData.f922x.length;
        long j2 = j - (j % DurationKt.MILLIS_IN_DAY);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (j2 >= chartData.f922x[i2]) {
                i = i2;
            }
        }
        float length2 = chartData.xPercentage.length < 2 ? 0.5f : 1.0f / chartData.f922x.length;
        if (i == 0) {
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            chartPickerDelegate.pickerStart = 0.0f;
            chartPickerDelegate.pickerEnd = length2;
            return;
        }
        int length3 = chartData.f922x.length - 1;
        ChartPickerDelegate chartPickerDelegate2 = this.pickerDelegate;
        if (i >= length3) {
            chartPickerDelegate2.pickerStart = 1.0f - length2;
            chartPickerDelegate2.pickerEnd = 1.0f;
            return;
        }
        float f = i * length2;
        chartPickerDelegate2.pickerStart = f;
        float f2 = f + length2;
        chartPickerDelegate2.pickerEnd = f2;
        if (f2 > 1.0f) {
            chartPickerDelegate2.pickerEnd = 1.0f;
        }
        onPickerDataChanged(true, true, false);
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public LegendSignatureView createLegendView() {
        PieLegendView pieLegendView = new PieLegendView(getContext());
        this.pieLegendView = pieLegendView;
        return pieLegendView;
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public void onPickerDataChanged(boolean z, boolean z2, boolean z3) {
        super.onPickerDataChanged(z, z2, z3);
        T t = this.chartData;
        if (t == 0 || ((StackLinearChartData) t).xPercentage == null) {
            return;
        }
        ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
        updateCharValues(chartPickerDelegate.pickerStart, chartPickerDelegate.pickerEnd, z2);
    }

    private void updateCharValues(float f, float f2, boolean z) {
        if (this.values == null) {
            return;
        }
        int length = ((StackLinearChartData) this.chartData).xPercentage.length;
        int size = this.lines.size();
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < length; i4++) {
            T t = this.chartData;
            if (((StackLinearChartData) t).xPercentage[i4] >= f && i3 == -1) {
                i3 = i4;
            }
            if (((StackLinearChartData) t).xPercentage[i4] <= f2) {
                i2 = i4;
            }
        }
        if (i2 < i3) {
            i3 = i2;
        }
        if (!z && this.lastEndIndex == i2 && this.lastStartIndex == i3) {
            return;
        }
        this.lastEndIndex = i2;
        this.lastStartIndex = i3;
        this.isEmpty = true;
        this.sum = 0.0f;
        for (int i5 = 0; i5 < size; i5++) {
            this.values[i5] = 0.0f;
        }
        while (i3 <= i2) {
            for (int i6 = 0; i6 < size; i6++) {
                float[] fArr = this.values;
                fArr[i6] = fArr[i6] + ((StackLinearChartData) this.chartData).lines.get(i6).f923y[i3];
                this.sum += ((StackLinearChartData) this.chartData).lines.get(i6).f923y[i3];
                if (this.isEmpty && ((PieChartViewData) this.lines.get(i6)).enabled && ((StackLinearChartData) this.chartData).lines.get(i6).f923y[i3] > 0) {
                    this.isEmpty = false;
                }
            }
            i3++;
        }
        if (z) {
            while (i < size) {
                float f3 = this.sum;
                ArrayList<L> arrayList = this.lines;
                if (f3 == 0.0f) {
                    ((PieChartViewData) arrayList.get(i)).drawingPart = 0.0f;
                } else {
                    ((PieChartViewData) arrayList.get(i)).drawingPart = this.values[i] / this.sum;
                }
                i++;
            }
            return;
        }
        while (i < size) {
            final PieChartViewData pieChartViewData = (PieChartViewData) this.lines.get(i);
            Animator animator = pieChartViewData.animator;
            if (animator != null) {
                animator.cancel();
            }
            float f4 = this.sum;
            ValueAnimator valueAnimatorCreateAnimator = createAnimator(pieChartViewData.drawingPart, f4 == 0.0f ? 0.0f : this.values[i] / f4, new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Charts.PieChartView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$updateCharValues$0(pieChartViewData, valueAnimator);
                }
            });
            pieChartViewData.animator = valueAnimatorCreateAnimator;
            valueAnimatorCreateAnimator.start();
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCharValues$0(PieChartViewData pieChartViewData, ValueAnimator valueAnimator) {
        pieChartViewData.drawingPart = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // org.telegram.ui.Charts.BaseChartView, org.telegram.ui.Charts.ChartPickerDelegate.Listener
    public void onPickerJumpTo(float f, float f2, boolean z) {
        if (this.chartData == 0) {
            return;
        }
        if (z) {
            updateCharValues(f, f2, false);
        } else {
            updateIndexes();
            invalidate();
        }
    }

    @Override // org.telegram.ui.Charts.StackLinearChartView, org.telegram.ui.Charts.BaseChartView
    public void fillTransitionParams(TransitionParams transitionParams) {
        drawChart(null);
        float f = 0.0f;
        int i = 0;
        while (true) {
            float[] fArr = this.darawingValuesPercentage;
            if (i >= fArr.length) {
                return;
            }
            f += fArr[i];
            transitionParams.angle[i] = (360.0f * f) - 180.0f;
            i++;
        }
    }
}
