package org.telegram.ui.iv;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Editable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.iv.RichEditText;
import org.telegram.ui.iv.RichEditor;
import org.telegram.ui.iv.RichTableCellGrid;

/* JADX INFO: loaded from: classes7.dex */
public class RichTableCell extends RichBlockCell implements Theme.Colorable, TextSelectionHelper.ArticleSelectableView {
    private boolean blockRtl;
    private CellSelectionListener cellSelectionListener;
    private Delegate delegate;
    private final ViewTreeObserver.OnGlobalFocusChangeListener focusInvalidator;
    private final RichTableCellGrid grid;
    private boolean hijackingSelection;
    private TableModel model;
    private final Theme.ResourcesProvider resourcesProvider;
    private final ScrollContent scrollContent;
    private final HorizontalScrollView scrollView;
    private final LinkedHashSet<TL_iv.pageTableCell> selectedCells;
    private final RichEditText titleEditText;
    private final ArrayList<TextSelectionHelper.TextLayoutBlock> tmpBlocks;

    public interface CellSelectionListener {
        void onCellSelectionChanged(RichTableCell richTableCell);
    }

    public interface Delegate {
        TextSelectionHelper.ArticleTextSelectionHelper getSelectionHelper();

        void onLockedInsert(CharSequence charSequence);

        void onRequestWindowFocusable(RichEditText richEditText, boolean z);

        boolean onSelectAll(BlockRow blockRow);

        void onSpansChanged(BlockRow blockRow);

        void onTextChanged(BlockRow blockRow);

        void onTextWillChange(BlockRow blockRow, int i, int i2);
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    public int titleChildPos() {
        return 0;
    }

    public RichTableCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.tmpBlocks = new ArrayList<>();
        this.selectedCells = new LinkedHashSet<>();
        this.focusInvalidator = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: org.telegram.ui.iv.RichTableCell$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view, View view2) {
                this.f$0.lambda$new$1(view, view2);
            }
        };
        this.resourcesProvider = resourcesProvider;
        setClipChildren(false);
        setClipToPadding(false);
        RichEditText richEditText = new RichEditText(context, resourcesProvider);
        this.titleEditText = richEditText;
        richEditText.setAllowNewlines(false);
        richEditText.setInputType(147457);
        richEditText.setGravity(49);
        richEditText.setTextSize(1, Math.max(8, SharedConfig.fontSize - 2));
        richEditText.setIncludeFontPadding(false);
        richEditText.setMinHeight(0);
        richEditText.setBackground(null);
        richEditText.setPadding(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(2.0f), 0);
        richEditText.setHint(LocaleController.getString(C2665R.string.ArticleTableTitleHint));
        richEditText.setCenterEmptyHint(true);
        richEditText.setListener(new C64331());
        richEditText.setDelegate(new EditTextCaption.EditTextCaptionDelegate() { // from class: org.telegram.ui.iv.RichTableCell$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.EditTextCaption.EditTextCaptionDelegate
            public final void onSpansChanged() {
                this.f$0.lambda$new$0();
            }
        });
        addView(richEditText);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context) { // from class: org.telegram.ui.iv.RichTableCell.2
            @Override // android.view.View
            public void onScrollChanged(int i, int i2, int i3, int i4) {
                TextSelectionHelper.ArticleTextSelectionHelper selectionHelper;
                super.onScrollChanged(i, i2, i3, i4);
                if (RichTableCell.this.delegate != null && (selectionHelper = RichTableCell.this.delegate.getSelectionHelper()) != null && selectionHelper.isInSelectionMode()) {
                    selectionHelper.invalidate();
                }
                invalidate();
            }
        };
        this.scrollView = horizontalScrollView;
        horizontalScrollView.setClipChildren(false);
        horizontalScrollView.setClipToPadding(false);
        horizontalScrollView.setPadding(AndroidUtilities.dp(14.0f), 0, AndroidUtilities.dp(14.0f), 0);
        addView(horizontalScrollView, LayoutHelper.createFrame(-1, -2.0f, 51, 0.0f, 6.0f, 0.0f, 0.0f));
        RichTableCellGrid richTableCellGrid = new RichTableCellGrid(context, resourcesProvider);
        this.grid = richTableCellGrid;
        ScrollContent scrollContent = new ScrollContent(context);
        this.scrollContent = scrollContent;
        scrollContent.addView(richTableCellGrid);
        horizontalScrollView.addView(scrollContent, new FrameLayout.LayoutParams(-2, -2));
        setWillNotDraw(false);
    }

    /* JADX INFO: renamed from: org.telegram.ui.iv.RichTableCell$1 */
    public class C64331 implements RichEditText.Listener {
        public C64331() {
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onTextWillChange(RichEditText richEditText, int i, int i2) {
            if (RichTableCell.this.delegate != null) {
                RichTableCell richTableCell = RichTableCell.this;
                if (richTableCell.currentRow != null) {
                    richTableCell.delegate.onTextWillChange(RichTableCell.this.currentRow, i, i2);
                }
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onTextChanged(RichEditText richEditText, Editable editable) {
            RichTableCell.this.rememberTitleAutoBoldState();
            RichTableCell.this.persistTitle();
            if (RichTableCell.this.delegate != null) {
                RichTableCell richTableCell = RichTableCell.this;
                if (richTableCell.currentRow != null) {
                    richTableCell.delegate.onTextChanged(RichTableCell.this.currentRow);
                }
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onRequestWindowFocusable(RichEditText richEditText, boolean z) {
            if (RichTableCell.this.delegate != null) {
                RichTableCell.this.delegate.onRequestWindowFocusable(richEditText, z);
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onLockedInsert(RichEditText richEditText, CharSequence charSequence) {
            if (RichTableCell.this.delegate != null) {
                RichTableCell.this.delegate.onLockedInsert(charSequence);
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public boolean onSelectAll(RichEditText richEditText) {
            if (RichTableCell.this.delegate == null) {
                return false;
            }
            RichTableCell richTableCell = RichTableCell.this;
            if (richTableCell.currentRow != null) {
                return richTableCell.delegate.onSelectAll(RichTableCell.this.currentRow);
            }
            return false;
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onSelectionChanged(final RichEditText richEditText, final int i, final int i2) {
            final TextSelectionHelper.ArticleTextSelectionHelper selectionHelper;
            final int iTitleChildPos;
            if (RichTableCell.this.hijackingSelection || i == i2 || RichTableCell.this.delegate == null || (selectionHelper = RichTableCell.this.delegate.getSelectionHelper()) == null) {
                return;
            }
            if (!(selectionHelper.isInSelectionMode() && selectionHelper.getSelectedCell() == RichTableCell.this) && (iTitleChildPos = RichTableCell.this.titleChildPos()) >= 0) {
                RichTableCell.this.post(new Runnable() { // from class: org.telegram.ui.iv.RichTableCell$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onSelectionChanged$0(richEditText, i2, selectionHelper, iTitleChildPos, i);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSelectionChanged$0(RichEditText richEditText, int i, TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper, int i2, int i3) {
            if (richEditText.length() < i || richEditText.getSelectionStart() == richEditText.getSelectionEnd() || !articleTextSelectionHelper.selectRangeOf(RichTableCell.this, i2, i3, i)) {
                return;
            }
            RichTableCell.this.hijackingSelection = true;
            richEditText.setSelection(i);
            RichTableCell.this.hijackingSelection = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        BlockRow blockRow;
        rememberTitleAutoBoldState();
        persistTitle();
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onSpansChanged(blockRow);
    }

    public final class ScrollContent extends ViewGroup {
        private final int startHandleOffset;

        public ScrollContent(Context context) {
            super(context);
            this.startHandleOffset = AndroidUtilities.dp(16.0f);
            setClipChildren(false);
            setClipToPadding(false);
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            RichTableCell.this.grid.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, View.MeasureSpec.getSize(i) + this.startHandleOffset), Integer.MIN_VALUE), i2);
            int measuredWidth = RichTableCell.this.grid.getMeasuredWidth();
            setMeasuredDimension(Math.max(0, measuredWidth - this.startHandleOffset), RichTableCell.this.grid.getMeasuredHeight());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int measuredWidth = RichTableCell.this.grid.getMeasuredWidth();
            int measuredHeight = RichTableCell.this.grid.getMeasuredHeight();
            RichTableCellGrid richTableCellGrid = RichTableCell.this.grid;
            int i5 = this.startHandleOffset;
            richTableCellGrid.layout(-i5, 0, measuredWidth - i5, measuredHeight);
        }
    }

    @Override // org.telegram.ui.iv.RichBlockCell
    public void onBlockInsetChanged(int i) {
        requestLayout();
    }

    public void bind(BlockRow blockRow, Delegate delegate) {
        boolean z = this.currentRow != blockRow;
        this.currentRow = blockRow;
        this.delegate = delegate;
        this.blockRtl = RichBlockChrome.rtl();
        bindBlockInset(blockRow);
        TL_iv.PageBlock pageBlock = blockRow.block;
        if (pageBlock instanceof TL_iv.pageBlockTable) {
            TableModel tableModel = new TableModel((TL_iv.pageBlockTable) pageBlock);
            this.model = tableModel;
            this.grid.setModel(tableModel);
            RichTableCellGrid richTableCellGrid = this.grid;
            final LinkedHashSet<TL_iv.pageTableCell> linkedHashSet = this.selectedCells;
            Objects.requireNonNull(linkedHashSet);
            richTableCellGrid.setSelectionProvider(new RichTableCellGrid.CellSelectionProvider() { // from class: org.telegram.ui.iv.RichTableCell$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.iv.RichTableCellGrid.CellSelectionProvider
                public final boolean isSelected(TL_iv.pageTableCell pagetablecell) {
                    return linkedHashSet.contains(pagetablecell);
                }
            });
            wireCellListeners();
            bindTitle(z);
            updateColors();
            this.scrollContent.requestLayout();
        }
    }

    private void bindTitle(boolean z) {
        BlockRow blockRow = this.currentRow;
        if (blockRow != null) {
            TL_iv.PageBlock pageBlock = blockRow.block;
            if (pageBlock instanceof TL_iv.pageBlockTable) {
                TL_iv.pageBlockTable pageblocktable = (TL_iv.pageBlockTable) pageBlock;
                if (pageblocktable.title == null) {
                    pageblocktable.title = new TL_iv.textEmpty();
                }
                String strPlainOf = RichTextStyle.plainOf(pageblocktable.title);
                CharSequence spannable = RichTextStyle.toSpannable(pageblocktable.title);
                initializeTitleAutoBold(spannable);
                this.titleEditText.setAutoBold(this.currentRow.titleAutoBold);
                if (z || !String.valueOf(this.titleEditText.getText()).equals(strPlainOf)) {
                    this.titleEditText.setTextSilently(Emoji.replaceEmoji(spannable, this.titleEditText.getPaint().getFontMetricsInt(), false));
                    this.titleEditText.invalidateEffects();
                }
            }
        }
    }

    private void initializeTitleAutoBold(CharSequence charSequence) {
        BlockRow blockRow = this.currentRow;
        if (blockRow.titleAutoBoldInitialized) {
            return;
        }
        boolean z = true;
        blockRow.titleAutoBoldInitialized = true;
        if (charSequence.length() != 0 && (RichTextStyle.stylesFullyCovering(charSequence, 0, charSequence.length()) & 1) == 0) {
            z = false;
        }
        blockRow.titleAutoBold = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rememberTitleAutoBoldState() {
        BlockRow blockRow = this.currentRow;
        if (blockRow == null) {
            return;
        }
        blockRow.titleAutoBoldInitialized = true;
        blockRow.titleAutoBold = this.titleEditText.isAutoBold();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void persistTitle() {
        BlockRow blockRow = this.currentRow;
        if (blockRow != null) {
            TL_iv.PageBlock pageBlock = blockRow.block;
            if (pageBlock instanceof TL_iv.pageBlockTable) {
                ((TL_iv.pageBlockTable) pageBlock).title = RichTextStyle.fromSpannable(this.titleEditText.getText());
            }
        }
    }

    public int childCount() {
        TableModel tableModel = this.model;
        return (tableModel != null ? tableModel.anchors().size() : 0) + 1;
    }

    public TL_iv.pageTableCell anchorForChildPos(int i) {
        int i2;
        TableModel tableModel = this.model;
        if (tableModel == null || i <= 0 || i - 1 >= tableModel.anchors().size()) {
            return null;
        }
        return this.model.anchors().get(i2);
    }

    public int childPosForAnchor(TL_iv.pageTableCell pagetablecell) {
        int iFlatIndexOfAnchor;
        TableModel tableModel = this.model;
        if (tableModel != null && (iFlatIndexOfAnchor = tableModel.flatIndexOfAnchor(pagetablecell)) >= 0) {
            return iFlatIndexOfAnchor + 1;
        }
        return -1;
    }

    public RichEditText editTextForChildPos(int i) {
        RichTableCellHost richTableCellHostHostForAnchor;
        if (i == 0) {
            return this.titleEditText;
        }
        TL_iv.pageTableCell pagetablecellAnchorForChildPos = anchorForChildPos(i);
        if (pagetablecellAnchorForChildPos == null || (richTableCellHostHostForAnchor = this.grid.hostForAnchor(pagetablecellAnchorForChildPos)) == null) {
            return null;
        }
        return richTableCellHostHostForAnchor.editText;
    }

    public RichEditText getTitleEditText() {
        return this.titleEditText;
    }

    public int childTextLength(int i) {
        RichEditText richEditTextEditTextForChildPos = editTextForChildPos(i);
        if (richEditTextEditTextForChildPos != null) {
            return richEditTextEditTextForChildPos.length();
        }
        return 0;
    }

    public void persistTitleFromEditor() {
        persistTitle();
    }

    public boolean isPressOnTitle(int i, int i2) {
        int lineForVertical;
        Layout layout = this.titleEditText.getLayout();
        if (layout == null) {
            return false;
        }
        int left = i - (this.titleEditText.getLeft() + this.titleEditText.getPaddingLeft());
        int top = i2 - (this.titleEditText.getTop() + this.titleEditText.getPaddingTop());
        if (top >= 0 && top < layout.getHeight() && (lineForVertical = layout.getLineForVertical(top)) >= 0 && lineForVertical < layout.getLineCount()) {
            float f = left;
            if (f >= layout.getLineLeft(lineForVertical) && f <= layout.getLineRight(lineForVertical)) {
                return true;
            }
        }
        return false;
    }

    public Set<TL_iv.pageTableCell> getSelectedCells() {
        return this.selectedCells;
    }

    public boolean hasCellSelection() {
        return !this.selectedCells.isEmpty();
    }

    public void clearCellSelection() {
        if (this.selectedCells.isEmpty()) {
            return;
        }
        this.selectedCells.clear();
        this.grid.invalidate();
        notifyCellSelectionChanged();
    }

    public void toggleCellSelection(TL_iv.pageTableCell pagetablecell) {
        if (pagetablecell == null) {
            return;
        }
        if (!this.selectedCells.remove(pagetablecell)) {
            this.selectedCells.add(pagetablecell);
        }
        this.grid.invalidate();
        notifyCellSelectionChanged();
    }

    public void addCellToSelection(TL_iv.pageTableCell pagetablecell) {
        if (pagetablecell != null && this.selectedCells.add(pagetablecell)) {
            this.grid.invalidate();
            notifyCellSelectionChanged();
        }
    }

    public void selectCellRectangle(TL_iv.pageTableCell pagetablecell, TL_iv.pageTableCell pagetablecell2) {
        int i;
        TableModel tableModel = this.model;
        if (tableModel == null || pagetablecell == null || pagetablecell2 == null) {
            return;
        }
        int iAnchorRowOf = tableModel.anchorRowOf(pagetablecell);
        int iAnchorColOf = this.model.anchorColOf(pagetablecell);
        int iAnchorRowOf2 = this.model.anchorRowOf(pagetablecell2);
        int iAnchorColOf2 = this.model.anchorColOf(pagetablecell2);
        if (iAnchorRowOf < 0 || iAnchorColOf < 0 || iAnchorRowOf2 < 0 || iAnchorColOf2 < 0) {
            return;
        }
        int iMin = Math.min(iAnchorRowOf, iAnchorRowOf2);
        int iMin2 = Math.min(iAnchorColOf, iAnchorColOf2);
        int iMin3 = Math.min(this.model.rowCount - 1, Math.max((iAnchorRowOf + TableModel.spanRow(pagetablecell)) - 1, (iAnchorRowOf2 + TableModel.spanRow(pagetablecell2)) - 1));
        int iMin4 = Math.min(this.model.colCount - 1, Math.max((iAnchorColOf + TableModel.spanCol(pagetablecell)) - 1, (iAnchorColOf2 + TableModel.spanCol(pagetablecell2)) - 1));
        while (true) {
            boolean z = false;
            i = iMin;
            while (iMin <= iMin3) {
                int i2 = iMin2;
                while (iMin2 <= iMin4) {
                    TableModel tableModel2 = this.model;
                    TL_iv.pageTableCell pagetablecell3 = tableModel2.grid[iMin][iMin2];
                    int i3 = tableModel2.anchorR[iMin][iMin2];
                    int i4 = tableModel2.anchorC[iMin][iMin2];
                    int iMin5 = Math.min(tableModel2.rowCount - 1, (TableModel.spanRow(pagetablecell3) + i3) - 1);
                    int iMin6 = Math.min(this.model.colCount - 1, (TableModel.spanCol(pagetablecell3) + i4) - 1);
                    if (i3 < i) {
                        z = true;
                        i = i3;
                    }
                    if (i4 < i2) {
                        z = true;
                        i2 = i4;
                    }
                    if (iMin5 > iMin3) {
                        iMin3 = iMin5;
                        z = true;
                    }
                    if (iMin6 > iMin4) {
                        iMin4 = iMin6;
                        z = true;
                    }
                    iMin2++;
                }
                iMin++;
                iMin2 = i2;
            }
            if (!z) {
                break;
            } else {
                iMin = i;
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (i <= iMin3) {
            for (int i5 = iMin2; i5 <= iMin4; i5++) {
                linkedHashSet.add(this.model.grid[i][i5]);
            }
            i++;
        }
        if (this.selectedCells.equals(linkedHashSet)) {
            return;
        }
        this.selectedCells.clear();
        this.selectedCells.addAll(linkedHashSet);
        this.grid.invalidate();
        notifyCellSelectionChanged();
    }

    public void setCellSelectionListener(CellSelectionListener cellSelectionListener) {
        this.cellSelectionListener = cellSelectionListener;
    }

    private void notifyCellSelectionChanged() {
        updateHandleOverlayLayer();
        CellSelectionListener cellSelectionListener = this.cellSelectionListener;
        if (cellSelectionListener != null) {
            cellSelectionListener.onCellSelectionChanged(this);
        }
    }

    private void updateHandleOverlayLayer() {
        setTranslationZ((!this.selectedCells.isEmpty() || this.grid.hasFocus()) ? AndroidUtilities.dp(1.0f) : 0.0f);
        invalidate();
        this.scrollView.invalidate();
        Object parent = getParent();
        if (parent instanceof View) {
            ((View) parent).invalidate();
        }
    }

    public TL_iv.pageTableCell findCellAt(int i, int i2) {
        if (this.model == null) {
            return null;
        }
        int left = (((i - this.scrollView.getLeft()) - this.scrollContent.getLeft()) - this.grid.getLeft()) + this.scrollView.getScrollX();
        int top = ((i2 - this.scrollView.getTop()) - this.scrollContent.getTop()) - this.grid.getTop();
        for (int i3 = 0; i3 < this.grid.getChildCount(); i3++) {
            View childAt = this.grid.getChildAt(i3);
            if (childAt instanceof RichTableCellHost) {
                RichTableCellHost richTableCellHost = (RichTableCellHost) childAt;
                if (left >= richTableCellHost.getLeft() && left < richTableCellHost.getRight() && top >= richTableCellHost.getTop() && top < richTableCellHost.getBottom()) {
                    return richTableCellHost.cell;
                }
            }
        }
        return null;
    }

    private int gridX(int i) {
        return (((i - this.scrollView.getLeft()) - this.scrollContent.getLeft()) - this.grid.getLeft()) + this.scrollView.getScrollX();
    }

    private int gridY(int i) {
        return ((i - this.scrollView.getTop()) - this.scrollContent.getTop()) - this.grid.getTop();
    }

    public int findRowHandleAt(int i, int i2) {
        if (this.model == null) {
            return -1;
        }
        return this.grid.rowHandleAtGrid(gridX(i), gridY(i2));
    }

    public int findColHandleAt(int i, int i2) {
        if (this.model == null) {
            return -1;
        }
        return this.grid.colHandleAtGrid(gridX(i), gridY(i2));
    }

    public int rowHandleEnd(int i) {
        return this.grid.rowHandleEnd(i);
    }

    public int colHandleEnd(int i) {
        return this.grid.colHandleEnd(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
    
        r5 = r5 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean selectionContainsWholeRows(int i, int i2) {
        TableModel tableModel = this.model;
        if (tableModel == null || i < 0 || i2 < i || i2 >= tableModel.rowCount || this.selectedCells.isEmpty()) {
            return false;
        }
        while (i <= i2) {
            int i3 = 0;
            while (true) {
                TableModel tableModel2 = this.model;
                if (i3 < tableModel2.colCount) {
                    if (!this.selectedCells.contains(tableModel2.grid[i][i3])) {
                        return false;
                    }
                    i3++;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
    
        r5 = r5 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean selectionContainsWholeColumns(int i, int i2) {
        TableModel tableModel = this.model;
        if (tableModel == null || i < 0 || i2 < i || i2 >= tableModel.colCount || this.selectedCells.isEmpty()) {
            return false;
        }
        while (i <= i2) {
            int i3 = 0;
            while (true) {
                TableModel tableModel2 = this.model;
                if (i3 < tableModel2.rowCount) {
                    if (!this.selectedCells.contains(tableModel2.grid[i3][i])) {
                        return false;
                    }
                    i3++;
                }
            }
        }
        return true;
    }

    public void selectWholeRows(int i, int i2) {
        TableModel tableModel = this.model;
        if (tableModel == null || i < 0 || i2 < i || i2 >= tableModel.rowCount) {
            return;
        }
        this.selectedCells.clear();
        while (i <= i2) {
            int i3 = 0;
            while (true) {
                TableModel tableModel2 = this.model;
                if (i3 < tableModel2.colCount) {
                    TL_iv.pageTableCell pagetablecell = tableModel2.grid[i][i3];
                    if (pagetablecell != null) {
                        this.selectedCells.add(pagetablecell);
                    }
                    i3++;
                }
            }
            i++;
        }
        this.grid.invalidate();
        notifyCellSelectionChanged();
    }

    public void selectWholeColumns(int i, int i2) {
        TableModel tableModel = this.model;
        if (tableModel == null || i < 0 || i2 < i || i2 >= tableModel.colCount) {
            return;
        }
        this.selectedCells.clear();
        while (i <= i2) {
            int i3 = 0;
            while (true) {
                TableModel tableModel2 = this.model;
                if (i3 < tableModel2.rowCount) {
                    TL_iv.pageTableCell pagetablecell = tableModel2.grid[i3][i];
                    if (pagetablecell != null) {
                        this.selectedCells.add(pagetablecell);
                    }
                    i3++;
                }
            }
            i++;
        }
        this.grid.invalidate();
        notifyCellSelectionChanged();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int iMax = Math.max(0, (size - blockInset()) - RichBlockChrome.insetEndFor(this.currentRow));
        this.titleEditText.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, iMax - (AndroidUtilities.dp(16.0f) * 2)), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredHeight = this.titleEditText.getMeasuredHeight();
        this.scrollView.measure(View.MeasureSpec.makeMeasureSpec(iMax, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
        setMeasuredDimension(size, RichBlockChrome.quoteTopPad(this.currentRow) + RichBlockChrome.quoteBottomPad(this.currentRow) + measuredHeight + AndroidUtilities.dp(9.0f) + this.scrollView.getMeasuredHeight());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int iBlockInset = blockInset();
        int iInsetEndFor = RichBlockChrome.insetEndFor(this.currentRow);
        boolean z2 = this.blockRtl;
        int i6 = z2 ? iInsetEndFor : iBlockInset;
        if (!z2) {
            iBlockInset = iInsetEndFor;
        }
        int measuredHeight = this.titleEditText.getMeasuredHeight();
        int iQuoteTopPad = RichBlockChrome.quoteTopPad(this.currentRow);
        int i7 = i5 - iBlockInset;
        int i8 = measuredHeight + iQuoteTopPad;
        this.titleEditText.layout(AndroidUtilities.dp(16.0f) + i6, iQuoteTopPad, Math.max(AndroidUtilities.dp(16.0f) + i6, i7 - AndroidUtilities.dp(16.0f)), i8);
        int iDp = i8 + AndroidUtilities.dp(9.0f);
        HorizontalScrollView horizontalScrollView = this.scrollView;
        horizontalScrollView.layout(i6, iDp, i7, horizontalScrollView.getMeasuredHeight() + iDp);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.focusInvalidator);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.focusInvalidator);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, View view2) {
        invalidateGridForFocus();
    }

    private void invalidateGridForFocus() {
        updateHandleOverlayLayer();
        RichTableCellGrid richTableCellGrid = this.grid;
        if (richTableCellGrid != null) {
            richTableCellGrid.invalidate();
        }
    }

    public boolean isPressOnText(int i, int i2) {
        RichTableCellHost richTableCellHostHostForAnchor;
        int lineForVertical;
        TL_iv.pageTableCell pagetablecellFindCellAt = findCellAt(i, i2);
        if (pagetablecellFindCellAt == null || (richTableCellHostHostForAnchor = this.grid.hostForAnchor(pagetablecellFindCellAt)) == null) {
            return false;
        }
        int left = (((i - this.scrollView.getLeft()) - this.scrollContent.getLeft()) - this.grid.getLeft()) + this.scrollView.getScrollX();
        int top = ((i2 - this.scrollView.getTop()) - this.scrollContent.getTop()) - this.grid.getTop();
        int left2 = (left - richTableCellHostHostForAnchor.getLeft()) - richTableCellHostHostForAnchor.editText.getLeft();
        int top2 = (top - richTableCellHostHostForAnchor.getTop()) - richTableCellHostHostForAnchor.editText.getTop();
        Layout layout = richTableCellHostHostForAnchor.editText.getLayout();
        if (layout == null) {
            return false;
        }
        int paddingTop = top2 - richTableCellHostHostForAnchor.editText.getPaddingTop();
        int paddingLeft = left2 - richTableCellHostHostForAnchor.editText.getPaddingLeft();
        if (paddingTop >= 0 && paddingTop < layout.getHeight() && (lineForVertical = layout.getLineForVertical(paddingTop)) >= 0 && lineForVertical < layout.getLineCount()) {
            float lineLeft = layout.getLineLeft(lineForVertical);
            float lineRight = layout.getLineRight(lineForVertical);
            float f = paddingLeft;
            if (f >= lineLeft && f <= lineRight) {
                return true;
            }
        }
        return false;
    }

    public void applyHeaderToggle(boolean z) {
        BlockRow blockRow;
        for (TL_iv.pageTableCell pagetablecell : this.selectedCells) {
            RichTableCellHost richTableCellHostHostForAnchor = this.grid.hostForAnchor(pagetablecell);
            if (richTableCellHostHostForAnchor != null) {
                richTableCellHostHostForAnchor.applyHeaderWithDefaultBold(z);
            } else {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(TableModel.readStyledText(pagetablecell));
                boolean z2 = spannableStringBuilder.length() > 0 && (RichTextStyle.stylesFullyCovering(spannableStringBuilder, 0, spannableStringBuilder.length()) & 1) != 0;
                TableModel.setHeader(pagetablecell, z);
                if (z && spannableStringBuilder.length() > 0) {
                    RichTextStyle.setStyle(spannableStringBuilder, 0, spannableStringBuilder.length(), 1, true);
                } else if (!z && z2) {
                    RichTextStyle.setStyle(spannableStringBuilder, 0, spannableStringBuilder.length(), 1, false);
                }
                TableModel.applyStyledText(pagetablecell, spannableStringBuilder);
            }
        }
        this.grid.invalidate();
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onTextChanged(blockRow);
    }

    public void applyHorizontalAlign(int i) {
        BlockRow blockRow;
        for (TL_iv.pageTableCell pagetablecell : this.selectedCells) {
            TableModel.setAlign(pagetablecell, i);
            RichTableCellHost richTableCellHostHostForAnchor = this.grid.hostForAnchor(pagetablecell);
            if (richTableCellHostHostForAnchor != null) {
                richTableCellHostHostForAnchor.refreshFromCell();
            }
        }
        this.grid.invalidate();
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onTextChanged(blockRow);
    }

    public void applyVerticalAlign(int i) {
        BlockRow blockRow;
        for (TL_iv.pageTableCell pagetablecell : this.selectedCells) {
            TableModel.setVAlign(pagetablecell, i);
            RichTableCellHost richTableCellHostHostForAnchor = this.grid.hostForAnchor(pagetablecell);
            if (richTableCellHostHostForAnchor != null) {
                richTableCellHostHostForAnchor.refreshFromCell();
            }
        }
        this.grid.invalidate();
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onTextChanged(blockRow);
    }

    public void applyBordered(boolean z) {
        BlockRow blockRow;
        TableModel tableModel = this.model;
        if (tableModel != null) {
            TL_iv.pageBlockTable pageblocktable = tableModel.block;
            if (pageblocktable.bordered == z) {
                return;
            }
            pageblocktable.bordered = z;
            this.grid.invalidate();
            Delegate delegate = this.delegate;
            if (delegate == null || (blockRow = this.currentRow) == null) {
                return;
            }
            delegate.onTextChanged(blockRow);
        }
    }

    public void applyCompact(boolean z) {
        BlockRow blockRow;
        TableModel tableModel = this.model;
        if (tableModel != null) {
            TL_iv.pageBlockTable pageblocktable = tableModel.block;
            if (pageblocktable.compact == z) {
                return;
            }
            pageblocktable.compact = z;
            this.grid.refreshCompact();
            this.scrollContent.requestLayout();
            requestLayout();
            Delegate delegate = this.delegate;
            if (delegate == null || (blockRow = this.currentRow) == null) {
                return;
            }
            delegate.onTextChanged(blockRow);
        }
    }

    public int commonHorizontalAlign() {
        Iterator<TL_iv.pageTableCell> it = this.selectedCells.iterator();
        int i = -1;
        while (it.hasNext()) {
            int iAlignOf = TableModel.alignOf(it.next());
            if (i == -1) {
                i = iAlignOf;
            } else if (i != iAlignOf) {
                return -1;
            }
        }
        return i;
    }

    public int commonVerticalAlign() {
        Iterator<TL_iv.pageTableCell> it = this.selectedCells.iterator();
        int i = -1;
        while (it.hasNext()) {
            int iValignOf = TableModel.valignOf(it.next());
            if (i == -1) {
                i = iValignOf;
            } else if (i != iValignOf) {
                return -1;
            }
        }
        return i;
    }

    public void refreshAfterModelChange() {
        BlockRow blockRow;
        this.grid.rebindAfterModelChange();
        wireCellListeners();
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onTextChanged(blockRow);
    }

    public boolean applyMergeFromSelection() {
        if (this.model == null || this.selectedCells.size() < 2) {
            return false;
        }
        HashSet<TL_iv.pageTableCell> hashSet = new HashSet(this.selectedCells);
        int iMin = Integer.MAX_VALUE;
        int iMin2 = Integer.MAX_VALUE;
        for (TL_iv.pageTableCell pagetablecell : hashSet) {
            iMin = Math.min(iMin, this.model.anchorRowOf(pagetablecell));
            iMin2 = Math.min(iMin2, this.model.anchorColOf(pagetablecell));
        }
        this.selectedCells.clear();
        boolean zMergeCells = this.model.mergeCells(hashSet);
        if (zMergeCells) {
            refreshAfterModelChange();
            this.grid.invalidate();
            focusCellAt(iMin, iMin2);
            notifyCellSelectionChanged();
            return zMergeCells;
        }
        this.selectedCells.addAll(hashSet);
        return zMergeCells;
    }

    public boolean applyUnmergeFromSelection() {
        if (this.model == null || this.selectedCells.size() != 1) {
            return false;
        }
        TL_iv.pageTableCell next = this.selectedCells.iterator().next();
        if (TableModel.spanCol(next) <= 1 && TableModel.spanRow(next) <= 1) {
            return false;
        }
        int iAnchorRowOf = this.model.anchorRowOf(next);
        int iAnchorColOf = this.model.anchorColOf(next);
        this.selectedCells.clear();
        boolean zUnmergeCell = this.model.unmergeCell(next);
        if (zUnmergeCell) {
            refreshAfterModelChange();
            this.grid.invalidate();
            focusCellAt(iAnchorRowOf, iAnchorColOf);
            notifyCellSelectionChanged();
            return zUnmergeCell;
        }
        this.selectedCells.add(next);
        return zUnmergeCell;
    }

    public boolean applyDeleteRowsFromSelection() {
        if (this.model == null || this.selectedCells.isEmpty()) {
            return false;
        }
        HashSet hashSet = new HashSet();
        Iterator<TL_iv.pageTableCell> it = this.selectedCells.iterator();
        int iMin = Integer.MAX_VALUE;
        while (it.hasNext()) {
            int iAnchorRowOf = this.model.anchorRowOf(it.next());
            hashSet.add(Integer.valueOf(iAnchorRowOf));
            iMin = Math.min(iMin, iAnchorRowOf);
        }
        this.selectedCells.clear();
        boolean zDeleteRows = this.model.deleteRows(hashSet);
        refreshAfterModelChange();
        if (zDeleteRows) {
            focusCellAt(iMin, 0);
        }
        return zDeleteRows;
    }

    public boolean applyDeleteColumnsFromSelection() {
        if (this.model == null || this.selectedCells.isEmpty()) {
            return false;
        }
        HashSet hashSet = new HashSet();
        Iterator<TL_iv.pageTableCell> it = this.selectedCells.iterator();
        int iMin = Integer.MAX_VALUE;
        while (it.hasNext()) {
            int iAnchorColOf = this.model.anchorColOf(it.next());
            hashSet.add(Integer.valueOf(iAnchorColOf));
            iMin = Math.min(iMin, iAnchorColOf);
        }
        this.selectedCells.clear();
        boolean zDeleteColumns = this.model.deleteColumns(hashSet);
        refreshAfterModelChange();
        if (zDeleteColumns) {
            focusCellAt(0, iMin);
        }
        return zDeleteColumns;
    }

    public boolean applyInsertRowFromSelection(boolean z) {
        int iMax;
        if (this.model == null || this.selectedCells.isEmpty()) {
            return false;
        }
        LinkedHashSet<TL_iv.pageTableCell> linkedHashSet = this.selectedCells;
        if (z) {
            Iterator<TL_iv.pageTableCell> it = linkedHashSet.iterator();
            iMax = Integer.MAX_VALUE;
            while (it.hasNext()) {
                iMax = Math.min(iMax, this.model.anchorRowOf(it.next()));
            }
        } else {
            iMax = 0;
            for (TL_iv.pageTableCell pagetablecell : linkedHashSet) {
                iMax = Math.max(iMax, this.model.anchorRowOf(pagetablecell) + TableModel.spanRow(pagetablecell));
            }
        }
        this.selectedCells.clear();
        boolean zInsertRowAt = this.model.insertRowAt(iMax);
        refreshAfterModelChange();
        if (zInsertRowAt) {
            focusCellAt(iMax, 0);
        }
        notifyCellSelectionChanged();
        return zInsertRowAt;
    }

    public boolean applyInsertColumnFromSelection(boolean z) {
        int iMax;
        if (this.model == null || this.selectedCells.isEmpty()) {
            return false;
        }
        LinkedHashSet<TL_iv.pageTableCell> linkedHashSet = this.selectedCells;
        if (z) {
            Iterator<TL_iv.pageTableCell> it = linkedHashSet.iterator();
            iMax = Integer.MAX_VALUE;
            while (it.hasNext()) {
                iMax = Math.min(iMax, this.model.anchorColOf(it.next()));
            }
        } else {
            iMax = 0;
            for (TL_iv.pageTableCell pagetablecell : linkedHashSet) {
                iMax = Math.max(iMax, this.model.anchorColOf(pagetablecell) + TableModel.spanCol(pagetablecell));
            }
        }
        this.selectedCells.clear();
        boolean zInsertColumnAt = this.model.insertColumnAt(iMax);
        refreshAfterModelChange();
        if (zInsertColumnAt) {
            focusCellAt(0, iMax);
        }
        notifyCellSelectionChanged();
        return zInsertColumnAt;
    }

    public boolean focusEdgeCell(boolean z) {
        TableModel tableModel = this.model;
        if (tableModel == null) {
            return false;
        }
        if (!z) {
            this.titleEditText.requestEditFocus();
            this.titleEditText.setSelection(0);
            return true;
        }
        if (tableModel.anchors().isEmpty()) {
            return false;
        }
        RichTableCellHost richTableCellHostHostForAnchor = this.grid.hostForAnchor(this.model.anchors().get(this.model.anchors().size() - 1));
        if (richTableCellHostHostForAnchor == null) {
            return false;
        }
        richTableCellHostHostForAnchor.editText.requestEditFocus();
        RichEditText richEditText = richTableCellHostHostForAnchor.editText;
        richEditText.setSelection(richEditText.length());
        return true;
    }

    public boolean focusFirstCell() {
        RichTableCellHost richTableCellHostHostForAnchor;
        TableModel tableModel = this.model;
        if (tableModel == null || tableModel.anchors().isEmpty() || (richTableCellHostHostForAnchor = this.grid.hostForAnchor(this.model.anchors().get(0))) == null) {
            return false;
        }
        richTableCellHostHostForAnchor.editText.requestEditFocus();
        richTableCellHostHostForAnchor.editText.setSelection(0);
        return true;
    }

    private void focusCellAt(int i, int i2) {
        int i3;
        TableModel tableModel = this.model;
        if (tableModel == null || (i3 = tableModel.rowCount) == 0 || tableModel.colCount == 0) {
            return;
        }
        final TL_iv.pageTableCell pagetablecell = this.model.grid[Math.max(0, Math.min(i, i3 - 1))][Math.max(0, Math.min(i2, this.model.colCount - 1))];
        if (pagetablecell == null) {
            return;
        }
        post(new Runnable() { // from class: org.telegram.ui.iv.RichTableCell$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$focusCellAt$2(pagetablecell);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$focusCellAt$2(TL_iv.pageTableCell pagetablecell) {
        RichTableCellHost richTableCellHostHostForAnchor = this.grid.hostForAnchor(pagetablecell);
        if (richTableCellHostHostForAnchor == null) {
            return;
        }
        richTableCellHostHostForAnchor.editText.requestEditFocus();
        RichEditText richEditText = richTableCellHostHostForAnchor.editText;
        richEditText.setSelection(richEditText.length());
    }

    public boolean allSelectedHeader() {
        if (this.selectedCells.isEmpty()) {
            return false;
        }
        Iterator<TL_iv.pageTableCell> it = this.selectedCells.iterator();
        while (it.hasNext()) {
            if (!it.next().header) {
                return false;
            }
        }
        return true;
    }

    public BlockRow getRow() {
        return this.currentRow;
    }

    public TableModel getModel() {
        return this.model;
    }

    public RichTableCellGrid getGrid() {
        return this.grid;
    }

    public void setLocked(boolean z) {
        this.titleEditText.setLocked(z);
        for (int i = 0; i < this.grid.getChildCount(); i++) {
            View childAt = this.grid.getChildAt(i);
            if (childAt instanceof RichTableCellHost) {
                ((RichTableCellHost) childAt).setLocked(z);
            }
        }
    }

    public void hideActionModes() {
        this.titleEditText.hideActionMode();
        for (int i = 0; i < this.grid.getChildCount(); i++) {
            View childAt = this.grid.getChildAt(i);
            if (childAt instanceof RichTableCellHost) {
                ((RichTableCellHost) childAt).editText.hideActionMode();
            }
        }
    }

    private void wireCellListeners() {
        for (int i = 0; i < this.grid.getChildCount(); i++) {
            View childAt = this.grid.getChildAt(i);
            if (childAt instanceof RichTableCellHost) {
                final RichTableCellHost richTableCellHost = (RichTableCellHost) childAt;
                richTableCellHost.editText.setListener(new C64353(richTableCellHost));
                richTableCellHost.editText.setDelegate(new EditTextCaption.EditTextCaptionDelegate() { // from class: org.telegram.ui.iv.RichTableCell$$ExternalSyntheticLambda3
                    @Override // org.telegram.ui.Components.EditTextCaption.EditTextCaptionDelegate
                    public final void onSpansChanged() {
                        this.f$0.lambda$wireCellListeners$3(richTableCellHost);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.iv.RichTableCell$3 */
    public class C64353 implements RichEditText.Listener {
        final /* synthetic */ RichTableCellHost val$host;

        public C64353(RichTableCellHost richTableCellHost) {
            this.val$host = richTableCellHost;
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onTextWillChange(RichEditText richEditText, int i, int i2) {
            if (RichTableCell.this.delegate != null) {
                RichTableCell richTableCell = RichTableCell.this;
                if (richTableCell.currentRow != null) {
                    richTableCell.delegate.onTextWillChange(RichTableCell.this.currentRow, i, i2);
                }
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onTextChanged(RichEditText richEditText, Editable editable) {
            TL_iv.pageTableCell pagetablecell = this.val$host.cell;
            if (pagetablecell != null) {
                TableModel.applyStyledText(pagetablecell, editable);
            }
            RichTableCell.this.grid.requestLayout();
            if (RichTableCell.this.delegate != null) {
                RichTableCell richTableCell = RichTableCell.this;
                if (richTableCell.currentRow != null) {
                    richTableCell.delegate.onTextChanged(RichTableCell.this.currentRow);
                }
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public boolean onTab(RichEditText richEditText, boolean z) {
            return RichTableCell.this.moveFocusByTab(this.val$host, z);
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onRequestWindowFocusable(RichEditText richEditText, boolean z) {
            if (RichTableCell.this.delegate != null) {
                RichTableCell.this.delegate.onRequestWindowFocusable(richEditText, z);
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onLockedInsert(RichEditText richEditText, CharSequence charSequence) {
            if (RichTableCell.this.delegate != null) {
                RichTableCell.this.delegate.onLockedInsert(charSequence);
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public boolean onSelectAll(RichEditText richEditText) {
            if (RichTableCell.this.delegate == null) {
                return false;
            }
            RichTableCell richTableCell = RichTableCell.this;
            if (richTableCell.currentRow != null) {
                return richTableCell.delegate.onSelectAll(RichTableCell.this.currentRow);
            }
            return false;
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onSelectionChanged(final RichEditText richEditText, final int i, final int i2) {
            final TextSelectionHelper.ArticleTextSelectionHelper selectionHelper;
            final int iChildPosForAnchor;
            if (RichTableCell.this.hijackingSelection || i == i2 || RichTableCell.this.delegate == null || (selectionHelper = RichTableCell.this.delegate.getSelectionHelper()) == null) {
                return;
            }
            if (!(selectionHelper.isInSelectionMode() && selectionHelper.getSelectedCell() == RichTableCell.this) && (iChildPosForAnchor = RichTableCell.this.childPosForAnchor(this.val$host.cell)) >= 0) {
                RichTableCell.this.post(new Runnable() { // from class: org.telegram.ui.iv.RichTableCell$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onSelectionChanged$0(richEditText, i2, selectionHelper, iChildPosForAnchor, i);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSelectionChanged$0(RichEditText richEditText, int i, TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper, int i2, int i3) {
            if (richEditText.length() < i || richEditText.getSelectionStart() == richEditText.getSelectionEnd() || !articleTextSelectionHelper.selectRangeOf(RichTableCell.this, i2, i3, i)) {
                return;
            }
            RichTableCell.this.hijackingSelection = true;
            richEditText.setSelection(i);
            RichTableCell.this.hijackingSelection = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$wireCellListeners$3(RichTableCellHost richTableCellHost) {
        BlockRow blockRow;
        TL_iv.pageTableCell pagetablecell = richTableCellHost.cell;
        if (pagetablecell != null) {
            TableModel.applyStyledText(pagetablecell, richTableCellHost.editText.getText());
        }
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onSpansChanged(blockRow);
    }

    public boolean moveFocusByTab(RichTableCellHost richTableCellHost, boolean z) {
        int iIndexOf;
        RichTableCellHost richTableCellHostHostForAnchor;
        TableModel tableModel = this.model;
        if (tableModel == null || (iIndexOf = tableModel.anchors().indexOf(richTableCellHost.cell)) < 0) {
            return false;
        }
        int i = z ? iIndexOf - 1 : iIndexOf + 1;
        if (i < 0 || i >= this.model.anchors().size() || (richTableCellHostHostForAnchor = this.grid.hostForAnchor(this.model.anchors().get(i))) == null) {
            return false;
        }
        richTableCellHostHostForAnchor.editText.requestEditFocus();
        RichEditText richEditText = richTableCellHostHostForAnchor.editText;
        richEditText.setSelection(richEditText.length());
        return true;
    }

    public RichTableCellHost findHostContaining(View view) {
        if (view == null) {
            return null;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof RichTableCellHost) {
                return (RichTableCellHost) parent;
            }
            if (parent == this) {
                return null;
            }
        }
        return null;
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        this.titleEditText.updateColors();
        int color = Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider);
        this.titleEditText.setTextColor(color);
        this.titleEditText.setHintTextColor(Theme.multAlpha(color, 0.35f));
        int i = 0;
        while (true) {
            int childCount = this.grid.getChildCount();
            RichTableCellGrid richTableCellGrid = this.grid;
            if (i < childCount) {
                View childAt = richTableCellGrid.getChildAt(i);
                if (childAt instanceof RichTableCellHost) {
                    ((RichTableCellHost) childAt).editText.updateColors();
                }
                i++;
            } else {
                richTableCellGrid.applyColors();
                return;
            }
        }
    }

    @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
    public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
        final Layout layout;
        RichTableCell richTableCell;
        if (this.model == null) {
            return;
        }
        final Layout layout2 = this.titleEditText.getLayout();
        if (layout2 != null) {
            final int left = this.titleEditText.getLeft() + this.titleEditText.getPaddingLeft();
            final int top = this.titleEditText.getTop() + this.titleEditText.getPaddingTop();
            arrayList.add(new TextSelectionHelper.TextLayoutBlock() { // from class: org.telegram.ui.iv.RichTableCell.4
                @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                public int getRow() {
                    return 0;
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                public Layout getLayout() {
                    return layout2;
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                public int getX() {
                    return left;
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                public int getY() {
                    return top;
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                public CharSequence getText() {
                    BlockRow blockRow = RichTableCell.this.currentRow;
                    if (blockRow == null) {
                        return _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    TL_iv.PageBlock pageBlock = blockRow.block;
                    return (!(pageBlock instanceof TL_iv.pageBlockTable) || ((TL_iv.pageBlockTable) pageBlock).title == null) ? _UrlKt.FRAGMENT_ENCODE_SET : RichTextStyle.toSpannable(((TL_iv.pageBlockTable) pageBlock).title);
                }
            });
        }
        int size = this.model.anchors().size();
        int i = 0;
        while (i < size) {
            final TL_iv.pageTableCell pagetablecell = this.model.anchors().get(i);
            RichTableCellHost richTableCellHostHostForAnchor = this.grid.hostForAnchor(pagetablecell);
            if (richTableCellHostHostForAnchor == null || (layout = richTableCellHostHostForAnchor.editText.getLayout()) == null) {
                richTableCell = this;
            } else {
                final int left2 = (((this.scrollView.getLeft() + this.scrollContent.getLeft()) + this.grid.getLeft()) - this.scrollView.getScrollX()) + richTableCellHostHostForAnchor.getLeft() + richTableCellHostHostForAnchor.editText.getLeft() + richTableCellHostHostForAnchor.editText.getPaddingLeft();
                final int top2 = this.scrollView.getTop() + this.scrollContent.getTop() + this.grid.getTop() + richTableCellHostHostForAnchor.getTop() + richTableCellHostHostForAnchor.editText.getTop() + richTableCellHostHostForAnchor.editText.getPaddingTop();
                final int iAnchorRowOf = this.model.anchorRowOf(pagetablecell) + 10;
                richTableCell = this;
                arrayList.add(new TextSelectionHelper.TextLayoutBlock() { // from class: org.telegram.ui.iv.RichTableCell.5
                    @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                    public Layout getLayout() {
                        return layout;
                    }

                    @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                    public int getX() {
                        return left2;
                    }

                    @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                    public int getY() {
                        return top2;
                    }

                    @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                    public int getRow() {
                        return iAnchorRowOf;
                    }

                    @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
                    public CharSequence getText() {
                        return TableModel.readStyledText(pagetablecell);
                    }
                });
            }
            i++;
            this = richTableCell;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.model == null) {
            return;
        }
        Delegate delegate = this.delegate;
        TextSelectionHelper.ArticleTextSelectionHelper selectionHelper = delegate != null ? delegate.getSelectionHelper() : null;
        if (selectionHelper == null) {
            return;
        }
        this.tmpBlocks.clear();
        fillTextLayoutBlocks(this.tmpBlocks);
        for (int i = 0; i < this.tmpBlocks.size(); i++) {
            TextSelectionHelper.TextLayoutBlock textLayoutBlock = this.tmpBlocks.get(i);
            canvas.save();
            canvas.translate(textLayoutBlock.getX(), textLayoutBlock.getY());
            selectionHelper.draw(canvas, this, i);
            canvas.restore();
        }
    }

    @Override // android.view.View, org.telegram.ui.Cells.TextSelectionHelper.SelectableView
    public void invalidate() {
        super.invalidate();
        RichTableCellGrid richTableCellGrid = this.grid;
        if (richTableCellGrid != null) {
            richTableCellGrid.invalidate();
        }
    }

    public static final class Factory extends UItem.UItemFactory<RichTableCell> {
        @Override // org.telegram.ui.Components.UItem.UItemFactory
        /* JADX INFO: renamed from: isClickable */
        public boolean getIsClickableValue() {
            return false;
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public RichTableCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            RichTableCell richTableCell = new RichTableCell(context, resourcesProvider);
            richTableCell.setBackground(new RichEditor.DraggingDrawable(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
            return richTableCell;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            ((RichTableCell) view).bind((BlockRow) uItem.object, (Delegate) uItem.object2);
        }

        public static UItem of(BlockRow blockRow, Delegate delegate) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.object = blockRow;
            uItemOfFactory.object2 = delegate;
            return uItemOfFactory;
        }
    }
}
