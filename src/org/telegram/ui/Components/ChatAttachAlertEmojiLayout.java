package org.telegram.ui.Components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.EmojiView;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class ChatAttachAlertEmojiLayout extends ChatAttachAlert.AttachAlertLayout {
    public int currentItemTop;
    private final EmojiView emojiView;
    private final RecyclerListView gridView;
    private final LinearLayoutManager layoutManager;
    private final boolean sticker;
    private final View tabsView;

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 1;
    }

    public ChatAttachAlertEmojiLayout(ChatAttachAlert chatAttachAlert, Context context, Theme.ResourcesProvider resourcesProvider, boolean z) {
        super(chatAttachAlert, context, resourcesProvider);
        this.currentItemTop = 0;
        this.sticker = z;
        this.occupyNavigationBar = true;
        EmojiView emojiView = new EmojiView(chatAttachAlert.baseFragment, !z, z, false, getContext(), true, null, null, false, resourcesProvider, false, true);
        this.emojiView = emojiView;
        emojiView.shouldLightenBackground = false;
        emojiView.setAllow(!z, z, false, false);
        emojiView.forceHideBackspaceButton();
        emojiView.forceHideSettingsButton();
        emojiView.setDisableStickerEditor();
        addView(emojiView, LayoutHelper.createFrame(-1, -1.0f));
        this.tabsView = emojiView.getTabsForType(!z ? 1 : 0);
        RecyclerListView listViewForType = emojiView.getListViewForType(!z ? 1 : 0);
        this.gridView = listViewForType;
        listViewForType.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertEmojiLayout.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                ChatAttachAlertEmojiLayout chatAttachAlertEmojiLayout = ChatAttachAlertEmojiLayout.this;
                chatAttachAlertEmojiLayout.parentAlert.updateLayout(chatAttachAlertEmojiLayout, true, i2);
                ChatAttachAlertEmojiLayout.this.checkTopTabPosition();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                RecyclerListView.Holder holder;
                if (i == 0) {
                    int iDp = AndroidUtilities.dp(13.0f);
                    ActionBarMenuItem actionBarMenuItem = ChatAttachAlertEmojiLayout.this.parentAlert.selectedMenuItem;
                    int iDp2 = iDp + (actionBarMenuItem != null ? AndroidUtilities.dp(actionBarMenuItem.getAlpha() * 26.0f) : 0);
                    int backgroundPaddingTop = ChatAttachAlertEmojiLayout.this.parentAlert.getBackgroundPaddingTop();
                    if (((ChatAttachAlertEmojiLayout.this.parentAlert.scrollOffsetY[0] - backgroundPaddingTop) - iDp2) + backgroundPaddingTop >= ActionBar.getCurrentActionBarHeight() || (holder = (RecyclerListView.Holder) ChatAttachAlertEmojiLayout.this.gridView.findViewHolderForAdapterPosition(0)) == null || holder.itemView.getTop() <= AndroidUtilities.dp(7.0f)) {
                        return;
                    }
                    ChatAttachAlertEmojiLayout.this.gridView.smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.dp(7.0f));
                }
            }
        });
        this.layoutManager = (LinearLayoutManager) listViewForType.getLayoutManager();
        checkTopTabPosition();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        checkTopTabPosition();
    }

    public void setDelegate(EmojiView.EmojiViewDelegate emojiViewDelegate) {
        this.emojiView.setDelegate(emojiViewDelegate);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.gridView.smoothScrollToPosition(0);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.gridView.getPaddingTop();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        int childCount = this.gridView.getChildCount();
        RecyclerListView recyclerListView = this.gridView;
        if (childCount <= 0) {
            int paddingTop = recyclerListView.getPaddingTop();
            this.currentItemTop = paddingTop;
            recyclerListView.setTopGlowOffset(paddingTop);
            return Integer.MAX_VALUE;
        }
        View childAt = recyclerListView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.gridView.findContainingViewHolder(childAt);
        int top = childAt.getTop() - AndroidUtilities.dp(36.0f);
        int iDp = AndroidUtilities.dp(7.0f);
        if (top < AndroidUtilities.dp(7.0f) || holder == null || holder.getAdapterPosition() != 0) {
            top = iDp;
        }
        this.gridView.setTopGlowOffset(top);
        this.currentItemTop = top;
        return top;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.dp(56.0f);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreMeasure(int i, int i2) {
        int i3;
        ((FrameLayout.LayoutParams) getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight();
        if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            i3 = point.x > point.y ? (int) (i2 / 3.5f) : (i2 / 5) * 2;
        }
        int iDp = i3 - AndroidUtilities.dp(52.0f);
        if (iDp < 0) {
            iDp = 0;
        }
        int iDp2 = iDp + AndroidUtilities.dp(36.0f);
        if (this.gridView.getPaddingTop() != iDp2) {
            this.gridView.setPadding(AndroidUtilities.dp(6.0f), iDp2, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(48.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkTopTabPosition() {
        this.tabsView.setTranslationY(Math.max(0, getCurrentItemTop()));
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        try {
            this.parentAlert.actionBar.getTitleTextView().setBuildFullLayout(true);
        } catch (Exception unused) {
        }
        this.parentAlert.actionBar.setTitle(LocaleController.getString(this.sticker ? C2665R.string.SelectSticker : C2665R.string.SelectEmoji));
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }
}
