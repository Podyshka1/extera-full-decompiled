package org.telegram.ui.Charts.view_data;

import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ChannelMonetizationLayout;
import org.telegram.ui.Stars.StarsIntroActivity;

/* JADX INFO: loaded from: classes6.dex */
public class ChartHorizontalLinesData {
    public int alpha;
    public int fixedAlpha;
    private DecimalFormat formatterTON;
    private StaticLayout[] layouts;
    private StaticLayout[] layouts2;
    public long[] values;
    public CharSequence[] valuesStr;
    public CharSequence[] valuesStr2;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0135  */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, org.telegram.ui.Charts.view_data.ChartHorizontalLinesData] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ChartHorizontalLinesData(long j, long j2, boolean z, float f, int i, TextPaint textPaint, TextPaint textPaint2) {
        long j3;
        float f2;
        int i2;
        long jMax;
        int i3;
        int i4;
        int i5;
        int iMax;
        ?? obj = new Object();
        obj.fixedAlpha = 255;
        if (!z) {
            long jRound = j > 100 ? round(j) : j;
            long jMax2 = Math.max(1L, (long) Math.ceil(jRound / 5.0d));
            if (jRound < 6) {
                iMax = (int) Math.max(2L, jRound + 1);
            } else {
                long j4 = jRound / 2;
                if (j4 < 6) {
                    i4 = (int) (j4 + 1);
                    iMax = jRound % 2 != 0 ? i4 + 1 : iMax;
                } else {
                    i4 = 6;
                }
                obj.values = new long[i4];
                obj.valuesStr = new CharSequence[i4];
                obj.layouts = new StaticLayout[i4];
                if (f > 0.0f) {
                    obj.valuesStr2 = new CharSequence[i4];
                    obj.layouts2 = new StaticLayout[i4];
                }
                boolean z2 = ((float) jMax2) / f >= 1.0f;
                i5 = 1;
                while (i5 < i4) {
                    long j5 = ((long) i5) * jMax2;
                    obj.values[i5] = j5;
                    long j6 = jMax2;
                    obj.valuesStr[i5] = obj.format(0, textPaint, j5, i);
                    if (f > 0.0f) {
                        float f3 = obj.values[i5] / f;
                        if (z2) {
                            long j7 = (long) f3;
                            if (f3 - j7 >= 0.01f && i != 1 && i != 2) {
                                obj.valuesStr2[i5] = _UrlKt.FRAGMENT_ENCODE_SET;
                            } else {
                                obj.valuesStr2[i5] = obj.format(1, textPaint2, j7, i);
                            }
                        } else {
                            obj.valuesStr2[i5] = obj.format(1, textPaint2, (long) f3, i);
                        }
                    }
                    i5++;
                    jMax2 = j6;
                }
                return;
            }
            i4 = iMax;
            obj.values = new long[i4];
            obj.valuesStr = new CharSequence[i4];
            obj.layouts = new StaticLayout[i4];
            if (f > 0.0f) {
            }
            if (((float) jMax2) / f >= 1.0f) {
            }
            i5 = 1;
            while (i5 < i4) {
            }
            return;
        }
        long j8 = j - j2;
        if (j8 == 0) {
            j3 = j2 - 1;
            i2 = 3;
        } else {
            if (j8 < 6) {
                jMax = Math.max(2L, j8 + 1);
            } else {
                long j9 = j8 / 2;
                if (j9 < 6) {
                    j3 = j2;
                    i2 = (int) (j9 + (j8 % 2) + 1);
                    f2 = 2.0f;
                } else {
                    float f4 = j8 / 5.0f;
                    if (f4 <= 0.0f) {
                        jMax = Math.max(2L, j8 + 1);
                    } else {
                        j3 = j2;
                        f2 = f4;
                        i2 = 6;
                    }
                }
                obj.values = new long[i2];
                obj.valuesStr = new CharSequence[i2];
                obj.layouts = new StaticLayout[i2];
                if (f > 0.0f) {
                    obj.valuesStr2 = new CharSequence[i2];
                    obj.layouts2 = new StaticLayout[i2];
                }
                boolean z3 = f2 / f >= 1.0f;
                i3 = 0;
                ChartHorizontalLinesData chartHorizontalLinesData = obj;
                while (i3 < i2) {
                    long j10 = j3 + ((long) (i3 * f2));
                    chartHorizontalLinesData.values[i3] = j10;
                    chartHorizontalLinesData.valuesStr[i3] = chartHorizontalLinesData.format(0, textPaint, j10, i);
                    if (f > 0.0f) {
                        float f5 = chartHorizontalLinesData.values[i3] / f;
                        if (z3) {
                            long j11 = (long) f5;
                            if (f5 - j11 >= 0.01f && i != 1 && i != 2) {
                                chartHorizontalLinesData.valuesStr2[i3] = _UrlKt.FRAGMENT_ENCODE_SET;
                            } else {
                                chartHorizontalLinesData.valuesStr2[i3] = chartHorizontalLinesData.format(1, textPaint2, j11, i);
                            }
                        } else {
                            chartHorizontalLinesData.valuesStr2[i3] = chartHorizontalLinesData.format(1, textPaint2, (long) f5, i);
                        }
                    }
                    i3++;
                    chartHorizontalLinesData = this;
                }
            }
            j3 = j2;
            i2 = (int) jMax;
        }
        f2 = 1.0f;
        obj.values = new long[i2];
        obj.valuesStr = new CharSequence[i2];
        obj.layouts = new StaticLayout[i2];
        if (f > 0.0f) {
        }
        if (f2 / f >= 1.0f) {
        }
        i3 = 0;
        ChartHorizontalLinesData chartHorizontalLinesData2 = obj;
        while (i3 < i2) {
        }
    }

    public CharSequence format(int i, TextPaint textPaint, long j, int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                return AndroidUtilities.formatWholeNumber((int) j, 0);
            }
            if (i == 1) {
                return "≈" + BillingController.getInstance().formatCurrency(j, "USD");
            }
            return StarsIntroActivity.replaceStarsWithPlain("XTR " + LocaleController.formatNumber(j, ' '), 0.65f);
        }
        if (i == 1) {
            return "≈" + BillingController.getInstance().formatCurrency(j, "USD");
        }
        if (this.formatterTON == null) {
            DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
            decimalFormatSymbols.setDecimalSeparator('.');
            DecimalFormat decimalFormat = new DecimalFormat("#.##", decimalFormatSymbols);
            this.formatterTON = decimalFormat;
            decimalFormat.setMinimumFractionDigits(2);
            this.formatterTON.setMaximumFractionDigits(6);
            this.formatterTON.setGroupingUsed(false);
        }
        this.formatterTON.setMaximumFractionDigits(j <= 1000000000 ? 6 : 2);
        return ChannelMonetizationLayout.replaceTON("TON " + this.formatterTON.format(j / 1.0E9d), textPaint, 0.8f, -AndroidUtilities.dp(0.66f), false);
    }

    public static long lookupHeight(long j) {
        if (j > 100) {
            j = round(j);
        }
        return ((long) Math.ceil(j / 5.0f)) * 5;
    }

    private static long round(long j) {
        return ((float) (j / 5)) % 10.0f == 0.0f ? j : ((j / 10) + 1) * 10;
    }

    public void drawText(Canvas canvas, int i, int i2, float f, float f2, TextPaint textPaint) {
        TextPaint textPaint2;
        StaticLayout staticLayout = (i == 0 ? this.layouts : this.layouts2)[i2];
        if (staticLayout == null) {
            CharSequence charSequence = (i == 0 ? this.valuesStr : this.valuesStr2)[i2];
            StaticLayout[] staticLayoutArr = i == 0 ? this.layouts : this.layouts2;
            textPaint2 = textPaint;
            StaticLayout staticLayout2 = new StaticLayout(charSequence, textPaint2, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            staticLayoutArr[i2] = staticLayout2;
            staticLayout = staticLayout2;
        } else {
            textPaint2 = textPaint;
        }
        canvas.save();
        canvas.translate(f, f2 + textPaint2.ascent());
        staticLayout.draw(canvas);
        canvas.restore();
    }
}
