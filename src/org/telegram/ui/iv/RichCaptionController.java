package org.telegram.ui.iv;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Editable;
import android.text.Layout;
import android.view.View;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.iv.RichEditText;

/* JADX INFO: loaded from: classes7.dex */
class RichCaptionController {
    final RichEditText editText;
    private boolean hijackingSelection;
    private final Host host;
    private final Theme.ResourcesProvider resourcesProvider;

    public interface Host {
        TextSelectionHelper.ArticleSelectableView cell();

        BlockRow currentRow();

        void onCaptionChanged();

        void onCaptionEnter();

        void onCaptionLockedInsert(CharSequence charSequence);

        boolean onCaptionSelectAll();

        void onCaptionSpansChanged();

        void onCaptionWillChange(int i, int i2);

        void onRequestWindowFocusable(RichEditText richEditText, boolean z);

        TextSelectionHelper.ArticleTextSelectionHelper selectionHelper();
    }

    public RichCaptionController(Context context, Theme.ResourcesProvider resourcesProvider, final Host host) {
        this.resourcesProvider = resourcesProvider;
        this.host = host;
        RichEditText richEditText = new RichEditText(context, resourcesProvider);
        this.editText = richEditText;
        richEditText.setPadding(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f));
        richEditText.setAllowNewlines(false);
        richEditText.setInputType(147457);
        richEditText.setGravity(8388659);
        richEditText.setTextSize(1, Math.max(8, SharedConfig.fontSize - 2));
        richEditText.setHint(LocaleController.getString(C2665R.string.AddCaption));
        richEditText.setListener(new C63931(host));
        richEditText.setDelegate(new EditTextCaption.EditTextCaptionDelegate() { // from class: org.telegram.ui.iv.RichCaptionController$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.EditTextCaption.EditTextCaptionDelegate
            public final void onSpansChanged() {
                this.f$0.lambda$new$0(host);
            }
        });
        applyColors();
    }

    /* JADX INFO: renamed from: org.telegram.ui.iv.RichCaptionController$1 */
    public class C63931 implements RichEditText.Listener {
        final /* synthetic */ Host val$host;

        public C63931(Host host) {
            this.val$host = host;
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onEnterPressed(RichEditText richEditText) {
            this.val$host.onCaptionEnter();
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onTextWillChange(RichEditText richEditText, int i, int i2) {
            this.val$host.onCaptionWillChange(i, i2);
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onTextChanged(RichEditText richEditText, Editable editable) {
            RichCaptionController.this.persist();
            this.val$host.onCaptionChanged();
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onRequestWindowFocusable(RichEditText richEditText, boolean z) {
            this.val$host.onRequestWindowFocusable(richEditText, z);
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onLockedInsert(RichEditText richEditText, CharSequence charSequence) {
            this.val$host.onCaptionLockedInsert(charSequence);
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public boolean onSelectAll(RichEditText richEditText) {
            return this.val$host.onCaptionSelectAll();
        }

        @Override // org.telegram.ui.iv.RichEditText.Listener
        public void onSelectionChanged(final RichEditText richEditText, final int i, final int i2) {
            final TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelperSelectionHelper;
            if (RichCaptionController.this.hijackingSelection || i == i2 || (articleTextSelectionHelperSelectionHelper = this.val$host.selectionHelper()) == null) {
                return;
            }
            if (articleTextSelectionHelperSelectionHelper.isInSelectionMode() && articleTextSelectionHelperSelectionHelper.getSelectedCell() == this.val$host.cell()) {
                return;
            }
            final Host host = this.val$host;
            richEditText.post(new Runnable() { // from class: org.telegram.ui.iv.RichCaptionController$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSelectionChanged$0(richEditText, i2, articleTextSelectionHelperSelectionHelper, host, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSelectionChanged$0(RichEditText richEditText, int i, TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper, Host host, int i2) {
            if (richEditText.length() < i || richEditText.getSelectionStart() == richEditText.getSelectionEnd() || !articleTextSelectionHelper.selectRangeOf(host.cell(), 0, i2, i)) {
                return;
            }
            RichCaptionController.this.hijackingSelection = true;
            richEditText.setSelection(i);
            RichCaptionController.this.hijackingSelection = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Host host) {
        persist();
        host.onCaptionSpansChanged();
    }

    public static void ensureCaption(TL_iv.PageBlock pageBlock) {
        if (pageBlock == null) {
            return;
        }
        if (pageBlock.caption == null) {
            pageBlock.caption = new TL_iv.PageCaption();
        }
        TL_iv.PageCaption pageCaption = pageBlock.caption;
        if (pageCaption.text == null) {
            pageCaption.text = new TL_iv.textEmpty();
        }
        TL_iv.PageCaption pageCaption2 = pageBlock.caption;
        if (pageCaption2.credit == null) {
            pageCaption2.credit = new TL_iv.textEmpty();
        }
    }

    public void bind() {
        TL_iv.PageBlock pageBlock;
        BlockRow blockRowCurrentRow = this.host.currentRow();
        if (blockRowCurrentRow == null || (pageBlock = blockRowCurrentRow.block) == null) {
            return;
        }
        ensureCaption(pageBlock);
        TL_iv.RichText richText = blockRowCurrentRow.block.caption.text;
        if (String.valueOf(this.editText.getText()).equals(RichTextStyle.plainOf(richText))) {
            return;
        }
        this.editText.setTextSilently(RichTextStyle.toSpannable(richText));
        this.editText.invalidateEffects();
    }

    public void persist() {
        TL_iv.PageBlock pageBlock;
        BlockRow blockRowCurrentRow = this.host.currentRow();
        if (blockRowCurrentRow == null || (pageBlock = blockRowCurrentRow.block) == null) {
            return;
        }
        ensureCaption(pageBlock);
        blockRowCurrentRow.block.caption.text = RichTextStyle.fromSpannable(this.editText.getText());
    }

    public void applyColors() {
        this.editText.updateColors();
        int color = Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider);
        this.editText.setTextColor(Theme.multAlpha(color, 0.5f));
        this.editText.setHintTextColor(Theme.multAlpha(color, 0.35f));
    }

    public int measure(int i, int i2, int i3) {
        this.editText.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, ((i3 - i) - i2) - (AndroidUtilities.dp(16.0f) * 2)), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
        return this.editText.getMeasuredHeight();
    }

    public void layout(int i, int i2, int i3, int i4) {
        int iDp = i + AndroidUtilities.dp(16.0f);
        this.editText.layout(iDp, i4, Math.max(iDp, (i3 - i2) - AndroidUtilities.dp(16.0f)), this.editText.getMeasuredHeight() + i4);
    }

    public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
        final Layout layout = this.editText.getLayout();
        if (layout == null) {
            return;
        }
        final int left = this.editText.getLeft() + this.editText.getPaddingLeft();
        final int top = this.editText.getTop() + this.editText.getPaddingTop();
        arrayList.add(new TextSelectionHelper.TextLayoutBlock() { // from class: org.telegram.ui.iv.RichCaptionController.2
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
                TL_iv.PageBlock pageBlock;
                TL_iv.PageCaption pageCaption;
                TL_iv.RichText richText;
                BlockRow blockRowCurrentRow = RichCaptionController.this.host.currentRow();
                return (blockRowCurrentRow == null || (pageBlock = blockRowCurrentRow.block) == null || (pageCaption = pageBlock.caption) == null || (richText = pageCaption.text) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : RichTextStyle.toSpannable(richText);
            }
        });
    }

    public void drawSelection(Canvas canvas) {
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelperSelectionHelper = this.host.selectionHelper();
        if (articleTextSelectionHelperSelectionHelper == null || this.editText.getLayout() == null) {
            return;
        }
        canvas.save();
        canvas.translate(this.editText.getLeft() + this.editText.getPaddingLeft(), this.editText.getTop() + this.editText.getPaddingTop());
        articleTextSelectionHelperSelectionHelper.draw(canvas, this.host.cell(), 0);
        canvas.restore();
    }

    public boolean isPressOnCaption(int i, int i2) {
        int lineForVertical;
        Layout layout = this.editText.getLayout();
        if (layout == null) {
            return false;
        }
        int left = i - (this.editText.getLeft() + this.editText.getPaddingLeft());
        int top = i2 - (this.editText.getTop() + this.editText.getPaddingTop());
        if (top >= 0 && top < layout.getHeight() && (lineForVertical = layout.getLineForVertical(top)) >= 0 && lineForVertical < layout.getLineCount()) {
            float f = left;
            if (f >= layout.getLineLeft(lineForVertical) && f <= layout.getLineRight(lineForVertical)) {
                return true;
            }
        }
        return false;
    }
}
