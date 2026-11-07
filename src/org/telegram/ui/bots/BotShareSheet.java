package org.telegram.ui.bots;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.collection.LongSparseArray;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.LaunchActivity;
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
    private final Utilities.Callback2<String, ArrayList<Long>> whenDone;

    public static void share(final Context context, final int i, final long j, String str, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Utilities.Callback2<String, ArrayList<Long>> callback2) {
        final AlertDialog alertDialog = new AlertDialog(context, 3);
        alertDialog.showDelayed(500L);
        TLRPC.TL_messages_getPreparedInlineMessage tL_messages_getPreparedInlineMessage = new TLRPC.TL_messages_getPreparedInlineMessage();
        tL_messages_getPreparedInlineMessage.bot = MessagesController.getInstance(i).getInputUser(j);
        tL_messages_getPreparedInlineMessage.id = str;
        ConnectionsManager.getInstance(i).sendRequest(tL_messages_getPreparedInlineMessage, new RequestDelegate() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BotShareSheet.$r8$lambda$F_fmB5oaljGgrU5BGz3SGrAIyRY(tLObject, i, alertDialog, context, j, resourcesProvider, runnable, callback2);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$F_fmB5oaljGgrU5BGz3SGrAIyRY(TLObject tLObject, final int i, final AlertDialog alertDialog, final Context context, final long j, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Utilities.Callback2 callback2) {
        String extensionByMimeType;
        if (!(tLObject instanceof TLRPC.TL_messages_preparedInlineMessage)) {
            if (callback2 != null) {
                callback2.run("MESSAGE_EXPIRED", null);
                return;
            }
            return;
        }
        final TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage = (TLRPC.TL_messages_preparedInlineMessage) tLObject;
        TLRPC.BotInlineMessage botInlineMessage = tL_messages_preparedInlineMessage.result.send_message;
        if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaWebPage) {
            TLRPC.TL_botInlineMessageMediaWebPage tL_botInlineMessageMediaWebPage = (TLRPC.TL_botInlineMessageMediaWebPage) botInlineMessage;
            if (!TextUtils.isEmpty(tL_botInlineMessageMediaWebPage.url)) {
                final Runnable runnableLoadWebPagePreview = loadWebPagePreview(i, tL_botInlineMessageMediaWebPage.url, new Utilities.Callback() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        BotShareSheet.m22406$r8$lambda$17G8wWARGR8C2AS8tVfVpEZg(alertDialog, context, i, j, tL_messages_preparedInlineMessage, resourcesProvider, runnable, callback2, (TLRPC.WebPage) obj);
                    }
                });
                alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda3
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        runnableLoadWebPagePreview.run();
                    }
                });
                return;
            }
        }
        final File[] fileArr = new File[1];
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                BotShareSheet.$r8$lambda$0o5aMPMbc8SQ2o4sN6GjfjuxIVQ(alertDialog, context, i, j, tL_messages_preparedInlineMessage, fileArr, resourcesProvider, runnable, callback2);
            }
        };
        TLRPC.WebDocument webDocument = tL_messages_preparedInlineMessage.result.content;
        if (webDocument != null && !TextUtils.isEmpty(webDocument.url)) {
            TLRPC.BotInlineResult botInlineResult = tL_messages_preparedInlineMessage.result;
            TLRPC.BotInlineMessage botInlineMessage2 = botInlineResult.send_message;
            if ((botInlineMessage2 instanceof TLRPC.TL_botInlineMessageMediaAuto) || (botInlineMessage2 instanceof TLRPC.TL_botInlineMessageMediaWebPage)) {
                String str = botInlineResult.content.url;
                String httpUrlExtension = ImageLoader.getHttpUrlExtension(str, null);
                if (TextUtils.isEmpty(httpUrlExtension)) {
                    extensionByMimeType = FileLoader.getExtensionByMimeType(tL_messages_preparedInlineMessage.result.content.mime_type);
                } else {
                    extensionByMimeType = "." + httpUrlExtension;
                }
                File file = new File(FileLoader.getDirectory(4), Utilities.MD5(str) + extensionByMimeType);
                if (!file.exists()) {
                    final HttpGetFileTask httpGetFileTask = new HttpGetFileTask(new Utilities.Callback() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda5
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            BotShareSheet.m22408$r8$lambda$gk81yP_ZCVQadcySBmcZi6q25U(fileArr, runnable2, (File) obj);
                        }
                    }, null);
                    httpGetFileTask.setDestFile(file);
                    httpGetFileTask.setMaxSize(8388608L);
                    httpGetFileTask.execute(str);
                    alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda6
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            httpGetFileTask.cancel(true);
                        }
                    });
                    return;
                }
                runnable2.run();
                return;
            }
        }
        runnable2.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$-17G8wWAR-GR8C2AS8-tVfVpEZg, reason: not valid java name */
    public static /* synthetic */ void m22406$r8$lambda$17G8wWARGR8C2AS8tVfVpEZg(AlertDialog alertDialog, Context context, int i, long j, TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage, Theme.ResourcesProvider resourcesProvider, Runnable runnable, Utilities.Callback2 callback2, TLRPC.WebPage webPage) {
        alertDialog.dismiss();
        new BotShareSheet(context, i, j, tL_messages_preparedInlineMessage, null, webPage, resourcesProvider, runnable, callback2).show();
    }

    public static /* synthetic */ void $r8$lambda$0o5aMPMbc8SQ2o4sN6GjfjuxIVQ(AlertDialog alertDialog, Context context, int i, long j, TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage, File[] fileArr, Theme.ResourcesProvider resourcesProvider, Runnable runnable, Utilities.Callback2 callback2) {
        alertDialog.dismiss();
        new BotShareSheet(context, i, j, tL_messages_preparedInlineMessage, fileArr[0], null, resourcesProvider, runnable, callback2).show();
    }

    /* JADX INFO: renamed from: $r8$lambda$gk81yP_ZCVQadcySBmcZi6q25-U, reason: not valid java name */
    public static /* synthetic */ void m22408$r8$lambda$gk81yP_ZCVQadcySBmcZi6q25U(File[] fileArr, Runnable runnable, File file) {
        fileArr[0] = file;
        runnable.run();
    }

    public static Runnable loadWebPagePreview(final int i, String str, final Utilities.Callback<TLRPC.WebPage> callback) {
        final int[] iArr = new int[1];
        final NotificationCenter.NotificationCenterDelegate[] notificationCenterDelegateArr = new NotificationCenter.NotificationCenterDelegate[1];
        TL_account.getWebPagePreview getwebpagepreview = new TL_account.getWebPagePreview();
        getwebpagepreview.message = str;
        iArr[0] = ConnectionsManager.getInstance(i).sendRequestTyped(getwebpagepreview, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                BotShareSheet.$r8$lambda$H6rY4tHTKZdG56Ilq3PeqEHvCN4(iArr, callback, notificationCenterDelegateArr, i, (TL_account.webPagePreview) obj, (TLRPC.TL_error) obj2);
            }
        });
        return new Runnable() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                BotShareSheet.m22407$r8$lambda$LNROlNhlx5gJOifXQCOoF3A5Pk(iArr, i, notificationCenterDelegateArr);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$H6rY4tHTKZdG56Ilq3PeqEHvCN4(int[] iArr, final Utilities.Callback callback, final NotificationCenter.NotificationCenterDelegate[] notificationCenterDelegateArr, final int i, TL_account.webPagePreview webpagepreview, TLRPC.TL_error tL_error) {
        iArr[0] = -1;
        TLRPC.MessageMedia messageMedia = webpagepreview.media;
        if (!(messageMedia instanceof TLRPC.TL_messageMediaEmpty)) {
            TLRPC.WebPage webPage = messageMedia.webpage;
            if (!(webPage instanceof TLRPC.TL_webPageEmpty)) {
                if (messageMedia instanceof TLRPC.TL_messageMediaWebPage) {
                    if (webPage instanceof TLRPC.TL_webPagePending) {
                        final long j = webPage.id;
                        NotificationCenter.NotificationCenterDelegate notificationCenterDelegate = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.bots.BotShareSheet.1
                            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
                            public void didReceivedNotification(int i2, int i3, Object... objArr) {
                                LongSparseArray longSparseArray;
                                int i4 = NotificationCenter.didReceivedWebpagesInUpdates;
                                if (i2 == i4 && (longSparseArray = (LongSparseArray) objArr[0]) != null && longSparseArray.containsKey(j)) {
                                    TLRPC.WebPage webPage2 = (TLRPC.WebPage) longSparseArray.get(j);
                                    if (notificationCenterDelegateArr[0] != null) {
                                        NotificationCenter.getInstance(i).removeObserver(notificationCenterDelegateArr[0], i4);
                                        notificationCenterDelegateArr[0] = null;
                                    }
                                    Utilities.Callback callback2 = callback;
                                    if (!(webPage2 instanceof TLRPC.TL_webPage)) {
                                        webPage2 = null;
                                    }
                                    callback2.run(webPage2);
                                }
                            }
                        };
                        notificationCenterDelegateArr[0] = notificationCenterDelegate;
                        NotificationCenter.getInstance(i).addObserver(notificationCenterDelegate, NotificationCenter.didReceivedWebpagesInUpdates);
                        return;
                    }
                    callback.run(webPage instanceof TLRPC.TL_webPage ? webPage : null);
                    return;
                }
                callback.run(null);
                return;
            }
        }
        callback.run(null);
    }

    /* JADX INFO: renamed from: $r8$lambda$LNROlNh-lx5gJOifXQCOoF3A5Pk, reason: not valid java name */
    public static /* synthetic */ void m22407$r8$lambda$LNROlNhlx5gJOifXQCOoF3A5Pk(int[] iArr, int i, NotificationCenter.NotificationCenterDelegate[] notificationCenterDelegateArr) {
        if (iArr[0] >= 0) {
            ConnectionsManager.getInstance(i).cancelRequest(iArr[0], true);
            iArr[0] = -1;
        }
        if (notificationCenterDelegateArr[0] != null) {
            NotificationCenter.getInstance(i).removeObserver(notificationCenterDelegateArr[0], NotificationCenter.didReceivedWebpagesInUpdates);
            notificationCenterDelegateArr[0] = null;
        }
    }

    public BotShareSheet(Context context, final int i, final long j, final TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage, File file, TLRPC.WebPage webPage, Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Utilities.Callback2<String, ArrayList<Long>> callback2) {
        super(context, null, false, false, false, resourcesProvider);
        this.openedDialogsActivity = false;
        this.sent = false;
        this.currentAccount = i;
        this.message = tL_messages_preparedInlineMessage;
        this.botId = j;
        this.botName = UserObject.getUserName(MessagesController.getInstance(i).getUser(Long.valueOf(j)));
        this.whenDone = callback2;
        setSlidingActionBar();
        this.headerPaddingTop = AndroidUtilities.dp(4.0f);
        this.headerPaddingBottom = AndroidUtilities.dp(-10.0f);
        this.messageObject = convert(i, j, tL_messages_preparedInlineMessage.result, file, webPage);
        ChatActionCell chatActionCell = new ChatActionCell(context, false, resourcesProvider);
        this.actionCell = chatActionCell;
        chatActionCell.setDelegate(new ChatActionCell.ChatActionCellDelegate() { // from class: org.telegram.ui.bots.BotShareSheet.2
        });
        chatActionCell.setCustomText(LocaleController.getString(C2665R.string.BotShareMessagePreview));
        ChatMessageCell chatMessageCell = new ChatMessageCell(context, i) { // from class: org.telegram.ui.bots.BotShareSheet.3
            @Override // org.telegram.ui.Cells.ChatMessageCell
            public boolean isDrawSelectionBackground() {
                return false;
            }
        };
        this.messageCell = chatMessageCell;
        chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.bots.BotShareSheet.4
            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public boolean canPerformActions() {
                return false;
            }
        });
        chatMessageCell.setMessageObject(this.messageObject, null, false, false, false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.chatListView = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.addView(chatActionCell, LayoutHelper.createLinear(-1, -2));
        linearLayout.addView(chatMessageCell, LayoutHelper.createLinear(-1, -2));
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.bots.BotShareSheet.5
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public boolean isActionBarVisible() {
                return false;
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public boolean isStatusBarVisible() {
                return false;
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public boolean useRootView() {
                return false;
            }
        };
        this.chatView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setBackgroundImage(PreviewView.getBackgroundDrawable((Drawable) null, i, j, Theme.isCurrentThemeDark()), false);
        sizeNotifierFrameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f, 119, 4.0f, 8.0f, 4.0f, 8.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        this.buttonContainer = frameLayout;
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        this.button = round;
        round.setText(LocaleController.getString(C2665R.string.BotShareMessageShare), false);
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$10(tL_messages_preparedInlineMessage, callback2, i, j, runnable, view);
            }
        });
        frameLayout.addView(round, LayoutHelper.createFrame(-1, 48.0f, 119, 10.0f, 10.0f, 10.0f, 10.0f));
        ViewGroup viewGroup = this.containerView;
        int i2 = this.backgroundPaddingLeft;
        viewGroup.addView(frameLayout, LayoutHelper.createFrameMarginPx(-1, -2.0f, 87, i2, 0, i2, 0));
        RecyclerListView recyclerListView = this.recyclerListView;
        int i3 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i3, 0, i3, AndroidUtilities.dp(68.0f) + 1);
        this.recyclerListView.setSections();
        int i4 = Theme.key_windowBackgroundGray;
        setBackgroundColor(getThemedColor(i4));
        fixNavigationBar(getThemedColor(i4));
        this.adapter.update(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(final TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage, final Utilities.Callback2 callback2, final int i, final long j, Runnable runnable, View view) {
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
            ArrayList<TLRPC.InlineQueryPeerType> arrayList = tL_messages_preparedInlineMessage.peer_types;
            int size = arrayList.size();
            while (i2 < size) {
                TLRPC.InlineQueryPeerType inlineQueryPeerType = arrayList.get(i2);
                i2++;
                TLRPC.InlineQueryPeerType inlineQueryPeerType2 = inlineQueryPeerType;
                if (inlineQueryPeerType2 instanceof TLRPC.TL_inlineQueryPeerTypePM) {
                    bundle.putBoolean("allowUsers", true);
                } else if (inlineQueryPeerType2 instanceof TLRPC.TL_inlineQueryPeerTypeBotPM) {
                    bundle.putBoolean("allowBots", true);
                } else if (inlineQueryPeerType2 instanceof TLRPC.TL_inlineQueryPeerTypeBroadcast) {
                    bundle.putBoolean("allowChannels", true);
                } else if (inlineQueryPeerType2 instanceof TLRPC.TL_inlineQueryPeerTypeChat) {
                    bundle.putBoolean("allowLegacyGroups", true);
                } else if (inlineQueryPeerType2 instanceof TLRPC.TL_inlineQueryPeerTypeMegagroup) {
                    bundle.putBoolean("allowMegagroups", true);
                }
            }
        }
        DialogsActivity dialogsActivity = new DialogsActivity(bundle) { // from class: org.telegram.ui.bots.BotShareSheet.6
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
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda11
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList2, CharSequence charSequence, boolean z, boolean z2, int i3, int i4, TopicsFragment topicsFragment) {
                return this.f$0.lambda$new$9(i, tL_messages_preparedInlineMessage, j, safeLastFragment, callback2, dialogsActivity2, arrayList2, charSequence, z, z2, i3, i4, topicsFragment);
            }
        });
        safeLastFragment.presentFragment(dialogsActivity);
        lambda$new$0();
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$9(int i, TLRPC.TL_messages_preparedInlineMessage tL_messages_preparedInlineMessage, long j, BaseFragment baseFragment, Utilities.Callback2 callback2, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i2, int i3, TopicsFragment topicsFragment) {
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
                SendMessagesHelper.prepareSendingBotContextResult(baseFragment, AccountInstance.getInstance(i4), tL_messages_preparedInlineMessage.result, map, j4, messageObject, messageObject, null, null, z2, i2, 0, null, 0L, 0L);
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
    public void onCreate(Bundle bundle) {
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
        Utilities.Callback2<String, ArrayList<Long>> callback2 = this.whenDone;
        if (callback2 != null) {
            callback2.run("USER_DECLINED", null);
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        return LocaleController.getString(C2665R.string.BotShareMessage);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.bots.BotShareSheet$$ExternalSyntheticLambda9
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(-1, this.chatView));
        arrayList.add(UItem.asShadow(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.BotShareMessageInfo, this.botName))));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x013e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MessageObject convert(int i, long j, TLRPC.BotInlineResult botInlineResult, File file, TLRPC.WebPage webPage) {
        String str;
        String absolutePath;
        TLRPC.TL_document tL_document;
        TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename;
        TLRPC.TL_photo tL_photo;
        TLRPC.TL_document tL_document2;
        TLRPC.TL_photo tL_photo2;
        if (file == null || !file.exists() || webPage != null) {
            return convert(i, j, botInlineResult, null, null, webPage);
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
                        tL_documentAttributeImageSize.f1015w = inlineResultWidthAndHeight[0];
                        tL_documentAttributeImageSize.f1014h = inlineResultWidthAndHeight[1];
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
                                    FileLog.m992e(th);
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
                            tL_documentAttributeFilename.file_name = "file.".concat(botInlineResult.content.mime_type.substring(iLastIndexOf + 1));
                        } else {
                            tL_documentAttributeFilename.file_name = "file";
                        }
                        tL_photo = null;
                        break;
                    case "audio":
                        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
                        tL_documentAttributeAudio.duration = MessageObject.getInlineResultDuration(botInlineResult);
                        tL_documentAttributeAudio.title = botInlineResult.title;
                        int i2 = tL_documentAttributeAudio.flags;
                        tL_documentAttributeAudio.flags = i2 | 1;
                        String str2 = botInlineResult.description;
                        if (str2 != null) {
                            tL_documentAttributeAudio.performer = str2;
                            tL_documentAttributeAudio.flags = i2 | 3;
                        }
                        tL_documentAttributeFilename.file_name = "audio.mp3";
                        tL_document.attributes.add(tL_documentAttributeAudio);
                        tL_photo = null;
                        break;
                    case "video":
                        tL_documentAttributeFilename.file_name = "video.mp4";
                        TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo();
                        int[] inlineResultWidthAndHeight2 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                        tL_documentAttributeVideo.f1015w = inlineResultWidthAndHeight2[0];
                        tL_documentAttributeVideo.f1014h = inlineResultWidthAndHeight2[1];
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
                            FileLog.m992e(th3);
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
                    tL_photoSize.f1017w = inlineResultWidthAndHeight3[0];
                    tL_photoSize.f1016h = inlineResultWidthAndHeight3[1];
                    tL_photoSize.size = 0;
                    tL_photoSize.location = new TLRPC.TL_fileLocationUnavailable();
                    tL_photoSize.type = "x";
                    tL_document.thumbs.add(tL_photoSize);
                    tL_document.flags |= 1;
                }
                tL_document2 = tL_document;
                tL_photo2 = tL_photo;
                break;
            case "photo":
                TLRPC.TL_photo tL_photoGeneratePhotoSizes = file.exists() ? SendMessagesHelper.getInstance(i).generatePhotoSizes(absolutePath, null) : null;
                if (tL_photoGeneratePhotoSizes == null) {
                    tL_photoGeneratePhotoSizes = new TLRPC.TL_photo();
                    tL_photoGeneratePhotoSizes.date = ConnectionsManager.getInstance(i).getCurrentTime();
                    tL_photoGeneratePhotoSizes.file_reference = new byte[0];
                    TLRPC.TL_photoSize tL_photoSize2 = new TLRPC.TL_photoSize();
                    int[] inlineResultWidthAndHeight4 = MessageObject.getInlineResultWidthAndHeight(botInlineResult);
                    tL_photoSize2.f1017w = inlineResultWidthAndHeight4[0];
                    tL_photoSize2.f1016h = inlineResultWidthAndHeight4[1];
                    tL_photoSize2.size = 1;
                    tL_photoSize2.location = new TLRPC.TL_fileLocationUnavailable();
                    tL_photoSize2.type = "x";
                    tL_photoGeneratePhotoSizes.sizes.add(tL_photoSize2);
                }
                tL_photo2 = tL_photoGeneratePhotoSizes;
                tL_document2 = null;
                break;
            default:
                tL_photo2 = null;
                tL_document2 = null;
                break;
        }
        return convert(i, j, botInlineResult, tL_photo2, tL_document2, null);
    }

    public static MessageObject convert(int i, long j, TLRPC.BotInlineResult botInlineResult, TLRPC.Photo photo, TLRPC.Document document, TLRPC.WebPage webPage) {
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
        boolean z = true;
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
                if (TLObject.hasFlag(tL_botInlineMessageMediaAuto.flags, 2)) {
                    tL_message.flags |= 128;
                    tL_message.entities = tL_botInlineMessageMediaAuto.entities;
                }
            } else if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaInvoice) {
                TLRPC.TL_botInlineMessageMediaInvoice tL_botInlineMessageMediaInvoice = (TLRPC.TL_botInlineMessageMediaInvoice) botInlineMessage;
                TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice = new TLRPC.TL_messageMediaInvoice();
                tL_messageMediaInvoice.shipping_address_requested = tL_botInlineMessageMediaInvoice.shipping_address_requested;
                tL_messageMediaInvoice.test = tL_botInlineMessageMediaInvoice.test;
                tL_messageMediaInvoice.title = tL_botInlineMessageMediaInvoice.title;
                tL_messageMediaInvoice.description = tL_botInlineMessageMediaInvoice.description;
                if (TLObject.hasFlag(tL_botInlineMessageMediaInvoice.flags, 1)) {
                    tL_messageMediaInvoice.flags |= 128;
                    tL_messageMediaInvoice.webPhoto = tL_botInlineMessageMediaInvoice.photo;
                }
                tL_messageMediaInvoice.currency = tL_botInlineMessageMediaInvoice.currency;
                tL_messageMediaInvoice.total_amount = tL_botInlineMessageMediaInvoice.total_amount;
                tL_message.flags |= 512;
                tL_message.media = tL_messageMediaInvoice;
            } else if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaWebPage) {
                TLRPC.TL_botInlineMessageMediaWebPage tL_botInlineMessageMediaWebPage = (TLRPC.TL_botInlineMessageMediaWebPage) botInlineMessage;
                TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage = new TLRPC.TL_messageMediaWebPage();
                tL_messageMediaWebPage.force_large_media = tL_botInlineMessageMediaWebPage.force_large_media;
                tL_messageMediaWebPage.force_small_media = tL_botInlineMessageMediaWebPage.force_small_media;
                tL_messageMediaWebPage.manual = tL_botInlineMessageMediaWebPage.manual;
                tL_messageMediaWebPage.safe = tL_botInlineMessageMediaWebPage.safe;
                tL_message.invert_media = tL_botInlineMessageMediaWebPage.invert_media;
                tL_message.message = tL_botInlineMessageMediaWebPage.message;
                if (webPage != null) {
                    tL_messageMediaWebPage.webpage = webPage;
                } else {
                    TLRPC.TL_webPage tL_webPage = new TLRPC.TL_webPage();
                    if (TLObject.hasFlag(tL_botInlineMessageMediaWebPage.flags, 2)) {
                        tL_message.flags |= 128;
                        tL_message.entities = tL_botInlineMessageMediaWebPage.entities;
                    }
                    String str = tL_botInlineMessageMediaWebPage.url;
                    tL_webPage.display_url = str;
                    tL_webPage.url = str;
                    tL_messageMediaWebPage.webpage = tL_webPage;
                }
                tL_message.flags |= 512;
                tL_message.media = tL_messageMediaWebPage;
            } else if (botInlineMessage instanceof TLRPC.TL_botInlineMessageRichMessage) {
                tL_message.flags2 |= 8192;
                tL_message.rich_message = ((TLRPC.TL_botInlineMessageRichMessage) botInlineMessage).rich_message;
            }
        }
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
        return new MessageObject(i, tL_message, z, z) { // from class: org.telegram.ui.bots.BotShareSheet.7
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
