package org.telegram.ui.community;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.StickerEmptyView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.chat.layouts.ChatActivityFadeView;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.community.CommunityUtils;
import org.telegram.ui.community.cells.CommunityPendingRequestCell;
import org.telegram.ui.community.sheet.CommunityInviteOnlySheet;

/* JADX INFO: loaded from: classes7.dex */
public class CommunityPendingRequestsActivity extends BaseFragment implements FactorAnimator.Target {
    private final BoolAnimator animatorIsRequestsEmpty;
    private ButtonWithCounterView buttonAddAllView;
    private ButtonWithCounterView buttonDeclineAllView;
    private LinearLayout buttonsLayout;
    private long communityId;
    private FrameLayout containerView;
    private TLRPC.Chat currentChat;
    private StickerEmptyView emptyView;
    private ChatActivityFadeView fadeView;
    private TLRPC.ChatFull info;
    private UniversalRecyclerView listView;
    private CommunityUtils.PendingRequests pendingRequestsList;

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean drawEdgeNavigationBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public CommunityPendingRequestsActivity(Bundle bundle) {
        super(bundle);
        this.animatorIsRequestsEmpty = new BoolAnimator(0, this, CubicBezierInterpolator.EASE_OUT_QUINT, 320L);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.communityId = this.arguments.getLong("community_id", 0L);
        this.currentChat = getMessagesController().getChat(Long.valueOf(this.communityId));
        this.info = getMessagesController().getChatFull(this.communityId);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        boolean z = true;
        setHasOwnBackground(true);
        CommunityUtils.PendingRequests pendingRequests = new CommunityUtils.PendingRequests(getContext(), this.resourceProvider, BulletinFactory.of(this), this.currentAccount, this.communityId);
        this.pendingRequestsList = pendingRequests;
        pendingRequests.setDelegate(new CommunityUtils.PendingRequests.Delegate() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity.1
            @Override // org.telegram.ui.community.CommunityUtils.PendingRequests.Delegate
            public void updateAdapter() {
                CommunityPendingRequestsActivity.this.animatorIsRequestsEmpty.setValue(CommunityPendingRequestsActivity.this.pendingRequestsList.isFinished() && CommunityPendingRequestsActivity.this.pendingRequestsList.getTotalCount() == 0, true);
                CommunityPendingRequestsActivity.this.listView.adapter.update(true);
            }

            @Override // org.telegram.ui.community.CommunityUtils.PendingRequests.Delegate
            public void close() {
                CommunityPendingRequestsActivity.this.finishFragment();
            }

            @Override // org.telegram.ui.community.CommunityUtils.PendingRequests.Delegate
            public void onClickGroupOwner(long j) {
                CommunityPendingRequestsActivity.this.presentFragment(ChatActivity.of(j));
            }
        });
        this.pendingRequestsList.loadNext();
        this.pendingRequestsList.markAsViewed();
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity.2
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    CommunityPendingRequestsActivity.this.finishFragment();
                }
            }
        });
        this.actionBar.setTitle(LocaleController.getString(C2573R.string.CommunityPendingRequests));
        FrameLayout frameLayout = new FrameLayout(context);
        this.containerView = frameLayout;
        int i = Theme.key_windowBackgroundGray;
        frameLayout.setBackgroundColor(Theme.getColor(i));
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        });
        this.listView = universalRecyclerView;
        universalRecyclerView.setClipToPadding(false);
        this.listView.adapter.setApplyBackground(false);
        this.listView.setSections();
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                super.onScrolled(recyclerView, i2, i3);
                CommunityPendingRequestsActivity.this.pendingRequestsList.checkLoadNext(CommunityPendingRequestsActivity.this.listView);
            }
        });
        this.actionBar.setAdaptiveBackground(this.listView);
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        ChatActivityFadeView chatActivityFadeView = new ChatActivityFadeView(context);
        this.fadeView = chatActivityFadeView;
        chatActivityFadeView.setupColorKey(i);
        this.fadeView.setFadeZoneBottom(AndroidUtilities.dp(72.0f));
        this.fadeView.setFadeHeightBottom(AndroidUtilities.dp(24.0f));
        this.containerView.addView(this.fadeView, LayoutHelper.createFrameMatchParent());
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2, 48));
        LinearLayout linearLayout = new LinearLayout(context);
        this.buttonsLayout = linearLayout;
        linearLayout.setOrientation(0);
        this.buttonsLayout.setPadding(AndroidUtilities.dp(7.0f), 0, AndroidUtilities.dp(7.0f), AndroidUtilities.dp(12.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourceProvider);
        this.buttonDeclineAllView = buttonWithCounterView;
        buttonWithCounterView.setNeutral();
        this.buttonDeclineAllView.setColor(ColorUtils.blendARGB(getThemedColor(Theme.key_windowBackgroundWhite), getThemedColor(Theme.key_windowBackgroundWhiteBlackText), 0.125f));
        this.buttonDeclineAllView.setText(LocaleController.getString(C2573R.string.CommunityPendingRequestDeclineAll));
        this.buttonDeclineAllView.setRound();
        this.buttonDeclineAllView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$0(view);
            }
        });
        this.buttonsLayout.addView(this.buttonDeclineAllView, LayoutHelper.createLinear(0, 48, 1.0f, 0, 4, 0, 4, 0));
        ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, this.resourceProvider);
        this.buttonAddAllView = buttonWithCounterView2;
        buttonWithCounterView2.setText(LocaleController.getString(C2573R.string.CommunityPendingRequestAddAll));
        this.buttonAddAllView.setRound();
        this.buttonAddAllView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$1(view);
            }
        });
        this.buttonsLayout.addView(this.buttonAddAllView, LayoutHelper.createLinear(0, 48, 1.0f, 0, 4, 0, 4, 0));
        this.containerView.addView(this.buttonsLayout, LayoutHelper.createFrame(-1, -2, 80));
        StickerEmptyView stickerEmptyView = new StickerEmptyView(getContext(), null, 16, this.resourceProvider);
        this.emptyView = stickerEmptyView;
        stickerEmptyView.title.setText(LocaleController.getString(C2573R.string.NoCommunityJoinRequests));
        this.emptyView.subtitle.setText(LocaleController.getString(C2573R.string.NoCommunityJoinRequestsDescription));
        this.emptyView.setAnimateLayoutChange(true);
        this.emptyView.setVisibility(8);
        this.containerView.addView(this.emptyView, LayoutHelper.createFrame(-2, -2, 17));
        BoolAnimator boolAnimator = this.animatorIsRequestsEmpty;
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull != null && chatFull.requests_pending != 0) {
            z = false;
        }
        boolAnimator.setValue(z, false);
        checkPaddings(0);
        ViewCompat.setOnApplyWindowInsetsListener(this.containerView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity$$ExternalSyntheticLambda5
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.onApplyWindowInsets(view, windowInsetsCompat);
            }
        });
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity.4
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i2) {
                return AndroidUtilities.navigationBarHeight + AndroidUtilities.dp(64.0f);
            }
        });
        FrameLayout frameLayout2 = this.containerView;
        this.fragmentView = frameLayout2;
        return frameLayout2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        this.pendingRequestsList.onResolveAllJoinRequests(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        this.pendingRequestsList.onResolveAllJoinRequests(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        this.pendingRequestsList.fillItems(arrayList);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        this.pendingRequestsList.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        Object obj = uItem.object;
        if (obj instanceof CommunityPendingRequestCell.Data) {
            final CommunityPendingRequestCell.Data data = (CommunityPendingRequestCell.Data) obj;
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-data.dialogToAdd));
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(data.dialogToAdd));
            if (user != null) {
                presentFragment(ChatActivity.of(user.id));
            } else if (ChatObject.isPublic(chat) || ChatObject.isInChat(chat)) {
                presentFragment(ChatActivity.of(-chat.id));
            } else {
                new CommunityInviteOnlySheet(getContext(), chat, data.requestFromUser, new Runnable() { // from class: org.telegram.ui.community.CommunityPendingRequestsActivity$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$2(data);
                    }
                }).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$2(CommunityPendingRequestCell.Data data) {
        presentFragment(ChatActivity.of(data.requestFromUser.id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        checkPaddings(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).bottom);
        return WindowInsetsCompat.CONSUMED;
    }

    private void checkPaddings(int i) {
        this.listView.setPadding(0, 0, 0, AndroidUtilities.dp(60.0f) + i);
        this.buttonsLayout.setPadding(AndroidUtilities.dp(7.0f), 0, AndroidUtilities.dp(7.0f), AndroidUtilities.dp(12.0f) + i);
        this.emptyView.setTranslationY((this.listView.getPaddingTop() - this.listView.getPaddingBottom()) / 2.0f);
        this.fadeView.setFadeZoneBottom(AndroidUtilities.dp(72.0f) + i);
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        float f3 = 1.0f - f;
        this.buttonsLayout.setAlpha(f3);
        this.buttonsLayout.setVisibility(f3 > 0.0f ? 0 : 8);
        this.emptyView.setAlpha(f);
        this.emptyView.setVisibility(f > 0.0f ? 0 : 8);
    }
}
