package org.telegram.ui.iv;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Layout;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.Components.AnimatedArrowDrawable;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.iv.RichEditText;

/* JADX INFO: loaded from: classes7.dex */
public class RichDetailsCell extends FrameLayout implements Theme.Colorable, TextSelectionHelper.ArticleSelectableView {
    private final AnimatedArrowDrawable arrow;
    private final Drawable.Callback arrowCallback;
    private final View arrowView;
    private BlockRow currentRow;
    private Delegate delegate;
    private final Paint dividerPaint;
    private final RichEditText editText;
    private boolean hijackingSelection;
    private final Theme.ResourcesProvider resourcesProvider;

    public interface Delegate {
        TextSelectionHelper.ArticleTextSelectionHelper getSelectionHelper();

        void onLockedInsert(CharSequence charSequence);

        void onRequestWindowFocusable(RichEditText richEditText, boolean z);

        boolean onSelectAll(BlockRow blockRow);

        void onSpansChanged(BlockRow blockRow);

        void onTitleBackspace(BlockRow blockRow);

        void onTitleChanged(BlockRow blockRow);

        void onTitleEnter(BlockRow blockRow);

        void onToggle(BlockRow blockRow);
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    public RichDetailsCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.dividerPaint = new Paint();
        this.resourcesProvider = resourcesProvider;
        setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        setClipToPadding(false);
        setWillNotDraw(false);
        AnimatedArrowDrawable animatedArrowDrawable = new AnimatedArrowDrawable(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider), true);
        this.arrow = animatedArrowDrawable;
        Drawable.Callback callback = new Drawable.Callback() { // from class: org.telegram.ui.iv.RichDetailsCell.1
            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                RichDetailsCell.this.arrowView.invalidate();
            }
        };
        this.arrowCallback = callback;
        animatedArrowDrawable.setCallback(callback);
        View view = new View(context) { // from class: org.telegram.ui.iv.RichDetailsCell.2
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                canvas.save();
                canvas.translate(AndroidUtilities.dp(2.0f), (getMeasuredHeight() - AndroidUtilities.dp(13.0f)) / 2.0f);
                RichDetailsCell.this.arrow.draw(canvas);
                canvas.restore();
            }
        };
        this.arrowView = view;
        view.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.iv.RichDetailsCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$0(view2);
            }
        });
        addView(view, LayoutHelper.createFrame(28, -1, 51));
        RichEditText richEditText = new RichEditText(context, resourcesProvider);
        this.editText = richEditText;
        richEditText.setAllowNewlines(false);
        richEditText.setTextSize(1, SharedConfig.fontSize);
        richEditText.setHint(LocaleController.getString(C2573R.string.ArticleHintDetailsTitle));
        richEditText.setPadding(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(10.0f));
        richEditText.setListener(new C63023());
        richEditText.setDelegate(new EditTextCaption.EditTextCaptionDelegate() { // from class: org.telegram.ui.iv.RichDetailsCell$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.EditTextCaption.EditTextCaptionDelegate
            public final void onSpansChanged() {
                this.f$0.lambda$new$1();
            }
        });
        addView(richEditText, LayoutHelper.createFrame(-1, -2.0f, 51, 34.0f, 0.0f, 0.0f, 0.0f));
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        BlockRow blockRow;
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onToggle(blockRow);
    }

    /* JADX INFO: renamed from: org.telegram.ui.iv.RichDetailsCell$3 */
    public class C63023 implements RichEditText.Listener {
        public C63023() {
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onTextChanged(RichEditText richEditText, Editable editable) {
            if (RichDetailsCell.this.currentRow != null && (RichDetailsCell.this.currentRow.block instanceof TL_iv.pageBlockDetails)) {
                ((TL_iv.pageBlockDetails) RichDetailsCell.this.currentRow.block).title = RichTextStyle.fromSpannable(editable);
            }
            if (RichDetailsCell.this.delegate == null || RichDetailsCell.this.currentRow == null) {
                return;
            }
            RichDetailsCell.this.delegate.onTitleChanged(RichDetailsCell.this.currentRow);
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onEnterPressed(RichEditText richEditText) {
            if (RichDetailsCell.this.delegate == null || RichDetailsCell.this.currentRow == null) {
                return;
            }
            RichDetailsCell.this.delegate.onTitleEnter(RichDetailsCell.this.currentRow);
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onBackspaceOnEmpty(RichEditText richEditText) {
            if (RichDetailsCell.this.delegate == null || RichDetailsCell.this.currentRow == null) {
                return;
            }
            RichDetailsCell.this.delegate.onTitleBackspace(RichDetailsCell.this.currentRow);
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public boolean onBackspaceAtStart(RichEditText richEditText) {
            if (RichDetailsCell.this.delegate == null || RichDetailsCell.this.currentRow == null || richEditText.length() != 0) {
                return false;
            }
            RichDetailsCell.this.delegate.onTitleBackspace(RichDetailsCell.this.currentRow);
            return true;
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onRequestWindowFocusable(RichEditText richEditText, boolean z) {
            if (RichDetailsCell.this.delegate != null) {
                RichDetailsCell.this.delegate.onRequestWindowFocusable(richEditText, z);
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onLockedInsert(RichEditText richEditText, CharSequence charSequence) {
            if (RichDetailsCell.this.delegate != null) {
                RichDetailsCell.this.delegate.onLockedInsert(charSequence);
            }
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public boolean onSelectAll(RichEditText richEditText) {
            if (RichDetailsCell.this.delegate == null || RichDetailsCell.this.currentRow == null) {
                return false;
            }
            return RichDetailsCell.this.delegate.onSelectAll(RichDetailsCell.this.currentRow);
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onSelectionChanged(final RichEditText richEditText, final int i, final int i2) {
            final TextSelectionHelper.ArticleTextSelectionHelper selectionHelper;
            if (RichDetailsCell.this.hijackingSelection || i == i2 || RichDetailsCell.this.delegate == null || (selectionHelper = RichDetailsCell.this.delegate.getSelectionHelper()) == null) {
                return;
            }
            if (selectionHelper.isInSelectionMode() && selectionHelper.getSelectedCell() == RichDetailsCell.this) {
                return;
            }
            RichDetailsCell.this.post(new Runnable() { // from class: org.telegram.ui.iv.RichDetailsCell$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSelectionChanged$0(richEditText, i2, selectionHelper, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSelectionChanged$0(RichEditText richEditText, int i, TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper, int i2) {
            if (richEditText.length() < i || richEditText.getSelectionStart() == richEditText.getSelectionEnd() || !articleTextSelectionHelper.selectRangeOf(RichDetailsCell.this, i2, i)) {
                return;
            }
            RichDetailsCell.this.hijackingSelection = true;
            richEditText.setSelection(i);
            RichDetailsCell.this.hijackingSelection = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        BlockRow blockRow;
        BlockRow blockRow2 = this.currentRow;
        if (blockRow2 != null) {
            TL_iv.PageBlock pageBlock = blockRow2.block;
            if (pageBlock instanceof TL_iv.pageBlockDetails) {
                ((TL_iv.pageBlockDetails) pageBlock).title = RichTextStyle.fromSpannable(this.editText.getText());
            }
        }
        Delegate delegate = this.delegate;
        if (delegate == null || (blockRow = this.currentRow) == null) {
            return;
        }
        delegate.onSpansChanged(blockRow);
    }

    public void bind(BlockRow blockRow, Delegate delegate) {
        this.currentRow = blockRow;
        this.delegate = delegate;
        TL_iv.PageBlock pageBlock = blockRow.block;
        if (pageBlock instanceof TL_iv.pageBlockDetails) {
            TL_iv.pageBlockDetails pageblockdetails = (TL_iv.pageBlockDetails) pageBlock;
            this.arrow.setAnimationProgressAnimated(pageblockdetails.open ? 0.0f : 1.0f);
            CharSequence spannable = RichTextStyle.toSpannable(pageblockdetails.title);
            if (String.valueOf(this.editText.getText()).equals(RichTextStyle.plainOf(pageblockdetails.title))) {
                return;
            }
            this.editText.setTextSilently(spannable);
            this.editText.invalidateEffects();
        }
    }

    public BlockRow getRow() {
        return this.currentRow;
    }

    public RichEditText getEditText() {
        return this.editText;
    }

    public void requestEditFocus() {
        this.editText.requestEditFocus();
    }

    public void setLocked(boolean z) {
        this.editText.setLocked(z);
    }

    public boolean isPressOnText(int i, int i2) {
        int lineForVertical;
        Layout layout = this.editText.getLayout();
        if (layout != null && this.editText.length() != 0) {
            int left = i - (this.editText.getLeft() + this.editText.getPaddingLeft());
            int top = i2 - (this.editText.getTop() + this.editText.getPaddingTop());
            if (top >= 0 && top < layout.getHeight() && (lineForVertical = layout.getLineForVertical(top)) >= 0 && lineForVertical < layout.getLineCount()) {
                int iDp = AndroidUtilities.dp(24.0f);
                int iMax = Math.max(0, (this.editText.getWidth() - this.editText.getPaddingLeft()) - this.editText.getPaddingRight());
                float f = iDp;
                float fMax = Math.max(0.0f, layout.getLineLeft(lineForVertical) - f);
                float fMin = Math.min(iMax, layout.getLineRight(lineForVertical) + f);
                float f2 = left;
                if (f2 >= fMax && f2 <= fMin) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isPressOnEmptyEditText(int i, int i2) {
        return this.editText.length() == 0 && i >= this.editText.getLeft() && i <= this.editText.getLeft() + this.editText.getWidth() && i2 >= this.editText.getTop() && i2 <= this.editText.getTop() + this.editText.getHeight();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        this.editText.updateColors();
        this.arrow.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider));
        this.dividerPaint.setColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
    }

    @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
    public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
        final Layout layout = this.editText.getLayout();
        if (layout == null) {
            return;
        }
        final int left = this.editText.getLeft() + this.editText.getPaddingLeft();
        final int top = this.editText.getTop() + this.editText.getPaddingTop();
        arrayList.add(new TextSelectionHelper.TextLayoutBlock() { // from class: org.telegram.ui.iv.RichDetailsCell.4
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
                return (RichDetailsCell.this.currentRow == null || !(RichDetailsCell.this.currentRow.block instanceof TL_iv.pageBlockDetails)) ? _UrlKt.FRAGMENT_ENCODE_SET : RichTextStyle.toSpannable(((TL_iv.pageBlockDetails) RichDetailsCell.this.currentRow.block).title);
            }
        });
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        BlockRow blockRow = this.currentRow;
        if (blockRow != null) {
            TL_iv.PageBlock pageBlock = blockRow.block;
            if ((pageBlock instanceof TL_iv.pageBlockDetails) && ((TL_iv.pageBlockDetails) pageBlock).open) {
                return;
            }
        }
        canvas.drawRect(0.0f, r0 - 1, getMeasuredWidth(), getMeasuredHeight(), this.dividerPaint);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Delegate delegate = this.delegate;
        TextSelectionHelper.ArticleTextSelectionHelper selectionHelper = delegate != null ? delegate.getSelectionHelper() : null;
        if (selectionHelper != null && this.editText.getLayout() != null) {
            canvas.save();
            canvas.translate(this.editText.getLeft() + this.editText.getPaddingLeft(), this.editText.getTop() + this.editText.getPaddingTop());
            selectionHelper.draw(canvas, this, 0);
            canvas.restore();
        }
        super.dispatchDraw(canvas);
    }

    public static final class Factory extends UItem.UItemFactory<RichDetailsCell> {
        @Override // org.telegram.ui.Components.UItem.UItemFactory
        /* JADX INFO: renamed from: isClickable */
        public boolean getIsClickableValue() {
            return false;
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public RichDetailsCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new RichDetailsCell(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            ((RichDetailsCell) view).bind((BlockRow) uItem.object, (Delegate) uItem.object2);
        }

        public static UItem of(BlockRow blockRow, Delegate delegate) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.object = blockRow;
            uItemOfFactory.object2 = delegate;
            return uItemOfFactory;
        }
    }
}
