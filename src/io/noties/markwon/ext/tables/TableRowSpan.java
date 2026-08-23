package io.noties.markwon.ext.tables;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;
import io.noties.markwon.core.spans.TextLayoutSpan;
import io.noties.markwon.image.AsyncDrawable;
import io.noties.markwon.image.AsyncDrawableSpan;
import io.noties.markwon.utils.LeadingMarginUtils;
import io.noties.markwon.utils.SpanUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class TableRowSpan extends ReplacementSpan {
    private final List<Cell> cells;
    private final boolean header;
    private int height;
    private Invalidator invalidator;
    private final List<Layout> layouts;
    private final boolean odd;
    private final TableTheme theme;
    private int width;
    private final Rect rect = new Rect();
    private final Paint paint = new Paint(1);
    private final TextPaint textPaint = new TextPaint();

    public interface Invalidator {
        void invalidate();
    }

    public static class Cell {
        final int alignment;
        final CharSequence text;

        public Cell(int i, CharSequence charSequence) {
            this.alignment = i;
            this.text = charSequence;
        }

        public String toString() {
            return "Cell{alignment=" + this.alignment + ", text=" + ((Object) this.text) + '}';
        }
    }

    public TableRowSpan(TableTheme tableTheme, List<Cell> list, boolean z, boolean z2) {
        this.theme = tableTheme;
        this.cells = list;
        this.layouts = new ArrayList(list.size());
        this.header = z;
        this.odd = z2;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (this.layouts.size() > 0 && fontMetricsInt != null) {
            Iterator<Layout> it = this.layouts.iterator();
            int i3 = 0;
            while (it.hasNext()) {
                int height = it.next().getHeight();
                if (height > i3) {
                    i3 = height;
                }
            }
            this.height = i3;
            int i4 = -(i3 + (this.theme.tableCellPadding() * 2));
            fontMetricsInt.ascent = i4;
            fontMetricsInt.descent = 0;
            fontMetricsInt.top = i4;
            fontMetricsInt.bottom = 0;
        }
        return this.width;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0154  */
    @Override // android.text.style.ReplacementSpan
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        int i6;
        int i7;
        int i8;
        boolean z;
        Invalidator invalidator;
        int iSave;
        int i9;
        int iWidth = SpanUtils.width(canvas, charSequence);
        if (recreateLayouts(iWidth)) {
            this.width = iWidth;
            boolean z2 = paint instanceof TextPaint;
            TextPaint textPaint = this.textPaint;
            if (z2) {
                textPaint.set((TextPaint) paint);
            } else {
                textPaint.set(paint);
            }
            makeNewLayouts();
        }
        int iTableCellPadding = this.theme.tableCellPadding();
        int size = this.layouts.size();
        int iCellWidth = cellWidth(size);
        int i10 = iCellWidth - (this.width / size);
        if (this.header) {
            this.theme.applyTableHeaderRowStyle(this.paint);
        } else {
            boolean z3 = this.odd;
            TableTheme tableTheme = this.theme;
            if (z3) {
                tableTheme.applyTableOddRowStyle(this.paint);
            } else {
                tableTheme.applyTableEvenRowStyle(this.paint);
            }
        }
        if (this.paint.getColor() != 0) {
            iSave = canvas.save();
            try {
                i6 = iCellWidth;
                this.rect.set(0, 0, this.width, i5 - i3);
                canvas.translate(f, i3);
                canvas.drawRect(this.rect, this.paint);
            } finally {
                canvas.restoreToCount(iSave);
            }
        } else {
            i6 = iCellWidth;
        }
        this.paint.set(paint);
        this.theme.applyTableBorderStyle(this.paint);
        int iTableBorderWidth = this.theme.tableBorderWidth(this.paint);
        boolean z4 = iTableBorderWidth > 0;
        int i11 = i5 - i3;
        int i12 = (i11 - this.height) / 4;
        if (z4) {
            i8 = 0;
            i7 = i10;
            TableSpan[] tableSpanArr = (TableSpan[]) ((Spanned) charSequence).getSpans(i, i2, TableSpan.class);
            if (tableSpanArr == null || tableSpanArr.length <= 0 || !LeadingMarginUtils.selfStart(i, charSequence, tableSpanArr[0])) {
                z = false;
            } else {
                this.rect.set((int) f, i3, this.width, i3 + iTableBorderWidth);
                canvas.drawRect(this.rect, this.paint);
                z = true;
            }
            this.rect.set((int) f, i5 - iTableBorderWidth, this.width, i5);
            canvas.drawRect(this.rect, this.paint);
        } else {
            i7 = i10;
            i8 = 0;
            z = false;
        }
        int i13 = iTableBorderWidth / 2;
        int i14 = z ? iTableBorderWidth : i8;
        int i15 = i11 - iTableBorderWidth;
        int i16 = i8;
        int height = i16;
        while (i16 < size) {
            Layout layout = this.layouts.get(i16);
            iSave = canvas.save();
            int i17 = size;
            try {
                canvas.translate(f + (i16 * i6), i3);
                if (z4) {
                    Rect rect = this.rect;
                    if (i16 == 0) {
                        rect.set(i8, i14, iTableBorderWidth, i15);
                    } else {
                        rect.set(-i13, i14, i13, i15);
                    }
                    canvas.drawRect(this.rect, this.paint);
                    if (i16 == i17 - 1) {
                        i9 = i13;
                        this.rect.set((i6 - iTableBorderWidth) - i7, i14, i6 - i7, i15);
                        canvas.drawRect(this.rect, this.paint);
                    } else {
                        i9 = i13;
                    }
                }
                canvas.translate(iTableCellPadding, iTableCellPadding + i12);
                layout.draw(canvas);
                if (layout.getHeight() > height) {
                    height = layout.getHeight();
                }
                canvas.restoreToCount(iSave);
                i16++;
                i13 = i9;
                size = i17;
                i8 = 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.height == height || (invalidator = this.invalidator) == null) {
            return;
        }
        invalidator.invalidate();
    }

    private boolean recreateLayouts(int i) {
        return this.width != i;
    }

    private void makeNewLayouts() {
        this.textPaint.setFakeBoldText(this.header);
        int size = this.cells.size();
        int iCellWidth = cellWidth(size) - (this.theme.tableCellPadding() * 2);
        this.layouts.clear();
        int size2 = this.cells.size();
        for (int i = 0; i < size2; i++) {
            makeLayout(i, iCellWidth, this.cells.get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void makeLayout(final int i, final int i2, final Cell cell) {
        Spannable spannableString;
        Runnable runnable = new Runnable() { // from class: io.noties.markwon.ext.tables.TableRowSpan.1
            @Override // java.lang.Runnable
            public void run() {
                Invalidator invalidator = TableRowSpan.this.invalidator;
                if (invalidator != null) {
                    TableRowSpan.this.layouts.remove(i);
                    TableRowSpan.this.makeLayout(i, i2, cell);
                    invalidator.invalidate();
                }
            }
        };
        CharSequence charSequence = cell.text;
        if (charSequence instanceof Spannable) {
            spannableString = (Spannable) charSequence;
        } else {
            spannableString = new SpannableString(cell.text);
        }
        Spannable spannable = spannableString;
        StaticLayout staticLayout = new StaticLayout(spannable, this.textPaint, i2, alignment(cell.alignment), 1.0f, 0.0f, false);
        TextLayoutSpan.applyTo(spannable, staticLayout);
        scheduleAsyncDrawables(spannable, runnable);
        this.layouts.add(i, staticLayout);
    }

    private void scheduleAsyncDrawables(Spannable spannable, final Runnable runnable) {
        AsyncDrawableSpan[] asyncDrawableSpanArr = (AsyncDrawableSpan[]) spannable.getSpans(0, spannable.length(), AsyncDrawableSpan.class);
        if (asyncDrawableSpanArr == null || asyncDrawableSpanArr.length <= 0) {
            return;
        }
        for (AsyncDrawableSpan asyncDrawableSpan : asyncDrawableSpanArr) {
            AsyncDrawable drawable = asyncDrawableSpan.getDrawable();
            if (!drawable.isAttached()) {
                drawable.setCallback2(new CallbackAdapter() { // from class: io.noties.markwon.ext.tables.TableRowSpan.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super();
                    }

                    @Override // android.graphics.drawable.Drawable.Callback
                    public void invalidateDrawable(Drawable drawable2) {
                        runnable.run();
                    }
                });
            }
        }
    }

    public int cellWidth(int i) {
        return (int) (((this.width * 1.0f) / i) + 0.5f);
    }

    @SuppressLint({"SwitchIntDef"})
    private static Layout.Alignment alignment(int i) {
        if (i == 1) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (i == 2) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_NORMAL;
    }

    public void invalidator(Invalidator invalidator) {
        this.invalidator = invalidator;
    }

    public static abstract class CallbackAdapter implements Drawable.Callback {
        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        }

        private CallbackAdapter() {
        }
    }
}
