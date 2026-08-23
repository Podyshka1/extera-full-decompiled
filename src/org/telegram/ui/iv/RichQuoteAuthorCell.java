package org.telegram.ui.iv;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Editable;
import android.text.Layout;
import android.view.View;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
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

/* JADX INFO: loaded from: classes7.dex */
public class RichQuoteAuthorCell extends RichBlockCell implements Theme.Colorable, TextSelectionHelper.ArticleSelectableView {
    final RichEditText authorEditText;
    private Delegate delegate;
    private boolean hijackingSelection;
    private final Theme.ResourcesProvider resourcesProvider;
    private final ArrayList<TextSelectionHelper.TextLayoutBlock> tmpBlocks;

    public interface Delegate {
        TL_iv.RichText getQuoteAuthor(long j);

        TextSelectionHelper.ArticleTextSelectionHelper getSelectionHelper();

        void onQuoteAuthorEnter(BlockRow blockRow);

        void setQuoteAuthor(long j, TL_iv.RichText richText);
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    public RichQuoteAuthorCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.tmpBlocks = new ArrayList<>();
        this.resourcesProvider = resourcesProvider;
        setBlockPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(1.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f));
        RichEditText richEditText = new RichEditText(context, resourcesProvider);
        this.authorEditText = richEditText;
        richEditText.setPadding(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(1.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(1.0f));
        richEditText.setAllowNewlines(false);
        richEditText.setInputType(147457);
        richEditText.setGravity(8388659);
        richEditText.setTextSize(1, Math.max(8, SharedConfig.fontSize - 2));
        richEditText.setTypeface(AndroidUtilities.bold());
        richEditText.setTextColorKey(Theme.key_featuredStickers_addButton);
        richEditText.setAccentHint(true);
        richEditText.setHint(LocaleController.getString(C2573R.string.ArticleHintAuthor));
        richEditText.setListener(new C63351());
        richEditText.setDelegate(new EditTextCaption.EditTextCaptionDelegate() { // from class: org.telegram.ui.iv.RichQuoteAuthorCell$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.EditTextCaption.EditTextCaptionDelegate
            public final void onSpansChanged() {
                this.f$0.persist();
            }
        });
        addView(richEditText, LayoutHelper.createFrame(-1, -2, 51));
        updateColors();
    }

    /* JADX INFO: renamed from: org.telegram.ui.iv.RichQuoteAuthorCell$1 */
    public class C63351 implements RichEditText.Listener {
        public C63351() {
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onEnterPressed(RichEditText richEditText) {
            if (RichQuoteAuthorCell.this.delegate != null) {
                RichQuoteAuthorCell richQuoteAuthorCell = RichQuoteAuthorCell.this;
                if (richQuoteAuthorCell.currentRow != null) {
                    richQuoteAuthorCell.delegate.onQuoteAuthorEnter(RichQuoteAuthorCell.this.currentRow);
                }
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onTextChanged(RichEditText richEditText, Editable editable) {
            RichQuoteAuthorCell.this.persist();
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onSelectionChanged(final RichEditText richEditText, final int i, final int i2) {
            final TextSelectionHelper.ArticleTextSelectionHelper selectionHelper;
            if (RichQuoteAuthorCell.this.hijackingSelection || i == i2 || RichQuoteAuthorCell.this.delegate == null || (selectionHelper = RichQuoteAuthorCell.this.delegate.getSelectionHelper()) == null) {
                return;
            }
            richEditText.post(new Runnable() { // from class: org.telegram.ui.iv.RichQuoteAuthorCell$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSelectionChanged$0(richEditText, i2, selectionHelper, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSelectionChanged$0(RichEditText richEditText, int i, TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper, int i2) {
            if (richEditText.length() < i || richEditText.getSelectionStart() == richEditText.getSelectionEnd()) {
                return;
            }
            boolean zIsInSelectionMode = articleTextSelectionHelper.isInSelectionMode();
            RichQuoteAuthorCell richQuoteAuthorCell = RichQuoteAuthorCell.this;
            if (zIsInSelectionMode) {
                richQuoteAuthorCell.hijackingSelection = true;
                richEditText.setSelection(i);
                RichQuoteAuthorCell.this.hijackingSelection = false;
            } else if (articleTextSelectionHelper.selectRangeOf(richQuoteAuthorCell, 0, i2, i)) {
                RichQuoteAuthorCell.this.hijackingSelection = true;
                richEditText.setSelection(i);
                RichQuoteAuthorCell.this.hijackingSelection = false;
            }
        }
    }

    public void bind(BlockRow blockRow, Delegate delegate) {
        this.currentRow = blockRow;
        this.delegate = delegate;
        setBlockPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(1.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f));
        bindBlockInset(blockRow);
        TL_iv.RichText quoteAuthor = delegate != null ? delegate.getQuoteAuthor(blockRow.authorQuoteId) : null;
        if (String.valueOf(this.authorEditText.getText()).equals(RichTextStyle.plainOf(quoteAuthor))) {
            return;
        }
        this.authorEditText.setTextSilently(Emoji.replaceEmoji(RichTextStyle.toSpannable(quoteAuthor), this.authorEditText.getPaint().getFontMetricsInt(), false));
        this.authorEditText.invalidateEffects();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void persist() {
        BlockRow blockRow;
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.setQuoteAuthor(blockRow.authorQuoteId, RichTextStyle.fromSpannable(this.authorEditText.getText()));
    }

    public BlockRow getRow() {
        return this.currentRow;
    }

    @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
    public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
        final Layout layout = this.authorEditText.getLayout();
        if (layout == null) {
            return;
        }
        final int left = this.authorEditText.getLeft() + this.authorEditText.getPaddingLeft();
        final int top = this.authorEditText.getTop() + this.authorEditText.getPaddingTop();
        arrayList.add(new TextSelectionHelper.TextLayoutBlock() { // from class: org.telegram.ui.iv.RichQuoteAuthorCell.2
            @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
            public int getRow() {
                return 0;
            }

            @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
            public Layout getLayout() {
                return layout;
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
                return layout.getText();
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Delegate delegate = this.delegate;
        TextSelectionHelper.ArticleTextSelectionHelper selectionHelper = delegate != null ? delegate.getSelectionHelper() : null;
        if (selectionHelper != null) {
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
        super.dispatchDraw(canvas);
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        this.authorEditText.updateColors();
        RichEditText richEditText = this.authorEditText;
        int i = Theme.key_featuredStickers_addButton;
        richEditText.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.authorEditText.setHintTextColor(Theme.multAlpha(Theme.getColor(i, this.resourcesProvider), 0.5f));
    }

    public static final class Factory extends UItem.UItemFactory<RichQuoteAuthorCell> {
        @Override // org.telegram.ui.Components.UItem.UItemFactory
        /* JADX INFO: renamed from: isClickable */
        public boolean getIsClickableValue() {
            return false;
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public RichQuoteAuthorCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new RichQuoteAuthorCell(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            ((RichQuoteAuthorCell) view).bind((BlockRow) uItem.object, (Delegate) uItem.object2);
        }

        public static UItem of(BlockRow blockRow, Delegate delegate) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.object = blockRow;
            uItemOfFactory.object2 = delegate;
            return uItemOfFactory;
        }
    }
}
