package org.telegram.ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Charts.data.ChartData;
import org.telegram.ui.Charts.data.StackLinearChartData;
import org.telegram.ui.Charts.view_data.LineViewData;
import org.telegram.ui.Charts.view_data.StackLinearViewData;
import org.telegram.ui.Charts.view_data.TransitionParams;

/* JADX INFO: loaded from: classes7.dex */
public class StackLinearChartView<T extends StackLinearViewData> extends BaseChartView<StackLinearChartData, T> {
    private float[] mapPoints;
    private Matrix matrix;
    Path ovalPath;
    boolean[] skipPoints;
    float[] startFromY;

    @Override // org.telegram.ui.Charts.BaseChartView
    public long findMaxValue(int i, int i2) {
        return 100L;
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public float getMinDistance() {
        return 0.1f;
    }

    public StackLinearChartView(Context context) {
        super(context);
        this.matrix = new Matrix();
        this.mapPoints = new float[2];
        this.ovalPath = new Path();
        this.superDraw = true;
        this.useAlphaSignature = true;
        this.drawPointOnSelection = false;
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public T createLineViewData(ChartData.Line line) {
        return (T) new StackLinearViewData(line);
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x05c4 A[PHI: r17
  0x05c4: PHI (r17v4 float) = (r17v3 float), (r17v3 float), (r17v5 float) binds: [B:154:0x049a, B:162:0x04e3, B:216:0x05c4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0623 A[LOOP:5: B:204:0x0621->B:205:0x0623, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0261  */
    @Override // org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawChart(Canvas canvas) {
        float f;
        float f2;
        float f3;
        int i;
        int iMin;
        boolean z;
        int i2;
        int size;
        float f4;
        float f5;
        int i3;
        float f6;
        int i4;
        float f7;
        float measuredWidth;
        int i5;
        float measuredHeight;
        float f8;
        float f9;
        int i6;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        int i7;
        long[] jArr;
        float f15;
        float f16;
        double degrees;
        int iQuarterForPoint;
        int iQuarterForPoint2;
        float f17;
        float f18;
        float f19;
        int i8;
        float f20;
        float f21;
        float f22;
        double degrees2;
        float[] fArr;
        int i9;
        float f23;
        if (this.chartData != 0) {
            float f24 = this.chartWidth;
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            float f25 = chartPickerDelegate.pickerEnd;
            float f26 = chartPickerDelegate.pickerStart;
            float f27 = f24 / (f25 - f26);
            float f28 = (f26 * f27) - BaseChartView.HORIZONTAL_PADDING;
            float fCenterX = this.chartArea.centerX();
            float fCenterY = this.chartArea.centerY() + AndroidUtilities.dp(16.0f);
            for (int i10 = 0; i10 < this.lines.size(); i10++) {
                ((StackLinearViewData) this.lines.get(i10)).chartPath.reset();
                ((StackLinearViewData) this.lines.get(i10)).chartPathPicker.reset();
            }
            canvas.save();
            boolean[] zArr = this.skipPoints;
            if (zArr == null || zArr.length < ((StackLinearChartData) this.chartData).lines.size()) {
                this.skipPoints = new boolean[((StackLinearChartData) this.chartData).lines.size()];
                this.startFromY = new float[((StackLinearChartData) this.chartData).lines.size()];
            }
            int i11 = this.transitionMode;
            if (i11 == 2) {
                float f29 = this.transitionParams.progress / 0.6f;
                if (f29 > 1.0f) {
                    f29 = 1.0f;
                }
                this.ovalPath.reset();
                float fWidth = this.chartArea.width();
                float fHeight = this.chartArea.height();
                RectF rectF = this.chartArea;
                float fWidth2 = fWidth > fHeight ? rectF.width() : rectF.height();
                float fWidth3 = this.chartArea.width();
                float fHeight2 = this.chartArea.height();
                RectF rectF2 = this.chartArea;
                float fHeight3 = (fWidth3 > fHeight2 ? rectF2.height() : rectF2.width()) * 0.45f;
                float f30 = fHeight3 + (((fWidth2 - fHeight3) / 2.0f) * (1.0f - this.transitionParams.progress));
                RectF rectF3 = new RectF();
                f = 1.0f;
                f2 = 0.0f;
                rectF3.set(fCenterX - f30, fCenterY - f30, fCenterX + f30, fCenterY + f30);
                this.ovalPath.addRoundRect(rectF3, f30, f30, Path.Direction.CW);
                canvas.clipPath(this.ovalPath);
                f3 = f29;
            } else {
                f = 1.0f;
                f2 = 0.0f;
                if (i11 == 3) {
                    i = (int) (this.transitionParams.progress * 255.0f);
                    f3 = 0.0f;
                    T t = this.chartData;
                    int i12 = ((int) (BaseChartView.HORIZONTAL_PADDING / (((StackLinearChartData) t).xPercentage.length >= 2 ? f : ((StackLinearChartData) t).xPercentage[1] * f27))) + 1;
                    int iMax = Math.max(0, (this.startXIndex - i12) - 1);
                    iMin = Math.min(((StackLinearChartData) this.chartData).xPercentage.length - 1, this.endXIndex + i12 + 1);
                    z = false;
                    i2 = iMax;
                    float f31 = f2;
                    float f32 = f31;
                    while (i2 <= iMin) {
                        float f33 = f2;
                        int i13 = 0;
                        int i14 = 0;
                        int i15 = 0;
                        while (i13 < this.lines.size()) {
                            LineViewData lineViewData = (LineViewData) this.lines.get(i13);
                            float f34 = f27;
                            if (lineViewData.enabled || lineViewData.alpha != f2) {
                                i9 = i13;
                                f23 = f3;
                                long j = lineViewData.line.f1084y[i2];
                                if (j > 0) {
                                    f33 += j * lineViewData.alpha;
                                    i14++;
                                }
                                i15 = i9;
                            } else {
                                i9 = i13;
                                f23 = f3;
                            }
                            i13 = i9 + 1;
                            f27 = f34;
                            f3 = f23;
                        }
                        float f35 = f27;
                        float f36 = f3;
                        float f37 = f2;
                        int i16 = 0;
                        while (i16 < this.lines.size()) {
                            LineViewData lineViewData2 = (LineViewData) this.lines.get(i16);
                            if (lineViewData2.enabled || lineViewData2.alpha != f2) {
                                long[] jArr2 = lineViewData2.line.f1084y;
                                f4 = f28;
                                if (i14 == 1) {
                                    if (jArr2[i2] == 0) {
                                        f5 = f31;
                                        i3 = i;
                                        f6 = f2;
                                    } else {
                                        f5 = f31;
                                        f6 = lineViewData2.alpha;
                                        i3 = i;
                                    }
                                    T t2 = this.chartData;
                                    i4 = i3;
                                    f7 = (((StackLinearChartData) t2).xPercentage[i2] * f35) - f4;
                                    if (i2 != iMin) {
                                        measuredWidth = getMeasuredWidth();
                                    } else {
                                        measuredWidth = (((StackLinearChartData) t2).xPercentage[i2 + 1] * f35) - f4;
                                    }
                                    i5 = i15;
                                    if (f6 == f2 && i16 == i5) {
                                        z = true;
                                    }
                                    float measuredHeight2 = ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) * f6;
                                    measuredHeight = ((getMeasuredHeight() - this.chartBottom) - measuredHeight2) - f37;
                                    this.startFromY[i16] = measuredHeight;
                                    float measuredHeight3 = getMeasuredHeight() - this.chartBottom;
                                    if (i2 != iMin) {
                                        f8 = measuredHeight3;
                                        f5 = f7;
                                    } else {
                                        f8 = measuredHeight3;
                                        if (i2 == iMax) {
                                            f32 = f7;
                                        }
                                    }
                                    float f38 = measuredWidth;
                                    if (this.transitionMode == 2 || i16 == i5) {
                                        f9 = f37;
                                        i6 = i14;
                                        f10 = measuredHeight;
                                        f11 = f2;
                                        f12 = f7;
                                        f13 = f12;
                                        f14 = f8;
                                    } else {
                                        int i17 = (f7 > fCenterX ? 1 : (f7 == fCenterX ? 0 : -1));
                                        TransitionParams transitionParams = this.transitionParams;
                                        if (i17 < 0) {
                                            i8 = i17;
                                            f20 = transitionParams.startX[i16];
                                            f21 = transitionParams.startY[i16];
                                        } else {
                                            i8 = i17;
                                            f20 = transitionParams.endX[i16];
                                            f21 = transitionParams.endY[i16];
                                        }
                                        float f39 = fCenterX - f20;
                                        float f40 = fCenterY - f21;
                                        float f41 = (((f7 - f20) * f40) / f39) + f21;
                                        float f42 = f - f36;
                                        float f43 = measuredHeight * f42;
                                        float f44 = f41 * f36;
                                        float f45 = f43 + f44;
                                        float f46 = (f8 * f42) + f44;
                                        float f47 = f40 / f39;
                                        if (f47 > f2) {
                                            f22 = f42;
                                            degrees2 = Math.toDegrees(-Math.atan(f47));
                                        } else {
                                            f22 = f42;
                                            degrees2 = Math.toDegrees(Math.atan(Math.abs(f47)));
                                        }
                                        float f48 = ((float) degrees2) - 90.0f;
                                        if (f7 >= fCenterX) {
                                            float[] fArr2 = this.mapPoints;
                                            fArr2[0] = f7;
                                            fArr2[1] = f45;
                                            this.matrix.reset();
                                            f11 = f48;
                                            this.matrix.postRotate(this.transitionParams.progress * f11, fCenterX, fCenterY);
                                            this.matrix.mapPoints(this.mapPoints);
                                            float[] fArr3 = this.mapPoints;
                                            float f49 = fArr3[0];
                                            float f50 = fArr3[1];
                                            if (f49 < fCenterX) {
                                                f49 = fCenterX;
                                            }
                                            fArr3[0] = f7;
                                            fArr3[1] = f46;
                                            this.matrix.reset();
                                            this.matrix.postRotate(this.transitionParams.progress * f11, fCenterX, fCenterY);
                                            this.matrix.mapPoints(this.mapPoints);
                                            i6 = i14;
                                            f10 = f50;
                                            f13 = f49;
                                            f9 = f37;
                                            f14 = this.mapPoints[1];
                                            f12 = i8 < 0 ? fCenterX : f7;
                                        } else {
                                            f11 = f48;
                                            if (f38 >= fCenterX) {
                                                f12 = (f7 * f22) + (fCenterX * f36);
                                                float f51 = (f45 * f22) + (fCenterY * f36);
                                                f9 = f37;
                                                i6 = i14;
                                                f14 = f51;
                                                f10 = f14;
                                                f13 = f12;
                                            } else {
                                                float[] fArr4 = this.mapPoints;
                                                fArr4[0] = f7;
                                                fArr4[1] = f45;
                                                this.matrix.reset();
                                                Matrix matrix = this.matrix;
                                                TransitionParams transitionParams2 = this.transitionParams;
                                                f9 = f37;
                                                float f52 = transitionParams2.progress;
                                                matrix.postRotate((f52 * f11) + (f52 * transitionParams2.angle[i16]), fCenterX, fCenterY);
                                                this.matrix.mapPoints(this.mapPoints);
                                                float[] fArr5 = this.mapPoints;
                                                float f53 = fArr5[0];
                                                float f54 = fArr5[1];
                                                if (f38 >= fCenterX) {
                                                    fArr = fArr5;
                                                    float f55 = this.transitionParams.progress;
                                                    fArr[0] = (f7 * (f - f55)) + (f55 * fCenterX);
                                                } else {
                                                    fArr = fArr5;
                                                    fArr[0] = f7;
                                                }
                                                fArr[1] = f46;
                                                this.matrix.reset();
                                                Matrix matrix2 = this.matrix;
                                                TransitionParams transitionParams3 = this.transitionParams;
                                                float f56 = transitionParams3.progress;
                                                matrix2.postRotate((f56 * f11) + (f56 * transitionParams3.angle[i16]), fCenterX, fCenterY);
                                                this.matrix.mapPoints(this.mapPoints);
                                                float[] fArr6 = this.mapPoints;
                                                float f57 = fArr6[0];
                                                f14 = fArr6[1];
                                                f12 = f57;
                                                f13 = f53;
                                                i6 = i14;
                                                f10 = f54;
                                            }
                                        }
                                    }
                                    i7 = iMax;
                                    if (i2 != iMax) {
                                        float measuredHeight4 = getMeasuredHeight();
                                        jArr = jArr2;
                                        if (this.transitionMode != 2 || i16 == i5) {
                                            f15 = f32;
                                            f18 = f2;
                                            f19 = measuredHeight4;
                                        } else {
                                            float[] fArr7 = this.mapPoints;
                                            fArr7[0] = f2 - fCenterX;
                                            fArr7[1] = measuredHeight4;
                                            this.matrix.reset();
                                            Matrix matrix3 = this.matrix;
                                            TransitionParams transitionParams4 = this.transitionParams;
                                            f15 = f32;
                                            float f58 = transitionParams4.progress;
                                            matrix3.postRotate((f11 * f58) + (f58 * transitionParams4.angle[i16]), fCenterX, fCenterY);
                                            this.matrix.mapPoints(this.mapPoints);
                                            float[] fArr8 = this.mapPoints;
                                            f18 = fArr8[0];
                                            f19 = fArr8[1];
                                        }
                                        lineViewData2.chartPath.moveTo(f18, f19);
                                        this.skipPoints[i16] = false;
                                    } else {
                                        jArr = jArr2;
                                        f15 = f32;
                                    }
                                    TransitionParams transitionParams5 = this.transitionParams;
                                    float f59 = transitionParams5 != null ? f2 : transitionParams5.progress;
                                    if (f6 != f2 && i2 > 0 && jArr[i2 - 1] == 0 && i2 < iMin && jArr[i2 + 1] == 0 && this.transitionMode != 2) {
                                        if (!this.skipPoints[i16]) {
                                            Path path = lineViewData2.chartPath;
                                            if (i16 == i5) {
                                                path.lineTo(f12, f14 * (f - f59));
                                            } else {
                                                path.lineTo(f12, f14);
                                            }
                                        }
                                        this.skipPoints[i16] = true;
                                    } else {
                                        if (this.skipPoints[i16]) {
                                            Path path2 = lineViewData2.chartPath;
                                            if (i16 == i5) {
                                                path2.lineTo(f12, f14 * (f - f59));
                                            } else {
                                                path2.lineTo(f12, f14);
                                            }
                                        }
                                        Path path3 = lineViewData2.chartPath;
                                        if (i16 != i5) {
                                            path3.lineTo(f13, (f - f59) * f10);
                                        } else {
                                            path3.lineTo(f13, f10);
                                        }
                                        this.skipPoints[i16] = false;
                                    }
                                    if (i2 != iMin) {
                                        float measuredWidth2 = getMeasuredWidth();
                                        float measuredHeight5 = getMeasuredHeight();
                                        if (this.transitionMode == 2 && i16 != i5) {
                                            float[] fArr9 = this.mapPoints;
                                            fArr9[0] = measuredWidth2 + fCenterX;
                                            fArr9[1] = measuredHeight5;
                                            this.matrix.reset();
                                            Matrix matrix4 = this.matrix;
                                            TransitionParams transitionParams6 = this.transitionParams;
                                            matrix4.postRotate(transitionParams6.progress * transitionParams6.angle[i16], fCenterX, fCenterY);
                                            this.matrix.mapPoints(this.mapPoints);
                                            float[] fArr10 = this.mapPoints;
                                            float f60 = fArr10[0];
                                            float f61 = fArr10[1];
                                        } else {
                                            lineViewData2.chartPath.lineTo(measuredWidth2, measuredHeight5);
                                        }
                                        if (this.transitionMode == 2) {
                                            if (i16 != i5) {
                                                TransitionParams transitionParams7 = this.transitionParams;
                                                float f62 = (fCenterY - transitionParams7.startY[i16]) / (fCenterX - transitionParams7.startX[i16]);
                                                if (f62 > f2) {
                                                    degrees = Math.toDegrees(-Math.atan(f62));
                                                } else {
                                                    degrees = Math.toDegrees(Math.atan(Math.abs(f62)));
                                                }
                                                TransitionParams transitionParams8 = this.transitionParams;
                                                float f63 = transitionParams8.startX[i16];
                                                float f64 = transitionParams8.startY[i16];
                                                float[] fArr11 = this.mapPoints;
                                                fArr11[0] = f63;
                                                fArr11[1] = f64;
                                                this.matrix.reset();
                                                Matrix matrix5 = this.matrix;
                                                TransitionParams transitionParams9 = this.transitionParams;
                                                float f65 = transitionParams9.progress;
                                                matrix5.postRotate(((((float) degrees) - 90.0f) * f65) + (f65 * transitionParams9.angle[i16]), fCenterX, fCenterY);
                                                this.matrix.mapPoints(this.mapPoints);
                                                float[] fArr12 = this.mapPoints;
                                                float f66 = fArr12[0];
                                                float f67 = fArr12[1];
                                                if (Math.abs(f13 - f66) >= 0.001d || ((f67 >= fCenterY || f10 >= fCenterY) && (f67 <= fCenterY || f10 <= fCenterY))) {
                                                    iQuarterForPoint = quarterForPoint(f13, f10);
                                                    iQuarterForPoint2 = quarterForPoint(f66, f67);
                                                } else if (this.transitionParams.angle[i16] == -180.0f) {
                                                    iQuarterForPoint2 = 0;
                                                    iQuarterForPoint = 0;
                                                } else {
                                                    iQuarterForPoint = 0;
                                                    iQuarterForPoint2 = 3;
                                                }
                                                while (iQuarterForPoint <= iQuarterForPoint2) {
                                                    if (iQuarterForPoint == 0) {
                                                        f17 = f2;
                                                        lineViewData2.chartPath.lineTo(getMeasuredWidth(), f17);
                                                    } else if (iQuarterForPoint == 1) {
                                                        lineViewData2.chartPath.lineTo(getMeasuredWidth(), getMeasuredHeight());
                                                        f17 = 0.0f;
                                                    } else {
                                                        Path path4 = lineViewData2.chartPath;
                                                        if (iQuarterForPoint == 2) {
                                                            f17 = 0.0f;
                                                            path4.lineTo(0.0f, getMeasuredHeight());
                                                        } else {
                                                            f17 = 0.0f;
                                                            path4.lineTo(0.0f, 0.0f);
                                                        }
                                                        iQuarterForPoint++;
                                                        f2 = f17;
                                                    }
                                                    iQuarterForPoint++;
                                                    f2 = f17;
                                                }
                                            }
                                            f16 = f2;
                                            f37 = f9 + measuredHeight2;
                                            f31 = f5;
                                            f32 = f15;
                                        } else {
                                            f16 = f2;
                                            f37 = f9 + measuredHeight2;
                                            f31 = f5;
                                            f32 = f15;
                                        }
                                    } else {
                                        f16 = f2;
                                        f37 = f9 + measuredHeight2;
                                        f31 = f5;
                                        f32 = f15;
                                    }
                                } else {
                                    if (f33 != f2) {
                                        f5 = f31;
                                        i3 = i;
                                        f6 = (jArr2[i2] * lineViewData2.alpha) / f33;
                                    }
                                    T t22 = this.chartData;
                                    i4 = i3;
                                    f7 = (((StackLinearChartData) t22).xPercentage[i2] * f35) - f4;
                                    if (i2 != iMin) {
                                    }
                                    i5 = i15;
                                    if (f6 == f2) {
                                        z = true;
                                    }
                                    float measuredHeight22 = ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) * f6;
                                    measuredHeight = ((getMeasuredHeight() - this.chartBottom) - measuredHeight22) - f37;
                                    this.startFromY[i16] = measuredHeight;
                                    float measuredHeight32 = getMeasuredHeight() - this.chartBottom;
                                    if (i2 != iMin) {
                                    }
                                    float f382 = measuredWidth;
                                    if (this.transitionMode == 2) {
                                        f9 = f37;
                                        i6 = i14;
                                        f10 = measuredHeight;
                                        f11 = f2;
                                        f12 = f7;
                                        f13 = f12;
                                        f14 = f8;
                                        i7 = iMax;
                                        if (i2 != iMax) {
                                        }
                                        TransitionParams transitionParams52 = this.transitionParams;
                                        if (transitionParams52 != null) {
                                        }
                                        if (f6 != f2) {
                                            if (this.skipPoints[i16]) {
                                            }
                                            Path path32 = lineViewData2.chartPath;
                                            if (i16 != i5) {
                                            }
                                            this.skipPoints[i16] = false;
                                            if (i2 != iMin) {
                                            }
                                        }
                                    }
                                }
                            } else {
                                f4 = f28;
                                i4 = i;
                                i7 = iMax;
                                f16 = f2;
                                i5 = i15;
                                i6 = i14;
                            }
                            i16++;
                            f2 = f16;
                            i14 = i6;
                            i = i4;
                            iMax = i7;
                            i15 = i5;
                            f28 = f4;
                        }
                        i2++;
                        f27 = f35;
                        f3 = f36;
                        iMax = iMax;
                    }
                    int i18 = i;
                    canvas.save();
                    canvas.clipRect(f32, BaseChartView.SIGNATURE_TEXT_HEIGHT, f31, getMeasuredHeight() - this.chartBottom);
                    if (z) {
                        canvas.drawColor(Theme.getColor(Theme.key_statisticChartLineEmpty));
                    }
                    for (size = this.lines.size() - 1; size >= 0; size--) {
                        LineViewData lineViewData3 = (LineViewData) this.lines.get(size);
                        lineViewData3.paint.setAlpha(i18);
                        canvas.drawPath(lineViewData3.chartPath, lineViewData3.paint);
                        lineViewData3.paint.setAlpha(255);
                    }
                    canvas.restore();
                    canvas.restore();
                }
                f3 = 0.0f;
            }
            i = 255;
            T t3 = this.chartData;
            int i122 = ((int) (BaseChartView.HORIZONTAL_PADDING / (((StackLinearChartData) t3).xPercentage.length >= 2 ? f : ((StackLinearChartData) t3).xPercentage[1] * f27))) + 1;
            int iMax2 = Math.max(0, (this.startXIndex - i122) - 1);
            iMin = Math.min(((StackLinearChartData) this.chartData).xPercentage.length - 1, this.endXIndex + i122 + 1);
            z = false;
            i2 = iMax2;
            float f312 = f2;
            float f322 = f312;
            while (i2 <= iMin) {
            }
            int i182 = i;
            canvas.save();
            canvas.clipRect(f322, BaseChartView.SIGNATURE_TEXT_HEIGHT, f312, getMeasuredHeight() - this.chartBottom);
            if (z) {
            }
            while (size >= 0) {
            }
            canvas.restore();
            canvas.restore();
        }
    }

    private int quarterForPoint(float f, float f2) {
        float fCenterX = this.chartArea.centerX();
        float fCenterY = this.chartArea.centerY() + AndroidUtilities.dp(16.0f);
        if (f >= fCenterX && f2 <= fCenterY) {
            return 0;
        }
        if (f < fCenterX || f2 < fCenterY) {
            return (f >= fCenterX || f2 < fCenterY) ? 3 : 2;
        }
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0175  */
    @Override // org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawPickerChart(Canvas canvas) {
        long j;
        boolean z;
        float f;
        float f2;
        float f3;
        int i;
        boolean z2;
        float f4;
        T t;
        if (this.chartData != 0) {
            int size = this.lines.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((StackLinearViewData) this.lines.get(i2)).chartPathPicker.reset();
            }
            T t2 = this.chartData;
            int i3 = ((StackLinearChartData) t2).simplifiedSize;
            boolean[] zArr = this.skipPoints;
            if (zArr == null || zArr.length < ((StackLinearChartData) t2).lines.size()) {
                this.skipPoints = new boolean[((StackLinearChartData) this.chartData).lines.size()];
            }
            int i4 = 0;
            boolean z3 = false;
            while (true) {
                boolean z4 = true;
                if (i4 >= i3) {
                    break;
                }
                float f5 = 0.0f;
                float f6 = 0.0f;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    j = 0;
                    if (i5 >= this.lines.size()) {
                        break;
                    }
                    LineViewData lineViewData = (LineViewData) this.lines.get(i5);
                    if (lineViewData.enabled || lineViewData.alpha != 0.0f) {
                        if (((StackLinearChartData) this.chartData).simplifiedY[i5][i4] > 0) {
                            f6 += ((StackLinearChartData) r11).simplifiedY[i5][i4] * lineViewData.alpha;
                            i6++;
                        }
                        i7 = i5;
                    }
                    i5++;
                }
                int i8 = i3 - 1;
                float f7 = (i4 / i8) * this.pickerWidth;
                float f8 = 0.0f;
                int i9 = 0;
                while (i9 < this.lines.size()) {
                    LineViewData lineViewData2 = (LineViewData) this.lines.get(i9);
                    long j2 = j;
                    if (!lineViewData2.enabled && lineViewData2.alpha == f5) {
                        i = i3;
                        z2 = z4;
                        f4 = f5;
                    } else if (i6 == z4) {
                        if (((StackLinearChartData) this.chartData).simplifiedY[i9][i4] == j2) {
                            z = z4;
                            f2 = f5;
                            f = f2;
                        } else {
                            f2 = lineViewData2.alpha;
                            z = z4;
                            f = f5;
                        }
                        if (f2 == f && i9 == i7) {
                            z3 = z;
                        }
                        int i10 = this.pikerHeight;
                        float f9 = f2 * i10;
                        f3 = (i10 - f9) - f8;
                        if (i4 != 0) {
                            z2 = z;
                            i = i3;
                            f4 = f;
                            lineViewData2.chartPathPicker.moveTo(f4, i10);
                            this.skipPoints[i9] = false;
                        } else {
                            i = i3;
                            z2 = z;
                            f4 = f;
                        }
                        t = this.chartData;
                        if (((StackLinearChartData) t).simplifiedY[i9][i4] != j2 && i4 > 0 && ((StackLinearChartData) t).simplifiedY[i9][i4 - 1] == j2 && i4 < i8 && ((StackLinearChartData) t).simplifiedY[i9][i4 + 1] == j2) {
                            if (!this.skipPoints[i9]) {
                                lineViewData2.chartPathPicker.lineTo(f7, this.pikerHeight);
                            }
                            this.skipPoints[i9] = z2;
                        } else {
                            if (this.skipPoints[i9]) {
                                lineViewData2.chartPathPicker.lineTo(f7, this.pikerHeight);
                            }
                            lineViewData2.chartPathPicker.lineTo(f7, f3);
                            this.skipPoints[i9] = false;
                        }
                        if (i4 == i8) {
                            lineViewData2.chartPathPicker.lineTo(this.pickerWidth, this.pikerHeight);
                        }
                        f8 += f9;
                    } else {
                        if (f6 != f5) {
                            z = z4;
                            f = f5;
                            f2 = (((StackLinearChartData) this.chartData).simplifiedY[i9][i4] * lineViewData2.alpha) / f6;
                        }
                        if (f2 == f) {
                            z3 = z;
                        }
                        int i102 = this.pikerHeight;
                        float f92 = f2 * i102;
                        f3 = (i102 - f92) - f8;
                        if (i4 != 0) {
                        }
                        t = this.chartData;
                        if (((StackLinearChartData) t).simplifiedY[i9][i4] != j2) {
                            if (this.skipPoints[i9]) {
                            }
                            lineViewData2.chartPathPicker.lineTo(f7, f3);
                            this.skipPoints[i9] = false;
                            if (i4 == i8) {
                            }
                            f8 += f92;
                        }
                    }
                    i9++;
                    f5 = f4;
                    j = j2;
                    z4 = z2;
                    i3 = i;
                }
                i4++;
            }
            if (z3) {
                canvas.drawColor(Theme.getColor(Theme.key_statisticChartLineEmpty));
            }
            for (int size2 = this.lines.size() - 1; size2 >= 0; size2--) {
                LineViewData lineViewData3 = (LineViewData) this.lines.get(size2);
                canvas.drawPath(lineViewData3.chartPathPicker, lineViewData3.paint);
            }
        }
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

    /* JADX WARN: Removed duplicated region for block: B:38:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014c  */
    @Override // org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillTransitionParams(TransitionParams transitionParams) {
        float f;
        float f2;
        int i;
        T t = this.chartData;
        if (t == 0) {
            return;
        }
        float f3 = this.chartWidth;
        ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
        float f4 = chartPickerDelegate.pickerEnd;
        float f5 = chartPickerDelegate.pickerStart;
        float f6 = f3 / (f4 - f5);
        float f7 = BaseChartView.HORIZONTAL_PADDING;
        float f8 = (f5 * f6) - f7;
        int i2 = 2;
        int i3 = 1;
        int i4 = ((int) (f7 / (((StackLinearChartData) t).xPercentage.length < 2 ? 1.0f : ((StackLinearChartData) t).xPercentage[1] * f6))) + 1;
        int i5 = 0;
        int iMax = Math.max(0, (this.startXIndex - i4) - 1);
        int iMin = Math.min(((StackLinearChartData) this.chartData).xPercentage.length - 1, this.endXIndex + i4 + 1);
        this.transitionParams.startX = new float[((StackLinearChartData) this.chartData).lines.size()];
        this.transitionParams.startY = new float[((StackLinearChartData) this.chartData).lines.size()];
        this.transitionParams.endX = new float[((StackLinearChartData) this.chartData).lines.size()];
        this.transitionParams.endY = new float[((StackLinearChartData) this.chartData).lines.size()];
        this.transitionParams.angle = new float[((StackLinearChartData) this.chartData).lines.size()];
        int i6 = 0;
        while (i6 < i2) {
            int i7 = i6 == i3 ? iMin : iMax;
            float f9 = 0.0f;
            int i8 = i5;
            int i9 = i8;
            float f10 = 0.0f;
            while (i8 < this.lines.size()) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i8);
                if (lineViewData.enabled || lineViewData.alpha != f9) {
                    f2 = f9;
                    i = i8;
                    long j = lineViewData.line.f1084y[i7];
                    if (j > 0) {
                        f10 += j * lineViewData.alpha;
                        i9++;
                    }
                } else {
                    f2 = f9;
                    i = i8;
                }
                i8 = i + 1;
                f9 = f2;
            }
            float f11 = f9;
            int i10 = 0;
            int i11 = 0;
            while (i10 < this.lines.size()) {
                LineViewData lineViewData2 = (LineViewData) this.lines.get(i10);
                if (lineViewData2.enabled || lineViewData2.alpha != f11) {
                    long[] jArr = lineViewData2.line.f1084y;
                    if (i9 == i3) {
                        f = jArr[i7] == 0 ? f11 : lineViewData2.alpha;
                        float f12 = (((StackLinearChartData) this.chartData).xPercentage[i7] * f6) - f8;
                        float measuredHeight = f * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT);
                        float f13 = i11;
                        float measuredHeight2 = ((getMeasuredHeight() - this.chartBottom) - measuredHeight) - f13;
                        i11 = (int) (f13 + measuredHeight);
                        TransitionParams transitionParams2 = this.transitionParams;
                        if (i6 != 0) {
                            transitionParams2.startX[i10] = f12;
                            transitionParams2.startY[i10] = measuredHeight2;
                        } else {
                            transitionParams2.endX[i10] = f12;
                            transitionParams2.endY[i10] = measuredHeight2;
                        }
                    } else {
                        if (f10 != f11) {
                            f = (jArr[i7] * lineViewData2.alpha) / f10;
                        }
                        float f122 = (((StackLinearChartData) this.chartData).xPercentage[i7] * f6) - f8;
                        float measuredHeight3 = f * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT);
                        float f132 = i11;
                        float measuredHeight22 = ((getMeasuredHeight() - this.chartBottom) - measuredHeight3) - f132;
                        i11 = (int) (f132 + measuredHeight3);
                        TransitionParams transitionParams22 = this.transitionParams;
                        if (i6 != 0) {
                        }
                    }
                }
                i10++;
                i3 = 1;
            }
            i6++;
            i5 = 0;
            i2 = 2;
            i3 = 1;
        }
    }
}
