package org.telegram.ui.iv;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.Layout;
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

/* JADX INFO: loaded from: classes8.dex */
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
        setClipChildren(false);
        setClipToPadding(false);
        setWillNotDraw(false);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint.setStrokeWidth(AndroidUtilities.dpf2(0.66f));
        paint2.setStyle(style);
        paint2.setStrokeWidth(AndroidUtilities.dp(2.0f));
        paint2.setStrokeJoin(Paint.Join.ROUND);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        this.selectionFade = new AnimatedFloat(this, 0L, 220L, CubicBezierInterpolator.EASE_OUT_QUINT);
        applyColors();
    }

    public void applyColors() {
        this.linePaint.setColor(Theme.getColor(Theme.key_table_border, this.resourcesProvider));
        int color = Theme.getColor(Theme.key_switchTrack, this.resourcesProvider);
        int iRed = Color.red(color);
        int iGreen = Color.green(color);
        int iBlue = Color.blue(color);
        this.headerPaint.setColor(Theme.getColor(Theme.key_table_background, this.resourcesProvider));
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
            richTableCellHost.setCompact(this.model.block.compact);
            richTableCellHost.bind(pagetablecell);
            addView(richTableCellHost);
        }
    }

    public void rebindAfterModelChange() {
        rebuildHosts();
        requestLayout();
        invalidate();
    }

    public void refreshCompact() {
        if (this.model == null) {
            return;
        }
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof RichTableCellHost) {
                ((RichTableCellHost) childAt).setCompact(this.model.block.compact);
            }
        }
        requestLayout();
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0209  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int iMax;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int iAnchorColOf;
        int iDp = AndroidUtilities.dp(20.0f);
        int iDp2 = AndroidUtilities.dp(4.0f);
        int iDp3 = AndroidUtilities.dp(4.0f);
        int iDp4 = AndroidUtilities.dp(10.0f);
        TableModel tableModel = this.model;
        int i8 = 0;
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
        int i9 = tableModel2.rowCount;
        int i10 = tableModel2.colCount;
        this.colWidths = new int[i10];
        this.rowHeights = new int[i9];
        int iDp5 = AndroidUtilities.dp(tableModel2.block.compact ? 20.0f : 50.0f);
        int i11 = this.model.block.compact ? 5 : 12;
        if (i10 == 2) {
            iMax = Math.max(0, (size / 2) - AndroidUtilities.dp(i11 * 4));
        } else {
            iMax = Math.max(0, Math.round(size / 1.5f));
        }
        float f = i11 * 2;
        int iMax2 = Math.max(iDp5, iMax + AndroidUtilities.dp(f));
        for (int i12 = 0; i12 < i10; i12++) {
            this.colWidths[i12] = iDp5;
        }
        int i13 = 0;
        while (true) {
            i3 = 1;
            if (i13 >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i13);
            if (childAt instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost = (RichTableCellHost) childAt;
                if (TableModel.spanCol(richTableCellHost.cell) == 1 && (iAnchorColOf = this.model.anchorColOf(richTableCellHost.cell)) >= 0 && iAnchorColOf < i10) {
                    int iRound = Math.round(Layout.getDesiredWidth(richTableCellHost.editText.getText(), richTableCellHost.editText.getPaint())) + AndroidUtilities.dp(f);
                    int[] iArr = this.colWidths;
                    iArr[iAnchorColOf] = Math.max(iArr[iAnchorColOf], Math.min(iMax2, iRound));
                }
            }
            i13++;
        }
        int i14 = 0;
        while (i14 < getChildCount()) {
            View childAt2 = getChildAt(i14);
            if (childAt2 instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost2 = (RichTableCellHost) childAt2;
                int iSpanCol = TableModel.spanCol(richTableCellHost2.cell);
                if (iSpanCol > i3) {
                    i7 = i3;
                    int iAnchorColOf2 = this.model.anchorColOf(richTableCellHost2.cell);
                    int iMin = Math.min(i10, iSpanCol + iAnchorColOf2);
                    if (iAnchorColOf2 >= 0 && iAnchorColOf2 < iMin) {
                        int i15 = i8;
                        for (int i16 = iAnchorColOf2; i16 < iMin; i16++) {
                            i15 += this.colWidths[i16];
                        }
                        int iMin2 = Math.min((iMin - iAnchorColOf2) * iMax2, Math.round(Layout.getDesiredWidth(richTableCellHost2.editText.getText(), richTableCellHost2.editText.getPaint())) + AndroidUtilities.dp(f)) - i15;
                        while (iAnchorColOf2 < iMin && iMin2 > 0) {
                            int i17 = ((iMin2 + r12) - 1) / (iMin - iAnchorColOf2);
                            int[] iArr2 = this.colWidths;
                            iArr2[iAnchorColOf2] = iArr2[iAnchorColOf2] + i17;
                            iMin2 -= i17;
                            iAnchorColOf2++;
                        }
                    }
                }
            } else {
                i7 = i3;
            }
            i14++;
            i3 = i7;
            i8 = 0;
        }
        int i18 = i3;
        int i19 = 0;
        for (int i20 : this.colWidths) {
            i19 += i20;
        }
        if (i19 < size && i10 > 0) {
            int i21 = size - i19;
            int i22 = 0;
            while (i22 < i10) {
                int iRound2 = i22 == i10 + (-1) ? i21 : Math.round((this.colWidths[i22] * i21) / i19);
                int[] iArr3 = this.colWidths;
                int i23 = iArr3[i22] + iRound2;
                iArr3[i22] = i23;
                i21 -= iRound2;
                i19 -= i23 - iRound2;
                i22++;
            }
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int i24 = 0;
        while (i24 < getChildCount()) {
            View childAt3 = getChildAt(i24);
            if (childAt3 instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost3 = (RichTableCellHost) childAt3;
                int iAnchorRowOf = this.model.anchorRowOf(richTableCellHost3.cell);
                int iAnchorColOf3 = this.model.anchorColOf(richTableCellHost3.cell);
                int iSpanCol2 = TableModel.spanCol(richTableCellHost3.cell);
                i6 = i24;
                int i25 = 0;
                for (int i26 = iAnchorColOf3; i26 < iAnchorColOf3 + iSpanCol2 && i26 < i10; i26++) {
                    i25 += this.colWidths[i26];
                }
                richTableCellHost3.measure(View.MeasureSpec.makeMeasureSpec(i25, TLObject.FLAG_30), iMakeMeasureSpec);
                if (TableModel.spanRow(richTableCellHost3.cell) == i18) {
                    int measuredHeight = richTableCellHost3.getMeasuredHeight();
                    int[] iArr4 = this.rowHeights;
                    if (measuredHeight > iArr4[iAnchorRowOf]) {
                        iArr4[iAnchorRowOf] = richTableCellHost3.getMeasuredHeight();
                    }
                }
            } else {
                i6 = i24;
            }
            i24 = i6 + 1;
            i18 = 1;
        }
        for (int i27 = 0; i27 < getChildCount(); i27++) {
            View childAt4 = getChildAt(i27);
            if (childAt4 instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost4 = (RichTableCellHost) childAt4;
                int iAnchorRowOf2 = this.model.anchorRowOf(richTableCellHost4.cell);
                int iSpanRow = TableModel.spanRow(richTableCellHost4.cell);
                if (iSpanRow > 1) {
                    int i28 = iAnchorRowOf2;
                    int i29 = 0;
                    while (true) {
                        i5 = iAnchorRowOf2 + iSpanRow;
                        if (i28 >= i5 || i28 >= i9) {
                            break;
                        }
                        i29 += this.rowHeights[i28];
                        i28++;
                    }
                    int measuredHeight2 = richTableCellHost4.getMeasuredHeight();
                    if (measuredHeight2 > i29) {
                        int i30 = measuredHeight2 - i29;
                        int iMax3 = i30 / Math.max(iSpanRow, 1);
                        int iMax4 = i30 % Math.max(iSpanRow, 1);
                        while (iAnchorRowOf2 < i5 && iAnchorRowOf2 < i9) {
                            int[] iArr5 = this.rowHeights;
                            iArr5[iAnchorRowOf2] = iArr5[iAnchorRowOf2] + iMax3 + (iMax4 > 0 ? 1 : 0);
                            if (iMax4 > 0) {
                                iMax4--;
                            }
                            iAnchorRowOf2++;
                        }
                    }
                }
            }
        }
        int i31 = 0;
        while (i31 < getChildCount()) {
            View childAt5 = getChildAt(i31);
            if (childAt5 instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost5 = (RichTableCellHost) childAt5;
                int iAnchorRowOf3 = this.model.anchorRowOf(richTableCellHost5.cell);
                int iAnchorColOf4 = this.model.anchorColOf(richTableCellHost5.cell);
                int iSpanCol3 = TableModel.spanCol(richTableCellHost5.cell);
                int iSpanRow2 = TableModel.spanRow(richTableCellHost5.cell);
                i4 = i31;
                int i32 = 0;
                for (int i33 = iAnchorColOf4; i33 < iAnchorColOf4 + iSpanCol3 && i33 < i10; i33++) {
                    i32 += this.colWidths[i33];
                }
                int i34 = 0;
                for (int i35 = iAnchorRowOf3; i35 < iAnchorRowOf3 + iSpanRow2 && i35 < i9; i35++) {
                    i34 += this.rowHeights[i35];
                }
                richTableCellHost5.measure(View.MeasureSpec.makeMeasureSpec(i32, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i34, TLObject.FLAG_30));
            } else {
                i4 = i31;
            }
            i31 = i4 + 1;
        }
        int[] iArr6 = new int[i10 + 1];
        this.colStarts = iArr6;
        iArr6[0] = iDp;
        int i36 = 0;
        while (i36 < i10) {
            int[] iArr7 = this.colStarts;
            int i37 = i36 + 1;
            iArr7[i37] = iArr7[i36] + this.colWidths[i36];
            i36 = i37;
        }
        int[] iArr8 = new int[i9 + 1];
        this.rowStarts = iArr8;
        iArr8[0] = iDp2;
        int i38 = 0;
        while (i38 < i9) {
            int[] iArr9 = this.rowStarts;
            int i39 = i38 + 1;
            iArr9[i39] = iArr9[i38] + this.rowHeights[i38];
            i38 = i39;
        }
        setMeasuredDimension(Math.max(this.colStarts[i10] + iDp3, size + iDp + iDp3), this.rowStarts[i9] + iDp4);
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

    private boolean rowHasSelection(int i) {
        if (i >= 0 && i < this.model.rowCount) {
            for (int i2 = 0; i2 < this.model.colCount; i2++) {
                if (isSelected(i, i2)) {
                    return true;
                }
            }
        }
        return false;
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

    private boolean colHasSelection(int i) {
        if (i >= 0 && i < this.model.colCount) {
            for (int i2 = 0; i2 < this.model.rowCount; i2++) {
                if (isSelected(i2, i)) {
                    return true;
                }
            }
        }
        return false;
    }

    private int firstSelectedRow() {
        for (int i = 0; i < this.model.rowCount; i++) {
            if (rowHasSelection(i)) {
                return i;
            }
        }
        return -1;
    }

    private int lastSelectedRow() {
        for (int i = this.model.rowCount - 1; i >= 0; i--) {
            if (rowHasSelection(i)) {
                return i;
            }
        }
        return -1;
    }

    private int firstSelectedCol() {
        for (int i = 0; i < this.model.colCount; i++) {
            if (colHasSelection(i)) {
                return i;
            }
        }
        return -1;
    }

    private int lastSelectedCol() {
        for (int i = this.model.colCount - 1; i >= 0; i--) {
            if (colHasSelection(i)) {
                return i;
            }
        }
        return -1;
    }

    private boolean areRowsFullySelected(int i, int i2) {
        if (i < 0 || i2 < i) {
            return false;
        }
        while (i <= i2) {
            if (!isRowFullySelected(i)) {
                return false;
            }
            i++;
        }
        return true;
    }

    private boolean areColsFullySelected(int i, int i2) {
        if (i < 0 || i2 < i) {
            return false;
        }
        while (i <= i2) {
            if (!isColFullySelected(i)) {
                return false;
            }
            i++;
        }
        return true;
    }

    private boolean useCombinedRowHandle() {
        if (hasAnySelection()) {
            return !areColsFullySelected(firstSelectedCol(), lastSelectedCol()) || areRowsFullySelected(firstSelectedRow(), lastSelectedRow());
        }
        return false;
    }

    private boolean useCombinedColHandle() {
        if (hasAnySelection()) {
            return !areRowsFullySelected(firstSelectedRow(), lastSelectedRow()) || areColsFullySelected(firstSelectedCol(), lastSelectedCol());
        }
        return false;
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
        if (hasAnySelection()) {
            int iFirstSelectedRow = firstSelectedRow();
            int iLastSelectedRow = lastSelectedRow();
            int iFirstSelectedCol = firstSelectedCol();
            int iLastSelectedCol = lastSelectedCol();
            if (areRowsFullySelected(iFirstSelectedRow, iLastSelectedRow)) {
                int[] iArr = this.rowStarts;
                drawLeftBulgeFill(canvas, iArr[iFirstSelectedRow], iArr[iLastSelectedRow + 1]);
            }
            if (areColsFullySelected(iFirstSelectedCol, iLastSelectedCol)) {
                int[] iArr2 = this.colStarts;
                drawBottomBulgeFill(canvas, iArr2[iFirstSelectedCol], iArr2[iLastSelectedCol + 1]);
                return;
            }
            return;
        }
        if (this.leftBulge) {
            drawLeftBulgeFill(canvas, this.bulgeRowTop, this.bulgeRowBot);
        }
        if (this.bottomBulge) {
            drawBottomBulgeFill(canvas, this.bulgeColLeft, this.bulgeColRight);
        }
    }

    private void drawLeftBulgeFill(Canvas canvas, int i, int i2) {
        float fDpf2 = i - AndroidUtilities.dpf2(1.0f);
        float fDpf22 = i2 + AndroidUtilities.dpf2(1.0f);
        float fDp = this.colStarts[0] - AndroidUtilities.dp(16.0f);
        float fMin = Math.min(AndroidUtilities.dpf2(10.0f), (fDpf22 - fDpf2) / 2.0f);
        float fCornerRadiusFor = cornerRadiusFor(this.colStarts[0], i);
        float fCornerRadiusFor2 = cornerRadiusFor(this.colStarts[0], i2);
        this.bulgePath.rewind();
        this.bulgePath.moveTo(this.colStarts[0] + fCornerRadiusFor, fDpf2);
        this.bulgePath.lineTo(fDp + fMin, fDpf2);
        float f = fMin * 2.0f;
        float f2 = fDp + f;
        this.arcRect.set(fDp, fDpf2, f2, fDpf2 + f);
        this.bulgePath.arcTo(this.arcRect, 270.0f, -90.0f);
        this.bulgePath.lineTo(fDp, fDpf22 - fMin);
        this.arcRect.set(fDp, fDpf22 - f, f2, fDpf22);
        this.bulgePath.arcTo(this.arcRect, 180.0f, -90.0f);
        this.bulgePath.lineTo(this.colStarts[0] + fCornerRadiusFor2, fDpf22);
        if (fCornerRadiusFor2 > 0.0f) {
            RectF rectF = this.arcRect;
            int i3 = this.colStarts[0];
            float f3 = fCornerRadiusFor2 * 2.0f;
            rectF.set(i3, fDpf22 - f3, i3 + f3, fDpf22);
            this.bulgePath.arcTo(this.arcRect, 90.0f, 90.0f);
        } else {
            this.bulgePath.lineTo(this.colStarts[0], fDpf22);
        }
        this.bulgePath.lineTo(this.colStarts[0], fDpf2 + fCornerRadiusFor);
        if (fCornerRadiusFor > 0.0f) {
            RectF rectF2 = this.arcRect;
            int i4 = this.colStarts[0];
            float f4 = fCornerRadiusFor * 2.0f;
            rectF2.set(i4, fDpf2, i4 + f4, f4 + fDpf2);
            this.bulgePath.arcTo(this.arcRect, 180.0f, 90.0f);
        } else {
            this.bulgePath.lineTo(this.colStarts[0], fDpf2);
        }
        this.bulgePath.close();
        canvas.drawPath(this.bulgePath, this.bulgeFillPaint);
    }

    private void drawBottomBulgeFill(Canvas canvas, int i, int i2) {
        float fDpf2 = i - AndroidUtilities.dpf2(1.0f);
        float fDpf22 = i2 + AndroidUtilities.dpf2(1.0f);
        float f = this.rowStarts[this.model.rowCount];
        float fDp = AndroidUtilities.dp(16.0f) + f;
        float fMin = Math.min(AndroidUtilities.dpf2(10.0f), (fDpf22 - fDpf2) / 2.0f);
        float fCornerRadiusFor = cornerRadiusFor(i, this.rowStarts[this.model.rowCount]);
        float fCornerRadiusFor2 = cornerRadiusFor(i2, this.rowStarts[this.model.rowCount]);
        this.bulgePath.rewind();
        this.bulgePath.moveTo(fDpf2, f - fCornerRadiusFor);
        this.bulgePath.lineTo(fDpf2, fDp - fMin);
        float f2 = fMin * 2.0f;
        float f3 = fDp - f2;
        this.arcRect.set(fDpf2, f3, fDpf2 + f2, fDp);
        this.bulgePath.arcTo(this.arcRect, 180.0f, -90.0f);
        this.bulgePath.lineTo(fDpf22 - fMin, fDp);
        this.arcRect.set(fDpf22 - f2, f3, fDpf22, fDp);
        this.bulgePath.arcTo(this.arcRect, 90.0f, -90.0f);
        this.bulgePath.lineTo(fDpf22, f - fCornerRadiusFor2);
        if (fCornerRadiusFor2 > 0.0f) {
            float f4 = fCornerRadiusFor2 * 2.0f;
            this.arcRect.set(fDpf22 - f4, f - f4, fDpf22, f);
            this.bulgePath.arcTo(this.arcRect, 0.0f, 90.0f);
        } else {
            this.bulgePath.lineTo(fDpf22, f);
        }
        this.bulgePath.lineTo(fDpf2 + fCornerRadiusFor, f);
        if (fCornerRadiusFor > 0.0f) {
            float f5 = fCornerRadiusFor * 2.0f;
            this.arcRect.set(fDpf2, f - f5, f5 + fDpf2, f);
            this.bulgePath.arcTo(this.arcRect, 90.0f, 90.0f);
        } else {
            this.bulgePath.lineTo(fDpf2, f);
        }
        this.bulgePath.close();
        canvas.drawPath(this.bulgePath, this.bulgeFillPaint);
    }

    private void drawHandleDots(Canvas canvas) {
        float f;
        int iMin;
        float f2;
        int i;
        int i2;
        if (this.model == null) {
            return;
        }
        float fDpf2 = AndroidUtilities.dpf2(3.0f) / 2.0f;
        float fDp = AndroidUtilities.dp(8.0f);
        float fDp2 = (this.colStarts[0] - AndroidUtilities.dp(6.0f)) - fDpf2;
        float fDp3 = this.rowStarts[this.model.rowCount] + AndroidUtilities.dp(6.0f) + fDpf2;
        if (hasAnySelection()) {
            int iFirstSelectedRow = firstSelectedRow();
            int iLastSelectedRow = lastSelectedRow();
            int iFirstSelectedCol = firstSelectedCol();
            int iLastSelectedCol = lastSelectedCol();
            if (iFirstSelectedRow < 0 || iFirstSelectedCol < 0) {
                return;
            }
            TL_iv.pageTableCell pagetablecellActiveCell = activeCell();
            boolean zUseCombinedRowHandle = useCombinedRowHandle();
            int iAnchorRowOf = pagetablecellActiveCell == null ? iFirstSelectedRow : this.model.anchorRowOf(pagetablecellActiveCell);
            if (pagetablecellActiveCell == null) {
                f = 2.0f;
                iMin = iAnchorRowOf + 1;
            } else {
                f = 2.0f;
                iMin = Math.min(iAnchorRowOf + TableModel.spanRow(pagetablecellActiveCell), this.model.rowCount);
            }
            int[] iArr = this.rowStarts;
            if (zUseCombinedRowHandle) {
                f2 = iArr[iFirstSelectedRow] + iArr[iLastSelectedRow + 1];
            } else {
                f2 = iArr[iAnchorRowOf] + iArr[iMin];
            }
            float f3 = f2 / f;
            this.dotPaint.setColor((zUseCombinedRowHandle && areRowsFullySelected(iFirstSelectedRow, iLastSelectedRow)) ? this.dotOnSelectionColor : this.dotColor);
            for (int i3 = -1; i3 <= 1; i3++) {
                canvas.drawCircle(fDp2, (i3 * fDp) + f3, fDpf2, this.dotPaint);
            }
            boolean zUseCombinedColHandle = useCombinedColHandle();
            int iAnchorColOf = pagetablecellActiveCell == null ? iFirstSelectedCol : this.model.anchorColOf(pagetablecellActiveCell);
            int iMin2 = pagetablecellActiveCell == null ? iAnchorColOf + 1 : Math.min(TableModel.spanCol(pagetablecellActiveCell) + iAnchorColOf, this.model.colCount);
            int[] iArr2 = this.colStarts;
            if (zUseCombinedColHandle) {
                i = iArr2[iFirstSelectedCol];
                i2 = iArr2[iLastSelectedCol + 1];
            } else {
                i = iArr2[iAnchorColOf];
                i2 = iArr2[iMin2];
            }
            float f4 = (i + i2) / f;
            this.dotPaint.setColor((zUseCombinedColHandle && areColsFullySelected(iFirstSelectedCol, iLastSelectedCol)) ? this.dotOnSelectionColor : this.dotColor);
            for (int i4 = -1; i4 <= 1; i4++) {
                canvas.drawCircle((i4 * fDp) + f4, fDp3, fDpf2, this.dotPaint);
            }
            return;
        }
        TL_iv.pageTableCell pagetablecellActiveCell2 = activeCell();
        if (pagetablecellActiveCell2 == null) {
            return;
        }
        int iAnchorRowOf2 = this.model.anchorRowOf(pagetablecellActiveCell2);
        int iAnchorColOf2 = this.model.anchorColOf(pagetablecellActiveCell2);
        if (iAnchorRowOf2 < 0 || iAnchorColOf2 < 0) {
            return;
        }
        int iSpanRow = TableModel.spanRow(pagetablecellActiveCell2);
        int iSpanCol = TableModel.spanCol(pagetablecellActiveCell2);
        int[] iArr3 = this.rowStarts;
        float f5 = (iArr3[iAnchorRowOf2] + iArr3[Math.min(iAnchorRowOf2 + iSpanRow, this.model.rowCount)]) / 2.0f;
        this.dotPaint.setColor(this.leftBulge ? this.dotOnSelectionColor : this.dotColor);
        for (int i5 = -1; i5 <= 1; i5++) {
            canvas.drawCircle(fDp2, (i5 * fDp) + f5, fDpf2, this.dotPaint);
        }
        int[] iArr4 = this.colStarts;
        float f6 = (iArr4[iAnchorColOf2] + iArr4[Math.min(iAnchorColOf2 + iSpanCol, this.model.colCount)]) / 2.0f;
        this.dotPaint.setColor(this.bottomBulge ? this.dotOnSelectionColor : this.dotColor);
        for (int i6 = -1; i6 <= 1; i6++) {
            canvas.drawCircle((i6 * fDp) + f6, fDp3, fDpf2, this.dotPaint);
        }
    }

    public int rowHandleAtGrid(int i, int i2) {
        int iAnchorRowOf;
        if (this.model != null && i >= (this.colStarts[0] - AndroidUtilities.dp(16.0f)) - AndroidUtilities.dp(4.0f) && i < this.colStarts[0]) {
            if (useCombinedRowHandle()) {
                int iFirstSelectedRow = firstSelectedRow();
                int iLastSelectedRow = lastSelectedRow();
                if (iFirstSelectedRow >= 0) {
                    int[] iArr = this.rowStarts;
                    if (i2 >= iArr[iFirstSelectedRow] && i2 < iArr[iLastSelectedRow + 1]) {
                        return iFirstSelectedRow;
                    }
                }
                return -1;
            }
            TL_iv.pageTableCell pagetablecellActiveCell = activeCell();
            if (pagetablecellActiveCell == null || (iAnchorRowOf = this.model.anchorRowOf(pagetablecellActiveCell)) < 0) {
                return -1;
            }
            int iSpanRow = TableModel.spanRow(pagetablecellActiveCell);
            int[] iArr2 = this.rowStarts;
            int i3 = iArr2[iAnchorRowOf];
            int i4 = iArr2[Math.min(iSpanRow + iAnchorRowOf, this.model.rowCount)];
            if (i2 >= i3 && i2 < i4) {
                return iAnchorRowOf;
            }
        }
        return -1;
    }

    public int rowHandleEnd(int i) {
        return (useCombinedRowHandle() && i == firstSelectedRow()) ? lastSelectedRow() : i;
    }

    public int colHandleAtGrid(int i, int i2) {
        int i3;
        int iAnchorColOf;
        TableModel tableModel = this.model;
        if (tableModel != null && i2 >= (i3 = this.rowStarts[tableModel.rowCount]) && i2 < i3 + AndroidUtilities.dp(16.0f) + AndroidUtilities.dp(4.0f)) {
            if (useCombinedColHandle()) {
                int iFirstSelectedCol = firstSelectedCol();
                int iLastSelectedCol = lastSelectedCol();
                if (iFirstSelectedCol >= 0) {
                    int[] iArr = this.colStarts;
                    if (i >= iArr[iFirstSelectedCol] && i < iArr[iLastSelectedCol + 1]) {
                        return iFirstSelectedCol;
                    }
                }
                return -1;
            }
            TL_iv.pageTableCell pagetablecellActiveCell = activeCell();
            if (pagetablecellActiveCell == null || (iAnchorColOf = this.model.anchorColOf(pagetablecellActiveCell)) < 0) {
                return -1;
            }
            int iSpanCol = TableModel.spanCol(pagetablecellActiveCell);
            int[] iArr2 = this.colStarts;
            int i4 = iArr2[iAnchorColOf];
            int i5 = iArr2[Math.min(iSpanCol + iAnchorColOf, this.model.colCount)];
            if (i >= i4 && i < i5) {
                return iAnchorColOf;
            }
        }
        return -1;
    }

    public int colHandleEnd(int i) {
        return (useCombinedColHandle() && i == firstSelectedCol()) ? lastSelectedCol() : i;
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
