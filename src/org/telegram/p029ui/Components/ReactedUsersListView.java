package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.ToIntFunction;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ReactedUserHolderView;
import org.telegram.p029ui.Components.ReactedHeaderView;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Comparator;

/* JADX INFO: loaded from: classes7.dex */
public class ReactedUsersListView extends FrameLayout {
    private RecyclerView.Adapter adapter;
    public boolean canLoadMore;
    private int currentAccount;
    ArrayList customEmojiStickerSets;
    ArrayList customReactionsEmoji;
    private TLRPC.Reaction filter;
    public boolean isLoaded;
    public boolean isLoading;
    public RecyclerListView listView;
    private FlickerLoadingView loadingView;
    private MessageObject message;
    MessageContainsEmojiButton messageContainsEmojiButton;
    private String offset;
    private OnCustomEmojiSelectedListener onCustomEmojiSelectedListener;
    private OnHeightChangedListener onHeightChangedListener;
    private OnProfileSelectedListener onProfileSelectedListener;
    private boolean onlySeenNow;
    private LongSparseArray peerReactionMap;
    private int predictiveCount;
    Theme.ResourcesProvider resourcesProvider;
    private boolean showReactionPreview;
    private List userReactions;

    public interface OnCustomEmojiSelectedListener {
        void showCustomEmojiAlert(ReactedUsersListView reactedUsersListView, ArrayList arrayList);
    }

    public interface OnHeightChangedListener {
        void onHeightChanged(ReactedUsersListView reactedUsersListView, int i);
    }

    public interface OnProfileSelectedListener {
        void onProfileSelected(ReactedUsersListView reactedUsersListView, long j, TLRPC.MessagePeerReaction messagePeerReaction);
    }

    public ReactedUsersListView(final Context context, final Theme.ResourcesProvider resourcesProvider, final int i, MessageObject messageObject, TLRPC.ReactionCount reactionCount, boolean z, final boolean z2) {
        TLRPC.Reaction reaction;
        super(context);
        this.userReactions = new ArrayList();
        this.peerReactionMap = new LongSparseArray();
        this.canLoadMore = true;
        this.customReactionsEmoji = new ArrayList();
        this.customEmojiStickerSets = new ArrayList();
        this.currentAccount = i;
        this.message = messageObject;
        this.filter = reactionCount == null ? null : reactionCount.reaction;
        this.resourcesProvider = resourcesProvider;
        this.showReactionPreview = z2;
        this.predictiveCount = reactionCount == null ? 6 : reactionCount.count;
        this.listView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ReactedUsersListView.1
            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            protected void onMeasure(int i2, int i3) {
                MessageContainsEmojiButton messageContainsEmojiButton = ReactedUsersListView.this.messageContainsEmojiButton;
                if (messageContainsEmojiButton != null) {
                    messageContainsEmojiButton.measure(i2, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 0));
                }
                super.onMeasure(i2, i3);
                ReactedUsersListView.this.updateHeight();
            }
        };
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        this.listView.setLayoutManager(linearLayoutManager);
        if (z) {
            this.listView.setPadding(0, 0, 0, AndroidUtilities.m1124dp(8.0f));
            this.listView.setClipToPadding(false);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.listView.setVerticalScrollbarThumbDrawable(new ColorDrawable(Theme.getColor(Theme.key_listSelector)));
        }
        RecyclerListView recyclerListView = this.listView;
        RecyclerView.Adapter adapter = new RecyclerView.Adapter() { // from class: org.telegram.ui.Components.ReactedUsersListView.2
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
                FrameLayout reactedUserHolderView;
                if (i2 == 0) {
                    reactedUserHolderView = new ReactedUserHolderView(ReactedUserHolderView.STYLE_DEFAULT, i, context, resourcesProvider, true, z2);
                } else {
                    ReactedUsersListView reactedUsersListView = ReactedUsersListView.this;
                    MessageContainsEmojiButton messageContainsEmojiButton = reactedUsersListView.messageContainsEmojiButton;
                    if (messageContainsEmojiButton != null) {
                        if (messageContainsEmojiButton.getParent() != null) {
                            ((ViewGroup) ReactedUsersListView.this.messageContainsEmojiButton.getParent()).removeView(ReactedUsersListView.this.messageContainsEmojiButton);
                        }
                    } else {
                        reactedUsersListView.updateCustomReactionsButton();
                    }
                    reactedUserHolderView = new FrameLayout(context);
                    View view = new View(context);
                    view.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuSeparator, resourcesProvider));
                    reactedUserHolderView.addView(view, LayoutHelper.createFrame(-1, 8.0f));
                    reactedUserHolderView.addView(ReactedUsersListView.this.messageContainsEmojiButton, LayoutHelper.createFrame(-1, -1.0f, 0, 0.0f, 8.0f, 0.0f, 0.0f));
                }
                return new RecyclerListView.Holder(reactedUserHolderView);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
                if (viewHolder.getItemViewType() == 0) {
                    ((ReactedUserHolderView) viewHolder.itemView).setUserReaction((TLRPC.MessagePeerReaction) ReactedUsersListView.this.userReactions.get(i2));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return ReactedUsersListView.this.userReactions.size() + ((ReactedUsersListView.this.customReactionsEmoji.isEmpty() || MessagesController.getInstance(i).premiumFeaturesBlocked()) ? 0 : 1);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i2) {
                return i2 < ReactedUsersListView.this.userReactions.size() ? 0 : 1;
            }
        };
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$0(view, i2);
            }
        });
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ReactedUsersListView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                ReactedUsersListView reactedUsersListView = ReactedUsersListView.this;
                if (!reactedUsersListView.isLoaded || !reactedUsersListView.canLoadMore || reactedUsersListView.isLoading || linearLayoutManager.findLastVisibleItemPosition() < (ReactedUsersListView.this.adapter.getItemCount() - 1) - ReactedUsersListView.this.getLoadCount()) {
                    return;
                }
                ReactedUsersListView.this.load();
            }
        });
        this.listView.setVerticalScrollBarEnabled(true);
        this.listView.setAlpha(0.0f);
        addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ReactedUsersListView.4
            @Override // org.telegram.p029ui.Components.FlickerLoadingView
            public int getAdditionalHeight() {
                MessageContainsEmojiButton messageContainsEmojiButton;
                if (ReactedUsersListView.this.customReactionsEmoji.isEmpty() || (messageContainsEmojiButton = ReactedUsersListView.this.messageContainsEmojiButton) == null) {
                    return 0;
                }
                return messageContainsEmojiButton.getMeasuredHeight() + AndroidUtilities.m1124dp(8.0f);
            }
        };
        this.loadingView = flickerLoadingView;
        flickerLoadingView.setColors(Theme.key_actionBarDefaultSubmenuBackground, Theme.key_listSelector, -1);
        this.loadingView.setIsSingleCell(true);
        this.loadingView.setItemsCount(this.predictiveCount);
        addView(this.loadingView, LayoutHelper.createFrame(-1, -1.0f));
        if (!z && (reaction = this.filter) != null && (reaction instanceof TLRPC.TL_reactionCustomEmoji) && !MessagesController.getInstance(i).premiumFeaturesBlocked()) {
            this.customReactionsEmoji.clear();
            this.customReactionsEmoji.add(ReactionsLayoutInBubble.VisibleReaction.fromTL(this.filter));
            updateCustomReactionsButton();
        }
        this.loadingView.setViewType(this.customReactionsEmoji.isEmpty() ? 16 : 23);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        OnCustomEmojiSelectedListener onCustomEmojiSelectedListener;
        int itemViewType = this.adapter.getItemViewType(i);
        if (itemViewType == 0) {
            OnProfileSelectedListener onProfileSelectedListener = this.onProfileSelectedListener;
            if (onProfileSelectedListener != null) {
                onProfileSelectedListener.onProfileSelected(this, MessageObject.getPeerId(((TLRPC.MessagePeerReaction) this.userReactions.get(i)).peer_id), (TLRPC.MessagePeerReaction) this.userReactions.get(i));
                return;
            }
            return;
        }
        if (itemViewType != 1 || (onCustomEmojiSelectedListener = this.onCustomEmojiSelectedListener) == null) {
            return;
        }
        onCustomEmojiSelectedListener.showCustomEmojiAlert(this, this.customEmojiStickerSets);
    }

    public ReactedUsersListView setSeenUsers(List list) {
        List list2 = this.userReactions;
        if (list2 != null && !list2.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ReactedHeaderView.UserSeen userSeen = (ReactedHeaderView.UserSeen) it.next();
                if (userSeen.user != null && userSeen.date > 0) {
                    int i = 0;
                    while (true) {
                        if (i < this.userReactions.size()) {
                            TLRPC.MessagePeerReaction messagePeerReaction = (TLRPC.MessagePeerReaction) this.userReactions.get(i);
                            if (messagePeerReaction != null && messagePeerReaction.date <= 0 && MessageObject.getPeerId(messagePeerReaction.peer_id) == userSeen.dialogId) {
                                messagePeerReaction.date = userSeen.date;
                                messagePeerReaction.dateIsSeen = true;
                                break;
                            }
                            i++;
                        } else {
                            break;
                        }
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ReactedHeaderView.UserSeen userSeen2 = (ReactedHeaderView.UserSeen) it2.next();
            if (((ArrayList) this.peerReactionMap.get(userSeen2.dialogId)) == null) {
                TLRPC.TL_messagePeerReaction tL_messagePeerReaction = new TLRPC.TL_messagePeerReaction();
                tL_messagePeerReaction.reaction = null;
                TLObject tLObject = userSeen2.user;
                if (tLObject instanceof TLRPC.User) {
                    TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                    tL_messagePeerReaction.peer_id = tL_peerUser;
                    tL_peerUser.user_id = ((TLRPC.User) userSeen2.user).f1825id;
                } else if (tLObject instanceof TLRPC.Chat) {
                    TLRPC.TL_peerChat tL_peerChat = new TLRPC.TL_peerChat();
                    tL_messagePeerReaction.peer_id = tL_peerChat;
                    tL_peerChat.chat_id = ((TLRPC.Chat) userSeen2.user).f1660id;
                }
                tL_messagePeerReaction.date = userSeen2.date;
                tL_messagePeerReaction.dateIsSeen = true;
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(tL_messagePeerReaction);
                this.peerReactionMap.put(MessageObject.getPeerId(tL_messagePeerReaction.peer_id), arrayList2);
                arrayList.add(tL_messagePeerReaction);
            }
        }
        if (this.userReactions.isEmpty()) {
            this.onlySeenNow = true;
        }
        this.userReactions.addAll(arrayList);
        Collections.sort(this.userReactions, Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda2
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ReactedUsersListView.$r8$lambda$IZe4Wi8p9EjDVKlK4u7Qg4F2iVM((TLRPC.MessagePeerReaction) obj);
            }
        }));
        this.adapter.notifyDataSetChanged();
        updateHeight();
        return this;
    }

    public static /* synthetic */ int $r8$lambda$IZe4Wi8p9EjDVKlK4u7Qg4F2iVM(TLRPC.MessagePeerReaction messagePeerReaction) {
        int i = messagePeerReaction.date;
        if (i <= 0 || messagePeerReaction.reaction != null) {
            return Integer.MIN_VALUE;
        }
        return -i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.isLoaded || this.isLoading) {
            return;
        }
        load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load() {
        this.isLoading = true;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        TLRPC.TL_messages_getMessageReactionsList tL_messages_getMessageReactionsList = new TLRPC.TL_messages_getMessageReactionsList();
        tL_messages_getMessageReactionsList.peer = messagesController.getInputPeer(this.message.getDialogId());
        tL_messages_getMessageReactionsList.f1760id = this.message.getId();
        tL_messages_getMessageReactionsList.limit = getLoadCount();
        TLRPC.Reaction reaction = this.filter;
        tL_messages_getMessageReactionsList.reaction = reaction;
        String str = this.offset;
        tL_messages_getMessageReactionsList.offset = str;
        if (reaction != null) {
            tL_messages_getMessageReactionsList.flags = 1 | tL_messages_getMessageReactionsList.flags;
        }
        if (str != null) {
            tL_messages_getMessageReactionsList.flags |= 2;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getMessageReactionsList, new RequestDelegate() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$load$6(tLObject, tL_error);
            }
        }, 64);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$5(final TLObject tLObject) {
        NotificationCenter.getInstance(this.currentAccount).doOnIdle(new Runnable() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$4(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$6(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$5(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$4(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_messageReactionsList) {
            TLRPC.TL_messages_messageReactionsList tL_messages_messageReactionsList = (TLRPC.TL_messages_messageReactionsList) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_messages_messageReactionsList.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_messages_messageReactionsList.chats, false);
            HashSet hashSet = new HashSet();
            for (int i = 0; i < tL_messages_messageReactionsList.reactions.size(); i++) {
                this.userReactions.add((TLRPC.MessagePeerReaction) tL_messages_messageReactionsList.reactions.get(i));
                long peerId = MessageObject.getPeerId(((TLRPC.MessagePeerReaction) tL_messages_messageReactionsList.reactions.get(i)).peer_id);
                ArrayList arrayList = (ArrayList) this.peerReactionMap.get(peerId);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                int i2 = 0;
                while (i2 < arrayList.size()) {
                    if (((TLRPC.MessagePeerReaction) arrayList.get(i2)).reaction == null) {
                        arrayList.remove(i2);
                        i2--;
                    }
                    i2++;
                }
                ReactionsLayoutInBubble.VisibleReaction visibleReactionFromTL = ReactionsLayoutInBubble.VisibleReaction.fromTL(((TLRPC.MessagePeerReaction) tL_messages_messageReactionsList.reactions.get(i)).reaction);
                if (visibleReactionFromTL.documentId != 0) {
                    hashSet.add(visibleReactionFromTL);
                }
                arrayList.add((TLRPC.MessagePeerReaction) tL_messages_messageReactionsList.reactions.get(i));
                this.peerReactionMap.put(peerId, arrayList);
            }
            if (this.filter == null) {
                this.customReactionsEmoji.clear();
                this.customReactionsEmoji.addAll(hashSet);
                updateCustomReactionsButton();
            }
            Collections.sort(this.userReactions, Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda5
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return ReactedUsersListView.$r8$lambda$QDuNvCRYdBeskYQgPRwf_ulmmkA((TLRPC.MessagePeerReaction) obj);
                }
            }));
            this.adapter.notifyDataSetChanged();
            if (!this.isLoaded) {
                ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(150L);
                duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda6
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$load$3(valueAnimator);
                    }
                });
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ReactedUsersListView.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ReactedUsersListView.this.loadingView.setVisibility(8);
                    }
                });
                duration.start();
                updateHeight();
                this.isLoaded = true;
            }
            String str = tL_messages_messageReactionsList.next_offset;
            this.offset = str;
            if (str == null) {
                this.canLoadMore = false;
            }
            this.isLoading = false;
            return;
        }
        this.isLoading = false;
    }

    public static /* synthetic */ int $r8$lambda$QDuNvCRYdBeskYQgPRwf_ulmmkA(TLRPC.MessagePeerReaction messagePeerReaction) {
        int i = messagePeerReaction.date;
        if (i <= 0 || messagePeerReaction.reaction != null) {
            return Integer.MIN_VALUE;
        }
        return -i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$3(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.listView.setAlpha(fFloatValue);
        this.loadingView.setAlpha(1.0f - fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCustomReactionsButton() {
        this.customEmojiStickerSets.clear();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.customReactionsEmoji.size(); i++) {
            TLRPC.InputStickerSet inputStickerSet = MessageObject.getInputStickerSet(AnimatedEmojiDrawable.findDocument(this.currentAccount, ((ReactionsLayoutInBubble.VisibleReaction) this.customReactionsEmoji.get(i)).documentId));
            if (inputStickerSet != null && !hashSet.contains(Long.valueOf(inputStickerSet.f1685id))) {
                arrayList.add(inputStickerSet);
                hashSet.add(Long.valueOf(inputStickerSet.f1685id));
            }
        }
        if (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
            return;
        }
        this.customEmojiStickerSets.addAll(arrayList);
        MessageContainsEmojiButton messageContainsEmojiButton = new MessageContainsEmojiButton(this.currentAccount, getContext(), this.resourcesProvider, arrayList, 1);
        this.messageContainsEmojiButton = messageContainsEmojiButton;
        messageContainsEmojiButton.checkWidth = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeight() {
        if (this.onHeightChangedListener != null) {
            int size = this.userReactions.size();
            if (size == 0) {
                size = this.predictiveCount;
            }
            int iM1124dp = AndroidUtilities.m1124dp(size * 50);
            MessageContainsEmojiButton messageContainsEmojiButton = this.messageContainsEmojiButton;
            if (messageContainsEmojiButton != null) {
                iM1124dp += messageContainsEmojiButton.getMeasuredHeight() + AndroidUtilities.m1124dp(8.0f);
            }
            if (this.listView.getMeasuredHeight() != 0) {
                iM1124dp = Math.min(this.listView.getMeasuredHeight(), iM1124dp);
            }
            this.onHeightChangedListener.onHeightChanged(this, iM1124dp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLoadCount() {
        return this.filter == null ? 100 : 50;
    }

    public ReactedUsersListView setOnProfileSelectedListener(OnProfileSelectedListener onProfileSelectedListener) {
        this.onProfileSelectedListener = onProfileSelectedListener;
        return this;
    }

    public ReactedUsersListView setOnHeightChangedListener(OnHeightChangedListener onHeightChangedListener) {
        this.onHeightChangedListener = onHeightChangedListener;
        return this;
    }

    public void setPredictiveCount(int i) {
        this.predictiveCount = i;
        this.loadingView.setItemsCount(i);
    }

    public static class ContainerLinerLayout extends LinearLayout {
        public boolean hasHeader;

        public ContainerLinerLayout(Context context) {
            super(context);
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int iM1124dp;
            RecyclerListView recyclerListView = null;
            if (this.hasHeader) {
                iM1124dp = 0;
            } else {
                iM1124dp = 0;
                for (int i3 = 0; i3 < getChildCount(); i3++) {
                    if (getChildAt(i3) instanceof ReactedUsersListView) {
                        recyclerListView = ((ReactedUsersListView) getChildAt(i3)).listView;
                        if (recyclerListView.getAdapter().getItemCount() == recyclerListView.getChildCount()) {
                            int childCount = recyclerListView.getChildCount();
                            for (int i4 = 0; i4 < childCount; i4++) {
                                recyclerListView.getChildAt(i4).measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), 0), i2);
                                if (recyclerListView.getChildAt(i4).getMeasuredWidth() > iM1124dp) {
                                    iM1124dp = recyclerListView.getChildAt(i4).getMeasuredWidth();
                                }
                            }
                            iM1124dp += AndroidUtilities.m1124dp(16.0f);
                        }
                    }
                }
            }
            int size = View.MeasureSpec.getSize(i);
            if (size < AndroidUtilities.m1124dp(240.0f)) {
                size = AndroidUtilities.m1124dp(240.0f);
            }
            if (size > AndroidUtilities.m1124dp(280.0f)) {
                size = AndroidUtilities.m1124dp(280.0f);
            }
            if (size < 0) {
                size = 0;
            }
            if (iM1124dp == 0 || iM1124dp >= size) {
                iM1124dp = size;
            }
            if (recyclerListView != null) {
                for (int i5 = 0; i5 < recyclerListView.getChildCount(); i5++) {
                    recyclerListView.getChildAt(i5).measure(View.MeasureSpec.makeMeasureSpec(iM1124dp, TLObject.FLAG_30), i2);
                }
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iM1124dp, TLObject.FLAG_30), i2);
        }
    }

    public ReactedUsersListView setOnCustomEmojiSelectedListener(OnCustomEmojiSelectedListener onCustomEmojiSelectedListener) {
        this.onCustomEmojiSelectedListener = onCustomEmojiSelectedListener;
        return this;
    }
}
