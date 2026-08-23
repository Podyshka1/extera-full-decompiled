package io.noties.markwon.ext.tables;

import android.graphics.Paint;
import io.noties.markwon.utils.ColorUtils;

/* JADX INFO: loaded from: classes5.dex */
public class TableTheme {
    protected final int tableBorderColor;
    protected final int tableBorderWidth;
    protected final int tableCellPadding;
    protected final int tableEvenRowBackgroundColor;
    protected final int tableHeaderRowBackgroundColor;
    protected final int tableOddRowBackgroundColor;

    public TableTheme(Builder builder) {
        this.tableCellPadding = builder.tableCellPadding;
        this.tableBorderColor = builder.tableBorderColor;
        this.tableBorderWidth = builder.tableBorderWidth;
        this.tableOddRowBackgroundColor = builder.tableOddRowBackgroundColor;
        this.tableEvenRowBackgroundColor = builder.tableEvenRowBackgroundColor;
        this.tableHeaderRowBackgroundColor = builder.tableHeaderRowBackgroundColor;
    }

    public int tableCellPadding() {
        return this.tableCellPadding;
    }

    public int tableBorderWidth(Paint paint) {
        int i = this.tableBorderWidth;
        return i == -1 ? (int) (paint.getStrokeWidth() + 0.5f) : i;
    }

    public void applyTableBorderStyle(Paint paint) {
        int iApplyAlpha = this.tableBorderColor;
        if (iApplyAlpha == 0) {
            iApplyAlpha = ColorUtils.applyAlpha(paint.getColor(), 75);
        }
        paint.setColor(iApplyAlpha);
        paint.setStyle(Paint.Style.FILL);
    }

    public void applyTableOddRowStyle(Paint paint) {
        int iApplyAlpha = this.tableOddRowBackgroundColor;
        if (iApplyAlpha == 0) {
            iApplyAlpha = ColorUtils.applyAlpha(paint.getColor(), 22);
        }
        paint.setColor(iApplyAlpha);
        paint.setStyle(Paint.Style.FILL);
    }

    public void applyTableEvenRowStyle(Paint paint) {
        paint.setColor(this.tableEvenRowBackgroundColor);
        paint.setStyle(Paint.Style.FILL);
    }

    public void applyTableHeaderRowStyle(Paint paint) {
        paint.setColor(this.tableHeaderRowBackgroundColor);
        paint.setStyle(Paint.Style.FILL);
    }

    public static class Builder {
        private int tableBorderColor;
        private int tableBorderWidth = -1;
        private int tableCellPadding;
        private int tableEvenRowBackgroundColor;
        private int tableHeaderRowBackgroundColor;
        private int tableOddRowBackgroundColor;

        public Builder tableCellPadding(int i) {
            this.tableCellPadding = i;
            return this;
        }

        public Builder tableBorderColor(int i) {
            this.tableBorderColor = i;
            return this;
        }

        public Builder tableBorderWidth(int i) {
            this.tableBorderWidth = i;
            return this;
        }

        public Builder tableOddRowBackgroundColor(int i) {
            this.tableOddRowBackgroundColor = i;
            return this;
        }

        public Builder tableHeaderRowBackgroundColor(int i) {
            this.tableHeaderRowBackgroundColor = i;
            return this;
        }

        public TableTheme build() {
            return new TableTheme(this);
        }
    }
}
