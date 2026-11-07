package com.exteragram.messenger.player;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import androidx.core.content.FileProvider;
import java.io.File;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileRefController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.recorder.SelectAudioAlert;
import org.telegram.ui.TopicsFragment;

/* JADX INFO: loaded from: classes4.dex */
public class PlayerActions {
    private final LaunchActivity activity;
    private final int currentAccount;
    private final Host host;

    public interface Host {
        void dismissPlayer();

        FrameLayout getBulletinContainer();

        Theme.ResourcesProvider getBulletinResourcesProvider();

        MessagesController.SavedMusicList getSavedMusicList();

        Theme.ResourcesProvider getSheetResourcesProvider();
    }

    public interface MessageCallback {
        void run(TLRPC.Message message);
    }

    public PlayerActions(int i, LaunchActivity launchActivity, Host host) {
        this.currentAccount = i;
        this.activity = launchActivity;
        this.host = host;
    }

    private BulletinFactory bulletins() {
        return BulletinFactory.of(this.host.getBulletinContainer(), this.host.getBulletinResourcesProvider());
    }

    private void switchAccountIfNeeded() {
        LaunchActivity launchActivity = this.activity;
        if (launchActivity != null) {
            int i = UserConfig.selectedAccount;
            int i2 = this.currentAccount;
            if (i != i2) {
                launchActivity.switchToAccount(i2, true);
            }
        }
    }

    public static boolean isNoForwards(int i, MessageObject messageObject) {
        if (messageObject == null) {
            return false;
        }
        if (MessagesController.getInstance(i).isPeerNoForwards(messageObject.getDialogId())) {
            return true;
        }
        TLRPC.Message message = messageObject.messageOwner;
        return message != null && message.noforwards;
    }

    public static boolean isServiceTrack(MessageObject messageObject) {
        return messageObject == null || messageObject.eventId != 0 || messageObject.getId() <= -2000000000;
    }

    public static File getLocalFile(MessageObject messageObject) {
        String str = messageObject.messageOwner.attachPath;
        if (!TextUtils.isEmpty(str)) {
            File file = new File(str);
            if (file.exists()) {
                return file;
            }
        }
        return FileLoader.getInstance(messageObject.currentAccount).getPathToMessage(messageObject.messageOwner);
    }

    public boolean isInProfile(MessageObject messageObject) {
        TLRPC.Document document = messageObject != null ? messageObject.getDocument() : null;
        return document != null && MessagesController.getInstance(this.currentAccount).getSavedMusicIds().ids.contains(Long.valueOf(document.id));
    }

    public boolean isProfileIdsLoading() {
        return MessagesController.getInstance(this.currentAccount).getSavedMusicIds().loading;
    }

    public void forward(final MessageObject messageObject, final boolean z) {
        final ArrayList arrayList;
        final TLRPC.TL_document tL_document;
        if (this.activity == null || messageObject == null) {
            return;
        }
        switchAccountIfNeeded();
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putInt("dialogsType", 3);
        bundle.putBoolean("canSelectTopics", true);
        bundle.putBoolean("forward_noquote", z);
        DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        if (messageObject.getId() < 0) {
            TLRPC.Document document = messageObject.getDocument();
            if (!(document instanceof TLRPC.TL_document)) {
                return;
            }
            tL_document = (TLRPC.TL_document) document;
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(messageObject);
            arrayList = arrayList2;
            tL_document = null;
        }
        final MessagesController.SavedMusicList savedMusicList = this.host.getSavedMusicList();
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList3, CharSequence charSequence, boolean z2, boolean z3, int i, int i2, TopicsFragment topicsFragment) {
                return this.f$0.lambda$forward$0(arrayList, z, tL_document, messageObject, savedMusicList, dialogsActivity2, arrayList3, charSequence, z2, z3, i, i2, topicsFragment);
            }
        });
        this.activity.lambda$runLinkRequest$108(dialogsActivity);
        this.host.dismissPlayer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public /* synthetic */ boolean lambda$forward$0(ArrayList arrayList, boolean z, TLRPC.TL_document tL_document, MessageObject messageObject, MessagesController.SavedMusicList savedMusicList, DialogsActivity dialogsActivity, ArrayList arrayList2, CharSequence charSequence, boolean z2, boolean z3, int i, int i2, TopicsFragment topicsFragment) {
        MessageObject messageObject2;
        long j;
        int i3;
        int i4;
        boolean z4;
        ArrayList arrayList3 = arrayList;
        boolean z5 = z;
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        int i5 = 0;
        boolean z6 = true;
        if (arrayList2.size() > 1 || ((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId == clientUserId || charSequence != null || arrayList3 == null) {
            int i6 = 0;
            while (i6 < arrayList2.size()) {
                long j2 = ((MessagesStorage.TopicKey) arrayList2.get(i6)).dialogId;
                MessageObject topicStartMessage = getTopicStartMessage((MessagesStorage.TopicKey) arrayList2.get(i6));
                if (charSequence != null) {
                    SendMessagesHelper sendMessagesHelper = SendMessagesHelper.getInstance(this.currentAccount);
                    SendMessagesHelper.SendMessageParams sendMessageParamsOf = SendMessagesHelper.SendMessageParams.of(charSequence.toString(), j2, topicStartMessage, topicStartMessage, null, true, null, null, null, z3, i, i2, null, false);
                    messageObject2 = topicStartMessage;
                    j = j2;
                    sendMessagesHelper.sendMessage(sendMessageParamsOf);
                } else {
                    messageObject2 = topicStartMessage;
                    j = j2;
                }
                int i7 = this.currentAccount;
                if (arrayList3 != null) {
                    i4 = i5;
                    i3 = i6;
                    z4 = z6;
                    SendMessagesHelper.getInstance(i7).sendMessage(arrayList3, j, z5, false, z3, i, messageObject2, 0, 0L);
                } else {
                    i3 = i6;
                    i4 = i5;
                    z4 = z6;
                    SendMessagesHelper.getInstance(i7).sendMessage(SendMessagesHelper.SendMessageParams.of(tL_document, null, messageObject.messageOwner.attachPath, j, messageObject2, messageObject2, null, null, null, null, z3, i, i2, 0, savedMusicList, null, false, false));
                }
                i6 = i3 + 1;
                arrayList3 = arrayList;
                z5 = z;
                i5 = i4;
                z6 = z4;
            }
            int i8 = i5;
            boolean z7 = z6;
            if (topicsFragment != null) {
                topicsFragment.removeSelfFromStack();
            }
            dialogsActivity.finishFragment();
            showForwardBulletin(arrayList2.size() == z7 ? ((MessagesStorage.TopicKey) arrayList2.get(i8)).dialogId : 0L, arrayList2.size());
            return z7;
        }
        MessagesStorage.TopicKey topicKey = (MessagesStorage.TopicKey) arrayList2.get(0);
        long j3 = topicKey.dialogId;
        Bundle bundle = new Bundle();
        bundle.putBoolean("scrollToTopOnResume", true);
        if (DialogObject.isEncryptedDialog(j3)) {
            bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j3));
        } else if (DialogObject.isUserDialog(j3)) {
            bundle.putLong("user_id", j3);
        } else {
            bundle.putLong("chat_id", -j3);
        }
        bundle.putBoolean("forward_noquote", z5);
        ChatActivity chatActivity = new ChatActivity(bundle);
        if (topicKey.topicId != 0 || topicsFragment != null) {
            ForumUtilities.applyTopic(chatActivity, topicKey);
            dialogsActivity.removeSelfFromStack();
        }
        if (this.activity.presentFragment(chatActivity, true, false)) {
            chatActivity.setForwardParams(z5);
            chatActivity.showFieldPanelForForward(true, arrayList3);
        } else {
            dialogsActivity.finishFragment();
        }
        return true;
    }

    private MessageObject getTopicStartMessage(MessagesStorage.TopicKey topicKey) {
        TLRPC.TL_forumTopic tL_forumTopicFindTopic;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        if (topicKey.topicId == 0 || messagesController.isMonoForum(topicKey.dialogId) || (tL_forumTopicFindTopic = messagesController.getTopicsController().findTopic(-topicKey.dialogId, topicKey.topicId)) == null || tL_forumTopicFindTopic.topicStartMessage == null) {
            return null;
        }
        MessageObject messageObject = new MessageObject(this.currentAccount, tL_forumTopicFindTopic.topicStartMessage, false, false);
        messageObject.isTopicMainMessage = true;
        return messageObject;
    }

    public void forwardTo(MessageObject messageObject, long j, boolean z) {
        if (messageObject == null) {
            return;
        }
        switchAccountIfNeeded();
        if (messageObject.getId() < 0) {
            TLRPC.Document document = messageObject.getDocument();
            if (!(document instanceof TLRPC.TL_document)) {
                return;
            }
            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.of((TLRPC.TL_document) document, null, messageObject.messageOwner.attachPath, j, null, null, null, null, null, null, true, 0, 0, 0, this.host.getSavedMusicList(), null, false, false));
        } else {
            ArrayList<MessageObject> arrayList = new ArrayList<>();
            arrayList.add(messageObject);
            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(arrayList, j, false, false, true, 0, 0L);
        }
        if (z) {
            showForwardBulletin(j, 1);
        }
    }

    private void showForwardBulletin(long j, int i) {
        String pluralStringComma;
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        if (i == 1 && j == clientUserId) {
            pluralStringComma = LocaleController.getString(C2807R.string.FwdMessageToSavedMessages);
        } else if (i == 1 && j > 0) {
            pluralStringComma = LocaleController.formatString(C2807R.string.FwdMessageToUser, DialogObject.getShortName(j));
        } else if (i == 1 && j < 0) {
            pluralStringComma = LocaleController.formatString(C2807R.string.FwdMessageToGroup, DialogObject.getShortName(j));
        } else {
            pluralStringComma = LocaleController.formatPluralStringComma("FwdMessageToManyChats", i);
        }
        BulletinFactory.of(lastFragment).createSimpleBulletin(C2807R.raw.forward, pluralStringComma).show();
    }

    public void share(MessageObject messageObject) {
        if (this.activity == null || messageObject == null) {
            return;
        }
        try {
            File localFile = getLocalFile(messageObject);
            if (localFile.exists()) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType(messageObject.getMimeType());
                try {
                    intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", localFile));
                    intent.setFlags(1);
                } catch (Exception unused) {
                    intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(localFile));
                }
                this.activity.startActivity(Intent.createChooser(intent, LocaleController.getString(C2807R.string.ShareFile)));
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
            builder.setTitle(LocaleController.getString(C2807R.string.AppName));
            builder.setPositiveButton(LocaleController.getString(C2807R.string.OK), null);
            builder.setMessage(LocaleController.getString(C2807R.string.PleaseDownload));
            builder.show();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public void saveToMusic(MessageObject messageObject) {
        LaunchActivity launchActivity = this.activity;
        if (launchActivity == null || messageObject == null) {
            return;
        }
        if ((Build.VERSION.SDK_INT <= 28 || BuildVars.NO_SCOPED_STORAGE) && launchActivity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            this.activity.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 4);
            return;
        }
        String documentFileName = FileLoader.getDocumentFileName(messageObject.getDocument());
        if (TextUtils.isEmpty(documentFileName)) {
            documentFileName = messageObject.getFileName();
        }
        MediaController.saveFile(getLocalFile(messageObject).toString(), this.activity, 3, documentFileName, messageObject.getDocument() != null ? messageObject.getDocument().mime_type : _UrlKt.FRAGMENT_ENCODE_SET, new Utilities.Callback() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$saveToMusic$1((Uri) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToMusic$1(Uri uri) {
        bulletins().createDownloadBulletin(BulletinFactory.FileType.AUDIO).show();
    }

    public void showInChat(MessageObject messageObject) {
        if (this.activity == null || messageObject == null) {
            return;
        }
        switchAccountIfNeeded();
        Bundle bundle = new Bundle();
        long dialogId = messageObject.getDialogId();
        if (DialogObject.isEncryptedDialog(dialogId)) {
            bundle.putInt("enc_id", DialogObject.getEncryptedChatId(dialogId));
        } else if (DialogObject.isUserDialog(dialogId)) {
            bundle.putLong("user_id", dialogId);
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialogId));
            if (chat != null && chat.migrated_to != null) {
                bundle.putLong("migrated_to", dialogId);
                dialogId = -chat.migrated_to.channel_id;
            }
            bundle.putLong("chat_id", -dialogId);
        }
        bundle.putInt("message_id", messageObject.getId());
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
        this.activity.presentFragment(new ChatActivity(bundle), false, false);
        this.host.dismissPlayer();
    }

    public void searchArtist(String str) {
        if (this.activity == null || TextUtils.isEmpty(str) || MessagesController.getInstance(this.currentAccount).getTotalDialogsCount() <= 10) {
            return;
        }
        BaseFragment lastFragment = this.activity.getActionBarLayout().getLastFragment();
        if (lastFragment instanceof DialogsActivity) {
            DialogsActivity dialogsActivity = (DialogsActivity) lastFragment;
            if (!dialogsActivity.onlyDialogsAdapter()) {
                dialogsActivity.setShowSearch(str, 3);
                this.host.dismissPlayer();
                return;
            }
        }
        DialogsActivity dialogsActivity2 = new DialogsActivity(null);
        dialogsActivity2.setSearchString(str);
        dialogsActivity2.setInitialSearchType(3);
        this.activity.presentFragment(dialogsActivity2, false, false);
        this.host.dismissPlayer();
    }

    public void setInProfile(MessageObject messageObject, boolean z, Runnable runnable) {
        saveToProfile(messageObject, z, runnable, false);
    }

    private void saveToProfile(final MessageObject messageObject, final boolean z, final Runnable runnable, final boolean z2) {
        final TLRPC.Document document = messageObject.getDocument();
        if (document == null) {
            return;
        }
        final long j = document.id;
        TLRPC.TL_account_saveMusic tL_account_saveMusic = new TLRPC.TL_account_saveMusic();
        tL_account_saveMusic.unsave = !z;
        TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
        tL_account_saveMusic.id = tL_inputDocument;
        tL_inputDocument.id = j;
        tL_inputDocument.access_hash = document.access_hash;
        byte[] bArr = document.file_reference;
        tL_inputDocument.file_reference = bArr;
        if (bArr == null) {
            tL_inputDocument.file_reference = new byte[0];
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_account_saveMusic, new RequestDelegate() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda3
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$saveToProfile$6(z2, messageObject, z, runnable, j, document, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$6(boolean z, MessageObject messageObject, final boolean z2, final Runnable runnable, final long j, final TLRPC.Document document, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tL_error == null || !FileRefController.isFileRefError(tL_error.text)) {
            if (tL_error != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$saveToProfile$4(tL_error);
                    }
                });
                return;
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$saveToProfile$5(j, z2, document, runnable);
                    }
                });
                return;
            }
        }
        if (z || messageObject.getId() < 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveToProfile$2(tL_error);
                }
            });
        } else {
            refetchMessage(messageObject, new MessageCallback() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda7
                @Override // com.exteragram.messenger.player.PlayerActions.MessageCallback
                public final void run(TLRPC.Message message) {
                    this.f$0.lambda$saveToProfile$3(z2, runnable, message);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$2(TLRPC.TL_error tL_error) {
        bulletins().showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$3(boolean z, Runnable runnable, TLRPC.Message message) {
        saveToProfile(new MessageObject(this.currentAccount, message, false, true), z, runnable, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$4(TLRPC.TL_error tL_error) {
        bulletins().showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$5(long j, boolean z, TLRPC.Document document, Runnable runnable) {
        MessagesController.getInstance(this.currentAccount).getSavedMusicIds().update(j, z);
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(clientUserId);
        if (userFull != null) {
            if (z) {
                userFull.flags2 |= TLObject.FLAG_21;
                userFull.saved_music = document;
            } else {
                TLRPC.Document document2 = userFull.saved_music;
                if (document2 != null && document2.id == j) {
                    userFull.flags2 &= -2097153;
                    userFull.saved_music = null;
                }
            }
            MessagesStorage.getInstance(this.currentAccount).updateUserInfo(userFull, true);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.profileMusicUpdated, Long.valueOf(clientUserId));
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    private void refetchMessage(MessageObject messageObject, final MessageCallback messageCallback) {
        TLObject tLObject;
        final int id = messageObject.getId();
        if (messageObject.getDialogId() >= 0) {
            TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
            tL_messages_getMessages.id.add(Integer.valueOf(id));
            tLObject = tL_messages_getMessages;
        } else {
            TLRPC.TL_channels_getMessages tL_channels_getMessages = new TLRPC.TL_channels_getMessages();
            tL_channels_getMessages.channel = MessagesController.getInstance(this.currentAccount).getInputChannel(-messageObject.getDialogId());
            tL_channels_getMessages.id.add(Integer.valueOf(id));
            tLObject = tL_channels_getMessages;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLObject, new RequestDelegate() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$refetchMessage$9(id, messageCallback, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refetchMessage$9(int i, MessageCallback messageCallback, TLObject tLObject, final TLRPC.TL_error tL_error) {
        TLRPC.Message message;
        if (!(tLObject instanceof TLRPC.messages_Messages)) {
            if (tL_error != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$refetchMessage$8(tL_error);
                    }
                });
                return;
            }
            return;
        }
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        int i2 = 0;
        while (true) {
            if (i2 >= messages_messages.messages.size()) {
                message = null;
                break;
            } else {
                if (messages_messages.messages.get(i2).id == i) {
                    message = messages_messages.messages.get(i2);
                    break;
                }
                i2++;
            }
        }
        if (message != null) {
            messageCallback.run(message);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$refetchMessage$7();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refetchMessage$7() {
        bulletins().createErrorBulletin(LocaleController.formatString(C2807R.string.UnknownErrorCode, "CLIENT_MESSAGE_NOT_FOUND")).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refetchMessage$8(TLRPC.TL_error tL_error) {
        bulletins().showForError(tL_error);
    }

    public void addToMyList(final Runnable runnable) {
        if (this.activity == null) {
            return;
        }
        final Theme.ResourcesProvider sheetResourcesProvider = this.host.getSheetResourcesProvider();
        new SelectAudioAlert(this.activity, true, null, new Utilities.Callback() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$addToMyList$13(runnable, sheetResourcesProvider, (MessageObject) obj);
            }
        }, sheetResourcesProvider).withoutSavedMusic().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addToMyList$13(final Runnable runnable, Theme.ResourcesProvider resourcesProvider, MessageObject messageObject) {
        final TLRPC.Document document;
        MessagesController.SavedMusicList savedMusicList = this.host.getSavedMusicList();
        if (messageObject == null || savedMusicList == null || (document = messageObject.getDocument()) == null) {
            return;
        }
        if (document.id != 0) {
            TLRPC.TL_account_saveMusic tL_account_saveMusic = new TLRPC.TL_account_saveMusic();
            TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
            tL_account_saveMusic.id = tL_inputDocument;
            tL_inputDocument.id = document.id;
            tL_inputDocument.access_hash = document.access_hash;
            tL_inputDocument.file_reference = document.file_reference;
            savedMusicList.add(document);
            syncPlaylist(savedMusicList);
            MessagesController.getInstance(this.currentAccount).getSavedMusicIds().update(document.id, true);
            if (runnable != null) {
                runnable.run();
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_account_saveMusic, null);
            return;
        }
        File file = new File(messageObject.messageOwner.attachPath);
        if (file.exists()) {
            final AlertDialog alertDialog = new AlertDialog(this.activity, 3, resourcesProvider);
            alertDialog.showDelayed(180L);
            FileLoader.getInstance(this.currentAccount).uploadFile(file.getAbsolutePath(), new Utilities.Callback() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$addToMyList$12(alertDialog, document, runnable, (TLRPC.InputFile) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addToMyList$12(final AlertDialog alertDialog, TLRPC.Document document, final Runnable runnable, TLRPC.InputFile inputFile) {
        if (inputFile == null) {
            alertDialog.dismiss();
            return;
        }
        TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia = new TLRPC.TL_messages_uploadMedia();
        tL_messages_uploadMedia.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
        TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument = new TLRPC.TL_inputMediaUploadedDocument();
        tL_messages_uploadMedia.media = tL_inputMediaUploadedDocument;
        tL_inputMediaUploadedDocument.file = inputFile;
        tL_inputMediaUploadedDocument.mime_type = document.mime_type;
        tL_inputMediaUploadedDocument.attributes.addAll(document.attributes);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_uploadMedia, new RequestDelegate() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$addToMyList$11(alertDialog, runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addToMyList$11(final AlertDialog alertDialog, final Runnable runnable, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addToMyList$10(alertDialog, tLObject, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addToMyList$10(AlertDialog alertDialog, TLObject tLObject, Runnable runnable) {
        alertDialog.dismiss();
        if (tLObject instanceof TLRPC.TL_messageMediaDocument) {
            TLRPC.TL_messageMediaDocument tL_messageMediaDocument = (TLRPC.TL_messageMediaDocument) tLObject;
            TLRPC.TL_account_saveMusic tL_account_saveMusic = new TLRPC.TL_account_saveMusic();
            TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
            tL_account_saveMusic.id = tL_inputDocument;
            TLRPC.Document document = tL_messageMediaDocument.document;
            tL_inputDocument.id = document.id;
            tL_inputDocument.access_hash = document.access_hash;
            tL_inputDocument.file_reference = document.file_reference;
            MessagesController.SavedMusicList savedMusicList = this.host.getSavedMusicList();
            if (savedMusicList != null) {
                savedMusicList.add(tL_messageMediaDocument.document);
                syncPlaylist(savedMusicList);
            }
            MessagesController.getInstance(this.currentAccount).getSavedMusicIds().update(tL_messageMediaDocument.document.id, true);
            if (runnable != null) {
                runnable.run();
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_account_saveMusic, null);
        }
    }

    private static void syncPlaylist(MessagesController.SavedMusicList savedMusicList) {
        ArrayList<MessageObject> playlist = MediaController.getInstance().getPlaylist();
        playlist.clear();
        playlist.addAll(savedMusicList.list);
    }

    public void addBackToMyList(final MessageObject messageObject, final Runnable runnable) {
        setInProfile(messageObject, true, new Runnable() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addBackToMyList$14(messageObject, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addBackToMyList$14(MessageObject messageObject, Runnable runnable) {
        MessagesController.SavedMusicList savedMusicList = this.host.getSavedMusicList();
        if (savedMusicList != null && !savedMusicList.list.contains(messageObject)) {
            savedMusicList.list.add(0, messageObject);
            savedMusicList.updateFirstMusic();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.musicListLoaded, savedMusicList);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void removeFromMyList(final MessageObject messageObject, final Runnable runnable) {
        setInProfile(messageObject, false, new Runnable() { // from class: com.exteragram.messenger.player.PlayerActions$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeFromMyList$15(messageObject, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeFromMyList$15(MessageObject messageObject, Runnable runnable) {
        MessagesController.SavedMusicList savedMusicList = this.host.getSavedMusicList();
        if (savedMusicList != null) {
            savedMusicList.remove(messageObject);
            if (savedMusicList.list.isEmpty()) {
                MediaController.getInstance().cleanup();
                this.host.dismissPlayer();
                return;
            } else {
                MediaController.getInstance().removeFromPlaylist(messageObject);
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.musicListLoaded, savedMusicList);
            }
        }
        if (runnable != null) {
            runnable.run();
        }
    }
}
