package org.telegram.p029ui;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChannelBoostsController;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ChannelColorActivity;
import org.telegram.p029ui.Components.CombinedDrawable;
import org.telegram.p029ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes6.dex */
public class GroupColorActivity extends ChannelColorActivity {
    private boolean isLoading;
    private ChannelColorActivity.ProfilePreview profilePreview;
    private float profilePreviewPercent;

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getMessagePreviewType() {
        return 4;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected boolean needBoostInfoSection() {
        return true;
    }

    public GroupColorActivity(long j) {
        super(j);
        this.isGroup = true;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getProfileIconLevelMin() {
        return getMessagesController().groupProfileBgIconLevelMin;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getCustomWallpaperLevelMin() {
        return getMessagesController().groupCustomWallpaperLevelMin;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getWallpaperLevelMin() {
        return getMessagesController().groupWallpaperLevelMin;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getEmojiStatusLevelMin() {
        return getMessagesController().groupEmojiStatusLevelMin;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getEmojiStickersLevelMin() {
        return getMessagesController().groupEmojiStickersLevelMin;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected void updateRows() {
        ChannelColorActivity.Adapter adapter;
        ChannelColorActivity.Adapter adapter2;
        this.profilePreviewRow = 0;
        int i = 1 + 1;
        this.emptyRow = 1;
        this.profileColorGridRow = i;
        int i2 = i + 2;
        this.rowsCount = i2;
        this.profileEmojiRow = i + 1;
        if (this.selectedProfileEmoji != 0 || this.selectedProfileColor >= 0) {
            boolean z = this.removeProfileColorRow >= 0;
            this.rowsCount = i + 3;
            this.removeProfileColorRow = i2;
            if (!z && (adapter = this.adapter) != null) {
                adapter.notifyItemInserted(i2);
                this.adapter.notifyItemChanged(this.profileEmojiRow);
                this.listView.scrollToPosition(0);
            }
        } else {
            int i3 = this.removeProfileColorRow;
            this.removeProfileColorRow = -1;
            if (i3 >= 0 && (adapter2 = this.adapter) != null) {
                adapter2.notifyItemRemoved(i3);
                this.adapter.notifyItemChanged(this.profileEmojiRow);
            }
        }
        int i4 = this.rowsCount;
        this.profileHintRow = i4;
        this.packEmojiRow = i4 + 1;
        this.packEmojiHintRow = i4 + 2;
        this.statusEmojiRow = i4 + 3;
        this.rowsCount = i4 + 5;
        this.statusHintRow = i4 + 4;
        TLRPC.ChatFull chatFull = getMessagesController().getChatFull(-this.dialogId);
        if (chatFull != null && chatFull.can_set_stickers) {
            int i5 = this.rowsCount;
            this.packStickerRow = i5;
            this.rowsCount = i5 + 2;
            this.packStickerHintRow = i5 + 1;
        } else {
            this.packStickerRow = -1;
            this.packStickerHintRow = -1;
        }
        int i6 = this.rowsCount;
        this.messagesPreviewRow = i6;
        this.wallpaperThemesRow = i6 + 1;
        this.wallpaperRow = i6 + 2;
        this.rowsCount = i6 + 4;
        this.wallpaperHintRow = i6 + 3;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    public void updateButton(boolean z) {
        super.updateButton(z);
        ChannelColorActivity.ProfilePreview profilePreview = this.profilePreview;
        if (profilePreview != null) {
            TextView textView = profilePreview.textInfo1;
            TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus = this.boostsStatus;
            textView.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGroupBoostCount", tL_premium_boostsStatus != null ? tL_premium_boostsStatus.boosts : 0, new Object[0])));
        }
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getEmojiPackStrRes() {
        return C2888R.string.GroupEmojiPack;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getEmojiPackInfoStrRes() {
        return C2888R.string.GroupEmojiPackInfo;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getStickerPackStrRes() {
        return C2888R.string.GroupStickerPack;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getStickerPackInfoStrRes() {
        return C2888R.string.GroupStickerPackInfo;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getProfileInfoStrRes() {
        return C2888R.string.GroupProfileInfo;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getEmojiStatusStrRes() {
        return C2888R.string.GroupEmojiStatus;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getEmojiStatusInfoStrRes() {
        return C2888R.string.GroupEmojiStatusInfo;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getWallpaperStrRes() {
        return C2888R.string.GroupWallpaper;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected int getWallpaper2InfoStrRes() {
        return C2888R.string.GroupWallpaper2Info;
    }

    @Override // org.telegram.p029ui.ChannelColorActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        updateColors(false);
        this.actionBar.setAddToContainer(false);
        this.actionBar.setTitle(_UrlKt.FRAGMENT_ENCODE_SET);
        ((ViewGroup) viewCreateView).addView(this.actionBar);
        viewCreateView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC58341(viewCreateView));
        return viewCreateView;
    }

    /* JADX INFO: renamed from: org.telegram.ui.GroupColorActivity$1 */
    class ViewTreeObserverOnGlobalLayoutListenerC58341 implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ View val$view;

        ViewTreeObserverOnGlobalLayoutListenerC58341(View view) {
            this.val$view = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.val$view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            GroupColorActivity.this.initProfilePreview();
            GroupColorActivity.this.profilePreview.infoLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.GroupColorActivity$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$onGlobalLayout$0(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$0(View view) {
            GroupColorActivity.this.openBoostDialog(19);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initProfilePreview() {
        if (this.profilePreview == null) {
            this.profilePreview = (ChannelColorActivity.ProfilePreview) findChildAt(this.profilePreviewRow);
        }
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected void createListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getContext(), this.resourceProvider) { // from class: org.telegram.ui.GroupColorActivity.2
            @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                if (GroupColorActivity.this.profilePreview == null || GroupColorActivity.this.profilePreviewPercent < 1.0f) {
                    return;
                }
                canvas.save();
                canvas.translate(0.0f, -(GroupColorActivity.this.profilePreview.getMeasuredHeight() - ((BaseFragment) GroupColorActivity.this).actionBar.getMeasuredHeight()));
                GroupColorActivity.this.profilePreview.draw(canvas);
                canvas.restore();
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.GroupColorActivity.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                GroupColorActivity.this.initProfilePreview();
                int measuredHeight = GroupColorActivity.this.profilePreview.getMeasuredHeight() - ((BaseFragment) GroupColorActivity.this).actionBar.getMeasuredHeight();
                float top = GroupColorActivity.this.profilePreview.getTop() * (-1);
                float f = measuredHeight;
                GroupColorActivity.this.profilePreviewPercent = Math.max(Math.min(1.0f, top / f), 0.0f);
                float fMin = Math.min(GroupColorActivity.this.profilePreviewPercent * 2.0f, 1.0f);
                float fMin2 = Math.min(Math.max(GroupColorActivity.this.profilePreviewPercent - 0.45f, 0.0f) * 2.0f, 1.0f);
                GroupColorActivity.this.profilePreview.profileView.setAlpha(AndroidUtilities.lerp(1.0f, 0.0f, fMin));
                GroupColorActivity.this.profilePreview.infoLayout.setAlpha(AndroidUtilities.lerp(1.0f, 0.0f, fMin));
                GroupColorActivity.this.profilePreview.title.setAlpha(AndroidUtilities.lerp(0.0f, 1.0f, fMin2));
                if (GroupColorActivity.this.profilePreviewPercent >= 1.0f) {
                    GroupColorActivity.this.profilePreview.setTranslationY(top - f);
                } else {
                    GroupColorActivity.this.profilePreview.setTranslationY(0.0f);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                View viewFindViewByPosition;
                super.onScrollStateChanged(recyclerView, i);
                if (i == 0) {
                    if (GroupColorActivity.this.profilePreviewPercent >= 0.5f && GroupColorActivity.this.profilePreviewPercent < 1.0f) {
                        int bottom = ((BaseFragment) GroupColorActivity.this).actionBar.getBottom();
                        RecyclerView.LayoutManager layoutManager = GroupColorActivity.this.listView.getLayoutManager();
                        if (layoutManager == null || (viewFindViewByPosition = layoutManager.findViewByPosition(0)) == null) {
                            return;
                        }
                        GroupColorActivity.this.listView.smoothScrollBy(0, viewFindViewByPosition.getBottom() - bottom);
                        return;
                    }
                    if (GroupColorActivity.this.profilePreviewPercent < 0.5f) {
                        View viewFindViewByPosition2 = GroupColorActivity.this.listView.getLayoutManager() != null ? GroupColorActivity.this.listView.getLayoutManager().findViewByPosition(0) : null;
                        if (viewFindViewByPosition2 == null || viewFindViewByPosition2.getTop() >= 0) {
                            return;
                        }
                        GroupColorActivity.this.listView.smoothScrollBy(0, viewFindViewByPosition2.getTop());
                    }
                }
            }
        });
        this.listView.setSections(true);
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected void openBoostDialog(final int i) {
        if (this.boostsStatus == null || this.isLoading) {
            return;
        }
        this.isLoading = true;
        MessagesController.getInstance(this.currentAccount).getBoostsController().userCanBoostChannel(this.dialogId, this.boostsStatus, new Consumer() { // from class: org.telegram.ui.GroupColorActivity$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$openBoostDialog$0(i, (ChannelBoostsController.CanApplyBoost) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openBoostDialog$0(int i, ChannelBoostsController.CanApplyBoost canApplyBoost) {
        if (canApplyBoost == null || getContext() == null) {
            this.isLoading = false;
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(this, getContext(), i, this.currentAccount, this.resourceProvider) { // from class: org.telegram.ui.GroupColorActivity.4
            @Override // org.telegram.p029ui.ActionBar.BottomSheet
            public void onOpenAnimationEnd() {
                GroupColorActivity.this.isLoading = false;
            }

            @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
            /* JADX INFO: renamed from: dismiss */
            public void lambda$new$0() {
                super.lambda$new$0();
                GroupColorActivity.this.isLoading = false;
            }
        };
        limitReachedBottomSheet.setCanApplyBoost(canApplyBoost);
        limitReachedBottomSheet.setBoostsStats(this.boostsStatus, true);
        limitReachedBottomSheet.setDialogId(this.dialogId);
        limitReachedBottomSheet.show();
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    public void updateColors(boolean z) {
        super.updateColors(z);
        this.actionBar.setBackgroundColor(0);
        CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourceProvider)), Theme.getThemedDrawableByKey(getContext(), C2888R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow), 0, 0);
        combinedDrawable.setFullsize(true);
        this.buttonContainer.setBackground(combinedDrawable);
        ChannelColorActivity.ProfilePreview profilePreview = this.profilePreview;
        if (profilePreview == null || z) {
            return;
        }
        profilePreview.backgroundView.setColor(this.currentAccount, this.selectedProfileColor, false);
        this.profilePreview.profileView.setColor(this.selectedProfileColor, false);
        this.profilePreview.updateColors();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ChannelColorActivity.ProfilePreview profilePreview = this.profilePreview;
        if (profilePreview != null) {
            profilePreview.setTitleSize();
        }
    }

    @Override // org.telegram.p029ui.ChannelColorActivity, org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        super.didReceivedNotification(i, i2, objArr);
        if (i == NotificationCenter.chatInfoDidLoad && ((TLRPC.ChatFull) objArr[0]).f1661id == (-this.dialogId)) {
            updateProfilePreview(true);
        }
    }

    @Override // org.telegram.p029ui.ChannelColorActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatInfoDidLoad);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ChannelColorActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatInfoDidLoad);
    }

    @Override // org.telegram.p029ui.ChannelColorActivity
    protected boolean isForum() {
        return ChatObject.isForum(getMessagesController().getChat(Long.valueOf(-this.dialogId)));
    }
}
