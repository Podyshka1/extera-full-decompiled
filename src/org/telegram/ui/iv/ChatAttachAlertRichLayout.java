package org.telegram.ui.iv;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.gms.cast.MediaError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessageChatArguments;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.EditTextCell;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AIEditorAlert;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ChatActivityEnterView;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.ChatAttachAlertAudioLayout;
import org.telegram.ui.Components.ChatAttachAlertDocumentLayout;
import org.telegram.ui.Components.ChatAttachAlertLocationLayout;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EmojiView;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.MessageSendPreview;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.iv.RichCommandSuggestions;
import org.telegram.ui.iv.RichEditor;
import org.telegram.ui.iv.RichEditorListView;
import org.telegram.ui.iv.RichEditorToolbar;

/* JADX INFO: loaded from: classes8.dex */
public class ChatAttachAlertRichLayout extends ChatAttachAlert.AttachAlertLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final int[] STYLE_FLAGS = {1, 2, 16, 8, 256, 4, 16384, 32768};
    private boolean attachButtonsShown;
    private int attachRaise;
    private RichCommandSuggestions commandSuggestions;
    private final int currentAccount;
    private int currentItemTop;
    private int emojiPadding;
    private boolean emojiSearchOpened;
    private RichEditText emojiTargetEditText;
    private int emojiTargetSelection;
    private EmojiView emojiView;
    private boolean emojiViewVisible;
    private boolean ignoreLayout;
    private boolean keyboardVisible;
    private int lastAttachRise;
    private final Runnable limitCheckRunnable;
    private final RichEditorListView listView;
    private ItemOptions menu;
    private MessageSendPreview messageSendPreview;
    private boolean sendButtonShown;
    private RichEditorToolbar toolbar;
    private final RichEditorToolbar.Delegate toolbarDelegate;

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean disableBottomFade() {
        return true;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 0;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHidden() {
    }

    public ChatAttachAlertRichLayout(ChatAttachAlert chatAttachAlert, Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        C66252 c66252 = new C66252();
        this.toolbarDelegate = c66252;
        this.attachButtonsShown = true;
        this.limitCheckRunnable = new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updateSendButtonEnabled();
            }
        };
        this.currentAccount = i;
        this.occupyStatusBar = true;
        this.occupyNavigationBar = true;
        RichEditorListView richEditorListView = new RichEditorListView(context, i, resourcesProvider, new C66241(resourcesProvider));
        this.listView = richEditorListView;
        richEditorListView.setAdaptiveLinkDialogs(false);
        richEditorListView.setAllowTapAboveContent(false);
        addView(richEditorListView, LayoutHelper.createFrame(-1, -1, 119));
        addView(richEditorListView.getOverlayView(), LayoutHelper.createFrame(-1, -1, 119));
        richEditorListView.seedEmptyArticle();
        richEditorListView.resetHistoryBaseline();
        setFocusable(true);
        setFocusableInTouchMode(true);
        if (Build.VERSION.SDK_INT >= 26) {
            setDefaultFocusHighlightEnabled(false);
        }
        setBackground(null);
        setForeground(null);
        RichEditorToolbar richEditorToolbar = new RichEditorToolbar(context, c66252);
        this.toolbar = richEditorToolbar;
        richEditorToolbar.setBackVisible(false);
        this.toolbar.setTopGradientVisible(false);
        updateSendButtonLocked();
        addView(this.toolbar, LayoutHelper.createFrame(-1, -1, 119));
        updateHistoryButtons();
        updateToolbarBlockType();
        updateAttachButtons(false);
        getViewTreeObserver().addOnGlobalFocusChangeListener(new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda10
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view, View view2) {
                this.f$0.lambda$new$0(view, view2);
            }
        });
    }

    /* JADX INFO: renamed from: org.telegram.ui.iv.ChatAttachAlertRichLayout$1 */
    public class C66241 implements RichEditorListView.Delegate {
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        public C66241(Theme.ResourcesProvider resourcesProvider) {
            this.val$resourcesProvider = resourcesProvider;
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public ItemOptions makeMenu(View view) {
            ChatAttachAlertRichLayout chatAttachAlertRichLayout = ChatAttachAlertRichLayout.this;
            ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(chatAttachAlertRichLayout, this.val$resourcesProvider, view, false, false, true);
            chatAttachAlertRichLayout.menu = itemOptionsMakeOptions;
            return itemOptionsMakeOptions;
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onSelectionChanged() {
            ChatAttachAlertRichLayout.this.updateFormattingPanel();
            ChatAttachAlertRichLayout.this.updateToolbarBlockType();
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onContentChanged() {
            ChatAttachAlertRichLayout.this.updateSendButtonLoading();
            ChatAttachAlertRichLayout.this.updateSendButtonLocked();
            ChatAttachAlertRichLayout.this.scheduleLimitCheck();
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onHistoryChanged() {
            ChatAttachAlertRichLayout.this.updateHistoryButtons();
            ChatAttachAlertRichLayout.this.updateSendButtonLocked();
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onOpenAttachRequest(int i, int i2) {
            ChatAttachAlertRichLayout.this.openAttach(i, i2);
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onOpenLocationRequest(BlockRow blockRow) {
            ChatAttachAlertRichLayout.this.openLocationPicker(blockRow);
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onSlashSuggest(RichTextCell richTextCell, String str) {
            if (ChatAttachAlertRichLayout.this.commandSuggestions == null) {
                ChatAttachAlertRichLayout chatAttachAlertRichLayout = ChatAttachAlertRichLayout.this;
                final Theme.ResourcesProvider resourcesProvider = this.val$resourcesProvider;
                chatAttachAlertRichLayout.commandSuggestions = new RichCommandSuggestions(new RichCommandSuggestions.MenuFactory() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$1$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.iv.RichCommandSuggestions.MenuFactory
                    public final ItemOptions make(View view) {
                        return this.f$0.lambda$onSlashSuggest$0(resourcesProvider, view);
                    }
                }, this.val$resourcesProvider);
            }
            ChatAttachAlertRichLayout.this.commandSuggestions.update(richTextCell, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ ItemOptions lambda$onSlashSuggest$0(Theme.ResourcesProvider resourcesProvider, View view) {
            ChatAttachAlertRichLayout chatAttachAlertRichLayout = ChatAttachAlertRichLayout.this;
            ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(chatAttachAlertRichLayout, resourcesProvider, view, false, false, true);
            chatAttachAlertRichLayout.menu = itemOptionsMakeOptions;
            return itemOptionsMakeOptions;
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onListScrolled(int i) {
            ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertRichLayout.this).parentAlert.updateLayout(ChatAttachAlertRichLayout.this, true, i);
            ChatAttachAlertRichLayout.this.updateToolbarTopOffset();
            ChatAttachAlertRichLayout.this.updateAttachRaise();
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onListLayoutUpdated() {
            if (ChatAttachAlertRichLayout.this.getCurrentItemTop() != ChatAttachAlertRichLayout.this.currentItemTop) {
                ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertRichLayout.this).parentAlert.updateLayout(ChatAttachAlertRichLayout.this, true, 0);
            }
            ChatAttachAlertRichLayout.this.updateToolbarTopOffset();
            ChatAttachAlertRichLayout.this.updateAttachRaise();
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void makeEditTextFocusable(RichEditText richEditText, boolean z) {
            ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertRichLayout.this).parentAlert.makeFocusable(richEditText, z);
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onInlineButtonEditRequested(RichEditorListView.InlineButtonEdit inlineButtonEdit, View view) {
            ItemOptions itemOptionsDontFocus = ItemOptions.makeOptions(ChatAttachAlertRichLayout.this, this.val$resourcesProvider, view, false, false, true).dontFocus();
            ChatAttachAlertRichLayout chatAttachAlertRichLayout = ChatAttachAlertRichLayout.this;
            chatAttachAlertRichLayout.menu = RichInlineButtonEditor.show(itemOptionsDontFocus, ((ChatAttachAlert.AttachAlertLayout) chatAttachAlertRichLayout).parentAlert.getBaseFragment(), ChatAttachAlertRichLayout.this.getContext(), this.val$resourcesProvider, inlineButtonEdit, true);
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onBlockButtonEditRequested(RichEditorListView.BlockButtonEdit blockButtonEdit, View view) {
            ItemOptions itemOptionsDontFocus = ItemOptions.makeOptions(ChatAttachAlertRichLayout.this, this.val$resourcesProvider, view, false, false, true).dontFocus();
            ChatAttachAlertRichLayout chatAttachAlertRichLayout = ChatAttachAlertRichLayout.this;
            chatAttachAlertRichLayout.menu = RichInlineButtonEditor.showBlock(itemOptionsDontFocus, ((ChatAttachAlert.AttachAlertLayout) chatAttachAlertRichLayout).parentAlert.getBaseFragment(), ChatAttachAlertRichLayout.this.getContext(), this.val$resourcesProvider, blockButtonEdit, true);
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onReorderStart() {
            if (ChatAttachAlertRichLayout.this.toolbar != null) {
                ChatAttachAlertRichLayout.this.toolbar.onReorderStart();
            }
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public boolean onReorderMove(float f, float f2) {
            return ChatAttachAlertRichLayout.this.toolbar != null && ChatAttachAlertRichLayout.this.toolbar.onReorderMove(f, f2);
        }

        @Override // org.telegram.ui.iv.RichEditorListView.Delegate
        public void onReorderEnd() {
            if (ChatAttachAlertRichLayout.this.toolbar != null) {
                ChatAttachAlertRichLayout.this.toolbar.onReorderEnd();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, View view2) {
        updateToolbarBlockType();
    }

    /* JADX INFO: renamed from: org.telegram.ui.iv.ChatAttachAlertRichLayout$2 */
    public class C66252 implements RichEditorToolbar.Delegate {
        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onBack() {
        }

        public C66252() {
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public Theme.ResourcesProvider getResourcesProvider() {
            return ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertRichLayout.this).resourcesProvider;
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onUndo() {
            ChatAttachAlertRichLayout.this.listView.undo();
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onRedo() {
            ChatAttachAlertRichLayout.this.listView.redo();
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onEmoji() {
            ChatAttachAlertRichLayout.this.toggleEmojiPopup();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAi$0(TL_iv.RichMessage richMessage) {
            ChatAttachAlertRichLayout.this.listView.addRichMessage(richMessage);
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onAi() {
            new RichAIComposeSheet(ChatAttachAlertRichLayout.this.getContext(), ChatAttachAlertRichLayout.this.currentAccount, ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertRichLayout.this).resourcesProvider, new Utilities.Callback() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$2$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onAi$0((TL_iv.RichMessage) obj);
                }
            }).show();
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onAttach() {
            ChatAttachAlertRichLayout.this.listView.pendingMediaRow = null;
            ChatAttachAlertRichLayout.this.openAttach(90, 0);
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onSend() {
            ChatAttachAlertRichLayout.this.sendSelectedItems(true, 0, 0, 0L, false);
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public boolean onSendLongClick(View view) {
            return ChatAttachAlertRichLayout.this.showSendPreview(view);
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onBlockButton(int i, View view) {
            ChatAttachAlertRichLayout.this.onBlockButtonClicked(i, view);
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onFormatting(int i) {
            ChatAttachAlertRichLayout.this.listView.onFormattingClicked(i);
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onLink() {
            ChatAttachAlertRichLayout.this.listView.onLinkClicked();
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onButton(View view) {
            ChatAttachAlertRichLayout.this.listView.onInlineButtonClicked(view);
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onDate() {
            ChatAttachAlertRichLayout.this.listView.onDateClicked();
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onMath() {
            ChatAttachAlertRichLayout.this.listView.onMathClicked();
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onQuote() {
            ChatAttachAlertRichLayout.this.listView.toggleQuoteOnSelection();
            ChatAttachAlertRichLayout.this.updateFormattingButtons();
        }

        @Override // org.telegram.ui.iv.RichEditorToolbar.Delegate
        public void onAiStyle() {
            TL_iv.RichMessage richMessageExtractRichMessage;
            RichEditorListView.SelectionEdit selectionEditBeginSelectionEdit = ChatAttachAlertRichLayout.this.listView.beginSelectionEdit();
            if (selectionEditBeginSelectionEdit == null || (richMessageExtractRichMessage = selectionEditBeginSelectionEdit.extractRichMessage()) == null || richMessageExtractRichMessage.blocks.isEmpty()) {
                return;
            }
            new AIEditorAlert(ChatAttachAlertRichLayout.this.getContext(), ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertRichLayout.this).resourcesProvider).setText(richMessageExtractRichMessage).setOnUseRich(new ChatAttachAlertRichLayout$2$$ExternalSyntheticLambda0(selectionEditBeginSelectionEdit)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateToolbarTopOffset() {
        if (this.toolbar == null) {
            return;
        }
        this.toolbar.setTopButtonsOffset(Math.max((AndroidUtilities.statusBarHeight + ((ActionBar.getCurrentActionBarHeight() - AndroidUtilities.dp(44.0f)) / 2)) - AndroidUtilities.dp(8.0f), firstItemTopRaw()));
    }

    private int firstItemTopRaw() {
        if (this.listView.getChildCount() <= 0) {
            return this.listView.getPaddingTop();
        }
        int top = Integer.MAX_VALUE;
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            if (this.listView.getChildAdapterPosition(childAt) >= 0 && childAt.getTop() < top) {
                top = childAt.getTop();
            }
        }
        return top == Integer.MAX_VALUE ? this.listView.getPaddingTop() : top;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHistoryButtons() {
        RichEditorToolbar richEditorToolbar = this.toolbar;
        if (richEditorToolbar != null) {
            richEditorToolbar.setHistoryEnabled(this.listView.canUndo(), this.listView.canRedo());
        }
    }

    private boolean checkDiscard() {
        RichEditorListView richEditorListView = this.listView;
        if (richEditorListView == null || !richEditorListView.hasAnyText()) {
            return true;
        }
        new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2807R.string.ArticleSaveDraftTitle)).setMessage(LocaleController.getString(C2807R.string.ArticleSaveDraftMessage)).setNegativeButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda13
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$checkDiscard$1(alertDialog, i);
            }
        }).setPositiveButton(LocaleController.getString(C2807R.string.Save), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda14
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$checkDiscard$2(alertDialog, i);
            }
        }).makeRed(-2).show();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$1(AlertDialog alertDialog, int i) {
        this.parentAlert.lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$2(AlertDialog alertDialog, int i) {
        persistDraft();
        this.parentAlert.lambda$new$0();
    }

    private boolean persistDraft() {
        BaseFragment baseFragment = this.parentAlert.baseFragment;
        if (!(baseFragment instanceof ChatActivity)) {
            return false;
        }
        ChatActivity chatActivity = (ChatActivity) baseFragment;
        if (!this.listView.canUndo()) {
            return false;
        }
        TL_iv.RichMessage richMessageBuildDraftRichMessage = this.listView.buildDraftRichMessage();
        AccountInstance.getInstance(this.currentAccount).getMediaDataController().saveDraft(chatActivity.getDialogId(), chatActivity.getDraftThreadId(), _UrlKt.FRAGMENT_ENCODE_SET, null, null, null, null, 0L, false, false, richMessageBuildDraftRichMessage);
        if (chatActivity.getChatActivityEnterView() == null) {
            return true;
        }
        chatActivity.getChatActivityEnterView().setRichDraftPreview(richMessageBuildDraftRichMessage);
        return true;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onDismissWithTouchOutside() {
        if (checkDiscard()) {
            return super.onDismissWithTouchOutside();
        }
        return false;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onDismiss() {
        RichEditorListView richEditorListView = this.listView;
        if (richEditorListView != null) {
            richEditorListView.clearContent();
        }
        return super.onDismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onBlockButtonClicked(int i, View view) {
        RichTableCell richTableCellFindFocusedTableCell;
        TL_iv.pageTableCell pagetablecellFocusedCellOf;
        final TL_iv.pageBlockMath pageblockmath;
        BlockRow blockRowFindFocusedRow = this.listView.findFocusedRow();
        if (i == 1) {
            showTextTypeMenu(blockRowFindFocusedRow, view);
            return;
        }
        if (i == 2) {
            showListMenu(blockRowFindFocusedRow, view);
            return;
        }
        if (i != 4) {
            if (i != 7) {
                if (i != 9) {
                    return;
                }
                this.listView.insertDetails();
                return;
            } else {
                if (blockRowFindFocusedRow != null) {
                    TL_iv.PageBlock pageBlock = blockRowFindFocusedRow.block;
                    pageblockmath = pageBlock instanceof TL_iv.pageBlockMath ? (TL_iv.pageBlockMath) pageBlock : null;
                }
                showEditLatexSheet(getContext(), (pageblockmath == null || TextUtils.isEmpty(pageblockmath.source)) ? _UrlKt.FRAGMENT_ENCODE_SET : pageblockmath.source, new Utilities.Callback() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda25
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$onBlockButtonClicked$3(pageblockmath, (String) obj);
                    }
                }, this.resourcesProvider);
                return;
            }
        }
        RichEditorListView richEditorListView = this.listView;
        RichTableCell richTableCell = richEditorListView.activeCellSelectionTable;
        if (richTableCell == null && (richTableCellFindFocusedTableCell = richEditorListView.findFocusedTableCell()) != null && richTableCellFindFocusedTableCell.getModel() != null && (pagetablecellFocusedCellOf = this.listView.focusedCellOf(richTableCellFindFocusedTableCell)) != null) {
            this.listView.enterCellSelectionMode(richTableCellFindFocusedTableCell, pagetablecellFocusedCellOf);
            richTableCell = richTableCellFindFocusedTableCell;
        }
        if (richTableCell != null && richTableCell.getModel() != null && richTableCell.hasCellSelection()) {
            this.listView.showTableCellMenu(richTableCell);
        } else {
            this.listView.addBlock(RichTextCell.newEmptyTable(2, 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBlockButtonClicked$3(TL_iv.pageBlockMath pageblockmath, String str) {
        if (pageblockmath != null) {
            pageblockmath.source = str;
            this.listView.adapter.update(false);
        } else {
            TL_iv.pageBlockMath pageblockmath2 = new TL_iv.pageBlockMath();
            pageblockmath2.source = str;
            this.listView.addBlock(pageblockmath2);
        }
    }

    private void showTextTypeMenu(final BlockRow blockRow, View view) {
        ItemOptions itemOptions = this.menu;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
        final ItemOptions itemOptionsDontFocus = ItemOptions.makeOptions((ViewGroup) this, this.resourcesProvider, view, true).dontFocus();
        final ItemOptions itemOptionsMakeSwipeback = itemOptionsDontFocus.makeSwipeback();
        boolean z = (MessagesController.getInstance(this.currentAccount).richEditorAllowed() || UserConfig.getInstance(this.currentAccount).isPremium()) ? false : true;
        itemOptionsMakeSwipeback.add(C2807R.drawable.ic_ab_back, LocaleController.getString(C2807R.string.Back), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                itemOptionsDontFocus.closeSwipeback();
            }
        });
        itemOptionsMakeSwipeback.addGap();
        addHeadingItem(itemOptionsMakeSwipeback, blockRow, new TL_iv.pageBlockHeading1(), C2807R.drawable.iv_h1, LocaleController.getString(C2807R.string.ArticleHeading1), SharedConfig.fontSize + 2, itemOptionsDontFocus);
        addHeadingItem(itemOptionsMakeSwipeback, blockRow, new TL_iv.pageBlockHeading2(), C2807R.drawable.iv_h2, LocaleController.getString(C2807R.string.ArticleHeading2), SharedConfig.fontSize + 1, itemOptionsDontFocus);
        addHeadingItem(itemOptionsMakeSwipeback, blockRow, new TL_iv.pageBlockHeading3(), C2807R.drawable.iv_h3, LocaleController.getString(C2807R.string.ArticleHeading3), SharedConfig.fontSize, itemOptionsDontFocus);
        addHeadingItem(itemOptionsMakeSwipeback, blockRow, new TL_iv.pageBlockHeading4(), C2807R.drawable.iv_h4, LocaleController.getString(C2807R.string.ArticleHeading4), SharedConfig.fontSize - 1, itemOptionsDontFocus);
        addHeadingItem(itemOptionsMakeSwipeback, blockRow, new TL_iv.pageBlockHeading5(), C2807R.drawable.iv_h5, LocaleController.getString(C2807R.string.ArticleHeading5), SharedConfig.fontSize - 2, itemOptionsDontFocus);
        addHeadingItem(itemOptionsMakeSwipeback, blockRow, new TL_iv.pageBlockHeading6(), C2807R.drawable.iv_h6, LocaleController.getString(C2807R.string.ArticleHeading6), SharedConfig.fontSize - 3, itemOptionsDontFocus);
        itemOptionsDontFocus.addChecked(blockRow != null && RichEditorListView.isHeading(blockRow.block), new RichEditor.RequiresPremiumDrawable(getContext(), C2807R.drawable.iv_h1).setPremium(z), LocaleController.getString(C2807R.string.ArticleHeading), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                itemOptionsDontFocus.openSwipeback(itemOptionsMakeSwipeback);
            }
        });
        itemOptionsDontFocus.addChecked(blockRow != null && (blockRow.block instanceof TL_iv.pageBlockParagraph), C2807R.drawable.iv_text, LocaleController.getString(C2807R.string.ArticleText), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showTextTypeMenu$6(blockRow);
            }
        });
        itemOptionsDontFocus.addChecked(blockRow != null && (blockRow.block instanceof TL_iv.pageBlockBlockquote), C2807R.drawable.iv_quote, LocaleController.getString(C2807R.string.ArticleQuote), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showTextTypeMenu$7(blockRow);
            }
        });
        itemOptionsDontFocus.addChecked(blockRow != null && (blockRow.block instanceof TL_iv.pageBlockPullquote), new RichEditor.RequiresPremiumDrawable(getContext(), C2807R.drawable.iv_pullquote).setPremium(z), LocaleController.getString(C2807R.string.ArticlePullquote), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showTextTypeMenu$8(blockRow);
            }
        });
        itemOptionsDontFocus.addChecked(blockRow != null && (blockRow.block instanceof TL_iv.pageBlockPreformatted), C2807R.drawable.iv_code, LocaleController.getString(C2807R.string.ArticleCode), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showTextTypeMenu$9(blockRow);
            }
        });
        itemOptionsDontFocus.addChecked(blockRow != null && (blockRow.block instanceof TL_iv.pageBlockFooter), new RichEditor.RequiresPremiumDrawable(getContext(), C2807R.drawable.iv_footer).setPremium(z), LocaleController.getString(C2807R.string.ArticleFooter), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showTextTypeMenu$10(blockRow);
            }
        });
        this.menu = itemOptionsDontFocus.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTextTypeMenu$6(BlockRow blockRow) {
        this.listView.turnIntoKeepList(blockRow, new TL_iv.pageBlockParagraph());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTextTypeMenu$7(BlockRow blockRow) {
        this.listView.turnInto(blockRow, RichEditorListView.newBlockquote(), 0, 0, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTextTypeMenu$8(BlockRow blockRow) {
        this.listView.turnInto(blockRow, RichEditorListView.newPullquote(), 0, 0, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTextTypeMenu$9(BlockRow blockRow) {
        this.listView.turnIntoKeepList(blockRow, new TL_iv.pageBlockPreformatted());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTextTypeMenu$10(BlockRow blockRow) {
        this.listView.turnIntoKeepList(blockRow, new TL_iv.pageBlockFooter());
    }

    private void addHeadingItem(ItemOptions itemOptions, final BlockRow blockRow, final TL_iv.PageBlock pageBlock, int i, String str, int i2, final ItemOptions itemOptions2) {
        itemOptions.addChecked(blockRow != null && blockRow.block.getClass() == pageBlock.getClass(), i, str, new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addHeadingItem$11(blockRow, pageBlock, itemOptions2);
            }
        });
        itemOptions.getLast().textView.setTypeface(AndroidUtilities.bold());
        itemOptions.getLast().textView.setTextSize(1, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addHeadingItem$11(BlockRow blockRow, TL_iv.PageBlock pageBlock, ItemOptions itemOptions) {
        this.listView.turnIntoKeepList(blockRow, pageBlock);
        itemOptions.dismiss();
    }

    private void showListMenu(final BlockRow blockRow, View view) {
        ItemOptions itemOptions = this.menu;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
        final ItemOptions itemOptionsDontFocus = ItemOptions.makeOptions(this, this.resourcesProvider, view).dontFocus();
        boolean z = false;
        ItemOptions itemOptionsAddChecked = itemOptionsDontFocus.addChecked(blockRow == null || !blockRow.isInList(), C2807R.drawable.field_carret_empty, LocaleController.getString(C2807R.string.ArticleNone), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showListMenu$12(blockRow);
            }
        }).addChecked((blockRow == null || !blockRow.isInList() || blockRow.isChecklist() || blockRow.isOrdered()) ? false : true, C2807R.drawable.iv_list, LocaleController.getString(C2807R.string.ArticleListBulleted), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showListMenu$13(blockRow);
            }
        }).addChecked(blockRow != null && blockRow.isInList() && !blockRow.isChecklist() && blockRow.isOrdered(), C2807R.drawable.iv_ordered_list, LocaleController.getString(C2807R.string.ArticleListNumbered), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showListMenu$14(blockRow);
            }
        }).addChecked(blockRow != null && blockRow.isInList() && blockRow.isChecklist() && !blockRow.isOrdered(), C2807R.drawable.iv_todo, LocaleController.getString(C2807R.string.ArticleListTodo), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showListMenu$15(blockRow);
            }
        });
        if (blockRow != null && (blockRow.block instanceof TL_iv.pageBlockDetails)) {
            z = true;
        }
        int i = C2807R.drawable.iv_details;
        String string = LocaleController.getString(C2807R.string.ArticleToggleBlock);
        RichEditorListView richEditorListView = this.listView;
        Objects.requireNonNull(richEditorListView);
        itemOptionsAddChecked.addChecked(z, i, string, new ChatAttachAlertRichLayout$$ExternalSyntheticLambda30(richEditorListView));
        boolean zCanIndentSelection = this.listView.canIndentSelection();
        boolean zCanOutdentSelection = this.listView.canOutdentSelection();
        if (zCanIndentSelection || zCanOutdentSelection) {
            itemOptionsDontFocus.addGap();
            if (zCanIndentSelection) {
                itemOptionsDontFocus.add(C2807R.drawable.iv_list_tab, LocaleController.getString(C2807R.string.ArticleIndent), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda31
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showListMenu$16(itemOptionsDontFocus);
                    }
                });
            }
            if (zCanOutdentSelection) {
                itemOptionsDontFocus.add(C2807R.drawable.iv_list_untab, LocaleController.getString(C2807R.string.ArticleOutdent), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda32
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showListMenu$17(itemOptionsDontFocus);
                    }
                });
            }
        }
        this.menu = itemOptionsDontFocus.forceTop(true).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showListMenu$12(BlockRow blockRow) {
        this.listView.turnIntoList(blockRow, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showListMenu$13(BlockRow blockRow) {
        this.listView.turnIntoList(blockRow, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showListMenu$14(BlockRow blockRow) {
        this.listView.turnIntoList(blockRow, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showListMenu$15(BlockRow blockRow) {
        this.listView.turnIntoList(blockRow, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showListMenu$16(ItemOptions itemOptions) {
        this.listView.indentSelection(false);
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showListMenu$17(ItemOptions itemOptions) {
        this.listView.indentSelection(true);
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFormattingPanel() {
        if (this.toolbar == null) {
            return;
        }
        boolean z = this.listView.isInSelectionMode() && this.listView.selectionHasInlineFormattable();
        this.toolbar.showFormattingPanel(z, true);
        if (z) {
            updateFormattingButtons();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFormattingButtons() {
        int i;
        TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelper = this.listView.getTextSelectionHelper();
        if (this.toolbar == null || textSelectionHelper == null || !textSelectionHelper.isInSelectionMode()) {
            return;
        }
        this.toolbar.setQuoteState(this.listView.isSelectionQuoted());
        if (this.listView.isTableSelection()) {
            updateFormattingButtonsTable();
            return;
        }
        if (this.listView.isCaptionSelection()) {
            updateFormattingButtonsCaption();
            return;
        }
        int startCell = textSelectionHelper.getStartCell();
        int endCell = textSelectionHelper.getEndCell();
        int startOffset = textSelectionHelper.getStartOffset();
        int endOffset = textSelectionHelper.getEndOffset();
        boolean z = startCell >= 0 && endCell >= 0 && endCell >= startCell && endCell < this.listView.itemRows.size();
        if (z) {
            int i2 = 0;
            for (int i3 : STYLE_FLAGS) {
                if (this.listView.isStyleFullyApplied(i3, startCell, startOffset, endCell, endOffset)) {
                    i2 |= i3;
                }
            }
            i = i2;
        } else {
            i = 0;
        }
        this.toolbar.setFormattingState(i, z && this.listView.isLinkApplied(startCell, startOffset, endCell, endOffset), z && this.listView.isDateApplied(startCell, startOffset, endCell, endOffset), z && startCell == endCell, this.listView.canCreateInlineButtonOnSelection(), !this.listView.isSelectionAllHeadings());
    }

    private void updateFormattingButtonsTable() {
        TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelper = this.listView.getTextSelectionHelper();
        int startCell = textSelectionHelper.getStartCell();
        int startChildPosition = textSelectionHelper.getStartChildPosition();
        int endChildPosition = textSelectionHelper.getEndChildPosition();
        int startOffset = textSelectionHelper.getStartOffset();
        int endOffset = textSelectionHelper.getEndOffset();
        int i = 0;
        for (int i2 : STYLE_FLAGS) {
            if (this.listView.isStyleFullyAppliedTable(i2, startCell, startChildPosition, startOffset, endChildPosition, endOffset)) {
                i |= i2;
            }
        }
        boolean z = startChildPosition == endChildPosition;
        RichEditText richEditTextTableEditText = z ? this.listView.tableEditText(startCell, startChildPosition) : null;
        int iMax = Math.max(0, Math.min(startOffset, endOffset));
        int iMax2 = richEditTextTableEditText == null ? 0 : Math.max(0, Math.min(Math.max(startOffset, endOffset), richEditTextTableEditText.length()));
        this.toolbar.setFormattingState(i, richEditTextTableEditText != null && iMax < iMax2 && RichTextStyle.hasLink(richEditTextTableEditText.getText(), iMax, iMax2), richEditTextTableEditText != null && iMax < iMax2 && RichTextStyle.hasDate(richEditTextTableEditText.getText(), iMax, iMax2), z, this.listView.canCreateInlineButtonOnSelection(), true);
    }

    private void updateFormattingButtonsCaption() {
        int i;
        TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelper = this.listView.getTextSelectionHelper();
        RichEditText richEditTextCaptionEditText = this.listView.captionEditText(textSelectionHelper.getStartCell());
        int startOffset = textSelectionHelper.getStartOffset();
        int endOffset = textSelectionHelper.getEndOffset();
        int iMax = richEditTextCaptionEditText == null ? 0 : Math.max(0, Math.min(Math.min(startOffset, endOffset), richEditTextCaptionEditText.length()));
        int iMax2 = richEditTextCaptionEditText == null ? 0 : Math.max(0, Math.min(Math.max(startOffset, endOffset), richEditTextCaptionEditText.length()));
        if (richEditTextCaptionEditText == null || iMax >= iMax2) {
            i = 0;
        } else {
            int i2 = 0;
            for (int i3 : STYLE_FLAGS) {
                if ((richEditTextCaptionEditText.getCurrentStyle(iMax, iMax2) & i3) != 0) {
                    i2 |= i3;
                }
            }
            i = i2;
        }
        this.toolbar.setFormattingState(i, richEditTextCaptionEditText != null && iMax < iMax2 && RichTextStyle.hasLink(richEditTextCaptionEditText.getText(), iMax, iMax2), richEditTextCaptionEditText != null && iMax < iMax2 && RichTextStyle.hasDate(richEditTextCaptionEditText.getText(), iMax, iMax2), true, this.listView.canCreateInlineButtonOnSelection(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateToolbarBlockType() {
        BlockRow blockRowFindFocusedRow;
        if (this.toolbar == null) {
            return;
        }
        TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelper = this.listView.getTextSelectionHelper();
        if (textSelectionHelper != null && textSelectionHelper.isInSelectionMode()) {
            int startCell = textSelectionHelper.getStartCell();
            blockRowFindFocusedRow = startCell == textSelectionHelper.getEndCell() ? this.listView.rowForCell(startCell) : null;
        } else {
            blockRowFindFocusedRow = this.listView.findFocusedRow();
        }
        int i = 4;
        int i2 = 0;
        if (this.listView.findFocusedTableCell() == null) {
            if (blockRowFindFocusedRow != null) {
                if (blockRowFindFocusedRow.isChecklist() || blockRowFindFocusedRow.isInList() || blockRowFindFocusedRow.isOrdered()) {
                    i = 2;
                } else {
                    TL_iv.PageBlock pageBlock = blockRowFindFocusedRow.block;
                    if (!(pageBlock instanceof TL_iv.pageBlockDetails)) {
                        if (!(pageBlock instanceof TL_iv.pageBlockTable)) {
                            if (pageBlock instanceof TL_iv.pageBlockMath) {
                                i = 7;
                            } else {
                                if (!RichEditorListView.isHeading(pageBlock)) {
                                    TL_iv.PageBlock pageBlock2 = blockRowFindFocusedRow.block;
                                    if (!(pageBlock2 instanceof TL_iv.pageBlockParagraph) && !(pageBlock2 instanceof TL_iv.pageBlockPreformatted) && !(pageBlock2 instanceof TL_iv.pageBlockBlockquote) && !(pageBlock2 instanceof TL_iv.pageBlockPullquote)) {
                                        i = 0;
                                    }
                                }
                                i = 1;
                            }
                        }
                    }
                }
            }
        }
        if (blockRowFindFocusedRow != null) {
            if (i == 1) {
                TL_iv.PageBlock pageBlock3 = blockRowFindFocusedRow.block;
                if (pageBlock3 instanceof TL_iv.pageBlockHeading1) {
                    i2 = C2807R.drawable.iv_h1;
                } else if (pageBlock3 instanceof TL_iv.pageBlockHeading2) {
                    i2 = C2807R.drawable.iv_h2;
                } else if (pageBlock3 instanceof TL_iv.pageBlockHeading3) {
                    i2 = C2807R.drawable.iv_h3;
                } else if (pageBlock3 instanceof TL_iv.pageBlockHeading4) {
                    i2 = C2807R.drawable.iv_h4;
                } else if (pageBlock3 instanceof TL_iv.pageBlockHeading5) {
                    i2 = C2807R.drawable.iv_h5;
                } else if (pageBlock3 instanceof TL_iv.pageBlockHeading6) {
                    i2 = C2807R.drawable.iv_h6;
                } else if (pageBlock3 instanceof TL_iv.pageBlockPreformatted) {
                    i2 = C2807R.drawable.iv_code;
                } else if (pageBlock3 instanceof TL_iv.pageBlockBlockquote) {
                    i2 = C2807R.drawable.iv_quote;
                } else if (pageBlock3 instanceof TL_iv.pageBlockPullquote) {
                    i2 = C2807R.drawable.iv_pullquote;
                } else if (pageBlock3 instanceof TL_iv.pageBlockFooter) {
                    i2 = C2807R.drawable.iv_footer;
                }
            } else if (i == 2) {
                if (blockRowFindFocusedRow.isChecklist()) {
                    i2 = C2807R.drawable.iv_todo;
                } else if (blockRowFindFocusedRow.isOrdered()) {
                    i2 = C2807R.drawable.iv_ordered_list;
                }
            }
        }
        this.toolbar.setSelectedBlockType(i, i2);
    }

    public TextSelectionHelper.ArticleTextSelectionHelper getTextSelectionHelper() {
        return this.listView.getTextSelectionHelper();
    }

    private void updateSendButton(boolean z) {
        updateAttachButtons(z);
    }

    private void updateAttachButtons(boolean z) {
        boolean z2 = this.listView.hasAnyText() || this.emojiViewVisible;
        this.parentAlert.setTypeButtonsHidden(z2, z);
        this.attachRaise = attachRaiseTarget(z2);
        layoutBottomPanels();
        if (this.attachButtonsShown == z2) {
            this.attachButtonsShown = !z2;
            requestLayout();
        }
    }

    private int attachRaiseTarget(boolean z) {
        if (z) {
            return 0;
        }
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert.pinnedToTop) {
            return 0;
        }
        return chatAttachAlert.getTypeButtonsHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAttachRaise() {
        int iAttachRaiseTarget = attachRaiseTarget(this.listView.hasAnyText() || this.emojiViewVisible);
        if (this.attachRaise != iAttachRaiseTarget) {
            this.attachRaise = iAttachRaiseTarget;
            layoutBottomPanels();
        }
    }

    private int bottomNavInset() {
        if (this.keyboardVisible || this.emojiPadding > 0) {
            return 0;
        }
        return AndroidUtilities.navigationBarHeight;
    }

    private int emojiVisibleHeight() {
        return this.emojiSearchOpened ? AndroidUtilities.dp(245.0f) : this.emojiPadding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void layoutBottomPanels() {
        float f;
        int iEmojiVisibleHeight = emojiVisibleHeight();
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            if (this.emojiViewVisible) {
                f = (this.emojiPadding - iEmojiVisibleHeight) + (this.emojiSearchOpened ? -this.parentAlert.currentPanTranslationY : 0.0f);
            } else {
                f = 0.0f;
            }
            emojiView.setTranslationY(f);
        }
        if (this.toolbar != null) {
            float fBottomNavInset = this.emojiViewVisible ? iEmojiVisibleHeight : bottomNavInset();
            if (!this.emojiViewVisible || this.emojiSearchOpened) {
                fBottomNavInset += this.parentAlert.currentPanTranslationY;
            }
            this.toolbar.getBottomContainer().animate().cancel();
            this.toolbar.getBottomContainer().setTranslationY(-fBottomNavInset);
            boolean z = this.emojiViewVisible;
            float f2 = z ? iEmojiVisibleHeight : 0.0f;
            if (!z || this.emojiSearchOpened) {
                f2 += this.parentAlert.currentPanTranslationY;
            }
            this.toolbar.setBottomGradientTranslationY(-f2);
            if (this.lastAttachRise != this.attachRaise) {
                ViewPropertyAnimator viewPropertyAnimatorAnimate = this.toolbar.getBottomInnerContainer().animate();
                this.lastAttachRise = this.attachRaise;
                viewPropertyAnimatorAnimate.translationY(-r1).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            }
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onBackPressed() {
        if (this.emojiSearchOpened) {
            closeEmojiSearch();
            return false;
        }
        if (this.emojiViewVisible) {
            hideEmojiPopup();
            return false;
        }
        if (this.listView.deselectIfAny()) {
            return false;
        }
        if (checkDiscard()) {
            return super.onBackPressed();
        }
        return true;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean shouldHideBottomButtons() {
        return !this.listView.hasAnyText();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return (this.listView.getPaddingTop() - AndroidUtilities.statusBarHeight) - ActionBar.getCurrentActionBarHeight();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        if (this.listView.getChildCount() <= 0) {
            RichEditorListView richEditorListView = this.listView;
            int paddingTop = richEditorListView.getPaddingTop();
            this.currentItemTop = paddingTop;
            richEditorListView.setTopGlowOffset(paddingTop);
            return Integer.MAX_VALUE;
        }
        boolean z = false;
        int top = Integer.MAX_VALUE;
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
            if (childAdapterPosition == 0) {
                z = true;
            }
            if (childAdapterPosition >= 0 && childAt.getTop() < top) {
                top = childAt.getTop();
            }
        }
        if (top == Integer.MAX_VALUE) {
            return Integer.MAX_VALUE;
        }
        this.listView.setTopGlowOffset(Math.max(0, top));
        int i2 = top - AndroidUtilities.statusBarHeight;
        int iDp = AndroidUtilities.dp(7.0f);
        if (i2 < AndroidUtilities.dp(7.0f) || !z) {
            i2 = iDp;
        }
        this.currentItemTop = i2;
        return i2;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.dp(56.0f);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004a  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreMeasure(int i, int i2) {
        int iDp;
        ItemOptions itemOptions;
        boolean z = this.keyboardVisible;
        boolean z2 = this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight() > AndroidUtilities.dp(20.0f);
        this.keyboardVisible = z2;
        if (!z2 && z && (itemOptions = this.menu) != null) {
            itemOptions.dismiss();
            this.menu = null;
        }
        if (this.keyboardVisible || this.emojiPadding > AndroidUtilities.dp(20.0f)) {
            iDp = AndroidUtilities.dp(52.0f);
            this.parentAlert.setAllowNestedScroll(false);
        } else if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            int i3 = point.x > point.y ? (int) (i2 / 3.5f) : (i2 / 5) * 2;
            iDp = i3 - AndroidUtilities.dp(52.0f);
            if (iDp < 0) {
                iDp = 0;
            }
            this.parentAlert.setAllowNestedScroll(true);
        }
        int currentActionBarHeight = iDp + AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight();
        int iBottomNavInset = bottomNavInset() + AndroidUtilities.dp(110.0f) + ((this.listView.hasAnyText() || this.emojiViewVisible) ? 0 : this.parentAlert.getTypeButtonsHeight()) + this.emojiPadding;
        if (this.listView.getPaddingTop() != currentActionBarHeight || this.listView.getPaddingBottom() != iBottomNavInset) {
            this.ignoreLayout = true;
            this.listView.setPaddingWithoutRequestLayout(0, currentActionBarHeight, 0, iBottomNavInset);
            this.ignoreLayout = false;
        }
        updateToolbarTopOffset();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.listView.smoothScrollToPosition(0);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
        invalidate();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPanTransitionStart(boolean z, int i) {
        super.onPanTransitionStart(z, i);
        this.keyboardVisible = z;
        layoutBottomPanels();
        if (z && this.emojiViewVisible && !this.emojiSearchOpened) {
            hideEmojiPopup();
        }
        updateToolbarTopOffset();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onContainerTranslationUpdated(float f) {
        super.onContainerTranslationUpdated(f);
        layoutBottomPanels();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPanTransitionEnd() {
        super.onPanTransitionEnd();
        this.keyboardVisible = this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight() > AndroidUtilities.dp(20.0f);
        layoutBottomPanels();
        updateToolbarTopOffset();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        EmojiView emojiView;
        if (this.listView.textSelectionHelper.isInSelectionMode() && this.listView.textSelectionOverlay.onTouchEvent(motionEvent)) {
            return true;
        }
        int height = (((!this.emojiSearchOpened || (emojiView = this.emojiView) == null) ? getHeight() - this.emojiPadding : (int) emojiView.getY()) - AndroidUtilities.dp(60.0f)) - this.attachRaise;
        if (motionEvent.getAction() == 0 && this.emojiViewVisible && motionEvent.getY() < height) {
            hideEmojiPopup();
        }
        if ((motionEvent.getAction() != 0 || (motionEvent.getY() > AndroidUtilities.dp(60.0f) && motionEvent.getY() < height)) && this.listView.textSelectionOverlay.checkOnTap(motionEvent)) {
            motionEvent.setAction(3);
        }
        if (motionEvent.getY() >= height || !this.listView.handleSelectionTouch(motionEvent)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 47 && keyEvent.isCtrlPressed()) {
            saveDraftWithBulletin();
            return true;
        }
        if (this.listView.handleKeyEvent(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    private void saveDraftWithBulletin() {
        if ((this.parentAlert.baseFragment instanceof ChatActivity) && this.listView.canUndo() && persistDraft()) {
            BulletinFactory.of(this.toolbar, this.resourcesProvider).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.getString(C2807R.string.RichEditorDraftSaved)).show();
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        this.parentAlert.actionBar.setTitle(_UrlKt.FRAGMENT_ENCODE_SET);
        this.listView.adapter.update(false);
        updateAttachButtons(false);
        post(new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updateToolbarTopOffset();
            }
        });
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        RichCommandSuggestions richCommandSuggestions = this.commandSuggestions;
        if (richCommandSuggestions != null) {
            richCommandSuggestions.hide();
        }
        if (this.emojiViewVisible) {
            hideEmojiPopup();
        }
        if (this.sendButtonShown) {
            this.sendButtonShown = false;
            this.parentAlert.showSendButtonOnly(false, true);
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean sendSelectedItems(boolean z, int i, int i2, long j, boolean z2) {
        long sendMonoForumPeerId;
        MessageObject messageObject;
        MessageObject messageObject2;
        SendMessageChatArguments messageChatSendParams;
        ChatActivityEnterView chatActivityEnterView;
        if (isSendLocked()) {
            showConversionSheet();
            return false;
        }
        if (!this.listView.hasAnyText() || this.listView.hasPendingUploads()) {
            return false;
        }
        if (!this.listView.isWithinLimits()) {
            updateSendButtonEnabled();
            return false;
        }
        if (!MessagesController.getInstance(this.currentAccount).richEditorAllowed()) {
            BaseFragment baseFragment = this.parentAlert.baseFragment;
            if (!(baseFragment instanceof ChatActivity) || (chatActivityEnterView = ((ChatActivity) baseFragment).getChatActivityEnterView()) == null) {
                return false;
            }
            chatActivityEnterView.sendConvertedRichAsSimple(this.listView.toSimpleMessage(), z, i, i2);
            this.parentAlert.dismiss(true);
            return true;
        }
        ArrayList<TL_iv.PageBlock> arrayListFlattenRowsToBlocks = this.listView.flattenRowsToBlocks();
        if (arrayListFlattenRowsToBlocks.isEmpty()) {
            return false;
        }
        ArrayList<TLRPC.Photo> arrayListCollectPhotos = this.listView.collectPhotos();
        ArrayList<TLRPC.Document> arrayListCollectDocuments = this.listView.collectDocuments();
        ArrayList<TLRPC.InputUser> arrayListCollect = RichMessageButtonUsers.collect(this.currentAccount, arrayListFlattenRowsToBlocks);
        BaseFragment baseFragment2 = this.parentAlert.baseFragment;
        if (baseFragment2 instanceof ChatActivity) {
            ChatActivity chatActivity = (ChatActivity) baseFragment2;
            MessageObject replyMessage = chatActivity.getReplyMessage();
            MessageObject threadMessage = chatActivity.getThreadMessage();
            sendMonoForumPeerId = chatActivity.getSendMonoForumPeerId();
            messageChatSendParams = chatActivity.getMessageChatSendParams();
            messageObject = replyMessage;
            messageObject2 = threadMessage;
        } else {
            sendMonoForumPeerId = 0;
            messageObject = null;
            messageObject2 = null;
            messageChatSendParams = null;
        }
        SendMessagesHelper.prepareSendingArticle(AccountInstance.getInstance(this.parentAlert.currentAccount), arrayListFlattenRowsToBlocks, arrayListCollectPhotos, arrayListCollectDocuments, arrayListCollect, false, this.parentAlert.getDialogId(), messageObject, messageObject2, z, i, i2, messageChatSendParams, j, sendMonoForumPeerId, 0L);
        this.parentAlert.dismiss(true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showSendPreview(View view) {
        if (!UserConfig.getInstance(this.currentAccount).isPremium()) {
            new PremiumFeatureBottomSheet(this.parentAlert.baseFragment, getContext(), this.currentAccount, 43, true).show();
            return true;
        }
        boolean z = false;
        if (!this.listView.hasAnyText() || this.listView.hasPendingUploads()) {
            return false;
        }
        if (!this.listView.isWithinLimits()) {
            updateSendButtonEnabled();
            return false;
        }
        ArrayList<TL_iv.PageBlock> arrayListFlattenRowsToBlocks = this.listView.flattenRowsToBlocks();
        if (arrayListFlattenRowsToBlocks.isEmpty()) {
            return false;
        }
        BaseFragment baseFragment = this.parentAlert.baseFragment;
        ChatActivity chatActivity = baseFragment instanceof ChatActivity ? (ChatActivity) baseFragment : null;
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(false);
            this.messageSendPreview = null;
        }
        MessageSendPreview messageSendPreview2 = new MessageSendPreview(getContext(), this.resourcesProvider);
        this.messageSendPreview = messageSendPreview2;
        messageSendPreview2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$showSendPreview$18(dialogInterface);
            }
        });
        final long dialogId = this.parentAlert.getDialogId();
        MessageObject replyMessage = chatActivity != null ? chatActivity.getReplyMessage() : null;
        TLRPC.TL_message tL_message = new TLRPC.TL_message();
        tL_message.id = 0;
        tL_message.out = true;
        tL_message.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(dialogId);
        tL_message.from_id = MessagesController.getInstance(this.currentAccount).getPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
        tL_message.flags2 |= 8192;
        TL_iv.RichMessage richMessage = new TL_iv.RichMessage();
        tL_message.rich_message = richMessage;
        richMessage.blocks = arrayListFlattenRowsToBlocks;
        richMessage.photos = this.listView.collectPhotos();
        tL_message.rich_message.documents = this.listView.collectDocuments();
        if (replyMessage != null && !replyMessage.isTopicMainMessage) {
            TLRPC.TL_messageReplyHeader tL_messageReplyHeader = new TLRPC.TL_messageReplyHeader();
            tL_messageReplyHeader.flags |= 16;
            tL_messageReplyHeader.reply_to_msg_id = replyMessage.getId();
            tL_message.reply_to = tL_messageReplyHeader;
        }
        MessageObject messageObject = new MessageObject(this.currentAccount, tL_message, false, false);
        if (replyMessage != null && !replyMessage.isTopicMainMessage) {
            messageObject.replyMessageObject = replyMessage;
        }
        messageObject.sendPreview = true;
        messageObject.isOutOwnerCached = Boolean.TRUE;
        messageObject.generateLayout(null);
        messageObject.notime = true;
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        this.messageSendPreview.setMessageObjects(arrayList);
        ChatActivityEnterView.SendButton sendButton = this.toolbar.getSendButton();
        sendButton.setScaleX(1.0f);
        sendButton.setScaleY(1.0f);
        ChatActivityEnterView.SendButton sendButton2 = this.messageSendPreview.setSendButton(sendButton, true, new View.OnClickListener() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$showSendPreview$19(view2);
            }
        });
        if (sendButton2 != null) {
            sendButton2.setBackground(RichEditor.withShadow(Theme.createRoundRectDrawable(AndroidUtilities.dp(22.0f), getThemedColor(Theme.key_featuredStickers_addButton))));
            this.messageSendPreview.setSendButtonWidth(AndroidUtilities.dp(44.0f));
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, this.resourcesProvider, sendButton);
        if (chatActivity != null && UserObject.isUserSelf(chatActivity.getCurrentUser())) {
            z = true;
        }
        if (chatActivity != null && chatActivity.canScheduleMessage()) {
            itemOptionsMakeOptions.add(C2807R.drawable.msg_calendar2, LocaleController.getString(z ? C2807R.string.SetReminder : C2807R.string.ScheduleMessage), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showSendPreview$20(dialogId);
                }
            });
            if (!z && dialogId > 0) {
                itemOptionsMakeOptions.add(C2807R.drawable.msg_online, LocaleController.getString(C2807R.string.SendWhenOnline), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda22
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showSendPreview$21();
                    }
                });
            }
        }
        if (!z) {
            itemOptionsMakeOptions.add(C2807R.drawable.input_notify_off, LocaleController.getString(C2807R.string.SendWithoutSound), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showSendPreview$22();
                }
            });
        }
        itemOptionsMakeOptions.setupSelectors();
        this.messageSendPreview.setItemOptions(itemOptionsMakeOptions);
        this.messageSendPreview.show();
        try {
            view.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSendPreview$18(DialogInterface dialogInterface) {
        this.messageSendPreview = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSendPreview$19(View view) {
        sendSelectedItems(true, 0, 0, 0L, false);
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(true);
            this.messageSendPreview = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSendPreview$20(long j) {
        AlertsCreator.createScheduleDatePickerDialog(this.parentAlert.baseFragment.getParentActivity(), j, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout.3
            @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public void didSelectDate(boolean z, int i, int i2) {
                ChatAttachAlertRichLayout.this.sendSelectedItems(z, i, i2, 0L, false);
                if (ChatAttachAlertRichLayout.this.messageSendPreview != null) {
                    ChatAttachAlertRichLayout.this.messageSendPreview.dismissInstant();
                    ChatAttachAlertRichLayout.this.messageSendPreview = null;
                }
            }
        }, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSendPreview$21() {
        sendSelectedItems(true, 2147483646, 0, 0L, false);
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(false);
            this.messageSendPreview = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSendPreview$22() {
        sendSelectedItems(false, 0, 0, 0L, false);
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(true);
            this.messageSendPreview = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLocationPicker(final BlockRow blockRow) {
        BaseFragment baseFragment = this.parentAlert.baseFragment;
        if (baseFragment != null && blockRow != null && (blockRow.block instanceof TL_iv.pageBlockMap) && AndroidUtilities.isMapsInstalled(baseFragment)) {
            final ChatAttachAlert chatAttachAlert = new ChatAttachAlert(getContext(), this.parentAlert.baseFragment, false, false, false, null);
            chatAttachAlert.setDelegate(new ChatAttachAlert.ChatAttachViewDelegate() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout.4
                @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public void didPressedButton(int i, boolean z, boolean z2, int i2, int i3, long j, boolean z3, boolean z4, long j2) {
                }
            });
            chatAttachAlert.setLocationPicker();
            chatAttachAlert.setLocationActivityDelegate(new ChatAttachAlertLocationLayout.LocationActivityDelegate() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda18
                @Override // org.telegram.ui.Components.ChatAttachAlertLocationLayout.LocationActivityDelegate
                public final void didSelectLocation(TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
                    this.f$0.lambda$openLocationPicker$24(blockRow, chatAttachAlert, messageMedia, i, z, i2, j);
                }
            });
            chatAttachAlert.init();
            chatAttachAlert.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openLocationPicker$24(final BlockRow blockRow, ChatAttachAlert chatAttachAlert, TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
        if (messageMedia == null || messageMedia.geo == null) {
            return;
        }
        RichEditorHistory richEditorHistory = this.listView.history;
        if (richEditorHistory != null) {
            richEditorHistory.flush();
        }
        TL_iv.pageBlockMap pageblockmap = (TL_iv.pageBlockMap) blockRow.block;
        pageblockmap.geo = messageMedia.geo;
        pageblockmap.zoom = 15;
        if (pageblockmap.f1051w <= 0 || pageblockmap.f1050h <= 0) {
            pageblockmap.f1051w = MediaError.DetailedErrorCode.TEXT_UNKNOWN;
            pageblockmap.f1050h = MediaError.DetailedErrorCode.MANIFEST_UNKNOWN;
        }
        RichEditorHistory richEditorHistory2 = this.listView.history;
        if (richEditorHistory2 != null) {
            richEditorHistory2.record();
        }
        updateSendButton(true);
        chatAttachAlert.dismiss(true);
        this.listView.post(new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openLocationPicker$23(blockRow);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openLocationPicker$23(BlockRow blockRow) {
        View viewFindViewByItemObject = this.listView.findViewByItemObject(blockRow);
        boolean z = viewFindViewByItemObject instanceof RichMapCell;
        RichEditorListView richEditorListView = this.listView;
        if (z) {
            ((RichMapCell) viewFindViewByItemObject).bind(blockRow, richEditorListView.getMapDelegate());
        } else {
            richEditorListView.adapter.update(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAttach(int i, int i2) {
        if (this.parentAlert.baseFragment == null) {
            return;
        }
        final ChatAttachAlert chatAttachAlert = new ChatAttachAlert(getContext(), this.parentAlert.baseFragment, false, false, true, this.resourcesProvider);
        chatAttachAlert.setDelegate(new ChatAttachAlert.ChatAttachViewDelegate() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout.5
            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public void didSelectBot(TLRPC.User user) {
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public boolean needEnterComment() {
                return false;
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public void onCameraOpened() {
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public void didPressedButton(int i3, boolean z, boolean z2, int i4, int i5, long j, boolean z3, boolean z4, long j2) {
                if (i3 == 7 || i3 == 8) {
                    HashMap<Object, Object> selectedPhotos = chatAttachAlert.getPhotoLayout().getSelectedPhotos();
                    ArrayList<Object> selectedPhotosOrder = chatAttachAlert.getPhotoLayout().getSelectedPhotosOrder();
                    BlockRow blockRow = ChatAttachAlertRichLayout.this.listView.pendingMediaRow;
                    ChatAttachAlertRichLayout.this.listView.pendingMediaRow = null;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= selectedPhotosOrder.size()) {
                            break;
                        }
                        Object obj = selectedPhotos.get(selectedPhotosOrder.get(i6));
                        if (obj instanceof MediaController.PhotoEntry) {
                            ChatAttachAlertRichLayout chatAttachAlertRichLayout = ChatAttachAlertRichLayout.this;
                            if (blockRow != null) {
                                chatAttachAlertRichLayout.listView.addMediaToRow(blockRow, (MediaController.PhotoEntry) obj);
                            } else {
                                chatAttachAlertRichLayout.listView.attachMedia((MediaController.PhotoEntry) obj);
                            }
                        } else {
                            i6++;
                        }
                    }
                }
                ChatAttachAlertRichLayout.this.listView.pendingMediaRow = null;
                chatAttachAlert.dismiss(true);
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public void doOnIdle(Runnable runnable) {
                NotificationCenter.getInstance(ChatAttachAlertRichLayout.this.currentAccount).doOnIdle(runnable);
            }
        });
        chatAttachAlert.getPhotoLayout().loadGalleryPhotos();
        chatAttachAlert.setMaxSelectedPhotos(1, true);
        chatAttachAlert.enablePollAttachMode(i);
        chatAttachAlert.setLocationActivityDelegate(new ChatAttachAlertLocationLayout.LocationActivityDelegate() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda16
            @Override // org.telegram.ui.Components.ChatAttachAlertLocationLayout.LocationActivityDelegate
            public final void didSelectLocation(TLRPC.MessageMedia messageMedia, int i3, boolean z, int i4, long j) {
                this.f$0.lambda$openAttach$25(chatAttachAlert, messageMedia, i3, z, i4, j);
            }
        });
        chatAttachAlert.setAudioSelectDelegate(new ChatAttachAlertAudioLayout.AudioSelectDelegate() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda17
            @Override // org.telegram.ui.Components.ChatAttachAlertAudioLayout.AudioSelectDelegate
            public final void didSelectAudio(ArrayList arrayList, CharSequence charSequence, boolean z, int i3, int i4, long j, boolean z2, long j2) {
                this.f$0.lambda$openAttach$26(chatAttachAlert, arrayList, charSequence, z, i3, i4, j, z2, j2);
            }
        });
        chatAttachAlert.setDocumentsDelegate(new ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout.6
            @Override // org.telegram.ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
            public void didSelectFiles(ArrayList<String> arrayList, String str, ArrayList<TLRPC.MessageEntity> arrayList2, ArrayList<MessageObject> arrayList3, boolean z, int i3, int i4, long j, boolean z2, long j2) {
                if (arrayList != null && !arrayList.isEmpty()) {
                    ChatAttachAlertRichLayout.this.listView.lambda$attachDocument$42(arrayList.get(0));
                } else if (arrayList3 != null && !arrayList3.isEmpty()) {
                    ChatAttachAlertRichLayout.this.listView.attachDocument(arrayList3.get(0));
                }
                chatAttachAlert.dismiss(true);
            }

            @Override // org.telegram.ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
            public void startDocumentSelectActivity() {
                try {
                    Intent intent = new Intent("android.intent.action.GET_CONTENT");
                    intent.setType("*/*");
                    ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertRichLayout.this).parentAlert.baseFragment.startActivityForResult(intent, 21);
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            }
        });
        chatAttachAlert.init();
        if (i2 != 0) {
            chatAttachAlert.openAttachLayoutForType(i2);
        }
        chatAttachAlert.setFocusable(true);
        chatAttachAlert.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAttach$25(ChatAttachAlert chatAttachAlert, TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
        if (messageMedia == null || messageMedia.geo == null) {
            chatAttachAlert.dismiss(true);
            return;
        }
        TL_iv.pageBlockMap pageblockmap = new TL_iv.pageBlockMap();
        pageblockmap.geo = messageMedia.geo;
        pageblockmap.zoom = 15;
        pageblockmap.f1051w = MediaError.DetailedErrorCode.TEXT_UNKNOWN;
        pageblockmap.f1050h = MediaError.DetailedErrorCode.MANIFEST_UNKNOWN;
        this.listView.addBlock(pageblockmap);
        updateSendButton(true);
        chatAttachAlert.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAttach$26(ChatAttachAlert chatAttachAlert, ArrayList arrayList, CharSequence charSequence, boolean z, int i, int i2, long j, boolean z2, long j2) {
        if (arrayList != null && !arrayList.isEmpty()) {
            this.listView.attachAudio((MessageObject) arrayList.get(0));
        }
        chatAttachAlert.dismiss(true);
    }

    public void onExternalMediaPicked(Intent intent) {
        if (intent == null || intent.getData() == null) {
            return;
        }
        this.listView.attachExternalMedia(intent.getData());
    }

    public void onExternalDocumentPicked(Intent intent) {
        if (intent == null || intent.getData() == null) {
            return;
        }
        this.listView.attachDocument(intent.getData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSendButtonLoading() {
        RichEditorToolbar richEditorToolbar = this.toolbar;
        if (richEditorToolbar != null) {
            richEditorToolbar.setSendLoading(this.listView.hasPendingUploads());
        }
        updateSendButton(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleLimitCheck() {
        AndroidUtilities.cancelRunOnUIThread(this.limitCheckRunnable);
        AndroidUtilities.runOnUIThread(this.limitCheckRunnable, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSendButtonEnabled() {
        RichEditorToolbar richEditorToolbar = this.toolbar;
        if (richEditorToolbar != null) {
            richEditorToolbar.setSendEnabled(this.listView.isWithinLimits());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSendButtonLocked() {
        if (this.toolbar != null) {
            boolean z = false;
            boolean z2 = (MessagesController.getInstance(this.currentAccount).richEditorAllowed() || UserConfig.getInstance(this.currentAccount).isPremium()) ? false : true;
            ChatActivityEnterView.SendButton sendButton = this.toolbar.getSendButton();
            if (z2 && this.listView.isLossy()) {
                z = true;
            }
            sendButton.setLocked(z);
            this.toolbar.setPremiumLocked(z2);
        }
    }

    private boolean isSendLocked() {
        return (MessagesController.getInstance(this.currentAccount).richEditorAllowed() || UserConfig.getInstance(this.currentAccount).isPremium() || !this.listView.isLossy()) ? false : true;
    }

    private void showConversionSheet() {
        Context context = getContext();
        RichEditorListView richEditorListView = this.listView;
        Objects.requireNonNull(richEditorListView);
        RichEditor.openConversionSheet(context, new ChatAttachAlertRichLayout$$ExternalSyntheticLambda6(richEditorListView), new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showConversionSheet$27();
            }
        }, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showConversionSheet$27() {
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            return;
        }
        new PremiumFeatureBottomSheet(this.parentAlert.baseFragment, getContext(), this.currentAccount, 43, true).show();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        updateSendButtonLocked();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.currentUserPremiumStatusChanged) {
            updateSendButtonLocked();
        }
    }

    private int getEmojiPanelHeight() {
        int iMeasureKeyboardHeight = this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight();
        if (iMeasureKeyboardHeight <= 0) {
            SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
            Point point = AndroidUtilities.displaySize;
            iMeasureKeyboardHeight = globalEmojiSettings.getInt(point.x > point.y ? "kbd_height_land3" : "kbd_height", AndroidUtilities.dp(200.0f));
        }
        if (iMeasureKeyboardHeight <= 0) {
            iMeasureKeyboardHeight = AndroidUtilities.dp(200.0f);
        }
        return iMeasureKeyboardHeight + AndroidUtilities.navigationBarHeight;
    }

    private void createEmojiView() {
        if (this.emojiView != null) {
            return;
        }
        BaseFragment baseFragment = this.parentAlert.baseFragment;
        final ChatActivity chatActivity = baseFragment instanceof ChatActivity ? (ChatActivity) baseFragment : null;
        TLRPC.ChatFull currentChatInfo = chatActivity != null ? chatActivity.getCurrentChatInfo() : null;
        boolean zCanUseLocalPremiumEmojis = LocaleUtils.canUseLocalPremiumEmojis(this.currentAccount);
        EmojiView emojiView = new EmojiView(this.parentAlert.baseFragment, true, false, false, getContext(), true, currentChatInfo, this.parentAlert.sizeNotifierFrameLayout, true, this.resourcesProvider, false, false, zCanUseLocalPremiumEmojis);
        this.emojiView = emojiView;
        emojiView.allowEmojisForNonPremium(zCanUseLocalPremiumEmojis, false);
        this.emojiView.setVisibility(8);
        EmojiView emojiView2 = this.emojiView;
        emojiView2.fixBottomTabContainerTranslation = false;
        emojiView2.setBottomInset(AndroidUtilities.navigationBarHeight);
        this.emojiView.hideBottomTabContainerBackground();
        this.emojiView.setDelegate(new EmojiView.EmojiViewDelegate() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout.7
            @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
            public boolean isUserSelf() {
                ChatActivity chatActivity2 = chatActivity;
                return chatActivity2 != null && UserObject.isUserSelf(chatActivity2.getCurrentUser());
            }

            @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
            public void onSearchOpenClose(int i) {
                RichEditText focusedEditTextOrNull;
                if (i != 0 && (focusedEditTextOrNull = ChatAttachAlertRichLayout.this.listView.getFocusedEditTextOrNull()) != null) {
                    ChatAttachAlertRichLayout.this.emojiTargetEditText = focusedEditTextOrNull;
                    ChatAttachAlertRichLayout.this.emojiTargetSelection = Math.max(0, focusedEditTextOrNull.getSelectionEnd());
                }
                ChatAttachAlertRichLayout.this.emojiSearchOpened = i != 0;
                ChatAttachAlertRichLayout.this.layoutBottomPanels();
            }

            @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
            public boolean isSearchOpened() {
                return ChatAttachAlertRichLayout.this.emojiSearchOpened;
            }

            @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
            public boolean onBackspace() {
                RichEditText richEditTextResolveEmojiTarget = ChatAttachAlertRichLayout.this.resolveEmojiTarget();
                if (richEditTextResolveEmojiTarget == null || richEditTextResolveEmojiTarget.length() == 0) {
                    return false;
                }
                richEditTextResolveEmojiTarget.dispatchKeyEvent(new KeyEvent(0, 67));
                return true;
            }

            @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
            public void onEmojiSelected(String str) {
                RichEditText richEditTextResolveEmojiTarget = ChatAttachAlertRichLayout.this.resolveEmojiTarget();
                if (richEditTextResolveEmojiTarget == null) {
                    return;
                }
                int iResolveEmojiTargetOffset = ChatAttachAlertRichLayout.this.resolveEmojiTargetOffset(richEditTextResolveEmojiTarget);
                try {
                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji((CharSequence) str, richEditTextResolveEmojiTarget.getPaint().getFontMetricsInt(), false, (int[]) null);
                    richEditTextResolveEmojiTarget.setText(richEditTextResolveEmojiTarget.getText().insert(iResolveEmojiTargetOffset, charSequenceReplaceEmoji));
                    int length = iResolveEmojiTargetOffset + charSequenceReplaceEmoji.length();
                    richEditTextResolveEmojiTarget.setSelection(length, length);
                    if (richEditTextResolveEmojiTarget == ChatAttachAlertRichLayout.this.emojiTargetEditText) {
                        ChatAttachAlertRichLayout.this.emojiTargetSelection = length;
                    }
                } catch (Exception unused) {
                }
            }

            @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
            public void onCustomEmojiSelected(long j, TLRPC.Document document, String str, boolean z) {
                AnimatedEmojiSpan animatedEmojiSpan;
                RichEditText richEditTextResolveEmojiTarget = ChatAttachAlertRichLayout.this.resolveEmojiTarget();
                if (richEditTextResolveEmojiTarget == null) {
                    return;
                }
                int iResolveEmojiTargetOffset = ChatAttachAlertRichLayout.this.resolveEmojiTargetOffset(richEditTextResolveEmojiTarget);
                try {
                    if (str == null) {
                        str = "😀";
                    }
                    SpannableString spannableString = new SpannableString(str);
                    if (document != null) {
                        animatedEmojiSpan = new AnimatedEmojiSpan(document, richEditTextResolveEmojiTarget.getPaint().getFontMetricsInt());
                    } else {
                        animatedEmojiSpan = new AnimatedEmojiSpan(j, richEditTextResolveEmojiTarget.getPaint().getFontMetricsInt());
                    }
                    animatedEmojiSpan.cacheType = AnimatedEmojiDrawable.getCacheTypeForEnterView();
                    spannableString.setSpan(animatedEmojiSpan, 0, spannableString.length(), 33);
                    richEditTextResolveEmojiTarget.setText(richEditTextResolveEmojiTarget.getText().insert(iResolveEmojiTargetOffset, spannableString));
                    int length = iResolveEmojiTargetOffset + spannableString.length();
                    richEditTextResolveEmojiTarget.setSelection(length, length);
                    if (richEditTextResolveEmojiTarget == ChatAttachAlertRichLayout.this.emojiTargetEditText) {
                        ChatAttachAlertRichLayout.this.emojiTargetSelection = length;
                    }
                } catch (Exception unused) {
                }
            }
        });
        addView(this.emojiView, LayoutHelper.createFrame(-1, getEmojiPanelHeight(), 87));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RichEditText resolveEmojiTarget() {
        RichEditText focusedEditTextOrNull = this.listView.getFocusedEditTextOrNull();
        if (focusedEditTextOrNull != null) {
            this.emojiTargetEditText = focusedEditTextOrNull;
            this.emojiTargetSelection = Math.max(0, focusedEditTextOrNull.getSelectionEnd());
            return focusedEditTextOrNull;
        }
        RichEditText richEditText = this.emojiTargetEditText;
        return richEditText != null ? richEditText : this.listView.findFocusedEditText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int resolveEmojiTargetOffset(RichEditText richEditText) {
        if (richEditText == this.emojiTargetEditText && this.listView.getFocusedEditTextOrNull() != richEditText) {
            return Math.min(this.emojiTargetSelection, richEditText.length());
        }
        return Math.max(0, richEditText.getSelectionEnd());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleEmojiPopup() {
        if (this.emojiViewVisible) {
            RichEditText richEditTextFindFocusedEditText = this.listView.findFocusedEditText();
            if (richEditTextFindFocusedEditText != null) {
                richEditTextFindFocusedEditText.requestEditFocus();
                AndroidUtilities.showKeyboard(richEditTextFindFocusedEditText);
            }
            hideEmojiPopup(true);
            return;
        }
        showEmojiPopup();
    }

    private void showEmojiPopup() {
        createEmojiView();
        int emojiPanelHeight = getEmojiPanelHeight();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.emojiView.getLayoutParams();
        layoutParams.height = emojiPanelHeight;
        this.emojiView.setLayoutParams(layoutParams);
        this.emojiView.setTranslationY(0.0f);
        this.emojiView.setVisibility(0);
        this.emojiViewVisible = true;
        this.emojiPadding = emojiPanelHeight;
        RichEditText richEditTextFindFocusedEditText = this.listView.findFocusedEditText();
        if (richEditTextFindFocusedEditText != null) {
            AndroidUtilities.hideKeyboard(richEditTextFindFocusedEditText);
        }
        RichEditorToolbar richEditorToolbar = this.toolbar;
        if (richEditorToolbar != null) {
            richEditorToolbar.setEmojiOpened(true);
        }
        updateAttachButtons(false);
        requestLayout();
    }

    private void hideEmojiPopup() {
        hideEmojiPopup(false);
    }

    private void hideEmojiPopup(boolean z) {
        if (this.emojiSearchOpened) {
            this.emojiSearchOpened = false;
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                emojiView.closeSearch(false);
                if (!z) {
                    this.emojiView.hideSearchKeyboard();
                }
            }
        }
        this.emojiTargetEditText = null;
        EmojiView emojiView2 = this.emojiView;
        if (emojiView2 != null) {
            emojiView2.setTranslationY(0.0f);
            this.emojiView.setVisibility(8);
        }
        this.emojiViewVisible = false;
        this.emojiPadding = 0;
        RichEditorToolbar richEditorToolbar = this.toolbar;
        if (richEditorToolbar != null) {
            richEditorToolbar.setEmojiOpened(false);
        }
        updateAttachButtons(false);
        requestLayout();
    }

    private void closeEmojiSearch() {
        if (this.emojiSearchOpened) {
            this.emojiSearchOpened = false;
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                emojiView.closeSearch(false);
                this.emojiView.hideSearchKeyboard();
            }
            layoutBottomPanels();
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismissInstant();
            this.messageSendPreview = null;
        }
        RichCommandSuggestions richCommandSuggestions = this.commandSuggestions;
        if (richCommandSuggestions != null) {
            richCommandSuggestions.hide();
        }
        RichEditorListView richEditorListView = this.listView;
        if (richEditorListView != null) {
            richEditorListView.clearContent();
        }
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.onDestroy();
        }
    }

    public static void showEditLatexSheet(Context context, final String str, final Utilities.Callback<String> callback, final Theme.ResourcesProvider resourcesProvider) {
        BottomSheet.Builder builder = new BottomSheet.Builder(context, true, resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        final String[] strArr = {str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str};
        final ImageView imageView = new ImageView(context);
        imageView.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f));
        imageView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(8.0f), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider), 0.05f)));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(imageView, new FrameLayout.LayoutParams(-2, -2, 17));
        final HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
        horizontalScrollView.setHorizontalScrollBarEnabled(false);
        horizontalScrollView.setClipToPadding(false);
        horizontalScrollView.setFillViewport(true);
        horizontalScrollView.setVisibility(8);
        horizontalScrollView.addView(frameLayout, new FrameLayout.LayoutParams(-2, -2));
        linearLayout.addView(horizontalScrollView, LayoutHelper.createLinear(-1, -2, 49, 12, 2, 12, 0));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        final boolean[] zArr = {false};
        final boolean[] zArr2 = {false};
        final int[] iArr = {6};
        final Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatAttachAlertRichLayout.$r8$lambda$kPAmXiVcrSNtjVaVKtMxol4y1bw(strArr, callback2);
                    }
                });
            }
        };
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ChatAttachAlertRichLayout.$r8$lambda$_w4zLTN74NScBlbNrdSdUEOSZCE(strArr, horizontalScrollView, round, zArr2, callback2, imageView, resourcesProvider, iArr);
            }
        };
        final EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2807R.string.ArticleLatexEquation), true, false, -1, resourcesProvider);
        editTextCell.editText.setImeOptions(6);
        editTextCell.editText.setMaxLines(5);
        editTextCell.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(24.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
        editTextCell.setText(strArr[0]);
        editTextCell.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout.8
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                strArr[0] = editable.toString();
                runnable.run();
            }
        });
        linearLayout.addView(editTextCell, LayoutHelper.createLinear(-1, -2, 55, 12, 8, 12, 0));
        round.setText(LocaleController.getString(C2807R.string.Done));
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 55, 12, 12, 12, 12));
        runnable.run();
        builder.setCustomView(linearLayout);
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ChatAttachAlertRichLayout.$r8$lambda$T_iX90XDQb6L6BZzm8gNZjs1QW0(editTextCell, zArr, zArr2, str, strArr, callback, dialogInterface);
            }
        });
        final BottomSheet bottomSheetShow = builder.show();
        int i = Theme.key_windowBackgroundGray;
        bottomSheetShow.setBackgroundColor(Theme.getColor(i, resourcesProvider));
        bottomSheetShow.fixNavigationBar(Theme.getColor(i, resourcesProvider));
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatAttachAlertRichLayout.m23944$r8$lambda$Zjled5bofGN3SKK241Q7f6xf4U(round, zArr, callback, strArr, bottomSheetShow, view);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ChatAttachAlertRichLayout.m23942$r8$lambda$XmCv70BUTvSf0IPHKEfsKbsWTE(editTextCell);
            }
        }, 200L);
    }

    public static /* synthetic */ void $r8$lambda$kPAmXiVcrSNtjVaVKtMxol4y1bw(String[] strArr, final Utilities.Callback2 callback2) {
        final boolean z = false;
        Latex latexRender = Latex.render(strArr[0], AndroidUtilities.dp(26.0f), false);
        if (latexRender == null) {
            latexRender = Latex.render(LocaleController.getString(C2807R.string.ArticleLatexError), AndroidUtilities.dp(26.0f), false);
            z = true;
        }
        final Bitmap bitmap = latexRender != null ? latexRender.bitmap : null;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                callback2.run(bitmap, Boolean.valueOf(z));
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$_w4zLTN74NScBlbNrdSdUEOSZCE(final String[] strArr, final HorizontalScrollView horizontalScrollView, final ButtonWithCounterView buttonWithCounterView, final boolean[] zArr, Utilities.Callback2 callback2, final ImageView imageView, final Theme.ResourcesProvider resourcesProvider, final int[] iArr) {
        if (TextUtils.isEmpty(strArr[0].trim())) {
            horizontalScrollView.setVisibility(8);
            buttonWithCounterView.setEnabled(false);
        } else {
            final boolean z = zArr[0];
            final String str = strArr[0];
            callback2.run(str, new Utilities.Callback2() { // from class: org.telegram.ui.iv.ChatAttachAlertRichLayout$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    ChatAttachAlertRichLayout.m23950$r8$lambda$zp9lBohig9Yn8FGLzmyhbJ2dBw(str, strArr, imageView, resourcesProvider, z, iArr, buttonWithCounterView, horizontalScrollView, zArr, (Bitmap) obj, (Boolean) obj2);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$zp9lBohig9Yn8FGLzmyhbJ2dB-w, reason: not valid java name */
    public static /* synthetic */ void m23950$r8$lambda$zp9lBohig9Yn8FGLzmyhbJ2dBw(String str, String[] strArr, ImageView imageView, Theme.ResourcesProvider resourcesProvider, boolean z, int[] iArr, ButtonWithCounterView buttonWithCounterView, HorizontalScrollView horizontalScrollView, boolean[] zArr, Bitmap bitmap, Boolean bool) {
        if (TextUtils.equals(str, strArr[0])) {
            if (bool.booleanValue()) {
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_text_RedBold, resourcesProvider), PorterDuff.Mode.SRC_IN));
                if (!z) {
                    int i = -iArr[0];
                    iArr[0] = i;
                    AndroidUtilities.shakeViewSpring(imageView, i);
                }
            } else {
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider), PorterDuff.Mode.SRC_IN));
            }
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
            }
            buttonWithCounterView.setEnabled(!bool.booleanValue());
            horizontalScrollView.setVisibility(bitmap != null ? 0 : 8);
            zArr[0] = bool.booleanValue();
        }
    }

    public static /* synthetic */ void $r8$lambda$T_iX90XDQb6L6BZzm8gNZjs1QW0(EditTextCell editTextCell, boolean[] zArr, boolean[] zArr2, String str, String[] strArr, Utilities.Callback callback, DialogInterface dialogInterface) {
        editTextCell.editText.clearFocus();
        AndroidUtilities.hideKeyboard(editTextCell.editText);
        if (zArr[0] || zArr2[0] || TextUtils.equals(str, strArr[0])) {
            return;
        }
        zArr[0] = true;
        callback.run(strArr[0]);
    }

    /* JADX INFO: renamed from: $r8$lambda$Zjled5bofGN-3SKK241Q7f6xf4U, reason: not valid java name */
    public static /* synthetic */ void m23944$r8$lambda$Zjled5bofGN3SKK241Q7f6xf4U(ButtonWithCounterView buttonWithCounterView, boolean[] zArr, Utilities.Callback callback, String[] strArr, BottomSheet bottomSheet, View view) {
        if (buttonWithCounterView.isEnabled()) {
            if (!zArr[0]) {
                zArr[0] = true;
                callback.run(strArr[0]);
            }
            bottomSheet.lambda$new$0();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$XmCv70BUTvSf0IPH-KEfsKbsWTE, reason: not valid java name */
    public static /* synthetic */ void m23942$r8$lambda$XmCv70BUTvSf0IPHKEfsKbsWTE(EditTextCell editTextCell) {
        editTextCell.editText.requestFocus();
        AndroidUtilities.showKeyboard(editTextCell.editText);
    }
}
