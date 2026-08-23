package org.telegram.ui.iv;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.CubicBezierInterpolator;

/* JADX INFO: loaded from: classes7.dex */
public class RichTableCellGrid extends ViewGroup {
    private final RectF arcRect;
    private boolean bottomBulge;
    private int bulgeColLeft;
    private int bulgeColRight;
    private final Paint bulgeFillPaint;
    private final Path bulgePath;
    private int bulgeRowBot;
    private int bulgeRowTop;
    private int[] colStarts;
    private int[] colWidths;
    private int dotColor;
    private int dotOnSelectionColor;
    private final Paint dotPaint;
    private final Paint headerPaint;
    private boolean leftBulge;
    private final Paint linePaint;
    private TableModel model;
    private Theme.ResourcesProvider resourcesProvider;
    private int[] rowHeights;
    private int[] rowStarts;
    private final RectF selRect;
    private int selectedFillBaseAlpha;
    private int selectedStrokeBaseAlpha;
    private final Paint selectedStrokePaint;
    private AnimatedFloat selectionFade;
    private CellSelectionProvider selectionProvider;
    private final Paint stripPaint;

    public interface CellSelectionProvider {
        boolean isSelected(TL_iv.pageTableCell pagetablecell);
    }

    public void setSelectionProvider(CellSelectionProvider cellSelectionProvider) {
        this.selectionProvider = cellSelectionProvider;
        invalidate();
    }

    public RichTableCellGrid(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.colWidths = new int[0];
        this.rowHeights = new int[0];
        this.colStarts = new int[0];
        this.rowStarts = new int[0];
        Paint paint = new Paint(1);
        this.linePaint = paint;
        this.headerPaint = new Paint(1);
        this.stripPaint = new Paint(1);
        Paint paint2 = new Paint(1);
        this.selectedStrokePaint = paint2;
        this.dotPaint = new Paint(1);
        this.bulgeFillPaint = new Paint(1);
        this.selRect = new RectF();
        this.arcRect = new RectF();
        this.bulgePath = new Path();
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint.setStrokeWidth(AndroidUtilities.dp(1.0f));
        paint2.setStyle(style);
        paint2.setStrokeWidth(AndroidUtilities.dp(2.0f));
        paint2.setStrokeJoin(Paint.Join.ROUND);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        this.selectionFade = new AnimatedFloat(this, 0L, 220L, CubicBezierInterpolator.EASE_OUT_QUINT);
        applyColors();
    }

    public void applyColors() {
        this.linePaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteInputField, this.resourcesProvider));
        int color = Theme.getColor(Theme.key_switchTrack, this.resourcesProvider);
        int iRed = Color.red(color);
        int iGreen = Color.green(color);
        int iBlue = Color.blue(color);
        this.headerPaint.setColor(Color.argb(34, iRed, iGreen, iBlue));
        this.stripPaint.setColor(Color.argb(20, iRed, iGreen, iBlue));
        this.selectedFillBaseAlpha = 80;
        this.selectedStrokeBaseAlpha = 255;
        Paint paint = this.selectedStrokePaint;
        int i = Theme.key_featuredStickers_addButton;
        paint.setColor(Theme.getColor(i, this.resourcesProvider));
        Paint paint2 = this.dotPaint;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        this.dotColor = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7, this.resourcesProvider);
        this.dotOnSelectionColor = Theme.getColor(Theme.key_featuredStickers_buttonText, this.resourcesProvider);
        this.dotPaint.setColor(this.dotColor);
        this.bulgeFillPaint.setStyle(style);
        this.bulgeFillPaint.setColor(Theme.getColor(i, this.resourcesProvider));
        invalidate();
    }

    public void setModel(TableModel tableModel) {
        this.model = tableModel;
        rebuildHosts();
    }

    public TableModel getModel() {
        return this.model;
    }

    public RichTableCellHost hostForAnchor(TL_iv.pageTableCell pagetablecell) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost = (RichTableCellHost) childAt;
                if (richTableCellHost.cell == pagetablecell) {
                    return richTableCellHost;
                }
            }
        }
        return null;
    }

    private void rebuildHosts() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (getChildAt(childCount) instanceof RichTableCellHost) {
                removeViewAt(childCount);
            }
        }
        TableModel tableModel = this.model;
        if (tableModel == null) {
            return;
        }
        int size = tableModel.anchors().size();
        for (int i = 0; i < size; i++) {
            TL_iv.pageTableCell pagetablecell = this.model.anchors().get(i);
            RichTableCellHost richTableCellHost = new RichTableCellHost(getContext(), this.resourcesProvider);
            richTableCellHost.bind(pagetablecell);
            addView(richTableCellHost);
        }
    }

    public void rebindAfterModelChange() {
        rebuildHosts();
        requestLayout();
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00db  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int iDp = AndroidUtilities.dp(20.0f);
        int iDp2 = AndroidUtilities.dp(4.0f);
        int iDp3 = AndroidUtilities.dp(4.0f);
        int iDp4 = AndroidUtilities.dp(20.0f);
        TableModel tableModel = this.model;
        int i6 = 0;
        if (tableModel == null || tableModel.rowCount == 0 || tableModel.colCount == 0) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), iDp2 + iDp4);
            this.colWidths = new int[0];
            this.rowHeights = new int[0];
            this.colStarts = new int[0];
            this.rowStarts = new int[0];
            return;
        }
        int size = (View.MeasureSpec.getSize(i) - iDp) - iDp3;
        TableModel tableModel2 = this.model;
        int i7 = tableModel2.rowCount;
        int i8 = tableModel2.colCount;
        this.colWidths = new int[i8];
        this.rowHeights = new int[i7];
        int iMax = Math.max(AndroidUtilities.dp(80.0f), size / Math.max(i8, 1));
        for (int i9 = 0; i9 < i8; i9++) {
            this.colWidths[i9] = iMax;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int i10 = 0;
        while (i10 < getChildCount()) {
            View childAt = getChildAt(i10);
            if (childAt instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost = (RichTableCellHost) childAt;
                int iAnchorRowOf = this.model.anchorRowOf(richTableCellHost.cell);
                i4 = i6;
                int iAnchorColOf = this.model.anchorColOf(richTableCellHost.cell);
                int iSpanCol = TableModel.spanCol(richTableCellHost.cell);
                int i11 = i4;
                i5 = iDp4;
                for (int i12 = iAnchorColOf; i12 < iAnchorColOf + iSpanCol && i12 < i8; i12++) {
                    i11 += this.colWidths[i12];
                }
                richTableCellHost.measure(View.MeasureSpec.makeMeasureSpec(i11, TLObject.FLAG_30), iMakeMeasureSpec);
                if (TableModel.spanRow(richTableCellHost.cell) == 1) {
                    int measuredHeight = richTableCellHost.getMeasuredHeight();
                    int[] iArr = this.rowHeights;
                    if (measuredHeight > iArr[iAnchorRowOf]) {
                        iArr[iAnchorRowOf] = richTableCellHost.getMeasuredHeight();
                    }
                }
            } else {
                i5 = iDp4;
                i4 = i6;
            }
            i10++;
            i6 = i4;
            iDp4 = i5;
        }
        int i13 = iDp4;
        int i14 = i6;
        for (int i15 = i14; i15 < getChildCount(); i15++) {
            View childAt2 = getChildAt(i15);
            if (childAt2 instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost2 = (RichTableCellHost) childAt2;
                int iAnchorRowOf2 = this.model.anchorRowOf(richTableCellHost2.cell);
                int iSpanRow = TableModel.spanRow(richTableCellHost2.cell);
                if (iSpanRow > 1) {
                    int i16 = i14;
                    int i17 = iAnchorRowOf2;
                    while (true) {
                        i3 = iAnchorRowOf2 + iSpanRow;
                        if (i17 >= i3 || i17 >= i7) {
                            break;
                        }
                        i16 += this.rowHeights[i17];
                        i17++;
                    }
                    int measuredHeight2 = richTableCellHost2.getMeasuredHeight();
                    if (measuredHeight2 > i16) {
                        int i18 = measuredHeight2 - i16;
                        int iMax2 = i18 / Math.max(iSpanRow, 1);
                        int iMax3 = i18 % Math.max(iSpanRow, 1);
                        while (iAnchorRowOf2 < i3 && iAnchorRowOf2 < i7) {
                            int[] iArr2 = this.rowHeights;
                            iArr2[iAnchorRowOf2] = iArr2[iAnchorRowOf2] + (iMax3 > 0 ? 1 : i14) + iMax2;
                            if (iMax3 > 0) {
                                iMax3--;
                            }
                            iAnchorRowOf2++;
                        }
                    }
                }
            }
        }
        for (int i19 = i14; i19 < getChildCount(); i19++) {
            View childAt3 = getChildAt(i19);
            if (childAt3 instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost3 = (RichTableCellHost) childAt3;
                int iAnchorRowOf3 = this.model.anchorRowOf(richTableCellHost3.cell);
                int iAnchorColOf2 = this.model.anchorColOf(richTableCellHost3.cell);
                int iSpanCol2 = TableModel.spanCol(richTableCellHost3.cell);
                int iSpanRow2 = TableModel.spanRow(richTableCellHost3.cell);
                int i20 = i14;
                for (int i21 = iAnchorColOf2; i21 < iAnchorColOf2 + iSpanCol2 && i21 < i8; i21++) {
                    i20 += this.colWidths[i21];
                }
                int i22 = i14;
                for (int i23 = iAnchorRowOf3; i23 < iAnchorRowOf3 + iSpanRow2 && i23 < i7; i23++) {
                    i22 += this.rowHeights[i23];
                }
                richTableCellHost3.measure(View.MeasureSpec.makeMeasureSpec(i20, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i22, TLObject.FLAG_30));
            }
        }
        int[] iArr3 = new int[i8 + 1];
        this.colStarts = iArr3;
        iArr3[i14] = iDp;
        int i24 = i14;
        while (i24 < i8) {
            int[] iArr4 = this.colStarts;
            int i25 = i24 + 1;
            iArr4[i25] = iArr4[i24] + this.colWidths[i24];
            i24 = i25;
        }
        int[] iArr5 = new int[i7 + 1];
        this.rowStarts = iArr5;
        iArr5[i14] = iDp2;
        int i26 = i14;
        while (i26 < i7) {
            int[] iArr6 = this.rowStarts;
            int i27 = i26 + 1;
            iArr6[i27] = iArr6[i26] + this.rowHeights[i26];
            i26 = i27;
        }
        setMeasuredDimension(Math.max(this.colStarts[i8] + iDp3, size + iDp + iDp3), this.rowStarts[i7] + i13);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.model == null) {
            return;
        }
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost = (RichTableCellHost) childAt;
                int iAnchorRowOf = this.model.anchorRowOf(richTableCellHost.cell);
                int iAnchorColOf = this.model.anchorColOf(richTableCellHost.cell);
                if (iAnchorRowOf >= 0 && iAnchorColOf >= 0) {
                    int i6 = this.colStarts[iAnchorColOf];
                    int i7 = this.rowStarts[iAnchorRowOf];
                    richTableCellHost.layout(i6, i7, richTableCellHost.getMeasuredWidth() + i6, richTableCellHost.getMeasuredHeight() + i7);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        TL_iv.pageBlockTable pageblocktable;
        computeHandlesState();
        drawCellBackgrounds(canvas);
        super.dispatchDraw(canvas);
        drawBulgeFills(canvas);
        TableModel tableModel = this.model;
        if (tableModel != null && (pageblocktable = tableModel.block) != null && pageblocktable.bordered) {
            drawBorders(canvas);
        }
        drawSelectionOutline(canvas);
        drawHandleDots(canvas);
    }

    private TL_iv.pageTableCell activeCell() {
        TableModel tableModel = this.model;
        TL_iv.pageTableCell pagetablecell = null;
        if (tableModel != null && tableModel.rowCount != 0 && tableModel.colCount != 0) {
            TL_iv.pageTableCell pagetablecellFindFocusedCell = findFocusedCell();
            if (pagetablecellFindFocusedCell != null) {
                return pagetablecellFindFocusedCell;
            }
            if (this.selectionProvider == null) {
                return null;
            }
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MAX_VALUE;
            for (TL_iv.pageTableCell pagetablecell2 : this.model.anchors()) {
                if (this.selectionProvider.isSelected(pagetablecell2)) {
                    int iAnchorRowOf = this.model.anchorRowOf(pagetablecell2);
                    int iAnchorColOf = this.model.anchorColOf(pagetablecell2);
                    if (iAnchorRowOf < i || (iAnchorRowOf == i && iAnchorColOf < i2)) {
                        pagetablecell = pagetablecell2;
                        i = iAnchorRowOf;
                        i2 = iAnchorColOf;
                    }
                }
            }
        }
        return pagetablecell;
    }

    private boolean isRowFullySelected(int i) {
        if (i < 0 || i >= this.model.rowCount) {
            return false;
        }
        for (int i2 = 0; i2 < this.model.colCount; i2++) {
            if (!isSelected(i, i2)) {
                return false;
            }
        }
        return true;
    }

    private boolean isColFullySelected(int i) {
        if (i < 0 || i >= this.model.colCount) {
            return false;
        }
        for (int i2 = 0; i2 < this.model.rowCount; i2++) {
            if (!isSelected(i2, i)) {
                return false;
            }
        }
        return true;
    }

    private void computeHandlesState() {
        this.bottomBulge = false;
        this.leftBulge = false;
        TL_iv.pageTableCell pagetablecellActiveCell = activeCell();
        if (pagetablecellActiveCell == null) {
            return;
        }
        int iAnchorRowOf = this.model.anchorRowOf(pagetablecellActiveCell);
        int iAnchorColOf = this.model.anchorColOf(pagetablecellActiveCell);
        if (iAnchorRowOf < 0 || iAnchorColOf < 0) {
            return;
        }
        int iSpanRow = TableModel.spanRow(pagetablecellActiveCell);
        int iSpanCol = TableModel.spanCol(pagetablecellActiveCell);
        if (isRowFullySelected(iAnchorRowOf)) {
            this.leftBulge = true;
            int[] iArr = this.rowStarts;
            this.bulgeRowTop = iArr[iAnchorRowOf];
            this.bulgeRowBot = iArr[Math.min(iAnchorRowOf + iSpanRow, this.model.rowCount)];
        }
        if (isColFullySelected(iAnchorColOf)) {
            this.bottomBulge = true;
            int[] iArr2 = this.colStarts;
            this.bulgeColLeft = iArr2[iAnchorColOf];
            this.bulgeColRight = iArr2[Math.min(iAnchorColOf + iSpanCol, this.model.colCount)];
        }
    }

    private void drawBulgeFills(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        if (this.leftBulge) {
            float fDpf2 = this.bulgeRowTop - AndroidUtilities.dpf2(1.0f);
            float fDpf22 = this.bulgeRowBot + AndroidUtilities.dpf2(1.0f);
            float fDp = this.colStarts[0] - AndroidUtilities.dp(16.0f);
            float fMin = Math.min(AndroidUtilities.dpf2(10.0f), (fDpf22 - fDpf2) / 2.0f);
            f = 10.0f;
            float fCornerRadiusFor = cornerRadiusFor(this.colStarts[0], this.bulgeRowTop);
            f2 = 16.0f;
            float fCornerRadiusFor2 = cornerRadiusFor(this.colStarts[0], this.bulgeRowBot);
            this.bulgePath.rewind();
            f3 = 1.0f;
            this.bulgePath.moveTo(this.colStarts[0] + fCornerRadiusFor, fDpf2);
            this.bulgePath.lineTo(fDp + fMin, fDpf2);
            float f7 = fMin * 2.0f;
            f4 = 2.0f;
            float f8 = fDp + f7;
            this.arcRect.set(fDp, fDpf2, f8, fDpf2 + f7);
            f5 = 0.0f;
            this.bulgePath.arcTo(this.arcRect, 270.0f, -90.0f);
            this.bulgePath.lineTo(fDp, fDpf22 - fMin);
            this.arcRect.set(fDp, fDpf22 - f7, f8, fDpf22);
            this.bulgePath.arcTo(this.arcRect, 180.0f, -90.0f);
            this.bulgePath.lineTo(this.colStarts[0] + fCornerRadiusFor2, fDpf22);
            if (fCornerRadiusFor2 > 0.0f) {
                RectF rectF = this.arcRect;
                int i = this.colStarts[0];
                float f9 = fCornerRadiusFor2 * 2.0f;
                rectF.set(i, fDpf22 - f9, i + f9, fDpf22);
                this.bulgePath.arcTo(this.arcRect, 90.0f, 90.0f);
            } else {
                this.bulgePath.lineTo(this.colStarts[0], fDpf22);
            }
            this.bulgePath.lineTo(this.colStarts[0], fDpf2 + fCornerRadiusFor);
            if (fCornerRadiusFor > 0.0f) {
                RectF rectF2 = this.arcRect;
                int i2 = this.colStarts[0];
                float f10 = fCornerRadiusFor * 2.0f;
                rectF2.set(i2, fDpf2, i2 + f10, f10 + fDpf2);
                this.bulgePath.arcTo(this.arcRect, 180.0f, 90.0f);
            } else {
                this.bulgePath.lineTo(this.colStarts[0], fDpf2);
            }
            this.bulgePath.close();
            canvas.drawPath(this.bulgePath, this.bulgeFillPaint);
        } else {
            f = 10.0f;
            f2 = 16.0f;
            f3 = 1.0f;
            f4 = 2.0f;
            f5 = 0.0f;
        }
        if (this.bottomBulge) {
            float fDpf23 = this.bulgeColLeft - AndroidUtilities.dpf2(f3);
            float fDpf24 = this.bulgeColRight + AndroidUtilities.dpf2(f3);
            float f11 = this.rowStarts[this.model.rowCount];
            float fDp2 = AndroidUtilities.dp(f2) + f11;
            float fMin2 = Math.min(AndroidUtilities.dpf2(f), (fDpf24 - fDpf23) / f4);
            float fCornerRadiusFor3 = cornerRadiusFor(this.bulgeColLeft, this.rowStarts[this.model.rowCount]);
            float fCornerRadiusFor4 = cornerRadiusFor(this.bulgeColRight, this.rowStarts[this.model.rowCount]);
            this.bulgePath.rewind();
            this.bulgePath.moveTo(fDpf23, f11 - fCornerRadiusFor3);
            this.bulgePath.lineTo(fDpf23, fDp2 - fMin2);
            float f12 = fMin2 * f4;
            float f13 = fDp2 - f12;
            this.arcRect.set(fDpf23, f13, fDpf23 + f12, fDp2);
            this.bulgePath.arcTo(this.arcRect, 180.0f, -90.0f);
            this.bulgePath.lineTo(fDpf24 - fMin2, fDp2);
            this.arcRect.set(fDpf24 - f12, f13, fDpf24, fDp2);
            this.bulgePath.arcTo(this.arcRect, 90.0f, -90.0f);
            this.bulgePath.lineTo(fDpf24, f11 - fCornerRadiusFor4);
            if (fCornerRadiusFor4 > f5) {
                float f14 = fCornerRadiusFor4 * f4;
                this.arcRect.set(fDpf24 - f14, f11 - f14, fDpf24, f11);
                f6 = f5;
                this.bulgePath.arcTo(this.arcRect, f6, 90.0f);
            } else {
                f6 = f5;
                this.bulgePath.lineTo(fDpf24, f11);
            }
            this.bulgePath.lineTo(fDpf23 + fCornerRadiusFor3, f11);
            if (fCornerRadiusFor3 > f6) {
                float f15 = fCornerRadiusFor3 * f4;
                this.arcRect.set(fDpf23, f11 - f15, f15 + fDpf23, f11);
                this.bulgePath.arcTo(this.arcRect, 90.0f, 90.0f);
            } else {
                this.bulgePath.lineTo(fDpf23, f11);
            }
            this.bulgePath.close();
            canvas.drawPath(this.bulgePath, this.bulgeFillPaint);
        }
    }

    private void drawHandleDots(Canvas canvas) {
        TL_iv.pageTableCell pagetablecellActiveCell = activeCell();
        if (pagetablecellActiveCell == null) {
            return;
        }
        int iAnchorRowOf = this.model.anchorRowOf(pagetablecellActiveCell);
        int iAnchorColOf = this.model.anchorColOf(pagetablecellActiveCell);
        if (iAnchorRowOf < 0 || iAnchorColOf < 0) {
            return;
        }
        int iSpanRow = TableModel.spanRow(pagetablecellActiveCell);
        int iSpanCol = TableModel.spanCol(pagetablecellActiveCell);
        float fDpf2 = AndroidUtilities.dpf2(3.0f) / 2.0f;
        float fDp = AndroidUtilities.dp(8.0f);
        int[] iArr = this.rowStarts;
        float f = (iArr[iAnchorRowOf] + iArr[Math.min(iAnchorRowOf + iSpanRow, this.model.rowCount)]) / 2.0f;
        float fDp2 = (this.colStarts[0] - AndroidUtilities.dp(6.0f)) - fDpf2;
        this.dotPaint.setColor(this.leftBulge ? this.dotOnSelectionColor : this.dotColor);
        for (int i = -1; i <= 1; i++) {
            canvas.drawCircle(fDp2, (i * fDp) + f, fDpf2, this.dotPaint);
        }
        int[] iArr2 = this.colStarts;
        float f2 = (iArr2[iAnchorColOf] + iArr2[Math.min(iAnchorColOf + iSpanCol, this.model.colCount)]) / 2.0f;
        float fDp3 = this.rowStarts[this.model.rowCount] + AndroidUtilities.dp(6.0f) + fDpf2;
        this.dotPaint.setColor(this.bottomBulge ? this.dotOnSelectionColor : this.dotColor);
        for (int i2 = -1; i2 <= 1; i2++) {
            canvas.drawCircle((i2 * fDp) + f2, fDp3, fDpf2, this.dotPaint);
        }
    }

    public int rowHandleAtGrid(int i, int i2) {
        int iAnchorRowOf;
        TL_iv.pageTableCell pagetablecellActiveCell = activeCell();
        if (pagetablecellActiveCell == null || (iAnchorRowOf = this.model.anchorRowOf(pagetablecellActiveCell)) < 0) {
            return -1;
        }
        int iSpanRow = TableModel.spanRow(pagetablecellActiveCell);
        int[] iArr = this.rowStarts;
        int i3 = iArr[iAnchorRowOf];
        int i4 = iArr[Math.min(iSpanRow + iAnchorRowOf, this.model.rowCount)];
        if (i < (this.colStarts[0] - AndroidUtilities.dp(16.0f)) - AndroidUtilities.dp(4.0f) || i >= this.colStarts[0] || i2 < i3 || i2 >= i4) {
            return -1;
        }
        return iAnchorRowOf;
    }

    public int colHandleAtGrid(int i, int i2) {
        int iAnchorColOf;
        TL_iv.pageTableCell pagetablecellActiveCell = activeCell();
        if (pagetablecellActiveCell == null || (iAnchorColOf = this.model.anchorColOf(pagetablecellActiveCell)) < 0) {
            return -1;
        }
        int iSpanCol = TableModel.spanCol(pagetablecellActiveCell);
        int[] iArr = this.colStarts;
        int i3 = iArr[iAnchorColOf];
        int i4 = iArr[Math.min(iSpanCol + iAnchorColOf, this.model.colCount)];
        int i5 = this.rowStarts[this.model.rowCount];
        if (i2 < i5 || i2 >= i5 + AndroidUtilities.dp(16.0f) + AndroidUtilities.dp(4.0f) || i < i3 || i >= i4) {
            return -1;
        }
        return iAnchorColOf;
    }

    public TL_iv.pageTableCell findFocusedCell() {
        View viewFindFocus = findFocus();
        for (ViewParent parent = viewFindFocus == null ? null : viewFindFocus.getParent(); parent != null && parent != this; parent = parent.getParent()) {
            if (parent instanceof RichTableCellHost) {
                return ((RichTableCellHost) parent).cell;
            }
        }
        return null;
    }

    private void drawCellBackgrounds(Canvas canvas) {
        TableModel tableModel = this.model;
        if (tableModel == null || tableModel.rowCount == 0 || tableModel.colCount == 0) {
            return;
        }
        TL_iv.pageBlockTable pageblocktable = tableModel.block;
        boolean z = pageblocktable != null && pageblocktable.striped;
        canvas.save();
        RectF rectF = this.selRect;
        float f = this.colStarts[0];
        float f2 = this.rowStarts[0];
        TableModel tableModel2 = this.model;
        rectF.set(f, f2, r3[tableModel2.colCount], r5[tableModel2.rowCount]);
        this.bulgePath.rewind();
        this.bulgePath.addRoundRect(this.selRect, AndroidUtilities.dpf2(10.0f), AndroidUtilities.dpf2(10.0f), Path.Direction.CW);
        canvas.clipPath(this.bulgePath);
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost = (RichTableCellHost) childAt;
                int iAnchorRowOf = this.model.anchorRowOf(richTableCellHost.cell);
                int iAnchorColOf = this.model.anchorColOf(richTableCellHost.cell);
                if (iAnchorRowOf >= 0 && iAnchorColOf >= 0) {
                    int iSpanCol = TableModel.spanCol(richTableCellHost.cell);
                    int iSpanRow = TableModel.spanRow(richTableCellHost.cell);
                    int[] iArr = this.colStarts;
                    int i2 = iArr[iAnchorColOf];
                    int i3 = this.rowStarts[iAnchorRowOf];
                    int i4 = iArr[Math.min(iAnchorColOf + iSpanCol, this.model.colCount)];
                    int i5 = this.rowStarts[Math.min(iSpanRow + iAnchorRowOf, this.model.rowCount)];
                    if (richTableCellHost.cell.header) {
                        canvas.drawRect(i2, i3, i4, i5, this.headerPaint);
                    } else if (z && iAnchorRowOf % 2 == 0) {
                        canvas.drawRect(i2, i3, i4, i5, this.stripPaint);
                    }
                }
            }
        }
        canvas.restore();
    }

    private boolean isSelected(int i, int i2) {
        CellSelectionProvider cellSelectionProvider;
        TableModel tableModel = this.model;
        if (tableModel == null || (cellSelectionProvider = this.selectionProvider) == null || i < 0 || i >= tableModel.rowCount || i2 < 0 || i2 >= tableModel.colCount) {
            return false;
        }
        return cellSelectionProvider.isSelected(tableModel.grid[i][i2]);
    }

    private boolean hasAnySelection() {
        TableModel tableModel = this.model;
        if (tableModel != null && this.selectionProvider != null) {
            Iterator<TL_iv.pageTableCell> it = tableModel.anchors().iterator();
            while (it.hasNext()) {
                if (this.selectionProvider.isSelected(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    private void drawSelectionOutline(Canvas canvas) {
        int i;
        int i2;
        if (this.model == null) {
            return;
        }
        float f = this.selectionFade.set(hasAnySelection() ? 1.0f : 0.0f);
        if (f <= 0.001f) {
            return;
        }
        this.selectedStrokePaint.setAlpha((int) (this.selectedStrokeBaseAlpha * f));
        this.selectedStrokePaint.setStrokeWidth(AndroidUtilities.dpf2(2.0f) * Math.max(0.4f, f));
        int i3 = 0;
        while (true) {
            int i4 = this.model.rowCount;
            if (i3 > i4) {
                break;
            }
            int[] iArr = this.rowStarts;
            int i5 = i3 < i4 ? iArr[i3] : iArr[i4];
            int i6 = 0;
            int i7 = -1;
            while (true) {
                i2 = this.model.colCount;
                if (i6 >= i2) {
                    break;
                }
                if (isSelected(i3 - 1, i6) != isSelected(i3, i6)) {
                    if (i7 < 0) {
                        i7 = this.colStarts[i6];
                    }
                } else if (i7 >= 0) {
                    drawSelHLine(canvas, i7, this.colStarts[i6], i5);
                    i7 = -1;
                }
                i6++;
            }
            if (i7 >= 0) {
                drawSelHLine(canvas, i7, this.colStarts[i2], i5);
            }
            i3++;
        }
        int i8 = 0;
        while (true) {
            TableModel tableModel = this.model;
            int i9 = tableModel.colCount;
            if (i8 <= i9) {
                int[] iArr2 = this.colStarts;
                int i10 = i8 < i9 ? iArr2[i8] : iArr2[i9];
                int i11 = 0;
                int i12 = -1;
                while (true) {
                    i = this.model.rowCount;
                    if (i11 >= i) {
                        break;
                    }
                    if (isSelected(i11, i8 - 1) != isSelected(i11, i8)) {
                        if (i12 < 0) {
                            i12 = this.rowStarts[i11];
                        }
                    } else if (i12 >= 0) {
                        drawSelVLine(canvas, i10, i12, this.rowStarts[i11]);
                        i12 = -1;
                    }
                    i11++;
                }
                if (i12 >= 0) {
                    drawSelVLine(canvas, i10, i12, this.rowStarts[i]);
                }
                i8++;
            } else {
                int i13 = tableModel.rowCount;
                drawSelCornerArc(canvas, this.colStarts[0], this.rowStarts[0], 180.0f);
                drawSelCornerArc(canvas, this.colStarts[i9], this.rowStarts[0], 270.0f);
                drawSelCornerArc(canvas, this.colStarts[0], this.rowStarts[i13], 90.0f);
                drawSelCornerArc(canvas, this.colStarts[i9], this.rowStarts[i13], 0.0f);
                return;
            }
        }
    }

    private float cornerRadiusFor(int i, int i2) {
        int i3;
        TableModel tableModel = this.model;
        int i4 = tableModel.colCount;
        int i5 = tableModel.rowCount;
        int[] iArr = this.colStarts;
        int i6 = 0;
        if (i != iArr[0]) {
            if (i == iArr[i4]) {
                i3 = i4 - 1;
            }
            return 0.0f;
        }
        i3 = 0;
        int[] iArr2 = this.rowStarts;
        if (i2 != iArr2[0]) {
            if (i2 == iArr2[i5]) {
                i6 = i5 - 1;
                if (i3 >= 0 && i6 >= 0 && isSelected(i6, i3)) {
                    return Math.min(AndroidUtilities.dpf2(10.0f), Math.min(this.colWidths[i3], this.rowHeights[i6]) / 2.0f);
                }
            }
        } else if (i3 >= 0) {
            return Math.min(AndroidUtilities.dpf2(10.0f), Math.min(this.colWidths[i3], this.rowHeights[i6]) / 2.0f);
        }
        return 0.0f;
    }

    private void drawSelHLine(Canvas canvas, int i, int i2, int i3) {
        if (i2 <= i) {
            return;
        }
        float fCornerRadiusFor = i + cornerRadiusFor(i, i3);
        float fCornerRadiusFor2 = i2 - cornerRadiusFor(i2, i3);
        if (fCornerRadiusFor2 > fCornerRadiusFor) {
            float f = i3;
            canvas.drawLine(fCornerRadiusFor, f, fCornerRadiusFor2, f, this.selectedStrokePaint);
        }
    }

    private void drawSelVLine(Canvas canvas, int i, int i2, int i3) {
        if (i3 <= i2) {
            return;
        }
        float fCornerRadiusFor = i2 + cornerRadiusFor(i, i2);
        float fCornerRadiusFor2 = i3 - cornerRadiusFor(i, i3);
        if (fCornerRadiusFor2 > fCornerRadiusFor) {
            float f = i;
            canvas.drawLine(f, fCornerRadiusFor, f, fCornerRadiusFor2, this.selectedStrokePaint);
        }
    }

    private void drawSelCornerArc(Canvas canvas, int i, int i2, float f) {
        float fCornerRadiusFor = cornerRadiusFor(i, i2);
        if (fCornerRadiusFor <= 0.0f) {
            return;
        }
        float f2 = i == this.colStarts[0] ? i + fCornerRadiusFor : i - fCornerRadiusFor;
        float f3 = i2 == this.rowStarts[0] ? i2 + fCornerRadiusFor : i2 - fCornerRadiusFor;
        this.arcRect.set(f2 - fCornerRadiusFor, f3 - fCornerRadiusFor, f2 + fCornerRadiusFor, f3 + fCornerRadiusFor);
        canvas.drawArc(this.arcRect, f, 90.0f, false, this.selectedStrokePaint);
    }

    private void drawBorders(Canvas canvas) {
        float strokeWidth = this.linePaint.getStrokeWidth() / 2.0f;
        float fDpf2 = AndroidUtilities.dpf2(10.0f);
        RectF rectF = this.selRect;
        int[] iArr = this.colStarts;
        int[] iArr2 = this.rowStarts;
        TableModel tableModel = this.model;
        rectF.set(iArr[0] + strokeWidth, iArr2[0] + strokeWidth, iArr[tableModel.colCount] - strokeWidth, iArr2[tableModel.rowCount] - strokeWidth);
        canvas.drawRoundRect(this.selRect, fDpf2, fDpf2, this.linePaint);
        for (int i = 1; i < this.model.colCount; i++) {
            int i2 = this.colStarts[i];
            int i3 = -1;
            int i4 = 0;
            while (true) {
                TableModel tableModel2 = this.model;
                if (i4 >= tableModel2.rowCount) {
                    break;
                }
                TL_iv.pageTableCell[] pagetablecellArr = tableModel2.grid[i4];
                if (pagetablecellArr[i - 1] != pagetablecellArr[i]) {
                    if (i3 < 0) {
                        i3 = this.rowStarts[i4];
                    }
                } else if (i3 >= 0) {
                    float f = i2;
                    canvas.drawLine(f, i3, f, this.rowStarts[i4], this.linePaint);
                    i3 = -1;
                }
                i4++;
            }
            if (i3 >= 0) {
                float f2 = i2;
                canvas.drawLine(f2, i3, f2, this.rowStarts[r8], this.linePaint);
            }
        }
        for (int i5 = 1; i5 < this.model.rowCount; i5++) {
            int i6 = this.rowStarts[i5];
            int i7 = -1;
            int i8 = 0;
            while (true) {
                TableModel tableModel3 = this.model;
                if (i8 >= tableModel3.colCount) {
                    break;
                }
                TL_iv.pageTableCell[][] pagetablecellArr2 = tableModel3.grid;
                if (pagetablecellArr2[i5 - 1][i8] != pagetablecellArr2[i5][i8]) {
                    if (i7 < 0) {
                        i7 = this.colStarts[i8];
                    }
                } else if (i7 >= 0) {
                    float f3 = i6;
                    canvas.drawLine(i7, f3, this.colStarts[i8], f3, this.linePaint);
                    i7 = -1;
                }
                i8++;
            }
            if (i7 >= 0) {
                float f4 = i6;
                canvas.drawLine(i7, f4, this.colStarts[r7], f4, this.linePaint);
            }
        }
    }
}
