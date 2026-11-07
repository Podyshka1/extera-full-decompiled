package org.telegram.messenger.car;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.TextUtils;
import androidx.car.app.CarContext;
import androidx.car.app.Screen;
import androidx.car.app.messaging.model.CarMessage;
import androidx.car.app.messaging.model.ConversationCallback;
import androidx.car.app.messaging.model.ConversationItem;
import androidx.car.app.model.Action;
import androidx.car.app.model.CarIcon;
import androidx.car.app.model.CarText;
import androidx.car.app.model.ItemList;
import androidx.car.app.model.ListTemplate;
import androidx.car.app.model.MessageTemplate;
import androidx.car.app.model.OnClickListener;
import androidx.car.app.model.Row;
import androidx.car.app.model.Tab;
import androidx.car.app.model.TabContents;
import androidx.car.app.model.TabTemplate;
import androidx.car.app.model.Template;
import androidx.core.app.Person;
import androidx.core.graphics.drawable.IconCompat;
import androidx.view.DefaultLifecycleObserver;
import androidx.view.LifecycleOwner;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.TelegramMediaSession;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class HomeScreen extends Screen implements DefaultLifecycleObserver, NotificationCenter.NotificationCenterDelegate {
    private String activeTabId;
    private int currentAccount;
    private boolean musicLoadKicked;
    private final long sessionStartMillis;

    public HomeScreen(CarContext carContext) {
        super(carContext);
        this.activeTabId = "tab_notifications";
        this.sessionStartMillis = System.currentTimeMillis();
        this.currentAccount = UserConfig.selectedAccount;
        TelegramMediaSession.getInstance(carContext.getApplicationContext()).enablePlaybackMirroring();
        getLifecycle().addObserver(this);
    }

    @Override // androidx.view.DefaultLifecycleObserver
    public void onResume(LifecycleOwner lifecycleOwner) {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pushMessagesUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.notificationsCountUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.activeAccountChanged);
    }

    @Override // androidx.view.DefaultLifecycleObserver
    public void onPause(LifecycleOwner lifecycleOwner) {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pushMessagesUpdated);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.notificationsCountUpdated);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.activeAccountChanged);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.activeAccountChanged) {
            this.currentAccount = UserConfig.selectedAccount;
            this.musicLoadKicked = false;
            invalidate();
        } else if ((i == NotificationCenter.pushMessagesUpdated || i == NotificationCenter.notificationsCountUpdated) && "tab_notifications".equals(this.activeTabId)) {
            invalidate();
        }
    }

    @Override // androidx.car.app.Screen
    public Template onGetTemplate() {
        TabTemplate.Builder builder = new TabTemplate.Builder(new TabTemplate.TabCallback() { // from class: org.telegram.messenger.car.HomeScreen.1
            @Override // androidx.car.app.model.TabTemplate.TabCallback
            public void onTabSelected(String str) {
                HomeScreen.this.activeTabId = str;
                HomeScreen.this.invalidate();
            }
        });
        builder.setHeaderAction(Action.APP_ICON);
        builder.addTab(new Tab.Builder().setContentId("tab_notifications").setIcon(iconResource(C2807R.drawable.msg_notifications)).setTitle(LocaleController.getString(C2807R.string.Notifications)).build());
        builder.addTab(new Tab.Builder().setContentId("tab_music").setIcon(iconResource(C2807R.drawable.filled_widget_music)).setTitle(LocaleController.getString(C2807R.string.Music)).build());
        builder.setActiveTabContentId(this.activeTabId);
        builder.setTabContents(new TabContents.Builder(buildTabContent(this.activeTabId)).build());
        return builder.build();
    }

    private Template buildTabContent(String str) {
        int iHashCode = str.hashCode();
        if (iHashCode == -2006925890) {
            str.equals("tab_notifications");
        } else if (iHashCode == 1942637819 && str.equals("tab_music")) {
            return buildMusicTemplate();
        }
        return buildNotificationsTemplate();
    }

    private Template buildNotificationsTemplate() {
        Map<Long, ArrayList<MessageObject>> mapCollectUnreadDuringDrive = collectUnreadDuringDrive();
        if (mapCollectUnreadDuringDrive.isEmpty()) {
            return new MessageTemplate.Builder(LocaleController.getString(C2807R.string.NoNewCarMessages)).build();
        }
        ItemList.Builder builder = new ItemList.Builder();
        int i = 0;
        for (Map.Entry<Long, ArrayList<MessageObject>> entry : mapCollectUnreadDuringDrive.entrySet()) {
            int i2 = i + 1;
            if (i >= 6) {
                break;
            }
            ConversationItem conversationItemBuildConversationItem = buildConversationItem(entry.getKey().longValue(), entry.getValue());
            if (conversationItemBuildConversationItem != null) {
                builder.addItem(conversationItemBuildConversationItem);
            }
            i = i2;
        }
        return new ListTemplate.Builder().setSingleList(builder.build()).build();
    }

    private Map<Long, ArrayList<MessageObject>> collectUnreadDuringDrive() {
        TLRPC.Message message;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<MessageObject> pushMessagesSnapshot = NotificationsController.getInstance(this.currentAccount).getPushMessagesSnapshot();
        long j = this.sessionStartMillis / 1000;
        int size = pushMessagesSnapshot.size();
        int i = 0;
        while (i < size) {
            MessageObject messageObject = pushMessagesSnapshot.get(i);
            i++;
            MessageObject messageObject2 = messageObject;
            if (messageObject2 != null && (message = messageObject2.messageOwner) != null && message.date >= j) {
                long dialogId = messageObject2.getDialogId();
                if (!DialogObject.isEncryptedDialog(dialogId) && !UserObject.isReplyUser(dialogId)) {
                    ArrayList arrayList = (ArrayList) linkedHashMap.get(Long.valueOf(dialogId));
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        linkedHashMap.put(Long.valueOf(dialogId), arrayList);
                    }
                    arrayList.add(messageObject2);
                }
            }
        }
        return linkedHashMap;
    }

    private ConversationItem buildConversationItem(long j, ArrayList<MessageObject> arrayList) {
        String name;
        boolean z;
        TLRPC.Chat chat;
        TLRPC.User user;
        IconCompat iconCompatLoadUserAvatarIcon;
        if (arrayList.isEmpty()) {
            return null;
        }
        Collections.reverse(arrayList);
        MessagesController messagesController = AccountInstance.getInstance(this.currentAccount).getMessagesController();
        if (DialogObject.isUserDialog(j)) {
            user = messagesController.getUser(Long.valueOf(j));
            if (user == null) {
                return null;
            }
            name = ContactsController.formatName(user.first_name, user.last_name);
            z = false;
            chat = null;
        } else {
            TLRPC.Chat chat2 = messagesController.getChat(Long.valueOf(-j));
            if (chat2 == null) {
                return null;
            }
            String str = chat2.title;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            name = str;
            z = !ChatObject.isChannel(chat2) || ChatObject.isMegagroup(chat2);
            chat = chat2;
            user = null;
        }
        Person.Builder key = new Person.Builder().setName(name).setKey(String.valueOf(j));
        IconCompat iconCompatLoadAvatarIcon = loadAvatarIcon(user, chat);
        if (iconCompatLoadAvatarIcon != null) {
            key.setIcon(iconCompatLoadAvatarIcon);
        }
        TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
        Person.Builder key2 = new Person.Builder().setName(LocaleController.getString(C2807R.string.FromYou)).setKey("self_" + UserConfig.getInstance(this.currentAccount).clientUserId);
        if (currentUser != null && (iconCompatLoadUserAvatarIcon = loadUserAvatarIcon(currentUser)) != null) {
            key2.setIcon(iconCompatLoadUserAvatarIcon);
        }
        Person personBuild = key2.build();
        ArrayList arrayList2 = new ArrayList();
        int iMax = Math.max(0, arrayList.size() - 5);
        while (iMax < arrayList.size()) {
            TLRPC.User user2 = user;
            CarMessage carMessageBuildCarMessage = buildCarMessage(arrayList.get(iMax), j, z, user2, chat);
            if (carMessageBuildCarMessage != null) {
                arrayList2.add(carMessageBuildCarMessage);
            }
            iMax++;
            user = user2;
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        ConversationItem.Builder conversationCallback = new ConversationItem.Builder().setId(String.valueOf(j)).setTitle(CarText.create(name)).setSelf(personBuild).setMessages(arrayList2).setGroupConversation(z).setConversationCallback(new TelegramConversationCallback(this.currentAccount, j, arrayList.get(arrayList.size() - 1).getId()));
        if (iconCompatLoadAvatarIcon != null) {
            conversationCallback.setIcon(new CarIcon.Builder(iconCompatLoadAvatarIcon).build());
        }
        return conversationCallback.build();
    }

    private CarMessage buildCarMessage(MessageObject messageObject, long j, boolean z, TLRPC.User user, TLRPC.Chat chat) {
        String string;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        String[] strArr = new String[1];
        try {
            string = NotificationsController.getInstance(this.currentAccount).getShortStringForMessage(messageObject, strArr, new boolean[1]);
        } catch (Throwable unused) {
            CharSequence charSequence = messageObject.messageText;
            string = charSequence != null ? charSequence.toString() : _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (string == null) {
            return null;
        }
        Person.Builder builder = new Person.Builder();
        String str2 = strArr[0];
        if (str2 != null) {
            builder.setName(str2).setKey("u" + messageObject.getSenderId());
        } else if (DialogObject.isUserDialog(j) && user != null) {
            builder.setName(ContactsController.formatName(user.first_name, user.last_name)).setKey("u" + user.id);
        } else if (chat != null) {
            String str3 = chat.title;
            if (str3 != null) {
                str = str3;
            }
            builder.setName(str).setKey("c" + chat.id);
        } else {
            builder.setName(_UrlKt.FRAGMENT_ENCODE_SET).setKey("d" + j);
        }
        return new CarMessage.Builder().setBody(CarText.create(string)).setReceivedTimeEpochMillis(((long) messageObject.messageOwner.date) * 1000).setSender(builder.build()).setRead(false).build();
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0095, code lost:
    
        if ((r11 instanceof org.telegram.tgnet.TLRPC.TL_fileLocationUnavailable) == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00af, code lost:
    
        if ((r11 instanceof org.telegram.tgnet.TLRPC.TL_fileLocationUnavailable) == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b1, code lost:
    
        r16 = r13;
        r13 = r11;
        r11 = r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0105 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Template buildMusicTemplate() {
        String name;
        TLRPC.FileLocation fileLocation;
        final String string;
        TelegramMediaSession telegramMediaSession = TelegramMediaSession.getInstance(getCarContext().getApplicationContext());
        if (!telegramMediaSession.isChatsLoaded()) {
            if (!this.musicLoadKicked) {
                this.musicLoadKicked = true;
                telegramMediaSession.ensureLoaded(new Runnable() { // from class: org.telegram.messenger.car.HomeScreen$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidate();
                    }
                });
            }
            return new ListTemplate.Builder().setLoading(true).build();
        }
        ArrayList<Long> musicDialogsSortedByVisibleOrder = telegramMediaSession.getMusicDialogsSortedByVisibleOrder();
        if (musicDialogsSortedByVisibleOrder == null || musicDialogsSortedByVisibleOrder.isEmpty()) {
            return new MessageTemplate.Builder(LocaleController.getString(C2807R.string.NoCarMusic)).build();
        }
        ItemList.Builder builder = new ItemList.Builder();
        int i = 0;
        for (int i2 = 0; i2 < musicDialogsSortedByVisibleOrder.size() && i < 50; i2++) {
            final long jLongValue = musicDialogsSortedByVisibleOrder.get(i2).longValue();
            ArrayList<MessageObject> musicMessages = telegramMediaSession.getMusicMessages(jLongValue);
            if (musicMessages == null || !musicMessages.isEmpty()) {
                if (DialogObject.isUserDialog(jLongValue)) {
                    TLRPC.User musicUser = telegramMediaSession.getMusicUser(jLongValue);
                    if (musicUser != null) {
                        if (UserObject.isUserSelf(musicUser)) {
                            string = LocaleController.getString(C2807R.string.SavedMessages);
                            TLRPC.FileLocation fileLocation2 = null;
                            if (!TextUtils.isEmpty(string)) {
                                Row.Builder onClickListener = new Row.Builder().setTitle(string).setBrowsable(true).setOnClickListener(new OnClickListener() { // from class: org.telegram.messenger.car.HomeScreen$$ExternalSyntheticLambda1
                                    @Override // androidx.car.app.model.OnClickListener
                                    public final void onClick() {
                                        this.f$0.lambda$buildMusicTemplate$0(jLongValue, string);
                                    }
                                });
                                if (musicMessages != null) {
                                    onClickListener.addText(LocaleController.formatPluralString("MusicFiles", musicMessages.size(), new Object[0]));
                                }
                                IconCompat iconCompatIconFromAvatar = fileLocation2 != null ? iconFromAvatar(fileLocation2) : null;
                                if (iconCompatIconFromAvatar != null) {
                                    onClickListener.setImage(new CarIcon.Builder(iconCompatIconFromAvatar).build(), 2);
                                }
                                builder.addItem(onClickListener.build());
                                i++;
                            }
                        } else {
                            name = ContactsController.formatName(musicUser.first_name, musicUser.last_name);
                            TLRPC.UserProfilePhoto userProfilePhoto = musicUser.photo;
                            if (userProfilePhoto != null) {
                                fileLocation = userProfilePhoto.photo_small;
                            }
                            string = name;
                            TLRPC.FileLocation fileLocation22 = null;
                            if (!TextUtils.isEmpty(string)) {
                            }
                        }
                    }
                } else {
                    TLRPC.Chat musicChat = telegramMediaSession.getMusicChat(-jLongValue);
                    if (musicChat != null) {
                        name = musicChat.title;
                        if (name == null) {
                            name = _UrlKt.FRAGMENT_ENCODE_SET;
                        }
                        TLRPC.ChatPhoto chatPhoto = musicChat.photo;
                        if (chatPhoto != null) {
                            fileLocation = chatPhoto.photo_small;
                        }
                        string = name;
                        TLRPC.FileLocation fileLocation222 = null;
                        if (!TextUtils.isEmpty(string)) {
                        }
                    }
                }
            }
        }
        return new ListTemplate.Builder().setSingleList(builder.build()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildMusicTemplate$0(long j, String str) {
        getScreenManager().push(new MusicSongsScreen(getCarContext(), j, str));
    }

    private CarIcon iconResource(int i) {
        return new CarIcon.Builder(IconCompat.createWithResource(getCarContext(), i)).build();
    }

    private IconCompat loadAvatarIcon(TLRPC.User user, TLRPC.Chat chat) {
        TLRPC.FileLocation fileLocation;
        TLRPC.ChatPhoto chatPhoto;
        TLRPC.UserProfilePhoto userProfilePhoto;
        if (user != null && (userProfilePhoto = user.photo) != null) {
            fileLocation = userProfilePhoto.photo_small;
        } else {
            fileLocation = (chat == null || (chatPhoto = chat.photo) == null) ? null : chatPhoto.photo_small;
        }
        return iconFromAvatar(fileLocation);
    }

    private IconCompat loadUserAvatarIcon(TLRPC.User user) {
        TLRPC.UserProfilePhoto userProfilePhoto;
        if (user == null || (userProfilePhoto = user.photo) == null) {
            return null;
        }
        return iconFromAvatar(userProfilePhoto.photo_small);
    }

    private IconCompat iconFromAvatar(TLRPC.FileLocation fileLocation) {
        if (fileLocation != null && !(fileLocation instanceof TLRPC.TL_fileLocationUnavailable)) {
            try {
                File pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(fileLocation, true);
                if (!pathToAttach.exists()) {
                    return null;
                }
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = 2;
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(pathToAttach.getAbsolutePath(), options);
                if (bitmapDecodeFile == null) {
                    return null;
                }
                Bitmap bitmapMakeRound = makeRound(bitmapDecodeFile);
                if (bitmapMakeRound != null) {
                    bitmapDecodeFile = bitmapMakeRound;
                }
                return IconCompat.createWithBitmap(bitmapDecodeFile);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private Bitmap makeRound(Bitmap bitmap) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.eraseColor(0);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint(1);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            canvas.drawRoundRect(new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight()), bitmap.getWidth(), bitmap.getHeight(), paint);
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final class TelegramConversationCallback implements ConversationCallback {
        private final int currentAccount;
        private final long dialogId;
        private final int maxId;

        public TelegramConversationCallback(int i, long j, int i2) {
            this.currentAccount = i;
            this.dialogId = j;
            this.maxId = i2;
        }

        @Override // androidx.car.app.messaging.model.ConversationCallback
        public void onMarkAsRead() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.car.HomeScreen$TelegramConversationCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onMarkAsRead$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMarkAsRead$0() {
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            long j = this.dialogId;
            int i = this.maxId;
            messagesController.markDialogAsRead(j, i, i, 0, false, 0L, 0, true, 0);
            MessagesController.getInstance(this.currentAccount).markReactionsAsRead(this.dialogId, 0L);
        }

        @Override // androidx.car.app.messaging.model.ConversationCallback
        public void onTextReply(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.car.HomeScreen$TelegramConversationCallback$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTextReply$1(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTextReply$1(String str) {
            AccountInstance.getInstance(this.currentAccount).getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.of(str, this.dialogId, null, null, null, true, null, null, null, true, 0, 0, null, false));
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            long j = this.dialogId;
            int i = this.maxId;
            messagesController.markDialogAsRead(j, i, i, 0, false, 0L, 0, true, 0);
        }
    }
}
