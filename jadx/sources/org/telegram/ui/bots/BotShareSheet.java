package org.telegram.ui.bots;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotInlineKeyboard;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PinchToZoomHelper;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.PreviewView;
import org.telegram.ui.TopicsFragment;
import org.telegram.ui.web.HttpGetFileTask;

/* JADX INFO: loaded from: classes7.dex */
public class BotShareSheet extends BottomSheetWithRecyclerListView {
    private final ChatActionCell actionCell;
    private UniversalAdapter adapter;
    private final long botId;
    private final String botName;
    private final ButtonWithCounterView button;
    private final FrameLayout buttonContainer;
    private final LinearLayout chatListView;
    private final SizeNotifierFrameLayout chatView;
    private final int currentAccount;
    private final TLRPC.TL_messages_preparedInlineMessage message;
    private final ChatMessageCell messageCell;
    private MessageObject messageObject;
    private boolean openedDialogsActivity;
    private boolean sent;
    private final Utilities.Callback2 whenDone;

    public static void share(final Context context, final int i, final long j, final String str, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Utilities.Callback2 callback2) {
        TLRPC.TL_messages_getPreparedInlineMessage tL_messages_getPreparedInlineMessage = new TLRPC.TL_messages_getPreparedInlineMessage();
        tL_messages_getPreparedInlineMessage.bot = MessagesController.getInstance(i).getInputUser(j);
        tL_messages_getPreparedInlineMessage.id = str;
        ConnectionsManager.getInstance(i).sendRequest(tL_messages_getPreparedInlineMessage, new RequestDelegate() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BotShareSheet.$r8$lambda$EXaIjZzBQ7aMcNHqrlgv1i_xxj8(tLObject, context, i, j, str, resourcesProvider, runnable, callback2);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$EXaIjZzBQ7aMcNHqrlgv1i_xxj8(TLObject tLObject, final Context context, final int i, final long j, final String str, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Utilities.Callback2 callback2) {
        String extensionByMimeType;
        if (!(tLObject instanceof TLRPC.TL_messages_preparedInlineMessage)) {
            if (callback2 != null) {
                callback2.run("MESSAGE_EXPIRED", null);
                return;
            }
            return;
        }
        final TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage = (TLRPC.TL_messages_preparedInlineMessage) tLObject;
        final File[] fileArr = new File[1];
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                new BotShareSheet(context, i, j, str, tL_messages_preparedInlineMessage, fileArr[0], resourcesProvider, runnable, callback2).show();
            }
        };
        TLRPC.WebDocument webDocument = tL_messages_preparedInlineMessage.result.content;
        if (webDocument != null && !TextUtils.isEmpty(webDocument.url)) {
            TLRPC.BotInlineResult botInlineResult = tL_messages_preparedInlineMessage.result;
            if (botInlineResult.send_message instanceof TLRPC.TL_botInlineMessageMediaAuto) {
                String str2 = botInlineResult.content.url;
                String httpUrlExtension = ImageLoader.getHttpUrlExtension(str2, null);
                if (TextUtils.isEmpty(httpUrlExtension)) {
                    extensionByMimeType = FileLoader.getExtensionByMimeType(tL_messages_preparedInlineMessage.result.content.mime_type);
                } else {
                    extensionByMimeType = "." + httpUrlExtension;
                }
                File file = new File(FileLoader.getDirectory(4), Utilities.MD5(str2) + extensionByMimeType);
                if (!file.exists()) {
                    final AlertDialog alertDialog = new AlertDialog(context, 3);
                    final HttpGetFileTask httpGetFileTask = new HttpGetFileTask(new Utilities.Callback() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda3
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            BotShareSheet.m20245$r8$lambda$vgRbaSSp7en3a3AYtxdSwXe9Kw(fileArr, alertDialog, runnable2, (File) obj);
                        }
                    }, null);
                    httpGetFileTask.setDestFile(file);
                    httpGetFileTask.setMaxSize(8388608L);
                    httpGetFileTask.execute(str2);
                    alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda4
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            httpGetFileTask.cancel(true);
                        }
                    });
                    alertDialog.showDelayed(180L);
                    return;
                }
                runnable2.run();
                return;
            }
        }
        runnable2.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$vgRbaSSp7en3a3AYtxdSwXe9K-w, reason: not valid java name */
    public static /* synthetic */ void m20245$r8$lambda$vgRbaSSp7en3a3AYtxdSwXe9Kw(File[] fileArr, AlertDialog alertDialog, Runnable runnable, File file) {
        fileArr[0] = file;
        alertDialog.dismiss();
        runnable.run();
    }

    public BotShareSheet(Context context, final int i, final long j, String str, final TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage, File file, Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Utilities.Callback2 callback2) {
        super(context, null, false, false, false, resourcesProvider);
        this.openedDialogsActivity = false;
        this.sent = false;
        this.currentAccount = i;
        this.message = tL_messages_preparedInlineMessage;
        this.botId = j;
        this.botName = UserObject.getUserName(MessagesController.getInstance(i).getUser(Long.valueOf(j)));
        this.whenDone = callback2;
        int i2 = Theme.key_windowBackgroundWhite;
        fixNavigationBar(Theme.getColor(i2, resourcesProvider));
        setSlidingActionBar();
        this.headerPaddingTop = AndroidUtilities.dp(4.0f);
        this.headerPaddingBottom = AndroidUtilities.dp(-10.0f);
        this.messageObject = convert(i, j, tL_messages_preparedInlineMessage.result, file);
        ChatActionCell chatActionCell = new ChatActionCell(context, false, resourcesProvider);
        this.actionCell = chatActionCell;
        chatActionCell.setDelegate(new ChatActionCell.ChatActionCellDelegate() { // from class: org.telegram.ui.bots.BotShareSheet.1
            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ boolean canDrawOutboundsContent() {
                return ChatActionCell.ChatActionCellDelegate.CC.$default$canDrawOutboundsContent(this);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void didClickButton(ChatActionCell chatActionCell2) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$didClickButton(this, chatActionCell2);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void didClickImage(ChatActionCell chatActionCell2) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$didClickImage(this, chatActionCell2);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ boolean didLongPress(ChatActionCell chatActionCell2, float f, float f2) {
                return ChatActionCell.ChatActionCellDelegate.CC.$default$didLongPress(this, chatActionCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void didOpenPremiumGift(ChatActionCell chatActionCell2, TLRPC.TL_premiumGiftOption tL_premiumGiftOption, String str2, boolean z) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$didOpenPremiumGift(this, chatActionCell2, tL_premiumGiftOption, str2, z);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void didOpenPremiumGiftChannel(ChatActionCell chatActionCell2, String str2, boolean z) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$didOpenPremiumGiftChannel(this, chatActionCell2, str2, z);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void didPressReaction(ChatActionCell chatActionCell2, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$didPressReaction(this, chatActionCell2, reactionCount, z, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void didPressReplyMessage(ChatActionCell chatActionCell2, int i3) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$didPressReplyMessage(this, chatActionCell2, i3);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void didPressTaskLink(ChatActionCell chatActionCell2, int i3, int i4) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$didPressTaskLink(this, chatActionCell2, i3, i4);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void forceUpdate(ChatActionCell chatActionCell2, boolean z) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$forceUpdate(this, chatActionCell2, z);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ BaseFragment getBaseFragment() {
                return ChatActionCell.ChatActionCellDelegate.CC.$default$getBaseFragment(this);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ long getDialogId() {
                return ChatActionCell.ChatActionCellDelegate.CC.$default$getDialogId(this);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ long getTopicId() {
                return ChatActionCell.ChatActionCellDelegate.CC.$default$getTopicId(this);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void needOpenInviteLink(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$needOpenInviteLink(this, tL_chatInviteExported);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void needOpenUserProfile(long j2) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$needOpenUserProfile(this, j2);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void needShowEffectOverlay(ChatActionCell chatActionCell2, TLRPC.Document document, TLRPC.VideoSize videoSize) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$needShowEffectOverlay(this, chatActionCell2, document, videoSize);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public /* synthetic */ void onTopicClick(ChatActionCell chatActionCell2) {
                ChatActionCell.ChatActionCellDelegate.CC.$default$onTopicClick(this, chatActionCell2);
            }
        });
        chatActionCell.setCustomText(LocaleController.getString(C2484R.string.BotShareMessagePreview));
        ChatMessageCell chatMessageCell = new ChatMessageCell(context, i) { // from class: org.telegram.ui.bots.BotShareSheet.2
            @Override // org.telegram.ui.Cells.ChatMessageCell
            public boolean isDrawSelectionBackground() {
                return false;
            }
        };
        this.messageCell = chatMessageCell;
        chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.bots.BotShareSheet.3
            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean canDrawOutboundsContent() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public boolean canPerformActions() {
                return false;
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean canPerformReply() {
                return canPerformActions();
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell2, keyboardButton);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat, int i3, float f, float f2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell2, chat, i3, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didLongPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressCustomBotButton(this, chatMessageCell2, buttonCustom);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didLongPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressToDoButton(this, chatMessageCell2, todoItem);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user, float f, float f2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell2, user, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressAboutRevenueSharingAds() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAboutRevenueSharingAds(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressAdmin(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdmin(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell2, AnimatedEmojiSpan animatedEmojiSpan) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell2, animatedEmojiSpan);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressBoostCounter(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBoostCounter(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell2, keyboardButton);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat, int i3, float f, float f2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell2, chat, i3, f, f2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressChannelRecommendation(ChatMessageCell chatMessageCell2, TLObject tLObject, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendation(this, chatMessageCell2, tLObject, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressChannelRecommendationsClose(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendationsClose(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressCodeCopy(ChatMessageCell chatMessageCell2, MessageObject.TextLayoutBlock textLayoutBlock) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCodeCopy(this, chatMessageCell2, textLayoutBlock);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCustomBotButton(this, chatMessageCell2, buttonCustom);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressEffect(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressEffect(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell2, keyboardButton);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressFactCheck(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheck(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressFactCheckWhat(ChatMessageCell chatMessageCell2, int i3, int i4) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheckWhat(this, chatMessageCell2, i3, i4);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressGiveawayChatButton(ChatMessageCell chatMessageCell2, int i3) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGiveawayChatButton(this, chatMessageCell2, i3);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressGroupImage(ChatMessageCell chatMessageCell2, ImageReceiver imageReceiver, TLRPC.MessageExtendedMedia messageExtendedMedia, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGroupImage(this, chatMessageCell2, imageReceiver, messageExtendedMedia, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell2, int i3) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell2, i3);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell2, float f, float f2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell2, f, f2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell2, int i3) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell2, i3);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressMoreChannelRecommendations(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressMoreChannelRecommendations(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell2, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell2, reactionCount, z, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell2, int i3, float f, float f2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell2, i3, f, f2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressRevealSensitiveContent(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressRevealSensitiveContent(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressSponsoredClose(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredClose(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressSponsoredInfo(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredInfo(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressSummarize(ChatMessageCell chatMessageCell2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSummarize(this, chatMessageCell2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem, boolean z) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressToDoButton(this, chatMessageCell2, todoItem, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressUrl(ChatMessageCell chatMessageCell2, CharacterStyle characterStyle, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUrl(this, chatMessageCell2, characterStyle, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user, float f, float f2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell2, user, f, f2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressUserStatus(ChatMessageCell chatMessageCell2, TLRPC.User user, TLRPC.Document document, String str2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserStatus(this, chatMessageCell2, user, document, str2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell2, String str2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell2, str2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell2, long j2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell2, j2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell2, ArrayList arrayList, int i3, int i4, int i5) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell2, arrayList, i3, i4, i5);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressWebPage(ChatMessageCell chatMessageCell2, TLRPC.WebPage webPage, String str2, boolean z) {
                Browser.openUrl(chatMessageCell2.getContext(), str2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didQuickShareEnd(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareEnd(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didQuickShareMove(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareMove(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didQuickShareStart(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareStart(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didStartVideoStream(MessageObject messageObject) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean doNotShowLoadingReply(MessageObject messageObject) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$doNotShowLoadingReply(this, messageObject);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void forceUpdate(ChatMessageCell chatMessageCell2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdate(this, chatMessageCell2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void forceUpdateNoAnimation(ChatMessageCell chatMessageCell2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdateNoAnimation(this, chatMessageCell2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ String getAdminRank(long j2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getAdminRank(this, j2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingLink(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getTextSelectionHelper(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean hasSelectedMessages() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$hasSelectedMessages(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void invalidateBlur() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean isAdmin(long j2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isAdmin(this, j2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean isLandscape() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean isOwner(long j2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isOwner(this, j2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean isProgressLoading(ChatMessageCell chatMessageCell2, int i3) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isProgressLoading(this, chatMessageCell2, i3);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean isReplyOrSelf() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean keyboardIsOpened() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void needOpenWebView(MessageObject messageObject, String str2, String str3, String str4, String str5, int i3, int i4) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject, str2, str3, str4, str5, i3, i4);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean needPlayMessage(ChatMessageCell chatMessageCell2, MessageObject messageObject, boolean z) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, chatMessageCell2, messageObject, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void needReloadPolls() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void needShowPremiumBulletin(int i3) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i3);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean onAccessibilityAction(int i3, Bundle bundle) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i3, bundle);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void onDiceFinished() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean shouldDrawAvatarOnlineStatus(ChatMessageCell chatMessageCell2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawAvatarOnlineStatus(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell2, boolean z) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void videoTimerReached() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
            }
        });
        chatMessageCell.setMessageObject(this.messageObject, null, false, false, false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.chatListView = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.addView(chatActionCell, LayoutHelper.createLinear(-1, -2));
        linearLayout.addView(chatMessageCell, LayoutHelper.createLinear(-1, -2));
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.bots.BotShareSheet.4
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            protected boolean isActionBarVisible() {
                return false;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public boolean isStatusBarVisible() {
                return false;
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            protected boolean useRootView() {
                return false;
            }
        };
        this.chatView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setBackgroundImage(PreviewView.getBackgroundDrawable((Drawable) null, i, j, Theme.isCurrentThemeDark()), false);
        sizeNotifierFrameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f, 119, 4.0f, 8.0f, 4.0f, 8.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        this.buttonContainer = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(i2, resourcesProvider));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        this.button = buttonWithCounterView;
        buttonWithCounterView.setText(LocaleController.getString(C2484R.string.BotShareMessageShare), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$6(tL_messages_preparedInlineMessage, callback2, i, j, runnable, view);
            }
        });
        frameLayout.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 119, 10.0f, 10.0f, 10.0f, 10.0f));
        ViewGroup viewGroup = this.containerView;
        int i3 = this.backgroundPaddingLeft;
        viewGroup.addView(frameLayout, LayoutHelper.createFrameMarginPx(-1, -2.0f, 87, i3, 0, i3, 0));
        this.recyclerListView.setPadding(0, 0, 0, AndroidUtilities.dp(68.0f) + 1);
        this.adapter.update(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(final TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage, final Utilities.Callback2 callback2, final int i, final long j, Runnable runnable, View view) {
        final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        this.openedDialogsActivity = true;
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putBoolean("canSelectTopics", true);
        bundle.putInt("dialogsType", 1);
        if (!tL_messages_preparedInlineMessage.peer_types.isEmpty()) {
            int i2 = 0;
            bundle.putBoolean("allowGroups", false);
            bundle.putBoolean("allowMegagroups", false);
            bundle.putBoolean("allowLegacyGroups", false);
            bundle.putBoolean("allowUsers", false);
            bundle.putBoolean("allowChannels", false);
            bundle.putBoolean("allowBots", false);
            ArrayList arrayList = tL_messages_preparedInlineMessage.peer_types;
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                TLRPC.InlineQueryPeerType inlineQueryPeerType = (TLRPC.InlineQueryPeerType) obj;
                if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypePM) {
                    bundle.putBoolean("allowUsers", true);
                } else if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypeBotPM) {
                    bundle.putBoolean("allowBots", true);
                } else if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypeBroadcast) {
                    bundle.putBoolean("allowChannels", true);
                } else if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypeChat) {
                    bundle.putBoolean("allowLegacyGroups", true);
                } else if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypeMegagroup) {
                    bundle.putBoolean("allowMegagroups", true);
                }
            }
        }
        DialogsActivity dialogsActivity = new DialogsActivity(bundle) { // from class: org.telegram.ui.bots.BotShareSheet.5
            @Override // org.telegram.ui.DialogsActivity
            public boolean clickSelectsDialog() {
                return true;
            }

            @Override // org.telegram.ui.DialogsActivity, org.telegram.ui.ActionBar.BaseFragment
            public void onFragmentDestroy() {
                super.onFragmentDestroy();
                if (BotShareSheet.this.sent) {
                    return;
                }
                BotShareSheet.this.sent = true;
                Utilities.Callback2 callback22 = callback2;
                if (callback22 != null) {
                    callback22.run("USER_DECLINED", null);
                }
            }
        };
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public /* synthetic */ boolean canSelectStories() {
                return DialogsActivity.DialogsActivityDelegate.CC.$default$canSelectStories(this);
            }

            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList2, CharSequence charSequence, boolean z, boolean z2, int i3, int i4, TopicsFragment topicsFragment) {
                return this.f$0.lambda$new$5(i, tL_messages_preparedInlineMessage, j, safeLastFragment, callback2, dialogsActivity2, arrayList2, charSequence, z, z2, i3, i4, topicsFragment);
            }

            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public /* synthetic */ boolean didSelectStories(DialogsActivity dialogsActivity2) {
                return DialogsActivity.DialogsActivityDelegate.CC.$default$didSelectStories(this, dialogsActivity2);
            }
        });
        safeLastFragment.presentFragment(dialogsActivity);
        lambda$new$0();
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$5(int i, TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage, long j, BaseFragment baseFragment, Utilities.Callback2 callback2, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i2, int i3, TopicsFragment topicsFragment) {
        int i4;
        MessageObject messageObject;
        TLRPC.TL_forumTopic tL_forumTopicFindTopic;
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        boolean z3 = false;
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            MessagesStorage.TopicKey topicKey = (MessagesStorage.TopicKey) obj;
            long j2 = topicKey.dialogId;
            long j3 = topicKey.topicId;
            if (!DialogObject.isEncryptedDialog(j2)) {
                if (j3 == 0 || (tL_forumTopicFindTopic = MessagesController.getInstance(i).getTopicsController().findTopic(-j2, j3)) == null || tL_forumTopicFindTopic.topicStartMessage == null) {
                    i4 = i;
                    messageObject = null;
                } else {
                    i4 = i;
                    MessageObject messageObject2 = new MessageObject(i4, tL_forumTopicFindTopic.topicStartMessage, z3, z3);
                    messageObject2.isTopicMainMessage = true;
                    messageObject = messageObject2;
                }
                HashMap map = new HashMap();
                map.put("query_id", _UrlKt.FRAGMENT_ENCODE_SET + tL_messages_preparedInlineMessage.query_id);
                map.put("id", _UrlKt.FRAGMENT_ENCODE_SET + tL_messages_preparedInlineMessage.result.id);
                map.put("bot", _UrlKt.FRAGMENT_ENCODE_SET + j);
                long j4 = j2;
                SendMessagesHelper.prepareSendingBotContextResult(baseFragment, AccountInstance.getInstance(i4), tL_messages_preparedInlineMessage.result, map, j4, messageObject, messageObject, null, null, z2, i2, 0, null, 0, 0L);
                if (charSequence != null) {
                    SendMessagesHelper sendMessagesHelper = SendMessagesHelper.getInstance(i4);
                    MessageObject messageObject3 = messageObject;
                    SendMessagesHelper.SendMessageParams sendMessageParamsOf = SendMessagesHelper.SendMessageParams.of(charSequence.toString(), j4, messageObject3, messageObject3, null, true, null, null, null, true, 0, 0, null, false);
                    j4 = j4;
                    sendMessagesHelper.sendMessage(sendMessageParamsOf);
                }
                arrayList2.add(Long.valueOf(j4));
                i5 = i5;
                z3 = false;
            }
        }
        if (!this.sent) {
            this.sent = true;
            if (callback2 != null) {
                callback2.run(arrayList2.size() > 0 ? null : "USER_DECLINED", arrayList2);
            }
        }
        if (topicsFragment != null) {
            topicsFragment.finishFragment();
            dialogsActivity.removeSelfFromStack();
            return true;
        }
        dialogsActivity.finishFragment();
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.recyclerListView.scrollToPosition(Math.max((this.recyclerListView.getAdapter() == null ? 0 : this.recyclerListView.getAdapter().getItemCount()) - 1, 0));
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        if (this.openedDialogsActivity || this.sent) {
            return;
        }
        this.sent = true;
        Utilities.Callback2 callback2 = this.whenDone;
        if (callback2 != null) {
            callback2.run("USER_DECLINED", null);
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2484R.string.BotShareMessage);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(-1, this.chatView));
        arrayList.add(UItem.asShadow(AndroidUtilities.replaceTags(LocaleController.formatString(C2484R.string.BotShareMessageInfo, this.botName))));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MessageObject convert(int i, long j, TLRPC.BotInlineResult botInlineResult, File file) {
        String str;
        String absolutePath;
        TLRPC.TL_document tL_document;
        TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename;
        TLRPC.TL_photo tL_photo;
        int i2;
        TLRPC.TL_document tL_document2;
        TLRPC.TL_photo tL_photo2;
        long j2;
        if (file == null || !file.exists()) {
            return convert(i, j, botInlineResult, null, null);
        }
        str = botInlineResult.type;
        absolutePath = file.getAbsolutePath();
        str.getClass();
        switch (str) {
            case "sticker":
            case "gif":
            case "file":
            case "audio":
            case "video":
            case "voice":
                tL_document = new TLRPC.TL_document();
                tL_document.id = 0L;
                tL_document.size = 0L;
                tL_document.dc_id = 0;
                tL_document.mime_type = botInlineResult.content.mime_type;
                tL_document.file_reference = new byte[0];
                tL_document.date = ConnectionsManager.getInstance(i).getCurrentTime();
                tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                tL_document.attributes.add(tL_documentAttributeFilename);
                switch (str) {
                    case "sticker":
                        TLRPC.TL_documentAttributeSticker tL_documentAttributeSticker = new TLRPC.TL_documentAttributeSticker();
                        tL_documentAttributeSticker.alt = _UrlKt.FRAGMENT_ENCODE_SET;
                        tL_documentAttributeSticker.stickerset = new TLRPC.TL_inputStickerSetEmpty();
                        tL_document.attributes.add(tL_documentAttributeSticker);
                        TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = new TLRPC.TL_documentAttributeImageSize();
                        int[] inlineResultWidthAndHeight = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                        tL_documentAttributeImageSize.f1339w = inlineResultWidthAndHeight[0];
                        tL_documentAttributeImageSize.f1338h = inlineResultWidthAndHeight[1];
                        tL_document.attributes.add(tL_documentAttributeImageSize);
                        tL_documentAttributeFilename.file_name = "sticker.webp";
                        try {
                            if (botInlineResult.thumb == null) {
                                tL_photo = null;
                            } else {
                                tL_photo = null;
                                try {
                                    Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.thumb.url) + "." + ImageLoader.getHttpUrlExtension(botInlineResult.thumb.url, "webp")).getAbsolutePath(), null, 90.0f, 90.0f, true);
                                    if (bitmapLoadBitmap != null) {
                                        TLRPC.PhotoSize photoSizeScaleAndSaveImage = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap, 90.0f, 90.0f, 55, false);
                                        if (photoSizeScaleAndSaveImage != null) {
                                            tL_document.thumbs.add(photoSizeScaleAndSaveImage);
                                            tL_document.flags |= 1;
                                        }
                                        bitmapLoadBitmap.recycle();
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    FileLog.m955e(th);
                                }
                            }
                            break;
                        } catch (Throwable th2) {
                            th = th2;
                            tL_photo = null;
                        }
                        break;
                    case "gif":
                        tL_documentAttributeFilename.file_name = "animation.gif";
                        if (absolutePath.endsWith("mp4")) {
                            tL_document.mime_type = "video/mp4";
                            tL_document.attributes.add(new TLRPC.TL_documentAttributeAnimated());
                        } else {
                            tL_document.mime_type = "image/gif";
                        }
                        tL_photo = null;
                        break;
                    case "file":
                        int iLastIndexOf = botInlineResult.content.mime_type.lastIndexOf(47);
                        if (iLastIndexOf != -1) {
                            tL_documentAttributeFilename.file_name = "file." + botInlineResult.content.mime_type.substring(iLastIndexOf + 1);
                        } else {
                            tL_documentAttributeFilename.file_name = "file";
                        }
                        tL_photo = null;
                        break;
                    case "audio":
                        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
                        tL_documentAttributeAudio.duration = MessageObject.getInlineResultDuration(botInlineResult);
                        tL_documentAttributeAudio.title = botInlineResult.title;
                        int i3 = tL_documentAttributeAudio.flags;
                        tL_documentAttributeAudio.flags = i3 | 1;
                        String str2 = botInlineResult.description;
                        if (str2 != null) {
                            tL_documentAttributeAudio.performer = str2;
                            tL_documentAttributeAudio.flags = i3 | 3;
                        }
                        tL_documentAttributeFilename.file_name = "audio.mp3";
                        tL_document.attributes.add(tL_documentAttributeAudio);
                        tL_photo = null;
                        break;
                    case "video":
                        tL_documentAttributeFilename.file_name = "video.mp4";
                        TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo();
                        int[] inlineResultWidthAndHeight2 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                        tL_documentAttributeVideo.f1339w = inlineResultWidthAndHeight2[0];
                        tL_documentAttributeVideo.f1338h = inlineResultWidthAndHeight2[1];
                        tL_documentAttributeVideo.duration = MessageObject.getInlineResultDuration(botInlineResult);
                        tL_documentAttributeVideo.supports_streaming = true;
                        tL_document.attributes.add(tL_documentAttributeVideo);
                        try {
                            if (botInlineResult.thumb != null) {
                                Bitmap bitmapLoadBitmap2 = ImageLoader.loadBitmap(new File(FileLoader.getDirectory(4), Utilities.MD5(botInlineResult.thumb.url) + "." + ImageLoader.getHttpUrlExtension(botInlineResult.thumb.url, "jpg")).getAbsolutePath(), null, 90.0f, 90.0f, true);
                                if (bitmapLoadBitmap2 != null) {
                                    TLRPC.PhotoSize photoSizeScaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(bitmapLoadBitmap2, 90.0f, 90.0f, 55, false);
                                    if (photoSizeScaleAndSaveImage2 != null) {
                                        tL_document.thumbs.add(photoSizeScaleAndSaveImage2);
                                        tL_document.flags |= 1;
                                    }
                                    bitmapLoadBitmap2.recycle();
                                }
                            }
                            break;
                        } catch (Throwable th3) {
                            FileLog.m955e(th3);
                        }
                        tL_photo = null;
                        break;
                    case "voice":
                        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio2 = new TLRPC.TL_documentAttributeAudio();
                        tL_documentAttributeAudio2.duration = MessageObject.getInlineResultDuration(botInlineResult);
                        tL_documentAttributeAudio2.voice = true;
                        tL_documentAttributeFilename.file_name = "audio.ogg";
                        tL_document.attributes.add(tL_documentAttributeAudio2);
                        tL_photo = null;
                        break;
                }
                if (tL_documentAttributeFilename.file_name == null) {
                    tL_documentAttributeFilename.file_name = "file";
                }
                if (tL_document.mime_type == null) {
                    tL_document.mime_type = "application/octet-stream";
                }
                if (tL_document.thumbs.isEmpty()) {
                    TLRPC.TL_photoSize tL_photoSize = new TLRPC.TL_photoSize();
                    int[] inlineResultWidthAndHeight3 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                    tL_photoSize.f1341w = inlineResultWidthAndHeight3[0];
                    tL_photoSize.f1340h = inlineResultWidthAndHeight3[1];
                    tL_photoSize.size = 0;
                    tL_photoSize.location = new TLRPC.TL_fileLocationUnavailable();
                    tL_photoSize.type = "x";
                    tL_document.thumbs.add(tL_photoSize);
                    tL_document.flags |= 1;
                }
                i2 = i;
                tL_document2 = tL_document;
                tL_photo2 = tL_photo;
                j2 = j;
                break;
            case "photo":
                TLRPC.TL_photo tL_photoGeneratePhotoSizes = file.exists() ? SendMessagesHelper.getInstance(i).generatePhotoSizes(absolutePath, null) : null;
                if (tL_photoGeneratePhotoSizes == null) {
                    tL_photoGeneratePhotoSizes = new TLRPC.TL_photo();
                    tL_photoGeneratePhotoSizes.date = ConnectionsManager.getInstance(i).getCurrentTime();
                    tL_photoGeneratePhotoSizes.file_reference = new byte[0];
                    TLRPC.TL_photoSize tL_photoSize2 = new TLRPC.TL_photoSize();
                    int[] inlineResultWidthAndHeight4 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                    tL_photoSize2.f1341w = inlineResultWidthAndHeight4[0];
                    tL_photoSize2.f1340h = inlineResultWidthAndHeight4[1];
                    tL_photoSize2.size = 1;
                    tL_photoSize2.location = new TLRPC.TL_fileLocationUnavailable();
                    tL_photoSize2.type = "x";
                    tL_photoGeneratePhotoSizes.sizes.add(tL_photoSize2);
                }
                i2 = i;
                j2 = j;
                tL_photo2 = tL_photoGeneratePhotoSizes;
                tL_document2 = null;
                break;
            default:
                i2 = i;
                j2 = j;
                tL_photo2 = null;
                tL_document2 = null;
                break;
        }
        return convert(i2, j2, botInlineResult, tL_photo2, tL_document2);
    }

    public static MessageObject convert(int i, long j, TLRPC.BotInlineResult botInlineResult, TLRPC.Photo photo, TLRPC.Document document) {
        TLRPC.ReplyMarkup replyMarkup;
        if (photo == null) {
            photo = botInlineResult.photo;
        }
        if (document == null) {
            document = botInlineResult.document;
        }
        TLRPC.TL_message tL_message = new TLRPC.TL_message();
        tL_message.out = false;
        tL_message.flags |= 2048;
        tL_message.via_bot_id = j;
        tL_message.date = ConnectionsManager.getInstance(i).getCurrentTime();
        tL_message.peer_id = MessagesController.getInstance(i).getPeer(UserConfig.getInstance(i).getClientUserId());
        tL_message.from_id = MessagesController.getInstance(i).getPeer(UserConfig.getInstance(i).getClientUserId());
        TLRPC.BotInlineMessage botInlineMessage = botInlineResult.send_message;
        if (botInlineMessage != null) {
            if (botInlineMessage instanceof TLRPC.TL_botInlineMessageText) {
                TLRPC.TL_botInlineMessageText tL_botInlineMessageText = (TLRPC.TL_botInlineMessageText) botInlineMessage;
                tL_message.message = tL_botInlineMessageText.message;
                tL_message.entities = tL_botInlineMessageText.entities;
            } else if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaContact) {
                TLRPC.TL_botInlineMessageMediaContact tL_botInlineMessageMediaContact = (TLRPC.TL_botInlineMessageMediaContact) botInlineMessage;
                TLRPC.TL_messageMediaContact tL_messageMediaContact = new TLRPC.TL_messageMediaContact();
                tL_messageMediaContact.phone_number = tL_botInlineMessageMediaContact.phone_number;
                tL_messageMediaContact.first_name = tL_botInlineMessageMediaContact.first_name;
                tL_messageMediaContact.last_name = tL_botInlineMessageMediaContact.last_name;
                tL_messageMediaContact.vcard = tL_botInlineMessageMediaContact.vcard;
                tL_message.flags |= 512;
                tL_message.media = tL_messageMediaContact;
            } else if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaGeo) {
                TLRPC.TL_messageMediaGeo tL_messageMediaGeo = new TLRPC.TL_messageMediaGeo();
                tL_messageMediaGeo.geo = ((TLRPC.TL_botInlineMessageMediaGeo) botInlineMessage).geo;
                tL_message.flags |= 512;
                tL_message.media = tL_messageMediaGeo;
            } else if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaVenue) {
                TLRPC.TL_botInlineMessageMediaVenue tL_botInlineMessageMediaVenue = (TLRPC.TL_botInlineMessageMediaVenue) botInlineMessage;
                TLRPC.TL_messageMediaVenue tL_messageMediaVenue = new TLRPC.TL_messageMediaVenue();
                tL_messageMediaVenue.geo = tL_botInlineMessageMediaVenue.geo;
                tL_messageMediaVenue.title = tL_botInlineMessageMediaVenue.title;
                tL_messageMediaVenue.address = tL_botInlineMessageMediaVenue.address;
                tL_messageMediaVenue.venue_id = tL_botInlineMessageMediaVenue.venue_id;
                tL_messageMediaVenue.provider = tL_botInlineMessageMediaVenue.venue_type;
                tL_message.flags |= 512;
                tL_message.media = tL_messageMediaVenue;
            } else if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaAuto) {
                TLRPC.TL_botInlineMessageMediaAuto tL_botInlineMessageMediaAuto = (TLRPC.TL_botInlineMessageMediaAuto) botInlineMessage;
                tL_message.message = tL_botInlineMessageMediaAuto.message;
                tL_message.entities = tL_botInlineMessageMediaAuto.entities;
            } else if (!(botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaInvoice) && (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaWebPage)) {
                TLRPC.TL_botInlineMessageMediaWebPage tL_botInlineMessageMediaWebPage = (TLRPC.TL_botInlineMessageMediaWebPage) botInlineMessage;
                TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage = new TLRPC.TL_messageMediaWebPage();
                tL_messageMediaWebPage.force_large_media = tL_botInlineMessageMediaWebPage.force_large_media;
                tL_messageMediaWebPage.force_small_media = tL_botInlineMessageMediaWebPage.force_small_media;
                tL_messageMediaWebPage.manual = tL_botInlineMessageMediaWebPage.manual;
                tL_messageMediaWebPage.safe = tL_botInlineMessageMediaWebPage.safe;
                tL_messageMediaWebPage.webpage = new TLRPC.TL_webPageEmpty();
                tL_message.flags |= 512;
                tL_message.media = tL_messageMediaWebPage;
            }
        }
        boolean z = true;
        if (photo != null) {
            TLRPC.TL_messageMediaPhoto tL_messageMediaPhoto = new TLRPC.TL_messageMediaPhoto();
            tL_messageMediaPhoto.photo = photo;
            tL_message.flags |= 512;
            tL_message.media = tL_messageMediaPhoto;
        } else if (document != null) {
            TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
            tL_messageMediaDocument.flags |= 1;
            tL_messageMediaDocument.voice = "voice".equalsIgnoreCase(botInlineResult.type);
            tL_messageMediaDocument.round = "round".equalsIgnoreCase(botInlineResult.type);
            tL_messageMediaDocument.document = document;
            tL_message.flags |= 512;
            tL_message.media = tL_messageMediaDocument;
        }
        TLRPC.BotInlineMessage botInlineMessage2 = botInlineResult.send_message;
        if (botInlineMessage2 != null && (replyMarkup = botInlineMessage2.reply_markup) != null) {
            tL_message.flags |= 64;
            tL_message.reply_markup = replyMarkup;
        }
        return new MessageObject(i, tL_message, z, z) { // from class: org.telegram.ui.bots.BotShareSheet.6
            @Override // org.telegram.messenger.MessageObject
            public boolean isOut() {
                return false;
            }

            @Override // org.telegram.messenger.MessageObject
            public boolean isOutOwner() {
                return false;
            }
        };
    }
}
