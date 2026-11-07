package com.exteragram.messenger.feed;

import java.util.ArrayList;
import java.util.function.Consumer;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.ItemOptions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FeedChannelActions {
    public static boolean canLeave(TLRPC.Chat chat) {
        return (chat == null || chat.creator || ChatObject.isNotInChat(chat)) ? false : true;
    }

    public static void showAvatarMenu(final ChatActivity chatActivity, ChatMessageCell chatMessageCell, final TLRPC.Chat chat, Runnable runnable, final Runnable runnable2, final Consumer<ArrayList<Integer>> consumer) {
        if (chatActivity == null || chatMessageCell == null || chat == null) {
            return;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(chatActivity, chatMessageCell);
        boolean z = chat.broadcast;
        itemOptionsMakeOptions.add(z ? C2807R.drawable.msg_channel : C2807R.drawable.msg_discussion, LocaleController.getString(z ? C2807R.string.OpenChannel2 : C2807R.string.OpenGroup2), runnable).add(C2807R.drawable.menu_hide_gift, LocaleController.getString(C2807R.string.FeedHideChannel), new Runnable() { // from class: com.exteragram.messenger.feed.FeedChannelActions$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivity chatActivity2 = chatActivity;
                TLRPC.Chat chat2 = chat;
                chatActivity2.hideFeedChannelWithUndo(-chat2.id, chat2.title);
            }
        }).addIf(canLeave(chat), C2807R.drawable.msg_leave, (CharSequence) LocaleController.getString(chat.broadcast ? C2807R.string.LeaveChannelMenu : C2807R.string.LeaveMegaMenu), true, new Runnable() { // from class: com.exteragram.messenger.feed.FeedChannelActions$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FeedChannelActions.leaveChannel(chatActivity, chat, runnable2, consumer);
            }
        }).setDrawScrim(false).setGravity(3).forceBottom(true).show();
    }

    public static void leaveChannel(final BaseFragment baseFragment, final TLRPC.Chat chat, final Runnable runnable, final Consumer<ArrayList<Integer>> consumer) {
        if (baseFragment == null || chat == null || baseFragment.getParentActivity() == null) {
            return;
        }
        AlertsCreator.createClearOrDeleteDialogAlert(baseFragment, false, chat, null, false, true, false, false, new MessagesStorage.BooleanCallback() { // from class: com.exteragram.messenger.feed.FeedChannelActions$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
            public final void run(boolean z) {
                FeedChannelActions.m2572$r8$lambda$93MDwBmj6nCXiUj2TGXsm0wccI(chat, baseFragment, consumer, runnable, z);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$93MDwBmj6nCXiUj2TGXsm-0wccI, reason: not valid java name */
    public static /* synthetic */ void m2572$r8$lambda$93MDwBmj6nCXiUj2TGXsm0wccI(TLRPC.Chat chat, BaseFragment baseFragment, Consumer consumer, Runnable runnable, boolean z) {
        long j = -chat.id;
        if (ChatObject.isNotInChat(chat)) {
            baseFragment.getMessagesController().deleteDialog(j, 0, z);
        } else {
            baseFragment.getMessagesController().deleteParticipantFromChat(chat.id, baseFragment.getMessagesController().getUser(Long.valueOf(baseFragment.getUserConfig().getClientUserId())), (TLRPC.Chat) null, z, z);
        }
        deleteFeedRows(baseFragment, j, consumer);
        if (runnable != null) {
            runnable.run();
        }
    }

    private static void deleteFeedRows(BaseFragment baseFragment, long j, Consumer<ArrayList<Integer>> consumer) {
        ArrayList<Integer> arrayListDeleteHistory = FeedController.getInstance(baseFragment.getCurrentAccount()).deleteHistory(j, Integer.MAX_VALUE);
        if (consumer != null) {
            consumer.accept(arrayListDeleteHistory);
        }
    }
}
