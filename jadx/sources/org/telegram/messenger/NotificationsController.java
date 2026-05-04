package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.PostProcessor;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.collection.LongSparseArray;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.app.Person;
import androidx.core.content.FileProvider;
import androidx.core.content.LocusIdCompat;
import androidx.core.content.p001pm.ShortcutInfoCompat;
import androidx.core.content.p001pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.exteragram.messenger.utils.AppUtils;
import com.google.android.gms.cast.framework.media.internal.zzo$$ExternalSyntheticApiModelOutline0;
import com.google.common.collect.Lists;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.function.Consumer;
import java.util.function.ToLongFunction;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.messenger.voip.VoIPGroupNotification;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.BubbleActivity;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.Forum.ForumUtilities;
import org.telegram.p029ui.Components.spoilers.SpoilerEffect;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.PopupNotificationActivity;
import org.telegram.p029ui.Stories.recorder.StoryEntry;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import org.webrtc.MediaStreamTrack;
import p022j$.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class NotificationsController extends BaseController {
    public static final String EXTRA_VOICE_REPLY = "extra_voice_reply";
    private static volatile NotificationsController[] Instance = null;
    public static String OTHER_NOTIFICATIONS_CHANNEL = null;
    public static final int SETTING_MUTE_2_DAYS = 2;
    public static final int SETTING_MUTE_8_HOURS = 1;
    public static final int SETTING_MUTE_CUSTOM = 5;
    public static final int SETTING_MUTE_FOREVER = 3;
    public static final int SETTING_MUTE_HOUR = 0;
    public static final int SETTING_MUTE_UNMUTE = 4;
    public static final int SETTING_SOUND_OFF = 1;
    public static final int SETTING_SOUND_ON = 0;
    public static final int TYPE_CHANNEL = 2;
    public static final int TYPE_GROUP = 0;
    public static final int TYPE_PRIVATE = 1;
    public static final int TYPE_REACTIONS_MESSAGES = 4;
    public static final int TYPE_REACTIONS_STORIES = 5;
    public static final int TYPE_STORIES = 3;
    protected static AudioManager audioManager;
    private static final Object[] lockObjects;
    private static NotificationManagerCompat notificationManager;
    private static final LongSparseArray sharedPrefCachedKeys;
    private static NotificationManager systemNotificationManager;
    private AlarmManager alarmManager;
    private boolean channelGroupsCreated;
    private Runnable checkStoryPushesRunnable;
    private final ArrayList<MessageObject> delayedPushMessages;
    NotificationsSettingsFacade dialogsNotificationsFacade;
    private final LongSparseArray fcmRandomMessagesDict;
    private Boolean groupsCreated;
    private boolean inChatSoundEnabled;
    private int lastBadgeCount;
    private int lastButtonId;
    public long lastNotificationChannelCreateTime;
    private int lastOnlineFromOtherDevice;
    private long lastSoundOutPlay;
    private long lastSoundPlay;
    private final LongSparseArray lastWearNotifiedMessageId;
    private String launcherClassName;
    private SpoilerEffect mediaSpoilerEffect;
    private Runnable notificationDelayRunnable;
    private PowerManager.WakeLock notificationDelayWakelock;
    private String notificationGroup;
    private int notificationId;
    private boolean notifyCheck;
    private long openedDialogId;
    private final HashSet<Long> openedInBubbleDialogs;
    private long openedTopicId;
    private int personalCount;
    public final ArrayList<MessageObject> popupMessages;
    public ArrayList<MessageObject> popupReplyMessages;
    private final LongSparseArray pushDialogs;
    private final LongSparseArray pushDialogsOverrideMention;
    private final ArrayList<MessageObject> pushMessages;
    private final LongSparseArray pushMessagesDict;
    public boolean showBadgeMessages;
    public boolean showBadgeMuted;
    public boolean showBadgeNumber;
    private final LongSparseArray smartNotificationsDialogs;
    private int soundIn;
    private boolean soundInLoaded;
    private int soundOut;
    private boolean soundOutLoaded;
    private SoundPool soundPool;
    private int soundRecord;
    private boolean soundRecordLoaded;
    char[] spoilerChars;
    private final ArrayList<StoryNotification> storyPushMessages;
    private final LongSparseArray storyPushMessagesDict;
    private int total_unread_count;
    private final LongSparseArray wearNotificationsIds;
    private static final DispatchQueue notificationsQueue = new DispatchQueue("notificationsQueue");
    public static long globalSecretChatId = DialogObject.makeEncryptedDialogId(1);

    /* JADX INFO: renamed from: $r8$lambda$1t1axbSYGQIU_GMVkHn-zrj3Llc, reason: not valid java name */
    public static /* synthetic */ void m4780$r8$lambda$1t1axbSYGQIU_GMVkHnzrj3Llc(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$XCcar2pyUU3PNWJSRPBNWRsFJM0(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$m8WhB6SNQirs3X5XQWhhP5mgO4s(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public void processReadStories() {
    }

    static {
        notificationManager = null;
        systemNotificationManager = null;
        if (Build.VERSION.SDK_INT >= 26 && ApplicationLoader.applicationContext != null) {
            notificationManager = NotificationManagerCompat.from(ApplicationLoader.applicationContext);
            systemNotificationManager = (NotificationManager) ApplicationLoader.applicationContext.getSystemService("notification");
            checkOtherNotificationsChannel();
        }
        audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        Instance = new NotificationsController[16];
        lockObjects = new Object[16];
        for (int i = 0; i < 16; i++) {
            lockObjects[i] = new Object();
        }
        sharedPrefCachedKeys = new LongSparseArray();
    }

    public static NotificationsController getInstance(int i) {
        NotificationsController notificationsController;
        NotificationsController notificationsController2 = Instance[i];
        if (notificationsController2 != null) {
            return notificationsController2;
        }
        synchronized (lockObjects[i]) {
            try {
                notificationsController = Instance[i];
                if (notificationsController == null) {
                    NotificationsController[] notificationsControllerArr = Instance;
                    NotificationsController notificationsController3 = new NotificationsController(i);
                    notificationsControllerArr[i] = notificationsController3;
                    notificationsController = notificationsController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return notificationsController;
    }

    public NotificationsController(int i) {
        super(i);
        this.pushMessages = new ArrayList<>();
        this.delayedPushMessages = new ArrayList<>();
        this.pushMessagesDict = new LongSparseArray();
        this.fcmRandomMessagesDict = new LongSparseArray();
        this.smartNotificationsDialogs = new LongSparseArray();
        this.pushDialogs = new LongSparseArray();
        this.wearNotificationsIds = new LongSparseArray();
        this.lastWearNotifiedMessageId = new LongSparseArray();
        this.pushDialogsOverrideMention = new LongSparseArray();
        this.popupMessages = new ArrayList<>();
        this.popupReplyMessages = new ArrayList<>();
        this.openedInBubbleDialogs = new HashSet<>();
        this.storyPushMessages = new ArrayList<>();
        this.storyPushMessagesDict = new LongSparseArray();
        this.openedDialogId = 0L;
        this.openedTopicId = 0L;
        this.lastButtonId = 5000;
        this.total_unread_count = 0;
        this.personalCount = 0;
        this.notifyCheck = false;
        this.lastOnlineFromOtherDevice = 0;
        this.lastBadgeCount = -1;
        this.mediaSpoilerEffect = new SpoilerEffect();
        this.spoilerChars = new char[]{10252, 10338, 10385, 10280, 10277, 10286, 10321};
        this.checkStoryPushesRunnable = new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.checkStoryPushes();
            }
        };
        this.notificationId = this.currentAccount + 1;
        StringBuilder sb = new StringBuilder();
        sb.append("messages");
        int i2 = this.currentAccount;
        sb.append(i2 == 0 ? _UrlKt.FRAGMENT_ENCODE_SET : Integer.valueOf(i2));
        this.notificationGroup = sb.toString();
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        this.inChatSoundEnabled = notificationsSettings.getBoolean("EnableInChatSound", true);
        this.showBadgeNumber = notificationsSettings.getBoolean("badgeNumber", true);
        this.showBadgeMuted = notificationsSettings.getBoolean("badgeNumberMuted", false);
        this.showBadgeMessages = notificationsSettings.getBoolean("badgeNumberMessages", true);
        notificationManager = NotificationManagerCompat.from(ApplicationLoader.applicationContext);
        systemNotificationManager = (NotificationManager) ApplicationLoader.applicationContext.getSystemService("notification");
        try {
            audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        try {
            this.alarmManager = (AlarmManager) ApplicationLoader.applicationContext.getSystemService("alarm");
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
        try {
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).newWakeLock(1, "telegram:notification_delay_lock");
            this.notificationDelayWakelock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
        } catch (Exception e3) {
            FileLog.m1136e(e3);
        }
        this.notificationDelayRunnable = new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.dialogsNotificationsFacade = new NotificationsSettingsFacade(this.currentAccount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("delay reached");
        }
        if (!this.delayedPushMessages.isEmpty()) {
            showOrUpdateNotification(true);
            this.delayedPushMessages.clear();
        }
        try {
            if (this.notificationDelayWakelock.isHeld()) {
                this.notificationDelayWakelock.release();
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static void checkOtherNotificationsChannel() {
        SharedPreferences sharedPreferences;
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        if (OTHER_NOTIFICATIONS_CHANNEL == null) {
            sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("Notifications", 0);
            OTHER_NOTIFICATIONS_CHANNEL = sharedPreferences.getString("OtherKey", "Other3");
        } else {
            sharedPreferences = null;
        }
        NotificationChannel notificationChannel = systemNotificationManager.getNotificationChannel(OTHER_NOTIFICATIONS_CHANNEL);
        if (notificationChannel != null && notificationChannel.getImportance() == 0) {
            try {
                systemNotificationManager.deleteNotificationChannel(OTHER_NOTIFICATIONS_CHANNEL);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            OTHER_NOTIFICATIONS_CHANNEL = null;
            notificationChannel = null;
        }
        if (OTHER_NOTIFICATIONS_CHANNEL == null) {
            if (sharedPreferences == null) {
                sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("Notifications", 0);
            }
            OTHER_NOTIFICATIONS_CHANNEL = "Other" + Utilities.random.nextLong();
            sharedPreferences.edit().putString("OtherKey", OTHER_NOTIFICATIONS_CHANNEL).apply();
        }
        if (notificationChannel == null) {
            NotificationsController$$ExternalSyntheticApiModelOutline0.m1167m();
            NotificationChannel notificationChannelM335m = zzo$$ExternalSyntheticApiModelOutline0.m335m(OTHER_NOTIFICATIONS_CHANNEL, "Internal notifications", 3);
            notificationChannelM335m.enableLights(false);
            notificationChannelM335m.enableVibration(false);
            notificationChannelM335m.setSound(null, null);
            try {
                systemNotificationManager.createNotificationChannel(notificationChannelM335m);
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        }
    }

    public static String getSharedPrefKey(long j, long j2) {
        return getSharedPrefKey(j, j2, false);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static String getSharedPrefKey(long j, long j2, boolean z) {
        String strValueOf;
        if (z) {
            if (j2 != 0) {
                return String.format(Locale.US, "%d_%d", Long.valueOf(j), Long.valueOf(j2));
            }
            return String.valueOf(j);
        }
        long j3 = (j2 << 12) + j;
        LongSparseArray longSparseArray = sharedPrefCachedKeys;
        int iIndexOfKey = longSparseArray.indexOfKey(j3);
        if (iIndexOfKey >= 0) {
            return (String) longSparseArray.valueAt(iIndexOfKey);
        }
        if (j2 != 0) {
            strValueOf = String.format(Locale.US, "%d_%d", Long.valueOf(j), Long.valueOf(j2));
        } else {
            strValueOf = String.valueOf(j);
        }
        longSparseArray.put(j3, strValueOf);
        return strValueOf;
    }

    public void muteUntil(long j, long j2, int i) {
        long j3;
        if (j != 0) {
            SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
            boolean z = j2 != 0;
            boolean zIsGlobalNotificationsEnabled = getInstance(this.currentAccount).isGlobalNotificationsEnabled(j, false, false);
            String sharedPrefKey = getSharedPrefKey(j, j2);
            if (i != Integer.MAX_VALUE) {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 3);
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + sharedPrefKey, getConnectionsManager().getCurrentTime() + i);
                j3 = (((long) i) << 32) | 1;
            } else if (!zIsGlobalNotificationsEnabled && !z) {
                editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey);
                j3 = 0;
            } else {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 2);
                j3 = 1L;
            }
            editorEdit.apply();
            if (j2 == 0) {
                getInstance(this.currentAccount).removeNotificationsForDialog(j);
                MessagesStorage.getInstance(this.currentAccount).setDialogFlags(j, j3);
                TLRPC.Dialog dialog = (TLRPC.Dialog) MessagesController.getInstance(this.currentAccount).dialogs_dict.get(j);
                if (dialog != null) {
                    TLRPC.TL_peerNotifySettings tL_peerNotifySettings = new TLRPC.TL_peerNotifySettings();
                    dialog.notify_settings = tL_peerNotifySettings;
                    if (i != Integer.MAX_VALUE || zIsGlobalNotificationsEnabled) {
                        tL_peerNotifySettings.mute_until = i;
                    }
                }
            }
            getInstance(this.currentAccount).updateServerNotificationsSettings(j, j2);
        }
    }

    public void cleanup() {
        this.popupMessages.clear();
        this.popupReplyMessages.clear();
        this.channelGroupsCreated = false;
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanup$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$1() {
        this.openedDialogId = 0L;
        this.openedTopicId = 0L;
        this.total_unread_count = 0;
        this.personalCount = 0;
        this.pushMessages.clear();
        this.pushMessagesDict.clear();
        this.fcmRandomMessagesDict.clear();
        this.pushDialogs.clear();
        this.wearNotificationsIds.clear();
        this.lastWearNotifiedMessageId.clear();
        this.openedInBubbleDialogs.clear();
        this.delayedPushMessages.clear();
        this.notifyCheck = false;
        this.lastBadgeCount = 0;
        try {
            if (this.notificationDelayWakelock.isHeld()) {
                this.notificationDelayWakelock.release();
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        dismissNotification();
        setBadge(getTotalAllUnreadCount());
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        editorEdit.clear();
        editorEdit.apply();
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                systemNotificationManager.deleteNotificationChannelGroup("channels" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("groups" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("private" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("stories" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("other" + this.currentAccount);
                String str = this.currentAccount + "channel";
                List<NotificationChannel> notificationChannels = systemNotificationManager.getNotificationChannels();
                int size = notificationChannels.size();
                for (int i = 0; i < size; i++) {
                    String id = NotificationsController$$ExternalSyntheticApiModelOutline3.m1170m(notificationChannels.get(i)).getId();
                    if (id.startsWith(str)) {
                        try {
                            systemNotificationManager.deleteNotificationChannel(id);
                        } catch (Exception e2) {
                            FileLog.m1136e(e2);
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("delete channel cleanup " + id);
                        }
                    }
                }
            } catch (Throwable th) {
                FileLog.m1136e(th);
            }
        }
    }

    public void setInChatSoundEnabled(boolean z) {
        this.inChatSoundEnabled = z;
    }

    public void setOpenedDialogId(final long j, final long j2) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setOpenedDialogId$2(j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenedDialogId$2(long j, long j2) {
        this.openedDialogId = j;
        this.openedTopicId = j2;
    }

    public void setOpenedInBubble(final long j, final boolean z) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setOpenedInBubble$3(z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenedInBubble$3(boolean z, long j) {
        if (z) {
            this.openedInBubbleDialogs.add(Long.valueOf(j));
        } else {
            this.openedInBubbleDialogs.remove(Long.valueOf(j));
        }
    }

    public void setLastOnlineFromOtherDevice(final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setLastOnlineFromOtherDevice$4(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLastOnlineFromOtherDevice$4(int i) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("set last online from other device = " + i);
        }
        this.lastOnlineFromOtherDevice = i;
    }

    public void removeNotificationsForDialog(long j) {
        processReadMessages(null, j, 0, Integer.MAX_VALUE, false);
        LongSparseIntArray longSparseIntArray = new LongSparseIntArray();
        longSparseIntArray.put(j, 0);
        processDialogsUpdateRead(longSparseIntArray);
    }

    public boolean hasMessagesToReply() {
        for (int i = 0; i < this.pushMessages.size(); i++) {
            MessageObject messageObject = this.pushMessages.get(i);
            long dialogId = messageObject.getDialogId();
            if (!messageObject.isReactionPush) {
                TLRPC.Message message = messageObject.messageOwner;
                if ((!message.mentioned || !(message.action instanceof TLRPC.TL_messageActionPinMessage)) && !DialogObject.isEncryptedDialog(dialogId) && ((messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) && dialogId != UserObject.VERIFY && dialogId != UserObject.OAUTH)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected void forceShowPopupForReply() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$forceShowPopupForReply$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forceShowPopupForReply$6() {
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.pushMessages.size(); i++) {
            MessageObject messageObject = this.pushMessages.get(i);
            long dialogId = messageObject.getDialogId();
            TLRPC.Message message = messageObject.messageOwner;
            if ((!message.mentioned || !(message.action instanceof TLRPC.TL_messageActionPinMessage)) && !DialogObject.isEncryptedDialog(dialogId) && (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup())) {
                arrayList.add(0, messageObject);
            }
        }
        if (arrayList.isEmpty() || AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$forceShowPopupForReply$5(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forceShowPopupForReply$5(ArrayList arrayList) {
        this.popupReplyMessages = arrayList;
        Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) PopupNotificationActivity.class);
        intent.putExtra("force", true);
        intent.putExtra("currentAccount", this.currentAccount);
        intent.setFlags(268763140);
        ApplicationLoader.applicationContext.startActivity(intent);
        ApplicationLoader.applicationContext.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    public void removeDeletedMessagesFromNotifications(final LongSparseArray longSparseArray, final boolean z) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeDeletedMessagesFromNotifications$9(longSparseArray, z, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$9(LongSparseArray longSparseArray, boolean z, final ArrayList arrayList) {
        Integer num;
        int i;
        Integer num2;
        int i2;
        Integer num3;
        LongSparseArray longSparseArray2 = longSparseArray;
        int i3 = this.total_unread_count;
        getAccountInstance().getNotificationsSettings();
        int i4 = 0;
        Integer num4 = 0;
        int i5 = 0;
        while (i5 < longSparseArray2.size()) {
            long jKeyAt = longSparseArray2.keyAt(i5);
            SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(jKeyAt);
            if (sparseArray == null) {
                num = num4;
                i = i5;
            } else {
                ArrayList arrayList2 = (ArrayList) longSparseArray2.get(jKeyAt);
                int size = arrayList2.size();
                int i6 = i4;
                while (i6 < size) {
                    int iIntValue = ((Integer) arrayList2.get(i6)).intValue();
                    MessageObject messageObject = (MessageObject) sparseArray.get(iIntValue);
                    if (messageObject == null) {
                        num2 = num4;
                        i2 = i5;
                    } else if (!messageObject.isStoryReactionPush && (!z || messageObject.isReactionPush)) {
                        num2 = num4;
                        long dialogId = messageObject.getDialogId();
                        Integer num5 = (Integer) this.pushDialogs.get(dialogId);
                        if (num5 == null) {
                            num5 = num2;
                        }
                        int iIntValue2 = num5.intValue() - 1;
                        Integer numValueOf = Integer.valueOf(iIntValue2);
                        if (iIntValue2 <= 0) {
                            this.smartNotificationsDialogs.remove(dialogId);
                            num3 = num2;
                        } else {
                            num3 = numValueOf;
                        }
                        if (num3.equals(num5)) {
                            i2 = i5;
                        } else {
                            i2 = i5;
                            if (getMessagesController().isForum(dialogId)) {
                                int i7 = this.total_unread_count - (num5.intValue() > 0 ? 1 : 0);
                                this.total_unread_count = i7;
                                this.total_unread_count = i7 + (num3.intValue() > 0 ? 1 : 0);
                            } else {
                                int iIntValue3 = this.total_unread_count - num5.intValue();
                                this.total_unread_count = iIntValue3;
                                this.total_unread_count = iIntValue3 + num3.intValue();
                            }
                            this.pushDialogs.put(dialogId, num3);
                        }
                        if (num3.intValue() == 0) {
                            this.pushDialogs.remove(dialogId);
                            this.pushDialogsOverrideMention.remove(dialogId);
                        }
                        sparseArray.remove(iIntValue);
                        this.delayedPushMessages.remove(messageObject);
                        this.pushMessages.remove(messageObject);
                        if (isPersonalMessage(messageObject)) {
                            this.personalCount--;
                        }
                        arrayList.add(messageObject);
                    } else {
                        num2 = num4;
                        i2 = i5;
                    }
                    i6++;
                    num4 = num2;
                    i5 = i2;
                }
                num = num4;
                i = i5;
                if (sparseArray.size() == 0) {
                    this.pushMessagesDict.remove(jKeyAt);
                }
            }
            i5 = i + 1;
            longSparseArray2 = longSparseArray;
            num4 = num;
            i4 = 0;
        }
        if (!arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedMessagesFromNotifications$7(arrayList);
                }
            });
        }
        if (i3 != this.total_unread_count) {
            if (!this.notifyCheck) {
                this.delayedPushMessages.clear();
                showOrUpdateNotification(this.notifyCheck);
            } else {
                scheduleNotificationDelay(this.lastOnlineFromOtherDevice > getConnectionsManager().getCurrentTime());
            }
            final int size2 = this.pushDialogs.size();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedMessagesFromNotifications$8(size2);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$7(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$8(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void removeDeletedHisoryFromNotifications(final LongSparseIntArray longSparseIntArray) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeDeletedHisoryFromNotifications$12(longSparseIntArray, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$12(LongSparseIntArray longSparseIntArray, final ArrayList arrayList) {
        Integer num;
        int i = this.total_unread_count;
        getAccountInstance().getNotificationsSettings();
        int i2 = 0;
        Integer num2 = 0;
        int i3 = 0;
        while (i3 < longSparseIntArray.size()) {
            long jKeyAt = longSparseIntArray.keyAt(i3);
            long j = -jKeyAt;
            long j2 = longSparseIntArray.get(jKeyAt);
            Integer num3 = (Integer) this.pushDialogs.get(j);
            if (num3 == null) {
                num3 = num2;
            }
            int i4 = i2;
            Integer numValueOf = num3;
            while (i4 < this.pushMessages.size()) {
                MessageObject messageObject = this.pushMessages.get(i4);
                if (messageObject.getDialogId() == j) {
                    num = num2;
                    if (messageObject.getId() <= j2) {
                        SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(j);
                        if (sparseArray != null) {
                            sparseArray.remove(messageObject.getId());
                            if (sparseArray.size() == 0) {
                                this.pushMessagesDict.remove(j);
                            }
                        }
                        this.delayedPushMessages.remove(messageObject);
                        this.pushMessages.remove(messageObject);
                        i4--;
                        if (isPersonalMessage(messageObject)) {
                            this.personalCount--;
                        }
                        arrayList.add(messageObject);
                        numValueOf = Integer.valueOf(numValueOf.intValue() - 1);
                    }
                } else {
                    num = num2;
                }
                i4++;
                num2 = num;
            }
            Integer num4 = num2;
            if (numValueOf.intValue() <= 0) {
                this.smartNotificationsDialogs.remove(j);
                numValueOf = num4;
            }
            if (!numValueOf.equals(num3)) {
                if (getMessagesController().isForum(j)) {
                    int i5 = this.total_unread_count - (num3.intValue() > 0 ? 1 : 0);
                    this.total_unread_count = i5;
                    this.total_unread_count = i5 + (numValueOf.intValue() > 0 ? 1 : 0);
                } else {
                    int iIntValue = this.total_unread_count - num3.intValue();
                    this.total_unread_count = iIntValue;
                    this.total_unread_count = iIntValue + numValueOf.intValue();
                }
                this.pushDialogs.put(j, numValueOf);
            }
            if (numValueOf.intValue() == 0) {
                this.pushDialogs.remove(j);
                this.pushDialogsOverrideMention.remove(j);
            }
            i3++;
            num2 = num4;
            i2 = 0;
        }
        if (arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedHisoryFromNotifications$10(arrayList);
                }
            });
        }
        if (i != this.total_unread_count) {
            if (!this.notifyCheck) {
                this.delayedPushMessages.clear();
                showOrUpdateNotification(this.notifyCheck);
            } else {
                scheduleNotificationDelay(this.lastOnlineFromOtherDevice > getConnectionsManager().getCurrentTime());
            }
            final int size = this.pushDialogs.size();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedHisoryFromNotifications$11(size);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$10(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$11(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void processSeenStoryReactions(long j, final int i) {
        if (j != getUserConfig().getClientUserId()) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processSeenStoryReactions$13(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSeenStoryReactions$13(int i) {
        int i2 = 0;
        boolean z = false;
        while (i2 < this.pushMessages.size()) {
            MessageObject messageObject = this.pushMessages.get(i2);
            if (messageObject.isStoryReactionPush && Math.abs(messageObject.getId()) == i) {
                this.pushMessages.remove(i2);
                SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(messageObject.getDialogId());
                if (sparseArray != null) {
                    sparseArray.remove(messageObject.getId());
                }
                if (sparseArray != null && sparseArray.size() <= 0) {
                    this.pushMessagesDict.remove(messageObject.getDialogId());
                }
                ArrayList<Integer> arrayList = new ArrayList<>();
                arrayList.add(Integer.valueOf(messageObject.getId()));
                getMessagesStorage().deletePushMessages(messageObject.getDialogId(), arrayList);
                i2--;
                z = true;
            }
            i2++;
        }
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    public void processDeleteStory(final long j, final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDeleteStory$14(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDeleteStory$14(long j, int i) {
        boolean z;
        StoryNotification storyNotification = (StoryNotification) this.storyPushMessagesDict.get(j);
        if (storyNotification != null) {
            storyNotification.dateByIds.remove(Integer.valueOf(i));
            if (storyNotification.dateByIds.isEmpty()) {
                this.storyPushMessagesDict.remove(j);
                this.storyPushMessages.remove(storyNotification);
                getMessagesStorage().deleteStoryPushMessage(j);
                z = true;
            } else {
                getMessagesStorage().putStoryPushMessage(storyNotification);
                z = false;
            }
        } else {
            z = false;
        }
        int i2 = 0;
        while (i2 < this.pushMessages.size()) {
            MessageObject messageObject = this.pushMessages.get(i2);
            if (messageObject != null && messageObject.isLiveStoryPush && messageObject.getId() == i) {
                this.pushMessages.remove(i2);
                i2--;
                SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(messageObject.getDialogId());
                if (sparseArray != null) {
                    sparseArray.remove(messageObject.getId());
                }
                if (sparseArray != null && sparseArray.size() <= 0) {
                    this.pushMessagesDict.remove(messageObject.getDialogId());
                }
                z = true;
            }
            i2++;
        }
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    public void processReadStories(final long j, final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processReadStories$15(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processReadStories$15(long j, int i) {
        boolean z;
        StoryNotification storyNotification = (StoryNotification) this.storyPushMessagesDict.get(j);
        if (storyNotification != null) {
            this.storyPushMessagesDict.remove(j);
            this.storyPushMessages.remove(storyNotification);
            getMessagesStorage().deleteStoryPushMessage(j);
            z = true;
        } else {
            z = false;
        }
        int i2 = 0;
        while (i2 < this.pushMessages.size()) {
            MessageObject messageObject = this.pushMessages.get(i2);
            if (messageObject != null && messageObject.isLiveStoryPush && messageObject.getId() <= i) {
                this.pushMessages.remove(i2);
                i2--;
                SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(messageObject.getDialogId());
                if (sparseArray != null) {
                    sparseArray.remove(messageObject.getId());
                }
                if (sparseArray != null && sparseArray.size() <= 0) {
                    this.pushMessagesDict.remove(messageObject.getDialogId());
                }
                z = true;
            }
            i2++;
        }
        if (z) {
            showOrUpdateNotification(false);
            updateStoryPushesRunnable();
        }
    }

    public void processIgnoreStories() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processIgnoreStories$16();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStories$16() {
        boolean zIsEmpty = this.storyPushMessages.isEmpty();
        this.storyPushMessages.clear();
        this.storyPushMessagesDict.clear();
        getMessagesStorage().deleteAllStoryPushMessages();
        if (zIsEmpty) {
            return;
        }
        showOrUpdateNotification(false);
    }

    public void processIgnoreStoryReactions() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processIgnoreStoryReactions$17();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStoryReactions$17() {
        int i = 0;
        boolean z = false;
        while (i < this.pushMessages.size()) {
            MessageObject messageObject = this.pushMessages.get(i);
            if (messageObject != null && messageObject.isStoryReactionPush) {
                this.pushMessages.remove(i);
                i--;
                SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(messageObject.getDialogId());
                if (sparseArray != null) {
                    sparseArray.remove(messageObject.getId());
                }
                if (sparseArray != null && sparseArray.size() <= 0) {
                    this.pushMessagesDict.remove(messageObject.getDialogId());
                }
                z = true;
            }
            i++;
        }
        getMessagesStorage().deleteAllStoryReactionPushMessages();
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    public void processIgnoreStories(final long j) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processIgnoreStories$18(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStories$18(long j) {
        boolean zIsEmpty = this.storyPushMessages.isEmpty();
        this.storyPushMessages.clear();
        this.storyPushMessagesDict.clear();
        getMessagesStorage().deleteStoryPushMessage(j);
        if (zIsEmpty) {
            return;
        }
        showOrUpdateNotification(false);
    }

    public void processReadMessages(final LongSparseIntArray longSparseIntArray, final long j, final int i, final int i2, final boolean z) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processReadMessages$20(longSparseIntArray, arrayList, j, i2, i, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processReadMessages$20(LongSparseIntArray longSparseIntArray, final ArrayList arrayList, long j, int i, int i2, boolean z) {
        long dialogId;
        long j2;
        long dialogId2;
        long j3 = 0;
        if (longSparseIntArray != null) {
            for (int i3 = 0; i3 < longSparseIntArray.size(); i3++) {
                long jKeyAt = longSparseIntArray.keyAt(i3);
                int i4 = longSparseIntArray.get(jKeyAt);
                int i5 = 0;
                while (i5 < this.pushMessages.size()) {
                    MessageObject messageObject = this.pushMessages.get(i5);
                    if (messageObject.messageOwner.from_scheduled || messageObject.getDialogId() != jKeyAt || messageObject.getId() > i4 || messageObject.isStoryReactionPush) {
                        j2 = j3;
                    } else {
                        if (isPersonalMessage(messageObject)) {
                            this.personalCount--;
                        }
                        arrayList.add(messageObject);
                        if (messageObject.isStoryReactionPush) {
                            dialogId2 = messageObject.getDialogId();
                        } else {
                            long j4 = messageObject.messageOwner.peer_id.channel_id;
                            dialogId2 = j4 != j3 ? -j4 : j3;
                        }
                        SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(dialogId2);
                        j2 = j3;
                        if (sparseArray != null) {
                            sparseArray.remove(messageObject.getId());
                            if (sparseArray.size() == 0) {
                                this.pushMessagesDict.remove(dialogId2);
                            }
                        }
                        this.delayedPushMessages.remove(messageObject);
                        this.pushMessages.remove(i5);
                        i5--;
                    }
                    i5++;
                    j3 = j2;
                }
            }
        }
        long j5 = j3;
        if (j != j5 && (i != 0 || i2 != 0)) {
            int i6 = 0;
            while (i6 < this.pushMessages.size()) {
                MessageObject messageObject2 = this.pushMessages.get(i6);
                if (messageObject2.getDialogId() == j && !messageObject2.isStoryReactionPush) {
                    if (i2 != 0) {
                        if (messageObject2.messageOwner.date <= i2) {
                            if (isPersonalMessage(messageObject2)) {
                                this.personalCount--;
                            }
                            if (messageObject2.isStoryReactionPush) {
                                dialogId = messageObject2.getDialogId();
                            } else {
                                long j6 = messageObject2.messageOwner.peer_id.channel_id;
                                dialogId = j6 != j5 ? -j6 : j5;
                            }
                            SparseArray sparseArray2 = (SparseArray) this.pushMessagesDict.get(dialogId);
                            if (sparseArray2 != null) {
                                sparseArray2.remove(messageObject2.getId());
                                if (sparseArray2.size() == 0) {
                                    this.pushMessagesDict.remove(dialogId);
                                }
                            }
                            this.pushMessages.remove(i6);
                            this.delayedPushMessages.remove(messageObject2);
                            arrayList.add(messageObject2);
                            i6--;
                        }
                    } else if (!z) {
                        if (messageObject2.getId() <= i || i < 0) {
                        }
                    } else if (messageObject2.getId() == i || i < 0) {
                    }
                }
                i6++;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processReadMessages$19(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processReadMessages$19(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int addToPopupMessages(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j, boolean z, SharedPreferences sharedPreferences) {
        int i;
        if (messageObject.isStoryReactionPush) {
            return 0;
        }
        if (!DialogObject.isEncryptedDialog(j)) {
            if (sharedPreferences.getBoolean(NotificationsSettingsFacade.PROPERTY_CUSTOM + j, false)) {
                i = sharedPreferences.getInt("popup_" + j, 0);
            } else {
                i = 0;
            }
            if (i == 0) {
                if (z) {
                    i = sharedPreferences.getInt("popupChannel", 0);
                } else {
                    i = sharedPreferences.getInt(DialogObject.isChatDialog(j) ? "popupGroup" : "popupAll", 0);
                }
            } else if (i == 1) {
                i = 3;
            } else if (i == 2) {
                i = 0;
            }
        }
        if (i != 0 && messageObject.messageOwner.peer_id.channel_id != 0 && !messageObject.isSupergroup()) {
            i = 0;
        }
        if (i != 0) {
            arrayList.add(0, messageObject);
        }
        return i;
    }

    public void processEditedMessages(final LongSparseArray longSparseArray) {
        TLRPC.Message message;
        if (longSparseArray == null || longSparseArray.size() == 0) {
            return;
        }
        for (int i = 0; i < longSparseArray.size(); i++) {
            ArrayList arrayList = (ArrayList) longSparseArray.valueAt(i);
            if (arrayList != null) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    MessageObject messageObject = (MessageObject) arrayList.get(i2);
                    if (messageObject != null && (message = messageObject.messageOwner) != null) {
                        TLRPC.MessageAction messageAction = message.action;
                        if (messageAction instanceof TLRPC.TL_messageActionConferenceCall) {
                            TLRPC.TL_messageActionConferenceCall tL_messageActionConferenceCall = (TLRPC.TL_messageActionConferenceCall) messageAction;
                            if (tL_messageActionConferenceCall.active || tL_messageActionConferenceCall.missed) {
                                VoIPGroupNotification.hide(ApplicationLoader.applicationContext, this.currentAccount, messageObject.getId());
                            }
                        }
                    }
                }
            }
        }
        new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processEditedMessages$21(longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processEditedMessages$21(LongSparseArray longSparseArray) {
        long dialogId;
        int size = longSparseArray.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            longSparseArray.keyAt(i);
            ArrayList arrayList = (ArrayList) longSparseArray.valueAt(i);
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i2);
                if (messageObject.isStoryReactionPush) {
                    dialogId = messageObject.getDialogId();
                } else {
                    long j = messageObject.messageOwner.peer_id.channel_id;
                    dialogId = j != 0 ? -j : 0L;
                }
                SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(dialogId);
                if (sparseArray == null) {
                    break;
                }
                MessageObject messageObject2 = (MessageObject) sparseArray.get(messageObject.getId());
                if (messageObject2 != null && (messageObject2.isReactionPush || messageObject2.isStoryReactionPush)) {
                    messageObject2 = null;
                }
                if (messageObject2 != null) {
                    sparseArray.put(messageObject.getId(), messageObject);
                    int iIndexOf = this.pushMessages.indexOf(messageObject2);
                    if (iIndexOf >= 0) {
                        this.pushMessages.set(iIndexOf, messageObject);
                    }
                    int iIndexOf2 = this.delayedPushMessages.indexOf(messageObject2);
                    if (iIndexOf2 >= 0) {
                        this.delayedPushMessages.set(iIndexOf2, messageObject);
                    }
                    z = true;
                }
            }
        }
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    public void processNewMessages(final ArrayList<MessageObject> arrayList, boolean z, boolean z2, final CountDownLatch countDownLatch) {
        final boolean z3;
        final boolean z4;
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            sb.append("NotificationsController: processNewMessages msgs.size()=");
            sb.append(arrayList == null ? "null" : Integer.valueOf(arrayList.size()));
            sb.append(" isLast=");
            z3 = z;
            sb.append(z3);
            sb.append(" isFcm=");
            z4 = z2;
            sb.append(z4);
            sb.append(")");
            FileLog.m1133d(sb.toString());
        } else {
            z3 = z;
            z4 = z2;
        }
        if (arrayList != null) {
            int i = 0;
            while (i < arrayList.size()) {
                MessageObject messageObject = arrayList.get(i);
                if (messageObject != null && messageObject.messageOwner != null && !messageObject.isOutOwner()) {
                    TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
                    if (messageAction instanceof TLRPC.TL_messageActionConferenceCall) {
                        TLRPC.TL_messageActionConferenceCall tL_messageActionConferenceCall = (TLRPC.TL_messageActionConferenceCall) messageAction;
                        if (!tL_messageActionConferenceCall.active && !tL_messageActionConferenceCall.missed && getConnectionsManager().getCurrentTime() - messageObject.messageOwner.date < ((long) getMessagesController().callRingTimeout) / 1000) {
                            HashSet hashSet = new HashSet();
                            hashSet.add(Long.valueOf(messageObject.getDialogId()));
                            ArrayList arrayList2 = tL_messageActionConferenceCall.other_participants;
                            int size = arrayList2.size();
                            int i2 = 0;
                            while (i2 < size) {
                                Object obj = arrayList2.get(i2);
                                i2++;
                                hashSet.add(Long.valueOf(DialogObject.getPeerDialogId((TLRPC.Peer) obj)));
                            }
                            StringBuilder sb2 = new StringBuilder();
                            Iterator it = hashSet.iterator();
                            while (it.hasNext()) {
                                long jLongValue = ((Long) it.next()).longValue();
                                if (sb2.length() > 0) {
                                    sb2.append(", ");
                                }
                                sb2.append(DialogObject.getShortName(this.currentAccount, jLongValue));
                            }
                            VoIPGroupNotification.request(ApplicationLoader.applicationContext, this.currentAccount, messageObject.getDialogId(), sb2.toString(), tL_messageActionConferenceCall.call_id, messageObject.getId(), tL_messageActionConferenceCall.video);
                            arrayList.remove(i);
                            i--;
                        } else {
                            VoIPGroupNotification.hide(ApplicationLoader.applicationContext, this.currentAccount, messageObject.getId());
                        }
                    }
                }
                i++;
            }
        }
        if (!arrayList.isEmpty()) {
            final ArrayList arrayList3 = new ArrayList(0);
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processNewMessages$26(arrayList, arrayList3, z4, z3, countDownLatch);
                }
            });
        } else if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0178  */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v5, types: [int] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r24v4 */
    /* JADX WARN: Type inference failed for: r24v5, types: [int] */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [int] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processNewMessages$26(ArrayList arrayList, final ArrayList arrayList2, boolean z, boolean z2, CountDownLatch countDownLatch) {
        long j;
        boolean zIsGlobalNotificationsEnabled;
        boolean z3;
        int iIntValue;
        Integer num;
        boolean z4;
        boolean z5;
        int i;
        SharedPreferences sharedPreferences;
        boolean z6;
        long dialogId;
        long j2;
        String str;
        long fromChatId;
        long j3;
        String str2;
        long j4;
        int i2;
        boolean z7;
        long j5;
        boolean zBooleanValue;
        long j6;
        MessageObject messageObject;
        SparseArray sparseArray;
        long j7;
        final NotificationsController notificationsController = this;
        ArrayList arrayList3 = arrayList;
        LongSparseArray longSparseArray = new LongSparseArray();
        SharedPreferences notificationsSettings = notificationsController.getAccountInstance().getNotificationsSettings();
        boolean z8 = true;
        boolean z9 = notificationsSettings.getBoolean("PinnedMessages", true);
        int i3 = 0;
        boolean z10 = false;
        int iAddToPopupMessages = 0;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        while (i3 < arrayList3.size()) {
            MessageObject messageObject2 = (MessageObject) arrayList3.get(i3);
            if (messageObject2.messageOwner == null) {
                if (MessageObject.isTopicActionMessage(messageObject2)) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m1133d("skipped message because 1");
                    }
                } else if (messageObject2.isStoryPush) {
                    TLRPC.Message message = messageObject2.messageOwner;
                    long jCurrentTimeMillis = message == null ? System.currentTimeMillis() : ((long) message.date) * 1000;
                    long dialogId2 = messageObject2.getDialogId();
                    int id = messageObject2.getId();
                    StoryNotification storyNotification = (StoryNotification) notificationsController.storyPushMessagesDict.get(dialogId2);
                    if (storyNotification != null) {
                        storyNotification.dateByIds.put(Integer.valueOf(id), new Pair<>(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis + 86400000)));
                        boolean z14 = storyNotification.hidden;
                        boolean z15 = messageObject2.isStoryPushHidden;
                        if (z14 != z15) {
                            storyNotification.hidden = z15;
                            z13 = z8;
                        }
                        storyNotification.date = storyNotification.getLeastDate();
                        notificationsController.getMessagesStorage().putStoryPushMessage(storyNotification);
                        z11 = z8;
                    } else {
                        StoryNotification storyNotification2 = new StoryNotification(dialogId2, messageObject2.localName, id, jCurrentTimeMillis);
                        storyNotification2.hidden = messageObject2.isStoryPushHidden;
                        notificationsController.storyPushMessages.add(storyNotification2);
                        notificationsController.storyPushMessagesDict.put(dialogId2, storyNotification2);
                        notificationsController.getMessagesStorage().putStoryPushMessage(storyNotification2);
                        z10 = z8;
                        z13 = z10;
                    }
                    Collections.sort(notificationsController.storyPushMessages, Comparator.CC.comparingLong(new ToLongFunction() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda32
                        @Override // java.util.function.ToLongFunction
                        public final long applyAsLong(Object obj) {
                            return ((NotificationsController.StoryNotification) obj).date;
                        }
                    }));
                    sharedPreferences = notificationsSettings;
                    z5 = z9;
                    i = i3;
                } else {
                    if (messageObject2.isOauthPush) {
                        TLRPC.Message message2 = messageObject2.messageOwner;
                        if (message2 != null) {
                            final int i4 = message2.f1686id;
                            boolean z16 = z8;
                            z5 = z9;
                            long j8 = ((long) message2.date) + 60;
                            z4 = z16;
                            i = i3;
                            long currentTime = ConnectionsManager.getInstance(notificationsController.currentAccount).getCurrentTime();
                            if (currentTime <= j8) {
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda33
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$processNewMessages$23(i4);
                                    }
                                }, (j8 - currentTime) * 1000);
                            }
                            sharedPreferences = notificationsSettings;
                        }
                    } else {
                        z4 = z8;
                        z5 = z9;
                        i = i3;
                    }
                    int id2 = messageObject2.getId();
                    long j9 = messageObject2.isFcmMessage() ? messageObject2.messageOwner.random_id : 0L;
                    long dialogId3 = messageObject2.getDialogId();
                    if (messageObject2.isFcmMessage()) {
                        z6 = messageObject2.localChannel;
                    } else if (DialogObject.isChatDialog(dialogId3)) {
                        TLRPC.Chat chat = notificationsController.getMessagesController().getChat(Long.valueOf(-dialogId3));
                        z6 = (!ChatObject.isChannel(chat) || chat.megagroup) ? false : z4;
                    }
                    if (messageObject2.isStoryReactionPush) {
                        dialogId = messageObject2.getDialogId();
                    } else {
                        long j10 = messageObject2.messageOwner.peer_id.channel_id;
                        dialogId = j10 != 0 ? -j10 : 0L;
                    }
                    SparseArray sparseArray2 = (SparseArray) notificationsController.pushMessagesDict.get(dialogId);
                    MessageObject messageObject3 = sparseArray2 != null ? (MessageObject) sparseArray2.get(id2) : null;
                    SharedPreferences sharedPreferences2 = notificationsSettings;
                    if (messageObject3 == null) {
                        j2 = j9;
                        long j11 = messageObject2.messageOwner.random_id;
                        if (j11 != 0 && (messageObject3 = (MessageObject) notificationsController.fcmRandomMessagesDict.get(j11)) != null) {
                            notificationsController.fcmRandomMessagesDict.remove(messageObject2.messageOwner.random_id);
                        }
                    } else {
                        j2 = j9;
                    }
                    MessageObject messageObject4 = messageObject3;
                    if (messageObject4 != null) {
                        if (messageObject4.isFcmMessage()) {
                            if (sparseArray2 == null) {
                                sparseArray2 = new SparseArray();
                                notificationsController.pushMessagesDict.put(dialogId, sparseArray2);
                            }
                            sparseArray2.put(id2, messageObject2);
                            int iIndexOf = notificationsController.pushMessages.indexOf(messageObject4);
                            if (iIndexOf >= 0) {
                                notificationsController.pushMessages.set(iIndexOf, messageObject2);
                                j7 = dialogId;
                                iAddToPopupMessages = notificationsController.addToPopupMessages(arrayList2, messageObject2, dialogId3, z6, sharedPreferences2);
                                notificationsSettings = sharedPreferences2;
                            } else {
                                j7 = dialogId;
                                notificationsSettings = sharedPreferences2;
                            }
                            if (z && (z11 = messageObject2.localEdit)) {
                                notificationsController.getMessagesStorage().putPushMessage(messageObject2);
                            }
                        } else {
                            j7 = dialogId;
                            notificationsSettings = sharedPreferences2;
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("skipped message because old message with same dialog and message ids exist: did=" + j7 + ", mid=" + id2);
                        }
                    } else {
                        notificationsSettings = sharedPreferences2;
                        long j12 = dialogId;
                        boolean z17 = z6;
                        if (z11) {
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m1133d("skipped message because edited");
                            }
                        } else {
                            if (z && !messageObject2.isOauthPush) {
                                notificationsController.getMessagesStorage().putPushMessage(messageObject2);
                            }
                            sharedPreferences = notificationsSettings;
                            long topicId = MessageObject.getTopicId(notificationsController.currentAccount, messageObject2.messageOwner, notificationsController.getMessagesController().isForum(messageObject2));
                            if (dialogId3 == notificationsController.openedDialogId && ApplicationLoader.isScreenOn && !messageObject2.isStoryReactionPush && !messageObject2.isOauthPush) {
                                if (!z) {
                                    notificationsController.playInChatSound();
                                }
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.m1133d("skipped message because chat is already opened (openedDialogId = " + notificationsController.openedDialogId + ")");
                                }
                            } else {
                                TLRPC.Message message3 = messageObject2.messageOwner;
                                if (!message3.mentioned) {
                                    str = ")";
                                    fromChatId = dialogId3;
                                    j3 = fromChatId;
                                } else if (!z5 && (message3.action instanceof TLRPC.TL_messageActionPinMessage)) {
                                    if (BuildVars.LOGS_ENABLED) {
                                        FileLog.m1133d("skipped message because message is mention of pinned");
                                    }
                                } else {
                                    str = ")";
                                    j3 = dialogId3;
                                    fromChatId = messageObject2.getFromChatId();
                                }
                                if (notificationsController.isPersonalMessage(messageObject2)) {
                                    notificationsController.personalCount++;
                                }
                                DialogObject.isChatDialog(fromChatId);
                                int iIndexOfKey = longSparseArray.indexOfKey(fromChatId);
                                if (iIndexOfKey >= 0 && topicId == 0) {
                                    j4 = j3;
                                    zBooleanValue = ((Boolean) longSparseArray.valueAt(iIndexOfKey)).booleanValue();
                                    i2 = iAddToPopupMessages;
                                    z7 = z11;
                                    str2 = str;
                                    j5 = fromChatId;
                                } else {
                                    str2 = str;
                                    j4 = j3;
                                    i2 = iAddToPopupMessages;
                                    z7 = z11;
                                    int notifyOverride = notificationsController.getNotifyOverride(sharedPreferences, fromChatId, topicId);
                                    sharedPreferences = sharedPreferences;
                                    j5 = fromChatId;
                                    topicId = topicId;
                                    if (notifyOverride == -1) {
                                        boolean zIsGlobalNotificationsEnabled2 = isGlobalNotificationsEnabled(j5, Boolean.valueOf(z17), messageObject2.isReactionPush, messageObject2.isStoryReactionPush);
                                        if (BuildVars.LOGS_ENABLED) {
                                            FileLog.m1133d("NotificationsController: process new messages, isGlobalNotificationsEnabled(" + j5 + ", " + z17 + ", " + messageObject2.isReactionPush + ", " + messageObject2.isStoryReactionPush + ") = " + zIsGlobalNotificationsEnabled2);
                                        }
                                        zBooleanValue = zIsGlobalNotificationsEnabled2;
                                    } else {
                                        zBooleanValue = notifyOverride != 2 ? z4 : false;
                                    }
                                    longSparseArray.put(j5, Boolean.valueOf(zBooleanValue));
                                }
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.m1133d("NotificationsController: process new messages, value is " + zBooleanValue + " (" + j5 + ", " + z17 + ", " + messageObject2.isReactionPush + ", " + messageObject2.isStoryReactionPush + str2);
                                }
                                if (zBooleanValue) {
                                    notificationsController = this;
                                    j6 = j5;
                                    messageObject = messageObject2;
                                    iAddToPopupMessages = !z ? notificationsController.addToPopupMessages(arrayList2, messageObject, j6, z17, sharedPreferences) : i2;
                                    if (!z12) {
                                        z12 = messageObject.messageOwner.from_scheduled;
                                    }
                                    notificationsController.delayedPushMessages.add(messageObject);
                                    notificationsController.appendMessage(messageObject);
                                    if (id2 != 0) {
                                        if (sparseArray2 == null) {
                                            sparseArray = new SparseArray();
                                            notificationsController.pushMessagesDict.put(j12, sparseArray);
                                        } else {
                                            sparseArray = sparseArray2;
                                        }
                                        sparseArray.put(id2, messageObject);
                                    } else if (j2 != 0) {
                                        notificationsController.fcmRandomMessagesDict.put(j2, messageObject);
                                    }
                                    long j13 = j4;
                                    if (j13 != j6) {
                                        Integer num2 = (Integer) notificationsController.pushDialogsOverrideMention.get(j13);
                                        notificationsController.pushDialogsOverrideMention.put(j13, Integer.valueOf((int) (num2 == null ? z4 : num2.intValue() + 1)));
                                    }
                                } else {
                                    notificationsController = this;
                                    j6 = j5;
                                    messageObject = messageObject2;
                                    iAddToPopupMessages = i2;
                                }
                                if (messageObject.isReactionPush) {
                                    SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
                                    sparseBooleanArray.put(id2, z4);
                                    notificationsController.getMessagesController().checkUnreadReactions(j6, topicId, sparseBooleanArray);
                                }
                                z11 = z7;
                                z10 = true;
                            }
                        }
                    }
                    sharedPreferences = notificationsSettings;
                }
                sharedPreferences = notificationsSettings;
                z5 = z9;
                i = i3;
            } else {
                if (!messageObject2.isImportedForward()) {
                    TLRPC.Message message4 = messageObject2.messageOwner;
                    TLRPC.MessageAction messageAction = message4.action;
                    if ((messageAction instanceof TLRPC.TL_messageActionSetMessagesTTL) || (message4.silent && ((messageAction instanceof TLRPC.TL_messageActionContactSignUp) || (messageAction instanceof TLRPC.TL_messageActionUserJoined)))) {
                    }
                }
                if (BuildVars.LOGS_ENABLED) {
                }
                sharedPreferences = notificationsSettings;
                z5 = z9;
                i = i3;
            }
            i3 = i + 1;
            arrayList3 = arrayList;
            z9 = z5;
            notificationsSettings = sharedPreferences;
            z8 = true;
        }
        SharedPreferences sharedPreferences3 = notificationsSettings;
        final int i5 = iAddToPopupMessages;
        boolean z18 = z11;
        if (z10) {
            notificationsController.notifyCheck = z2;
        }
        if (!arrayList2.isEmpty() && !AndroidUtilities.needShowPasscode() && !SharedConfig.isWaitingForPasscodeEnter) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processNewMessages$24(arrayList2, i5);
                }
            });
        }
        if (z || z12) {
            if (z18) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("NotificationsController processNewMessages: edited branch, showOrUpdateNotification " + notificationsController.notifyCheck);
                }
                notificationsController.delayedPushMessages.clear();
                notificationsController.showOrUpdateNotification(notificationsController.notifyCheck);
            } else if (z10) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("NotificationsController processNewMessages: added branch");
                }
                MessageObject messageObject5 = (MessageObject) arrayList.get(0);
                long dialogId4 = messageObject5.getDialogId();
                long topicId2 = MessageObject.getTopicId(notificationsController.currentAccount, messageObject5.messageOwner, notificationsController.getMessagesController().isForum(dialogId4));
                Boolean boolValueOf = messageObject5.isFcmMessage() ? Boolean.valueOf(messageObject5.localChannel) : null;
                int i6 = notificationsController.total_unread_count;
                int notifyOverride2 = notificationsController.getNotifyOverride(sharedPreferences3, dialogId4, topicId2);
                if (notifyOverride2 == -1) {
                    notificationsController = this;
                    j = dialogId4;
                    zIsGlobalNotificationsEnabled = notificationsController.isGlobalNotificationsEnabled(dialogId4, boolValueOf, messageObject5.isReactionPush, messageObject5.isStoryReactionPush);
                } else {
                    notificationsController = this;
                    j = dialogId4;
                    zIsGlobalNotificationsEnabled = notifyOverride2 != 2;
                }
                Integer num3 = (Integer) notificationsController.pushDialogs.get(j);
                if (num3 != null) {
                    z3 = true;
                    iIntValue = num3.intValue() + 1;
                } else {
                    z3 = true;
                    iIntValue = 1;
                }
                if (notificationsController.notifyCheck && !zIsGlobalNotificationsEnabled && (num = (Integer) notificationsController.pushDialogsOverrideMention.get(j)) != null && num.intValue() != 0) {
                    iIntValue = num.intValue();
                    zIsGlobalNotificationsEnabled = z3;
                }
                if (zIsGlobalNotificationsEnabled && !messageObject5.isStoryPush) {
                    if (notificationsController.getMessagesController().isForum(j)) {
                        int i7 = notificationsController.total_unread_count - ((num3 == null || num3.intValue() <= 0) ? 0 : z3);
                        notificationsController.total_unread_count = i7;
                        notificationsController.total_unread_count = i7 + (iIntValue > 0 ? z3 : 0);
                    } else {
                        if (num3 != null) {
                            notificationsController.total_unread_count -= num3.intValue();
                        }
                        notificationsController.total_unread_count += iIntValue;
                    }
                    notificationsController.pushDialogs.put(j, Integer.valueOf(iIntValue));
                }
                if (i6 != notificationsController.total_unread_count || z13) {
                    notificationsController.delayedPushMessages.clear();
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m1133d("NotificationsController processNewMessages: added branch: " + notificationsController.notifyCheck);
                    }
                    notificationsController.showOrUpdateNotification(notificationsController.notifyCheck);
                    final int size = notificationsController.pushDialogs.size();
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda35
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$processNewMessages$25(size);
                        }
                    });
                }
                notificationsController.notifyCheck = false;
                if (notificationsController.showBadgeNumber) {
                    notificationsController.setBadge(notificationsController.getTotalAllUnreadCount());
                }
            }
        }
        if (z13) {
            notificationsController.updateStoryPushesRunnable();
        }
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNewMessages$23(int i) {
        LongSparseArray longSparseArray = new LongSparseArray();
        longSparseArray.put(0L, Lists.newArrayList(Integer.valueOf(i)));
        removeDeletedMessagesFromNotifications(longSparseArray, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNewMessages$24(ArrayList arrayList, int i) {
        this.popupMessages.addAll(0, arrayList);
        if (ApplicationLoader.mainInterfacePaused || !ApplicationLoader.isScreenOn) {
            if (i == 3 || ((i == 1 && ApplicationLoader.isScreenOn) || (i == 2 && !ApplicationLoader.isScreenOn))) {
                Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) PopupNotificationActivity.class);
                intent.setFlags(268763140);
                try {
                    ApplicationLoader.applicationContext.startActivity(intent);
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNewMessages$25(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    private void appendMessage(MessageObject messageObject) {
        for (int i = 0; i < this.pushMessages.size(); i++) {
            if (this.pushMessages.get(i).getId() == messageObject.getId() && this.pushMessages.get(i).getDialogId() == messageObject.getDialogId() && this.pushMessages.get(i).isStoryPush == messageObject.isStoryPush) {
                return;
            }
        }
        this.pushMessages.add(0, messageObject);
    }

    public int getTotalUnreadCount() {
        return this.total_unread_count;
    }

    public void processDialogsUpdateRead(final LongSparseIntArray longSparseIntArray) {
        final ArrayList arrayList = new ArrayList();
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDialogsUpdateRead$29(longSparseIntArray, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0050 A[PHI: r4
  0x0050: PHI (r4v3 int) = (r4v2 int), (r4v27 int) binds: [B:6:0x002e, B:14:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processDialogsUpdateRead$29(LongSparseIntArray longSparseIntArray, final ArrayList arrayList) {
        int iIntValue;
        boolean z;
        boolean zIsGlobalNotificationsEnabled;
        Integer num;
        int i = this.total_unread_count;
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        int i2 = 0;
        while (true) {
            if (i2 >= longSparseIntArray.size()) {
                break;
            }
            long jKeyAt = longSparseIntArray.keyAt(i2);
            Integer num2 = (Integer) this.pushDialogs.get(jKeyAt);
            int i3 = longSparseIntArray.get(jKeyAt);
            if (DialogObject.isChatDialog(jKeyAt)) {
                TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-jKeyAt));
                if (chat == null || chat.min || ChatObject.isNotInChat(chat)) {
                    i3 = 0;
                }
                if (chat != null) {
                    z = chat.forum;
                    iIntValue = i3;
                }
            } else {
                iIntValue = i3;
                z = false;
            }
            if (z) {
                zIsGlobalNotificationsEnabled = true;
            } else {
                int notifyOverride = getNotifyOverride(notificationsSettings, jKeyAt, 0L);
                if (notifyOverride == -1) {
                    zIsGlobalNotificationsEnabled = isGlobalNotificationsEnabled(jKeyAt, false, false);
                } else if (notifyOverride == 2) {
                    zIsGlobalNotificationsEnabled = false;
                }
            }
            if (this.notifyCheck && !zIsGlobalNotificationsEnabled && (num = (Integer) this.pushDialogsOverrideMention.get(jKeyAt)) != null && num.intValue() != 0) {
                iIntValue = num.intValue();
                zIsGlobalNotificationsEnabled = true;
            }
            if (iIntValue == 0) {
                this.smartNotificationsDialogs.remove(jKeyAt);
            }
            if (iIntValue >= 0) {
                if ((!zIsGlobalNotificationsEnabled || iIntValue == 0) && num2 != null) {
                    if (getMessagesController().isForum(jKeyAt)) {
                        this.total_unread_count -= num2.intValue() > 0 ? 1 : 0;
                    } else {
                        this.total_unread_count -= num2.intValue();
                    }
                }
                if (iIntValue == 0) {
                    this.pushDialogs.remove(jKeyAt);
                    this.pushDialogsOverrideMention.remove(jKeyAt);
                    int i4 = 0;
                    while (i4 < this.pushMessages.size()) {
                        MessageObject messageObject = this.pushMessages.get(i4);
                        if (!messageObject.messageOwner.from_scheduled && messageObject.getDialogId() == jKeyAt && !messageObject.isStoryReactionPush) {
                            if (isPersonalMessage(messageObject)) {
                                this.personalCount--;
                            }
                            this.pushMessages.remove(i4);
                            i4--;
                            this.delayedPushMessages.remove(messageObject);
                            long j = messageObject.messageOwner.peer_id.channel_id;
                            long j2 = j != 0 ? -j : 0L;
                            SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(j2);
                            if (sparseArray != null) {
                                sparseArray.remove(messageObject.getId());
                                if (sparseArray.size() == 0) {
                                    this.pushMessagesDict.remove(j2);
                                }
                            }
                            arrayList.add(messageObject);
                        }
                        i4++;
                    }
                } else if (zIsGlobalNotificationsEnabled) {
                    if (getMessagesController().isForum(jKeyAt)) {
                        this.total_unread_count += iIntValue <= 0 ? 0 : 1;
                    } else {
                        this.total_unread_count += iIntValue;
                    }
                    this.pushDialogs.put(jKeyAt, Integer.valueOf(iIntValue));
                }
            } else if (num2 != null) {
                iIntValue += num2.intValue();
                if (!zIsGlobalNotificationsEnabled) {
                    if (getMessagesController().isForum(jKeyAt)) {
                    }
                    if (iIntValue == 0) {
                    }
                } else {
                    if (getMessagesController().isForum(jKeyAt)) {
                    }
                    if (iIntValue == 0) {
                    }
                }
            }
            i2++;
        }
        if (!arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDialogsUpdateRead$27(arrayList);
                }
            });
        }
        if (i != this.total_unread_count) {
            if (!this.notifyCheck) {
                this.delayedPushMessages.clear();
                showOrUpdateNotification(this.notifyCheck);
            } else {
                scheduleNotificationDelay(this.lastOnlineFromOtherDevice > getConnectionsManager().getCurrentTime());
            }
            final int size = this.pushDialogs.size();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDialogsUpdateRead$28(size);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$27(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$28(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void processLoadedUnreadMessages(final LongSparseArray longSparseArray, final ArrayList<TLRPC.Message> arrayList, final ArrayList<MessageObject> arrayList2, ArrayList<TLRPC.User> arrayList3, ArrayList<TLRPC.Chat> arrayList4, ArrayList<TLRPC.EncryptedChat> arrayList5, final Collection<StoryNotification> collection) {
        getMessagesController().putUsers(arrayList3, true);
        getMessagesController().putChats(arrayList4, true);
        getMessagesController().putEncryptedChats(arrayList5, true);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedUnreadMessages$32(arrayList, longSparseArray, arrayList2, collection);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$32(ArrayList arrayList, LongSparseArray longSparseArray, ArrayList arrayList2, Collection collection) {
        MessageObject messageObject;
        boolean zIsGlobalNotificationsEnabled;
        long dialogId;
        SharedPreferences sharedPreferences;
        int i;
        boolean zIsGlobalNotificationsEnabled2;
        TLRPC.MessageFwdHeader messageFwdHeader;
        long j;
        long j2;
        int i2;
        TLRPC.Message message;
        long fromChatId;
        int i3;
        long j3;
        boolean zIsGlobalNotificationsEnabled3;
        TLRPC.Message message2;
        boolean zBooleanValue;
        SharedPreferences sharedPreferences2;
        final NotificationsController notificationsController = this;
        notificationsController.pushDialogs.clear();
        notificationsController.pushMessages.clear();
        notificationsController.pushMessagesDict.clear();
        notificationsController.storyPushMessages.clear();
        notificationsController.storyPushMessagesDict.clear();
        boolean z = false;
        notificationsController.total_unread_count = 0;
        notificationsController.personalCount = 0;
        SharedPreferences notificationsSettings = notificationsController.getAccountInstance().getNotificationsSettings();
        LongSparseArray longSparseArray2 = new LongSparseArray();
        long j4 = 0;
        if (arrayList != null) {
            int i4 = 0;
            while (i4 < arrayList.size()) {
                TLRPC.Message message3 = (TLRPC.Message) arrayList.get(i4);
                if (message3 != null && ((messageFwdHeader = message3.fwd_from) == null || !messageFwdHeader.imported)) {
                    TLRPC.MessageAction messageAction = message3.action;
                    if ((messageAction instanceof TLRPC.TL_messageActionSetMessagesTTL) || (message3.silent && ((messageAction instanceof TLRPC.TL_messageActionContactSignUp) || (messageAction instanceof TLRPC.TL_messageActionUserJoined)))) {
                        sharedPreferences2 = notificationsSettings;
                        i3 = i4;
                        j2 = j4;
                    } else {
                        long j5 = message3.peer_id.channel_id;
                        if (j5 != j4) {
                            j = -j5;
                            j2 = j4;
                        } else {
                            j = j4;
                            j2 = j;
                        }
                        SparseArray sparseArray = (SparseArray) notificationsController.pushMessagesDict.get(j);
                        if (sparseArray == null || sparseArray.indexOfKey(message3.f1686id) < 0) {
                            MessageObject messageObject2 = new MessageObject(notificationsController.currentAccount, message3, z, z);
                            if (notificationsController.isPersonalMessage(messageObject2)) {
                                notificationsController.personalCount++;
                            }
                            long dialogId2 = messageObject2.getDialogId();
                            long topicId = MessageObject.getTopicId(notificationsController.currentAccount, messageObject2.messageOwner, getMessagesController().isForum(messageObject2));
                            if (messageObject2.messageOwner.mentioned) {
                                i2 = i4;
                                message = message3;
                                fromChatId = messageObject2.getFromChatId();
                            } else {
                                i2 = i4;
                                message = message3;
                                fromChatId = dialogId2;
                            }
                            int iIndexOfKey = longSparseArray2.indexOfKey(fromChatId);
                            if (iIndexOfKey >= 0 && topicId == j2) {
                                zBooleanValue = ((Boolean) longSparseArray2.valueAt(iIndexOfKey)).booleanValue();
                                i3 = i2;
                                j3 = j;
                                message2 = message;
                                notificationsController = this;
                            } else {
                                i3 = i2;
                                j3 = j;
                                TLRPC.Message message4 = message;
                                notificationsController = this;
                                int notifyOverride = notificationsController.getNotifyOverride(notificationsSettings, fromChatId, topicId);
                                if (notifyOverride == -1) {
                                    zIsGlobalNotificationsEnabled3 = notificationsController.isGlobalNotificationsEnabled(fromChatId, messageObject2.isReactionPush, messageObject2.isStoryReactionPush);
                                } else {
                                    zIsGlobalNotificationsEnabled3 = notifyOverride != 2;
                                }
                                message2 = message4;
                                longSparseArray2.put(fromChatId, Boolean.valueOf(zIsGlobalNotificationsEnabled3));
                                zBooleanValue = zIsGlobalNotificationsEnabled3;
                            }
                            sharedPreferences2 = notificationsSettings;
                            if (zBooleanValue) {
                                long j6 = fromChatId;
                                if (j6 != notificationsController.openedDialogId || !ApplicationLoader.isScreenOn) {
                                    if (sparseArray == null) {
                                        sparseArray = new SparseArray();
                                        notificationsController.pushMessagesDict.put(j3, sparseArray);
                                    }
                                    sparseArray.put(message2.f1686id, messageObject2);
                                    notificationsController.appendMessage(messageObject2);
                                    if (dialogId2 != j6) {
                                        Integer num = (Integer) notificationsController.pushDialogsOverrideMention.get(dialogId2);
                                        notificationsController.pushDialogsOverrideMention.put(dialogId2, Integer.valueOf(num == null ? 1 : num.intValue() + 1));
                                    }
                                }
                            }
                        } else {
                            sharedPreferences2 = notificationsSettings;
                            i3 = i4;
                        }
                    }
                }
                i4 = i3 + 1;
                notificationsSettings = sharedPreferences2;
                j4 = j2;
                z = false;
            }
        }
        SharedPreferences sharedPreferences3 = notificationsSettings;
        long j7 = j4;
        int i5 = 0;
        while (i5 < longSparseArray.size()) {
            long jKeyAt = longSparseArray.keyAt(i5);
            int iIndexOfKey2 = longSparseArray2.indexOfKey(jKeyAt);
            if (iIndexOfKey2 >= 0) {
                zIsGlobalNotificationsEnabled2 = ((Boolean) longSparseArray2.valueAt(iIndexOfKey2)).booleanValue();
                sharedPreferences = sharedPreferences3;
                i = 0;
            } else {
                sharedPreferences = sharedPreferences3;
                int notifyOverride2 = notificationsController.getNotifyOverride(sharedPreferences, jKeyAt, 0L);
                if (notifyOverride2 == -1) {
                    i = 0;
                    zIsGlobalNotificationsEnabled2 = notificationsController.isGlobalNotificationsEnabled(jKeyAt, false, false);
                } else {
                    i = 0;
                    zIsGlobalNotificationsEnabled2 = notifyOverride2 != 2;
                }
                longSparseArray2.put(jKeyAt, Boolean.valueOf(zIsGlobalNotificationsEnabled2));
            }
            if (zIsGlobalNotificationsEnabled2) {
                Integer num2 = (Integer) longSparseArray.valueAt(i5);
                int iIntValue = num2.intValue();
                notificationsController.pushDialogs.put(jKeyAt, num2);
                if (notificationsController.getMessagesController().isForum(jKeyAt)) {
                    notificationsController.total_unread_count += iIntValue > 0 ? 1 : i;
                } else {
                    notificationsController.total_unread_count += iIntValue;
                }
            }
            i5++;
            sharedPreferences3 = sharedPreferences;
        }
        SharedPreferences sharedPreferences4 = sharedPreferences3;
        if (arrayList2 != null) {
            for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                MessageObject messageObject3 = (MessageObject) arrayList2.get(i6);
                int id = messageObject3.getId();
                if (notificationsController.pushMessagesDict.indexOfKey(id) < 0) {
                    if (notificationsController.isPersonalMessage(messageObject3)) {
                        notificationsController.personalCount++;
                    }
                    long dialogId3 = messageObject3.getDialogId();
                    long topicId2 = MessageObject.getTopicId(notificationsController.currentAccount, messageObject3.messageOwner, notificationsController.getMessagesController().isForum(messageObject3));
                    TLRPC.Message message5 = messageObject3.messageOwner;
                    long j8 = message5.random_id;
                    long fromChatId2 = message5.mentioned ? messageObject3.getFromChatId() : dialogId3;
                    int iIndexOfKey3 = longSparseArray2.indexOfKey(fromChatId2);
                    if (iIndexOfKey3 >= 0 && topicId2 == j7) {
                        zIsGlobalNotificationsEnabled = ((Boolean) longSparseArray2.valueAt(iIndexOfKey3)).booleanValue();
                        messageObject = messageObject3;
                    } else {
                        int notifyOverride3 = notificationsController.getNotifyOverride(sharedPreferences4, fromChatId2, topicId2);
                        if (notifyOverride3 == -1) {
                            messageObject = messageObject3;
                            zIsGlobalNotificationsEnabled = notificationsController.isGlobalNotificationsEnabled(fromChatId2, messageObject.isReactionPush, messageObject.isStoryReactionPush);
                        } else {
                            messageObject = messageObject3;
                            zIsGlobalNotificationsEnabled = notifyOverride3 != 2;
                        }
                        longSparseArray2.put(fromChatId2, Boolean.valueOf(zIsGlobalNotificationsEnabled));
                    }
                    if (zIsGlobalNotificationsEnabled && (fromChatId2 != notificationsController.openedDialogId || !ApplicationLoader.isScreenOn)) {
                        if (id != 0) {
                            if (messageObject.isStoryReactionPush) {
                                dialogId = messageObject.getDialogId();
                            } else {
                                long j9 = messageObject.messageOwner.peer_id.channel_id;
                                dialogId = j9 != j7 ? -j9 : j7;
                            }
                            SparseArray sparseArray2 = (SparseArray) notificationsController.pushMessagesDict.get(dialogId);
                            if (sparseArray2 == null) {
                                sparseArray2 = new SparseArray();
                                notificationsController.pushMessagesDict.put(dialogId, sparseArray2);
                            }
                            sparseArray2.put(id, messageObject);
                        } else if (j8 != j7) {
                            notificationsController.fcmRandomMessagesDict.put(j8, messageObject);
                        }
                        notificationsController.appendMessage(messageObject);
                        if (dialogId3 != fromChatId2) {
                            Integer num3 = (Integer) notificationsController.pushDialogsOverrideMention.get(dialogId3);
                            notificationsController.pushDialogsOverrideMention.put(dialogId3, Integer.valueOf(num3 == null ? 1 : num3.intValue() + 1));
                        }
                        Integer num4 = (Integer) notificationsController.pushDialogs.get(fromChatId2);
                        int iIntValue2 = num4 != null ? num4.intValue() + 1 : 1;
                        if (notificationsController.getMessagesController().isForum(fromChatId2)) {
                            if (num4 != null) {
                                notificationsController.total_unread_count -= num4.intValue() > 0 ? 1 : 0;
                            }
                            notificationsController.total_unread_count += iIntValue2 > 0 ? 1 : 0;
                        } else {
                            if (num4 != null) {
                                notificationsController.total_unread_count -= num4.intValue();
                            }
                            notificationsController.total_unread_count += iIntValue2;
                        }
                        notificationsController.pushDialogs.put(fromChatId2, Integer.valueOf(iIntValue2));
                    }
                }
            }
        }
        if (collection != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                StoryNotification storyNotification = (StoryNotification) it.next();
                long j10 = storyNotification.dialogId;
                StoryNotification storyNotification2 = (StoryNotification) notificationsController.storyPushMessagesDict.get(j10);
                if (storyNotification2 != null) {
                    storyNotification2.dateByIds.putAll(storyNotification.dateByIds);
                } else {
                    notificationsController.storyPushMessages.add(storyNotification);
                    notificationsController.storyPushMessagesDict.put(j10, storyNotification);
                }
            }
            Collections.sort(notificationsController.storyPushMessages, Comparator.CC.comparingLong(new ToLongFunction() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda47
                @Override // java.util.function.ToLongFunction
                public final long applyAsLong(Object obj) {
                    return ((NotificationsController.StoryNotification) obj).date;
                }
            }));
        }
        final int size = notificationsController.pushDialogs.size();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedUnreadMessages$31(size);
            }
        });
        notificationsController.showOrUpdateNotification(SystemClock.elapsedRealtime() / 1000 < 60);
        if (notificationsController.showBadgeNumber) {
            notificationsController.setBadge(notificationsController.getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$31(int i) {
        if (this.total_unread_count == 0) {
            this.popupMessages.clear();
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    private int getTotalAllUnreadCount() {
        int size;
        int dialogUnreadCount = 0;
        for (int i = 0; i < 16; i++) {
            if (UserConfig.getInstance(i).isClientActivated() && (SharedConfig.showNotificationsForAllAccounts || UserConfig.selectedAccount == i)) {
                NotificationsController notificationsController = getInstance(i);
                if (notificationsController.showBadgeNumber) {
                    if (notificationsController.showBadgeMessages) {
                        if (notificationsController.showBadgeMuted) {
                            try {
                                ArrayList arrayList = new ArrayList(MessagesController.getInstance(i).allDialogs);
                                int size2 = arrayList.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    TLRPC.Dialog dialog = (TLRPC.Dialog) arrayList.get(i2);
                                    if ((dialog == null || !DialogObject.isChatDialog(dialog.f1666id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-dialog.f1666id)))) && dialog != null) {
                                        dialogUnreadCount += MessagesController.getInstance(i).getDialogUnreadCount(dialog);
                                    }
                                }
                            } catch (Exception e) {
                                FileLog.m1136e(e);
                            }
                        } else {
                            size = notificationsController.total_unread_count;
                            dialogUnreadCount += size;
                        }
                    } else if (notificationsController.showBadgeMuted) {
                        try {
                            int size3 = MessagesController.getInstance(i).allDialogs.size();
                            for (int i3 = 0; i3 < size3; i3++) {
                                TLRPC.Dialog dialog2 = MessagesController.getInstance(i).allDialogs.get(i3);
                                if ((!DialogObject.isChatDialog(dialog2.f1666id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-dialog2.f1666id)))) && MessagesController.getInstance(i).getDialogUnreadCount(dialog2) != 0) {
                                    dialogUnreadCount++;
                                }
                            }
                        } catch (Exception e2) {
                            FileLog.m1136e(e2);
                        }
                    } else {
                        size = notificationsController.pushDialogs.size();
                        dialogUnreadCount += size;
                    }
                }
            }
        }
        return dialogUnreadCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateBadge$33() {
        setBadge(getTotalAllUnreadCount());
    }

    public void updateBadge() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateBadge$33();
            }
        });
    }

    private void setBadge(int i) {
        if (this.lastBadgeCount == i) {
            return;
        }
        FileLog.m1133d("setBadge " + i);
        this.lastBadgeCount = i;
        NotificationBadge.applyCount(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:155:0x022c, code lost:
    
        if (r12.getBoolean("EnablePreviewChannel", r6) != false) goto L156;
     */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:733:0x1048  */
    /* JADX WARN: Removed duplicated region for block: B:753:0x109e  */
    /* JADX WARN: Removed duplicated region for block: B:754:0x10a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String getShortStringForMessage(MessageObject messageObject, String[] strArr, boolean[] zArr) {
        long j;
        String title;
        TLRPC.Chat chat;
        boolean z;
        boolean z2;
        char c;
        String pluralString;
        String forcedFirstName;
        char c2;
        char c3;
        char c4;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        TLRPC.Chat chat2;
        String str;
        TLRPC.MessageFwdHeader messageFwdHeader2;
        TLRPC.Peer peer2;
        if (AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return LocaleController.getString(C2888R.string.NotificationHiddenMessage);
        }
        TLRPC.Message message = messageObject.messageOwner;
        long j2 = message.dialog_id;
        TLRPC.Peer peer3 = message.peer_id;
        long j3 = peer3.chat_id;
        if (j3 == 0) {
            j3 = peer3.channel_id;
        }
        long fromChatId = peer3.user_id;
        if (zArr != null) {
            zArr[0] = true;
        }
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        boolean z3 = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + j2, true);
        if (messageObject.isFcmMessage()) {
            if (j3 == 0 && fromChatId != 0) {
                if (Build.VERSION.SDK_INT > 27) {
                    strArr[0] = messageObject.localName;
                }
                if (!z3 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                    if (zArr != null) {
                        zArr[0] = false;
                    }
                    return LocaleController.getString(C2888R.string.Message);
                }
            } else if (j3 != 0) {
                if (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) {
                    strArr[0] = messageObject.localUserName;
                } else if (Build.VERSION.SDK_INT > 27) {
                    strArr[0] = messageObject.localName;
                }
                if (!z3 || ((!messageObject.localChannel && !notificationsSettings.getBoolean("EnablePreviewGroup", true)) || (messageObject.localChannel && !notificationsSettings.getBoolean("EnablePreviewChannel", true)))) {
                    if (zArr != null) {
                        zArr[0] = false;
                    }
                    return (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) ? LocaleController.formatString(C2888R.string.NotificationMessageGroupNoText, messageObject.localUserName, messageObject.localName) : LocaleController.formatString(C2888R.string.ChannelMessageNoText, messageObject.localName);
                }
            }
            return replaceSpoilers(messageObject);
        }
        long clientUserId = getUserConfig().getClientUserId();
        if (fromChatId == 0) {
            fromChatId = messageObject.getFromChatId();
            if (fromChatId == 0) {
                fromChatId = -j3;
            }
        } else if (fromChatId == clientUserId) {
            fromChatId = messageObject.getFromChatId();
        }
        if (j2 == 0) {
            if (j3 != 0) {
                j2 = -j3;
            } else if (fromChatId != 0) {
                j2 = fromChatId;
            }
        }
        if (UserObject.isReplyUser(j2) && (messageFwdHeader2 = messageObject.messageOwner.fwd_from) != null && (peer2 = messageFwdHeader2.from_id) != null) {
            fromChatId = MessageObject.getPeerId(peer2);
        }
        if (fromChatId > 0) {
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(fromChatId));
            if (user != null) {
                String userName = UserObject.getUserName(user);
                if (j3 != 0) {
                    strArr[0] = userName;
                    str = userName;
                } else {
                    str = userName;
                    if (Build.VERSION.SDK_INT > 27) {
                        strArr[0] = str;
                    } else {
                        strArr[0] = null;
                    }
                }
                title = str;
            } else {
                title = null;
            }
            j = j2;
        } else {
            j = j2;
            TLRPC.Chat chat3 = getMessagesController().getChat(Long.valueOf(-fromChatId));
            if (chat3 != null) {
                title = getTitle(chat3);
                strArr[0] = title;
            } else {
                title = null;
            }
        }
        if (title != null && fromChatId > 0 && UserObject.isReplyUser(j) && (messageFwdHeader = messageObject.messageOwner.fwd_from) != null && (peer = messageFwdHeader.saved_from_peer) != null) {
            long peerId = MessageObject.getPeerId(peer);
            if (DialogObject.isChatDialog(peerId) && (chat2 = getMessagesController().getChat(Long.valueOf(-peerId))) != null) {
                title = title + " @ " + getTitle(chat2);
                if (strArr[0] != null) {
                    strArr[0] = title;
                }
            }
        }
        if (title == null) {
            return null;
        }
        if (j3 != 0) {
            chat = getMessagesController().getChat(Long.valueOf(j3));
            if (chat == null) {
                return null;
            }
            if (ChatObject.isChannel(chat) && !chat.megagroup && Build.VERSION.SDK_INT <= 27) {
                strArr[0] = null;
            }
        } else {
            chat = null;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            strArr[0] = null;
            return LocaleController.getString(C2888R.string.NotificationHiddenMessage);
        }
        boolean z4 = ChatObject.isChannel(chat) && !chat.megagroup;
        if (z3) {
            if (j3 == 0 && fromChatId != 0) {
                z = true;
                if (!notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                }
                TLRPC.Message message2 = messageObject.messageOwner;
                z2 = message2 instanceof TLRPC.TL_messageService;
                String title2 = _UrlKt.FRAGMENT_ENCODE_SET;
                if (!z2) {
                    strArr[0] = null;
                    TLRPC.MessageAction messageAction = message2.action;
                    if (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper) {
                        return LocaleController.getString(C2888R.string.WallpaperSameNotification);
                    }
                    if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                        return LocaleController.getString(C2888R.string.WallpaperNotification);
                    }
                    if (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) {
                        return messageObject.messageText.toString();
                    }
                    if ((messageAction instanceof TLRPC.TL_messageActionUserJoined) || (messageAction instanceof TLRPC.TL_messageActionContactSignUp)) {
                        return LocaleController.formatString(C2888R.string.NotificationContactJoined, title);
                    }
                    if (messageAction instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                        return LocaleController.formatString(C2888R.string.NotificationContactNewPhoto, title);
                    }
                    if (messageAction instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                        String string = LocaleController.formatString(C2888R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(((long) messageObject.messageOwner.date) * 1000), LocaleController.getInstance().getFormatterDay().format(((long) messageObject.messageOwner.date) * 1000));
                        int i = C2888R.string.NotificationUnrecognizedDevice;
                        String str2 = getUserConfig().getCurrentUser().first_name;
                        TLRPC.MessageAction messageAction2 = messageObject.messageOwner.action;
                        return LocaleController.formatString(i, str2, string, messageAction2.title, messageAction2.address);
                    }
                    if (TlUtils.isInstance(messageAction, TLRPC.TL_messageActionGameScore.class, TLRPC.TL_messageActionPaymentSent.class, TLRPC.TL_messageActionPaymentSentMe.class, TLRPC.TL_messageActionStarGift.class, TLRPC.TL_messageActionGiftPremium.class, TLRPC.TL_messageActionStarGiftUnique.class, TLRPC.TL_messageActionPaidMessagesPrice.class, TLRPC.TL_messageActionPaidMessagesRefunded.class, TLRPC.TL_messageActionGiftTon.class)) {
                        return messageObject.messageText.toString();
                    }
                    TLRPC.Message message3 = messageObject.messageOwner;
                    TLRPC.MessageAction messageAction3 = message3.action;
                    if (messageAction3 instanceof TLRPC.TL_messageActionPhoneCall) {
                        if (messageAction3.video) {
                            return LocaleController.getString(C2888R.string.CallMessageVideoIncomingMissed);
                        }
                        return LocaleController.getString(C2888R.string.CallMessageIncomingMissed);
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionConferenceCall) {
                        if (messageAction3.video) {
                            return LocaleController.getString(C2888R.string.CallMessageVideoIncomingConferenceMissed);
                        }
                        return LocaleController.getString(C2888R.string.CallMessageIncomingConferenceMissed);
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser) {
                        long jLongValue = messageAction3.user_id;
                        if (jLongValue == 0 && messageAction3.users.size() == 1) {
                            jLongValue = ((Long) messageObject.messageOwner.action.users.get(0)).longValue();
                        }
                        if (jLongValue != 0) {
                            if (messageObject.messageOwner.peer_id.channel_id != 0 && !chat.megagroup) {
                                return LocaleController.formatString(C2888R.string.ChannelAddedByNotification, title, getTitle(chat));
                            }
                            if (jLongValue == clientUserId) {
                                return LocaleController.formatString(C2888R.string.NotificationInvitedToGroup, title, getTitle(chat));
                            }
                            TLRPC.User user2 = getMessagesController().getUser(Long.valueOf(jLongValue));
                            if (user2 == null) {
                                return null;
                            }
                            return fromChatId == user2.f1825id ? chat.megagroup ? LocaleController.formatString(C2888R.string.NotificationGroupAddSelfMega, title, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationGroupAddSelf, title, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationGroupAddMember, title, getTitle(chat), UserObject.getUserName(user2));
                        }
                        StringBuilder sb = new StringBuilder();
                        for (int i2 = 0; i2 < messageObject.messageOwner.action.users.size(); i2++) {
                            TLRPC.User user3 = getMessagesController().getUser((Long) messageObject.messageOwner.action.users.get(i2));
                            if (user3 != null) {
                                String userName2 = UserObject.getUserName(user3);
                                if (sb.length() != 0) {
                                    sb.append(", ");
                                }
                                sb.append(userName2);
                            }
                        }
                        return LocaleController.formatString(C2888R.string.NotificationGroupAddMember, title, getTitle(chat), sb.toString());
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionGroupCall) {
                        return messageAction3.duration != 0 ? LocaleController.formatString(C2888R.string.NotificationGroupEndedCall, title, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationGroupCreatedCall, title, getTitle(chat));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionGroupCallScheduled) {
                        return messageObject.messageText.toString();
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                        long jLongValue2 = messageAction3.user_id;
                        if (jLongValue2 == 0 && messageAction3.users.size() == 1) {
                            jLongValue2 = ((Long) messageObject.messageOwner.action.users.get(0)).longValue();
                        }
                        if (jLongValue2 != 0) {
                            if (jLongValue2 == clientUserId) {
                                return LocaleController.formatString(C2888R.string.NotificationGroupInvitedYouToCall, title, getTitle(chat));
                            }
                            TLRPC.User user4 = getMessagesController().getUser(Long.valueOf(jLongValue2));
                            if (user4 == null) {
                                return null;
                            }
                            return LocaleController.formatString(C2888R.string.NotificationGroupInvitedToCall, title, getTitle(chat), UserObject.getUserName(user4));
                        }
                        StringBuilder sb2 = new StringBuilder();
                        for (int i3 = 0; i3 < messageObject.messageOwner.action.users.size(); i3++) {
                            TLRPC.User user5 = getMessagesController().getUser((Long) messageObject.messageOwner.action.users.get(i3));
                            if (user5 != null) {
                                String userName3 = UserObject.getUserName(user5);
                                if (sb2.length() != 0) {
                                    sb2.append(", ");
                                }
                                sb2.append(userName3);
                            }
                        }
                        return LocaleController.formatString(C2888R.string.NotificationGroupInvitedToCall, title, getTitle(chat), sb2.toString());
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionGiftCode) {
                        return LocaleController.getString(C2888R.string.BoostingReceivedGiftNoName);
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink) {
                        return LocaleController.formatString(C2888R.string.NotificationInvitedToGroupByLink, title, getTitle(chat));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatEditTitle) {
                        return LocaleController.formatString(C2888R.string.NotificationEditedGroupName, title, messageAction3.title);
                    }
                    if ((messageAction3 instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction3 instanceof TLRPC.TL_messageActionChatDeletePhoto)) {
                        return (message3.peer_id.channel_id == 0 || chat.megagroup) ? messageObject.isVideoAvatar() ? LocaleController.formatString(C2888R.string.NotificationEditedGroupVideo, title, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationEditedGroupPhoto, title, getTitle(chat)) : messageObject.isVideoAvatar() ? LocaleController.formatString(C2888R.string.ChannelVideoEditNotification, getTitle(chat)) : LocaleController.formatString(C2888R.string.ChannelPhotoEditNotification, getTitle(chat));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatDeleteUser) {
                        long j4 = messageAction3.user_id;
                        if (j4 == clientUserId) {
                            return LocaleController.formatString(C2888R.string.NotificationGroupKickYou, title, getTitle(chat));
                        }
                        if (j4 == fromChatId) {
                            return LocaleController.formatString(C2888R.string.NotificationGroupLeftMember, title, getTitle(chat));
                        }
                        TLRPC.User user6 = getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.action.user_id));
                        if (user6 == null) {
                            return null;
                        }
                        return LocaleController.formatString(C2888R.string.NotificationGroupKickMember, title, getTitle(chat), UserObject.getUserName(user6));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatCreate) {
                        return messageObject.messageText.toString();
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChannelCreate) {
                        return messageObject.messageText.toString();
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatMigrateTo) {
                        return LocaleController.formatString(C2888R.string.ActionMigrateFromGroupNotify, getTitle(chat));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChannelMigrateFrom) {
                        return LocaleController.formatString(C2888R.string.ActionMigrateFromGroupNotify, messageAction3.title);
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionScreenshotTaken) {
                        return messageObject.messageText.toString();
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionGiveawayLaunch) {
                        return messageObject.messageText.toString();
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionGiveawayResults) {
                        return messageObject.messageText.toString();
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionSuggestBirthday) {
                        return messageObject.messageText.toString();
                    }
                    if (!(messageAction3 instanceof TLRPC.TL_messageActionPinMessage)) {
                        if (messageAction3 instanceof TLRPC.TL_messageActionSetChatTheme) {
                            String themeEmoticonOrGiftTitle = TlUtils.getThemeEmoticonOrGiftTitle(((TLRPC.TL_messageActionSetChatTheme) messageAction3).theme);
                            return TextUtils.isEmpty(themeEmoticonOrGiftTitle) ? j == clientUserId ? LocaleController.formatString(C2888R.string.ChatThemeDisabledYou, new Object[0]) : LocaleController.formatString(C2888R.string.ChatThemeDisabled, title, themeEmoticonOrGiftTitle) : j == clientUserId ? LocaleController.formatString(C2888R.string.ChatThemeChangedYou, themeEmoticonOrGiftTitle) : LocaleController.formatString(C2888R.string.ChatThemeChangedTo, title, themeEmoticonOrGiftTitle);
                        }
                        if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByRequest) {
                            return messageObject.messageText.toString();
                        }
                        if (messageAction3 instanceof TLRPC.TL_messageActionPrizeStars) {
                            TLRPC.TL_messageActionPrizeStars tL_messageActionPrizeStars = (TLRPC.TL_messageActionPrizeStars) messageAction3;
                            long peerDialogId = DialogObject.getPeerDialogId(tL_messageActionPrizeStars.boost_peer);
                            if (peerDialogId >= 0) {
                                forcedFirstName = UserObject.getForcedFirstName(getMessagesController().getUser(Long.valueOf(peerDialogId)));
                            } else {
                                TLRPC.Chat chat4 = getMessagesController().getChat(Long.valueOf(-peerDialogId));
                                if (chat4 != null) {
                                    title2 = getTitle(chat4);
                                }
                                forcedFirstName = title2;
                            }
                            return LocaleController.formatPluralStringComma("BoostingReceivedStars", (int) tL_messageActionPrizeStars.stars, forcedFirstName);
                        }
                        if (messageAction3 instanceof TLRPC.TL_messageActionPaymentRefunded) {
                            return messageObject.messageText.toString();
                        }
                        if (messageAction3 instanceof TLRPC.TL_messageActionTodoCompletions) {
                            return messageObject.messageText.toString();
                        }
                        if (messageAction3 instanceof TLRPC.TL_messageActionTodoAppendTasks) {
                            return messageObject.messageText.toString();
                        }
                        return null;
                    }
                    if (chat != null && (!ChatObject.isChannel(chat) || chat.megagroup)) {
                        MessageObject messageObject2 = messageObject.replyMessageObject;
                        if (messageObject2 == null) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoText, title, getTitle(chat));
                        }
                        if (messageObject2.isMusic()) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedMusic, title, getTitle(chat));
                        }
                        if (messageObject2.isVideo()) {
                            if (TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedVideo, title, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedText, title, "📹 " + messageObject2.messageOwner.message, getTitle(chat));
                        }
                        if (messageObject2.isGif()) {
                            if (TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedGif, title, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedText, title, "🎬 " + messageObject2.messageOwner.message, getTitle(chat));
                        }
                        if (messageObject2.isVoice()) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedVoice, title, getTitle(chat));
                        }
                        if (messageObject2.isRoundVideo()) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedRound, title, getTitle(chat));
                        }
                        if (messageObject2.isSticker() || messageObject2.isAnimatedSticker()) {
                            String stickerEmoji = messageObject2.getStickerEmoji();
                            return stickerEmoji != null ? LocaleController.formatString(C2888R.string.NotificationActionPinnedStickerEmoji, title, getTitle(chat), stickerEmoji) : LocaleController.formatString(C2888R.string.NotificationActionPinnedSticker, title, getTitle(chat));
                        }
                        TLRPC.Message message4 = messageObject2.messageOwner;
                        TLRPC.MessageMedia messageMedia = message4.media;
                        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                            if (TextUtils.isEmpty(message4.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedFile, title, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedText, title, "📎 " + messageObject2.messageOwner.message, getTitle(chat));
                        }
                        if ((messageMedia instanceof TLRPC.TL_messageMediaGeo) || (messageMedia instanceof TLRPC.TL_messageMediaVenue)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeo, title, getTitle(chat));
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaGeoLive) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeoLive, title, getTitle(chat));
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaContact) {
                            TLRPC.TL_messageMediaContact tL_messageMediaContact = (TLRPC.TL_messageMediaContact) messageMedia;
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedContact2, title, getTitle(chat), ContactsController.formatName(tL_messageMediaContact.first_name, tL_messageMediaContact.last_name));
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                            TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia;
                            return tL_messageMediaPoll.poll.quiz ? LocaleController.formatString(C2888R.string.NotificationActionPinnedQuiz2, title, getTitle(chat), tL_messageMediaPoll.poll.question.text) : LocaleController.formatString(C2888R.string.NotificationActionPinnedPoll2, title, getTitle(chat), tL_messageMediaPoll.poll.question.text);
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedTodo2, title, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia).todo.title.text);
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                            if (TextUtils.isEmpty(message4.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedPhoto, title, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedText, title, "🖼 " + messageObject2.messageOwner.message, getTitle(chat));
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGame, title, getTitle(chat));
                        }
                        CharSequence charSequence = messageObject2.messageText;
                        if (charSequence == null || charSequence.length() <= 0) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoText, title, getTitle(chat));
                        }
                        CharSequence string2 = messageObject2.messageText;
                        if (string2.length() > 20) {
                            StringBuilder sb3 = new StringBuilder();
                            c4 = 0;
                            sb3.append((Object) string2.subSequence(0, 20));
                            sb3.append("...");
                            string2 = sb3.toString();
                        } else {
                            c4 = 0;
                        }
                        int i4 = C2888R.string.NotificationActionPinnedText;
                        String title3 = getTitle(chat);
                        Object[] objArr = new Object[3];
                        objArr[c4] = title;
                        objArr[1] = string2;
                        objArr[2] = title3;
                        return LocaleController.formatString(i4, objArr);
                    }
                    if (chat != null) {
                        MessageObject messageObject3 = messageObject.replyMessageObject;
                        if (messageObject3 == null) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                        }
                        if (messageObject3.isMusic()) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedMusicChannel, getTitle(chat));
                        }
                        if (messageObject3.isVideo()) {
                            if (TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedVideoChannel, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📹 " + messageObject3.messageOwner.message);
                        }
                        if (messageObject3.isGif()) {
                            if (TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedGifChannel, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🎬 " + messageObject3.messageOwner.message);
                        }
                        if (messageObject3.isVoice()) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedVoiceChannel, getTitle(chat));
                        }
                        if (messageObject3.isRoundVideo()) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedRoundChannel, getTitle(chat));
                        }
                        if (messageObject3.isSticker() || messageObject3.isAnimatedSticker()) {
                            String stickerEmoji2 = messageObject3.getStickerEmoji();
                            return stickerEmoji2 != null ? LocaleController.formatString(C2888R.string.NotificationActionPinnedStickerEmojiChannel, getTitle(chat), stickerEmoji2) : LocaleController.formatString(C2888R.string.NotificationActionPinnedStickerChannel, getTitle(chat));
                        }
                        TLRPC.Message message5 = messageObject3.messageOwner;
                        TLRPC.MessageMedia messageMedia2 = message5.media;
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaDocument) {
                            if (TextUtils.isEmpty(message5.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedFileChannel, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📎 " + messageObject3.messageOwner.message);
                        }
                        if ((messageMedia2 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia2 instanceof TLRPC.TL_messageMediaVenue)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeoChannel, getTitle(chat));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaGeoLive) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeoLiveChannel, getTitle(chat));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaContact) {
                            TLRPC.TL_messageMediaContact tL_messageMediaContact2 = (TLRPC.TL_messageMediaContact) messageMedia2;
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedContactChannel2, getTitle(chat), ContactsController.formatName(tL_messageMediaContact2.first_name, tL_messageMediaContact2.last_name));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                            TLRPC.TL_messageMediaPoll tL_messageMediaPoll2 = (TLRPC.TL_messageMediaPoll) messageMedia2;
                            return tL_messageMediaPoll2.poll.quiz ? LocaleController.formatString(C2888R.string.NotificationActionPinnedQuizChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text) : LocaleController.formatString(C2888R.string.NotificationActionPinnedPollChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text);
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedTodoChannel2, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia2).todo.title.text);
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) {
                            if (TextUtils.isEmpty(message5.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedPhotoChannel, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🖼 " + messageObject3.messageOwner.message);
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGameChannel, getTitle(chat));
                        }
                        CharSequence charSequence2 = messageObject3.messageText;
                        if (charSequence2 == null || charSequence2.length() <= 0) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                        }
                        CharSequence string3 = messageObject3.messageText;
                        if (string3.length() > 20) {
                            StringBuilder sb4 = new StringBuilder();
                            c3 = 0;
                            sb4.append((Object) string3.subSequence(0, 20));
                            sb4.append("...");
                            string3 = sb4.toString();
                        } else {
                            c3 = 0;
                        }
                        int i5 = C2888R.string.NotificationActionPinnedTextChannel;
                        String title4 = getTitle(chat);
                        Object[] objArr2 = new Object[2];
                        objArr2[c3] = title4;
                        objArr2[1] = string3;
                        return LocaleController.formatString(i5, objArr2);
                    }
                    MessageObject messageObject4 = messageObject.replyMessageObject;
                    if (messageObject4 == null) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoTextUser, title);
                    }
                    if (messageObject4.isMusic()) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedMusicUser, title);
                    }
                    if (messageObject4.isVideo()) {
                        if (TextUtils.isEmpty(messageObject4.messageOwner.message)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedVideoUser, title);
                        }
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextUser, title, "📹 " + messageObject4.messageOwner.message);
                    }
                    if (messageObject4.isGif()) {
                        if (TextUtils.isEmpty(messageObject4.messageOwner.message)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGifUser, title);
                        }
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextUser, title, "🎬 " + messageObject4.messageOwner.message);
                    }
                    if (messageObject4.isVoice()) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedVoiceUser, title);
                    }
                    if (messageObject4.isRoundVideo()) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedRoundUser, title);
                    }
                    if (messageObject4.isSticker() || messageObject4.isAnimatedSticker()) {
                        String stickerEmoji3 = messageObject4.getStickerEmoji();
                        return stickerEmoji3 != null ? LocaleController.formatString(C2888R.string.NotificationActionPinnedStickerEmojiUser, title, stickerEmoji3) : LocaleController.formatString(C2888R.string.NotificationActionPinnedStickerUser, title);
                    }
                    TLRPC.Message message6 = messageObject4.messageOwner;
                    TLRPC.MessageMedia messageMedia3 = message6.media;
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaDocument) {
                        if (TextUtils.isEmpty(message6.message)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedFileUser, title);
                        }
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextUser, title, "📎 " + messageObject4.messageOwner.message);
                    }
                    if ((messageMedia3 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia3 instanceof TLRPC.TL_messageMediaVenue)) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeoUser, title);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaGeoLive) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeoLiveUser, title);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaContact) {
                        TLRPC.TL_messageMediaContact tL_messageMediaContact3 = (TLRPC.TL_messageMediaContact) messageMedia3;
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedContactUser, title, ContactsController.formatName(tL_messageMediaContact3.first_name, tL_messageMediaContact3.last_name));
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaPoll) {
                        TLRPC.Poll poll = ((TLRPC.TL_messageMediaPoll) messageMedia3).poll;
                        return poll.quiz ? LocaleController.formatString(C2888R.string.NotificationActionPinnedQuizUser, title, poll.question.text) : LocaleController.formatString(C2888R.string.NotificationActionPinnedPollUser, title, poll.question.text);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaToDo) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTodoUser, title, ((TLRPC.TL_messageMediaToDo) messageMedia3).todo.title.text);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaPhoto) {
                        if (TextUtils.isEmpty(message6.message)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedPhotoUser, title);
                        }
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextUser, title, "🖼 " + messageObject4.messageOwner.message);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaGame) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedGameUser, title);
                    }
                    CharSequence charSequence3 = messageObject4.messageText;
                    if (charSequence3 == null || charSequence3.length() <= 0) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoTextUser, title);
                    }
                    CharSequence string4 = messageObject4.messageText;
                    if (string4.length() > 20) {
                        StringBuilder sb5 = new StringBuilder();
                        c2 = 0;
                        sb5.append((Object) string4.subSequence(0, 20));
                        sb5.append("...");
                        string4 = sb5.toString();
                    } else {
                        c2 = 0;
                    }
                    int i6 = C2888R.string.NotificationActionPinnedTextUser;
                    Object[] objArr3 = new Object[2];
                    objArr3[c2] = title;
                    objArr3[1] = string4;
                    return LocaleController.formatString(i6, objArr3);
                }
                if (messageObject.isMediaEmpty()) {
                    if (!TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return replaceSpoilers(messageObject);
                    }
                    return LocaleController.getString(C2888R.string.Message);
                }
                if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                    TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject);
                    int size = tL_messageMediaPaidMedia.extended_media.size();
                    boolean z5 = false;
                    for (int i7 = 0; i7 < size; i7++) {
                        TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i7);
                        if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                            TLRPC.MessageMedia messageMedia4 = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                            z5 = (messageMedia4 instanceof TLRPC.TL_messageMediaDocument) && MessageObject.isVideoDocument(messageMedia4.document);
                        } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                            if ((((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0) {
                            }
                        }
                        if (z5) {
                            break;
                        }
                    }
                    int i8 = C2888R.string.AttachPaidMedia;
                    if (size == 1) {
                        pluralString = LocaleController.getString(z5 ? C2888R.string.AttachVideo : C2888R.string.AttachPhoto);
                        c = 0;
                    } else {
                        c = 0;
                        pluralString = LocaleController.formatPluralString(z5 ? "Media" : "Photos", size, new Object[0]);
                    }
                    Object[] objArr4 = new Object[1];
                    objArr4[c] = pluralString;
                    return LocaleController.formatString(i8, objArr4);
                }
                if (messageObject.isVoiceOnce()) {
                    return LocaleController.getString(C2888R.string.AttachOnceAudio);
                }
                if (messageObject.isRoundOnce()) {
                    return LocaleController.getString(C2888R.string.AttachOnceRound);
                }
                TLRPC.Message message7 = messageObject.messageOwner;
                if (message7.media instanceof TLRPC.TL_messageMediaPhoto) {
                    if (!TextUtils.isEmpty(message7.message)) {
                        return "🖼 " + replaceSpoilers(messageObject);
                    }
                    if (messageObject.messageOwner.media.ttl_seconds != 0) {
                        return LocaleController.getString(C2888R.string.AttachDestructingPhoto);
                    }
                    return LocaleController.getString(C2888R.string.AttachPhoto);
                }
                if (messageObject.isVideo()) {
                    if (!TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return "📹 " + replaceSpoilers(messageObject);
                    }
                    if (messageObject.messageOwner.media.ttl_seconds != 0) {
                        return LocaleController.getString(C2888R.string.AttachDestructingVideo);
                    }
                    return LocaleController.getString(C2888R.string.AttachVideo);
                }
                if (messageObject.isGame()) {
                    return LocaleController.getString(C2888R.string.AttachGame);
                }
                if (messageObject.isVoice()) {
                    return LocaleController.getString(C2888R.string.AttachAudio);
                }
                if (messageObject.isRoundVideo()) {
                    return LocaleController.getString(C2888R.string.AttachRound);
                }
                if (messageObject.isMusic()) {
                    return LocaleController.getString(C2888R.string.AttachMusic);
                }
                TLRPC.MessageMedia messageMedia5 = messageObject.messageOwner.media;
                if (messageMedia5 instanceof TLRPC.TL_messageMediaContact) {
                    return LocaleController.getString(C2888R.string.AttachContact);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaPoll) {
                    if (((TLRPC.TL_messageMediaPoll) messageMedia5).poll.quiz) {
                        return LocaleController.getString(C2888R.string.QuizPoll);
                    }
                    return LocaleController.getString(C2888R.string.Poll);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaToDo) {
                    return LocaleController.getString(C2888R.string.Todo);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGiveaway) {
                    return LocaleController.getString(C2888R.string.BoostingGiveaway);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                    return LocaleController.getString(C2888R.string.BoostingGiveawayResults);
                }
                if ((messageMedia5 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia5 instanceof TLRPC.TL_messageMediaVenue)) {
                    return LocaleController.getString(C2888R.string.AttachLocation);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGeoLive) {
                    return LocaleController.getString(C2888R.string.AttachLiveLocation);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaDocument) {
                    if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                        String stickerEmoji4 = messageObject.getStickerEmoji();
                        if (stickerEmoji4 != null) {
                            return stickerEmoji4 + " " + LocaleController.getString(C2888R.string.AttachSticker);
                        }
                        return LocaleController.getString(C2888R.string.AttachSticker);
                    }
                    if (messageObject.isGif()) {
                        if (!TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return "🎬 " + replaceSpoilers(messageObject);
                        }
                        return LocaleController.getString(C2888R.string.AttachGif);
                    }
                    if (!TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return "📎 " + replaceSpoilers(messageObject);
                    }
                    return LocaleController.getString(C2888R.string.AttachDocument);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaStory) {
                    if (((TLRPC.TL_messageMediaStory) messageMedia5).via_mention) {
                        int i9 = C2888R.string.StoryNotificationMention;
                        String str3 = strArr[0];
                        if (str3 != null) {
                            title2 = str3;
                        }
                        return LocaleController.formatString(i9, title2);
                    }
                    return LocaleController.getString(C2888R.string.Story);
                }
                if (!TextUtils.isEmpty(messageObject.messageText)) {
                    return replaceSpoilers(messageObject);
                }
                return LocaleController.getString(C2888R.string.Message);
            }
            z = true;
            if (j3 != 0) {
                if (!z4) {
                    if (!notificationsSettings.getBoolean("EnablePreviewGroup", z)) {
                    }
                    TLRPC.Message message22 = messageObject.messageOwner;
                    z2 = message22 instanceof TLRPC.TL_messageService;
                    String title22 = _UrlKt.FRAGMENT_ENCODE_SET;
                    if (!z2) {
                    }
                }
                if (z4) {
                }
            }
        }
        if (zArr != null) {
            zArr[0] = false;
        }
        return LocaleController.getString(C2888R.string.Message);
    }

    private String replaceSpoilers(MessageObject messageObject) {
        TLRPC.Message message;
        String str;
        if (messageObject == null || (message = messageObject.messageOwner) == null || (str = message.message) == null || message.entities == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        if (messageObject.didSpoilLoginCode()) {
            return sb.toString();
        }
        for (int i = 0; i < messageObject.messageOwner.entities.size(); i++) {
            if (messageObject.messageOwner.entities.get(i) instanceof TLRPC.TL_messageEntitySpoiler) {
                TLRPC.TL_messageEntitySpoiler tL_messageEntitySpoiler = (TLRPC.TL_messageEntitySpoiler) messageObject.messageOwner.entities.get(i);
                for (int i2 = 0; i2 < tL_messageEntitySpoiler.length; i2++) {
                    int i3 = tL_messageEntitySpoiler.offset + i2;
                    char[] cArr = this.spoilerChars;
                    sb.setCharAt(i3, cArr[i2 % cArr.length]);
                }
            }
        }
        return sb.toString();
    }

    private String getStringForMessage(MessageObject messageObject, boolean z, boolean[] zArr, boolean[] zArr2) {
        long j;
        String string;
        TLRPC.Chat chat;
        char c;
        char c2;
        char c3;
        boolean z2;
        String string2;
        if (AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return LocaleController.getString(C2888R.string.YouHaveNewMessage);
        }
        if (messageObject.isStoryPush || messageObject.isStoryMentionPush) {
            return "!" + messageObject.messageOwner.message;
        }
        TLRPC.Message message = messageObject.messageOwner;
        long j2 = message.dialog_id;
        TLRPC.Peer peer = message.peer_id;
        long j3 = peer.chat_id;
        if (j3 == 0) {
            j3 = peer.channel_id;
        }
        long fromChatId = peer.user_id;
        if (zArr2 != null) {
            zArr2[0] = true;
        }
        if (messageObject.getDialogId() == UserObject.VERIFY && messageObject.getForwardedFromId() != null) {
            fromChatId = messageObject.getForwardedFromId().longValue();
            j3 = fromChatId < 0 ? -fromChatId : 0L;
        }
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        boolean z3 = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + j2, true);
        if (messageObject.isFcmMessage()) {
            if (j3 == 0 && fromChatId != 0) {
                if (!z3 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                    if (zArr2 != null) {
                        zArr2[0] = false;
                    }
                    return LocaleController.formatString(C2888R.string.NotificationMessageNoText, messageObject.localName);
                }
            } else if (j3 != 0 && (!z3 || ((!messageObject.localChannel && !notificationsSettings.getBoolean("EnablePreviewGroup", true)) || (messageObject.localChannel && !notificationsSettings.getBoolean("EnablePreviewChannel", true))))) {
                if (zArr2 != null) {
                    zArr2[0] = false;
                }
                return (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) ? LocaleController.formatString(C2888R.string.NotificationMessageGroupNoText, messageObject.localUserName, messageObject.localName) : LocaleController.formatString(C2888R.string.ChannelMessageNoText, messageObject.localName);
            }
            zArr[0] = true;
            return (String) messageObject.messageText;
        }
        long clientUserId = getUserConfig().getClientUserId();
        if (fromChatId == 0) {
            fromChatId = messageObject.getFromChatId();
            if (fromChatId == 0) {
                fromChatId = -j3;
            }
        } else if (fromChatId == clientUserId) {
            fromChatId = messageObject.getFromChatId();
        }
        if (j2 == 0) {
            if (j3 != 0) {
                j2 = -j3;
            } else if (fromChatId != 0) {
                j2 = fromChatId;
            }
        }
        if (messageObject.getDialogId() == UserObject.OAUTH || messageObject.isOauthPush) {
            j = j2;
            string = LocaleController.getString(C2888R.string.BotAuthNotificationTitle);
        } else if (fromChatId > 0) {
            if (!messageObject.messageOwner.from_scheduled) {
                TLRPC.User user = getMessagesController().getUser(Long.valueOf(fromChatId));
                string = user != null ? UserObject.getUserName(user) : null;
            } else if (j2 == clientUserId) {
                string = LocaleController.getString(C2888R.string.MessageScheduledReminderNotification);
            } else {
                string = LocaleController.getString(C2888R.string.NotificationMessageScheduledName);
            }
            j = j2;
        } else {
            j = j2;
            TLRPC.Chat chat2 = getMessagesController().getChat(Long.valueOf(-fromChatId));
            string = chat2 != null ? getTitle(chat2) : null;
        }
        if (string == null) {
            return null;
        }
        if (j3 != 0) {
            chat = getMessagesController().getChat(Long.valueOf(j3));
            if (chat == null) {
                return null;
            }
        } else {
            chat = null;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            return LocaleController.getString(C2888R.string.YouHaveNewMessage);
        }
        if (j3 == 0 && fromChatId != 0) {
            if (!z3 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                if (zArr2 != null) {
                    zArr2[0] = false;
                }
                return LocaleController.formatString(C2888R.string.NotificationMessageNoText, string);
            }
            TLRPC.Message message2 = messageObject.messageOwner;
            if (message2 instanceof TLRPC.TL_messageService) {
                TLRPC.MessageAction messageAction = message2.action;
                if ((messageAction instanceof TLRPC.TL_messageActionChangeCreator) || (messageAction instanceof TLRPC.TL_messageActionNewCreatorPending)) {
                    return messageObject.messageText.toString();
                }
                if (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper) {
                    return LocaleController.getString(C2888R.string.WallpaperSameNotification);
                }
                if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                    return LocaleController.getString(C2888R.string.WallpaperNotification);
                }
                if (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) {
                    return messageObject.messageText.toString();
                }
                if (messageAction instanceof TLRPC.TL_messageActionTodoCompletions) {
                    return messageObject.messageText.toString();
                }
                if (messageAction instanceof TLRPC.TL_messageActionTodoAppendTasks) {
                    return messageObject.messageText.toString();
                }
                if ((messageAction instanceof TLRPC.TL_messageActionUserJoined) || (messageAction instanceof TLRPC.TL_messageActionContactSignUp)) {
                    return LocaleController.formatString(C2888R.string.NotificationContactJoined, string);
                }
                if (messageAction instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                    return LocaleController.formatString(C2888R.string.NotificationContactNewPhoto, string);
                }
                if (messageAction instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                    String string3 = LocaleController.formatString(C2888R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(((long) messageObject.messageOwner.date) * 1000), LocaleController.getInstance().getFormatterDay().format(((long) messageObject.messageOwner.date) * 1000));
                    int i = C2888R.string.NotificationUnrecognizedDevice;
                    String str = getUserConfig().getCurrentUser().first_name;
                    TLRPC.MessageAction messageAction2 = messageObject.messageOwner.action;
                    return LocaleController.formatString(i, str, string3, messageAction2.title, messageAction2.address);
                }
                if ((messageAction instanceof TLRPC.TL_messageActionGameScore) || (messageAction instanceof TLRPC.TL_messageActionPaymentSent) || (messageAction instanceof TLRPC.TL_messageActionPaymentSentMe)) {
                    return messageObject.messageText.toString();
                }
                if ((messageAction instanceof TLRPC.TL_messageActionStarGift) || (messageAction instanceof TLRPC.TL_messageActionGiftPremium) || (messageAction instanceof TLRPC.TL_messageActionGiftTon)) {
                    return messageObject.messageText.toString();
                }
                if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                    return messageObject.messageText.toString();
                }
                if (messageAction instanceof TLRPC.TL_messageActionSuggestBirthday) {
                    return messageObject.messageText.toString();
                }
                if ((messageAction instanceof TLRPC.TL_messageActionPaidMessagesRefunded) || (messageAction instanceof TLRPC.TL_messageActionPaidMessagesPrice)) {
                    return messageObject.messageText.toString();
                }
                if (messageAction instanceof TLRPC.TL_messageActionPhoneCall) {
                    if (messageAction.video) {
                        return LocaleController.getString(C2888R.string.CallMessageVideoIncomingMissed);
                    }
                    return LocaleController.getString(C2888R.string.CallMessageIncomingMissed);
                }
                if (messageAction instanceof TLRPC.TL_messageActionConferenceCall) {
                    if (messageAction.video) {
                        return LocaleController.getString(C2888R.string.CallMessageVideoIncomingConferenceMissed);
                    }
                    return LocaleController.getString(C2888R.string.CallMessageIncomingConferenceMissed);
                }
                if (messageAction instanceof TLRPC.TL_messageActionSetChatTheme) {
                    String themeEmoticonOrGiftTitle = TlUtils.getThemeEmoticonOrGiftTitle(((TLRPC.TL_messageActionSetChatTheme) messageAction).theme);
                    if (!TextUtils.isEmpty(themeEmoticonOrGiftTitle)) {
                        c3 = 0;
                        z2 = true;
                        if (j == clientUserId) {
                            string2 = LocaleController.formatString(C2888R.string.ChatThemeChangedYou, themeEmoticonOrGiftTitle);
                        } else {
                            string2 = LocaleController.formatString(C2888R.string.ChatThemeChangedTo, string, themeEmoticonOrGiftTitle);
                        }
                    } else if (j == clientUserId) {
                        c3 = 0;
                        string2 = LocaleController.formatString(C2888R.string.ChatThemeDisabledYou, new Object[0]);
                        z2 = true;
                    } else {
                        c3 = 0;
                        z2 = true;
                        string2 = LocaleController.formatString(C2888R.string.ChatThemeDisabled, string, themeEmoticonOrGiftTitle);
                    }
                    zArr[c3] = z2;
                    return string2;
                }
            } else {
                if (messageObject.isMediaEmpty()) {
                    if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        String string4 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string4;
                    }
                    return LocaleController.formatString(C2888R.string.NotificationMessageNoText, string);
                }
                TLRPC.Message message3 = messageObject.messageOwner;
                if (message3.media instanceof TLRPC.TL_messageMediaPhoto) {
                    if (z || TextUtils.isEmpty(message3.message)) {
                        return messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.formatString(C2888R.string.NotificationMessageSDPhoto, string) : LocaleController.formatString(C2888R.string.NotificationMessagePhoto, string);
                    }
                    String string5 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, "🖼 " + messageObject.messageOwner.message);
                    zArr[0] = true;
                    return string5;
                }
                if (messageObject.isVideo()) {
                    if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.formatString(C2888R.string.NotificationMessageSDVideo, string) : LocaleController.formatString(C2888R.string.NotificationMessageVideo, string);
                    }
                    String string6 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, "📹 " + messageObject.messageOwner.message);
                    zArr[0] = true;
                    return string6;
                }
                if (messageObject.isGame()) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageGame, string, messageObject.messageOwner.media.game.title);
                }
                if (messageObject.isVoice()) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageAudio, string);
                }
                if (messageObject.isRoundVideo()) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageRound, string);
                }
                if (messageObject.isMusic()) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageMusic, string);
                }
                TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                if (messageMedia instanceof TLRPC.TL_messageMediaContact) {
                    TLRPC.TL_messageMediaContact tL_messageMediaContact = (TLRPC.TL_messageMediaContact) messageMedia;
                    return LocaleController.formatString(C2888R.string.NotificationMessageContact2, string, ContactsController.formatName(tL_messageMediaContact.first_name, tL_messageMediaContact.last_name));
                }
                if (messageMedia instanceof TLRPC.TL_messageMediaGiveaway) {
                    TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway = (TLRPC.TL_messageMediaGiveaway) messageMedia;
                    return LocaleController.formatString(C2888R.string.NotificationMessageChannelGiveaway, string, Integer.valueOf(tL_messageMediaGiveaway.quantity), Integer.valueOf(tL_messageMediaGiveaway.months));
                }
                if (messageMedia instanceof TLRPC.TL_messageMediaGiveawayResults) {
                    return LocaleController.formatString(C2888R.string.BoostingGiveawayResults, new Object[0]);
                }
                if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                    TLRPC.Poll poll = ((TLRPC.TL_messageMediaPoll) messageMedia).poll;
                    return poll.quiz ? LocaleController.formatString(C2888R.string.NotificationMessageQuiz2, string, poll.question.text) : LocaleController.formatString(C2888R.string.NotificationMessagePoll2, string, poll.question.text);
                }
                if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageTodo2, string, ((TLRPC.TL_messageMediaToDo) messageMedia).todo.title.text);
                }
                if ((messageMedia instanceof TLRPC.TL_messageMediaGeo) || (messageMedia instanceof TLRPC.TL_messageMediaVenue)) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageMap, string);
                }
                if (messageMedia instanceof TLRPC.TL_messageMediaGeoLive) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageLiveLocation, string);
                }
                if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                    if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                        String stickerEmoji = messageObject.getStickerEmoji();
                        return stickerEmoji != null ? LocaleController.formatString(C2888R.string.NotificationMessageStickerEmoji, string, stickerEmoji) : LocaleController.formatString(C2888R.string.NotificationMessageSticker, string);
                    }
                    if (messageObject.isGif()) {
                        if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return LocaleController.formatString(C2888R.string.NotificationMessageGif, string);
                        }
                        String string7 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, "🎬 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string7;
                    }
                    if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return LocaleController.formatString(C2888R.string.NotificationMessageDocument, string);
                    }
                    String string8 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, "📎 " + messageObject.messageOwner.message);
                    zArr[0] = true;
                    return string8;
                }
                if (z || TextUtils.isEmpty(messageObject.messageText)) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageNoText, string);
                }
                String string9 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, messageObject.messageText);
                zArr[0] = true;
                return string9;
            }
        } else if (j3 != 0) {
            boolean z4 = ChatObject.isChannel(chat) && !chat.megagroup;
            if (!z3 || ((z4 || !notificationsSettings.getBoolean("EnablePreviewGroup", true)) && !(z4 && notificationsSettings.getBoolean("EnablePreviewChannel", true)))) {
                if (zArr2 != null) {
                    zArr2[0] = false;
                }
                return (!ChatObject.isChannel(chat) || chat.megagroup) ? (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) ? LocaleController.formatPluralString("NotificationMessagePaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject)).stars_amount, string) : LocaleController.formatString(C2888R.string.NotificationMessageGroupNoText, string, getTitle(chat)) : LocaleController.formatString(C2888R.string.ChannelMessageNoText, string);
            }
            TLRPC.Message message4 = messageObject.messageOwner;
            if (message4 instanceof TLRPC.TL_messageService) {
                TLRPC.MessageAction messageAction3 = message4.action;
                if (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser) {
                    long jLongValue = messageAction3.user_id;
                    if (jLongValue == 0 && messageAction3.users.size() == 1) {
                        jLongValue = ((Long) messageObject.messageOwner.action.users.get(0)).longValue();
                    }
                    if (jLongValue != 0) {
                        if (messageObject.messageOwner.peer_id.channel_id != 0 && !chat.megagroup) {
                            return LocaleController.formatString(C2888R.string.ChannelAddedByNotification, string, getTitle(chat));
                        }
                        if (jLongValue == clientUserId) {
                            return LocaleController.formatString(C2888R.string.NotificationInvitedToGroup, string, getTitle(chat));
                        }
                        TLRPC.User user2 = getMessagesController().getUser(Long.valueOf(jLongValue));
                        if (user2 == null) {
                            return null;
                        }
                        return fromChatId == user2.f1825id ? chat.megagroup ? LocaleController.formatString(C2888R.string.NotificationGroupAddSelfMega, string, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationGroupAddSelf, string, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationGroupAddMember, string, getTitle(chat), UserObject.getUserName(user2));
                    }
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < messageObject.messageOwner.action.users.size(); i2++) {
                        TLRPC.User user3 = getMessagesController().getUser((Long) messageObject.messageOwner.action.users.get(i2));
                        if (user3 != null) {
                            String userName = UserObject.getUserName(user3);
                            if (sb.length() != 0) {
                                sb.append(", ");
                            }
                            sb.append(userName);
                        }
                    }
                    return LocaleController.formatString(C2888R.string.NotificationGroupAddMember, string, getTitle(chat), sb.toString());
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionGroupCall) {
                    return messageAction3.duration != 0 ? LocaleController.formatString(C2888R.string.NotificationGroupEndedCall, string, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationGroupCreatedCall, string, getTitle(chat));
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionGroupCallScheduled) {
                    return messageObject.messageText.toString();
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                    long jLongValue2 = messageAction3.user_id;
                    if (jLongValue2 == 0 && messageAction3.users.size() == 1) {
                        jLongValue2 = ((Long) messageObject.messageOwner.action.users.get(0)).longValue();
                    }
                    if (jLongValue2 != 0) {
                        if (jLongValue2 == clientUserId) {
                            return LocaleController.formatString(C2888R.string.NotificationGroupInvitedYouToCall, string, getTitle(chat));
                        }
                        TLRPC.User user4 = getMessagesController().getUser(Long.valueOf(jLongValue2));
                        if (user4 == null) {
                            return null;
                        }
                        return LocaleController.formatString(C2888R.string.NotificationGroupInvitedToCall, string, getTitle(chat), UserObject.getUserName(user4));
                    }
                    StringBuilder sb2 = new StringBuilder();
                    for (int i3 = 0; i3 < messageObject.messageOwner.action.users.size(); i3++) {
                        TLRPC.User user5 = getMessagesController().getUser((Long) messageObject.messageOwner.action.users.get(i3));
                        if (user5 != null) {
                            String userName2 = UserObject.getUserName(user5);
                            if (sb2.length() != 0) {
                                sb2.append(", ");
                            }
                            sb2.append(userName2);
                        }
                    }
                    return LocaleController.formatString(C2888R.string.NotificationGroupInvitedToCall, string, getTitle(chat), sb2.toString());
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionGiftCode) {
                    TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) messageAction3;
                    TLRPC.Chat chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tL_messageActionGiftCode.boost_peer)));
                    String title = chat3 != null ? getTitle(chat3) : null;
                    return title == null ? LocaleController.getString(C2888R.string.BoostingReceivedGiftNoName) : LocaleController.formatString(C2888R.string.NotificationMessageGiftCode, title, LocaleController.formatPluralString("Months", tL_messageActionGiftCode.months, new Object[0]));
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink) {
                    return LocaleController.formatString(C2888R.string.NotificationInvitedToGroupByLink, string, getTitle(chat));
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatEditTitle) {
                    return LocaleController.formatString(C2888R.string.NotificationEditedGroupName, string, messageAction3.title);
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionTodoCompletions) {
                    return messageObject.messageText.toString();
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionTodoAppendTasks) {
                    return messageObject.messageText.toString();
                }
                if ((messageAction3 instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction3 instanceof TLRPC.TL_messageActionChatDeletePhoto)) {
                    return (message4.peer_id.channel_id == 0 || chat.megagroup) ? messageObject.isVideoAvatar() ? LocaleController.formatString(C2888R.string.NotificationEditedGroupVideo, string, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationEditedGroupPhoto, string, getTitle(chat)) : messageObject.isVideoAvatar() ? LocaleController.formatString(C2888R.string.ChannelVideoEditNotification, getTitle(chat)) : LocaleController.formatString(C2888R.string.ChannelPhotoEditNotification, getTitle(chat));
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatDeleteUser) {
                    long j4 = messageAction3.user_id;
                    if (j4 == clientUserId) {
                        return LocaleController.formatString(C2888R.string.NotificationGroupKickYou, string, getTitle(chat));
                    }
                    if (j4 == fromChatId) {
                        return LocaleController.formatString(C2888R.string.NotificationGroupLeftMember, string, getTitle(chat));
                    }
                    TLRPC.User user6 = getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.action.user_id));
                    if (user6 == null) {
                        return null;
                    }
                    return LocaleController.formatString(C2888R.string.NotificationGroupKickMember, string, getTitle(chat), UserObject.getUserName(user6));
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatCreate) {
                    return messageObject.messageText.toString();
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChannelCreate) {
                    return messageObject.messageText.toString();
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatMigrateTo) {
                    return LocaleController.formatString(C2888R.string.ActionMigrateFromGroupNotify, getTitle(chat));
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChannelMigrateFrom) {
                    return LocaleController.formatString(C2888R.string.ActionMigrateFromGroupNotify, messageAction3.title);
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionScreenshotTaken) {
                    return messageObject.messageText.toString();
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionPinMessage) {
                    if (!ChatObject.isChannel(chat) || chat.megagroup) {
                        MessageObject messageObject2 = messageObject.replyMessageObject;
                        if (messageObject2 == null) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoText, string, getTitle(chat));
                        }
                        if (messageObject2.isMusic()) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedMusic, string, getTitle(chat));
                        }
                        if (messageObject2.isVideo()) {
                            if (TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedVideo, string, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedText, string, "📹 " + messageObject2.messageOwner.message, getTitle(chat));
                        }
                        if (messageObject2.isGif()) {
                            if (TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedGif, string, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedText, string, "🎬 " + messageObject2.messageOwner.message, getTitle(chat));
                        }
                        if (messageObject2.isVoice()) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedVoice, string, getTitle(chat));
                        }
                        if (messageObject2.isRoundVideo()) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedRound, string, getTitle(chat));
                        }
                        if (messageObject2.isSticker() || messageObject2.isAnimatedSticker()) {
                            String stickerEmoji2 = messageObject2.getStickerEmoji();
                            return stickerEmoji2 != null ? LocaleController.formatString(C2888R.string.NotificationActionPinnedStickerEmoji, string, getTitle(chat), stickerEmoji2) : LocaleController.formatString(C2888R.string.NotificationActionPinnedSticker, string, getTitle(chat));
                        }
                        TLRPC.Message message5 = messageObject2.messageOwner;
                        TLRPC.MessageMedia messageMedia2 = message5.media;
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaDocument) {
                            if (TextUtils.isEmpty(message5.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedFile, string, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedText, string, "📎 " + messageObject2.messageOwner.message, getTitle(chat));
                        }
                        if ((messageMedia2 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia2 instanceof TLRPC.TL_messageMediaVenue)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeo, string, getTitle(chat));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaGeoLive) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeoLive, string, getTitle(chat));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaContact) {
                            TLRPC.TL_messageMediaContact tL_messageMediaContact2 = (TLRPC.TL_messageMediaContact) messageObject.messageOwner.media;
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedContact2, string, getTitle(chat), ContactsController.formatName(tL_messageMediaContact2.first_name, tL_messageMediaContact2.last_name));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                            TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia2;
                            return tL_messageMediaPoll.poll.quiz ? LocaleController.formatString(C2888R.string.NotificationActionPinnedQuiz2, string, getTitle(chat), tL_messageMediaPoll.poll.question.text) : LocaleController.formatString(C2888R.string.NotificationActionPinnedPoll2, string, getTitle(chat), tL_messageMediaPoll.poll.question.text);
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedTodo2, string, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia2).todo.title.text);
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) {
                            if (TextUtils.isEmpty(message5.message)) {
                                return LocaleController.formatString(C2888R.string.NotificationActionPinnedPhoto, string, getTitle(chat));
                            }
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedText, string, "🖼 " + messageObject2.messageOwner.message, getTitle(chat));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGame, string, getTitle(chat));
                        }
                        CharSequence charSequence = messageObject2.messageText;
                        if (charSequence == null || charSequence.length() <= 0) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoText, string, getTitle(chat));
                        }
                        CharSequence string10 = messageObject2.messageText;
                        if (string10.length() > 20) {
                            StringBuilder sb3 = new StringBuilder();
                            c = 0;
                            sb3.append((Object) string10.subSequence(0, 20));
                            sb3.append("...");
                            string10 = sb3.toString();
                        } else {
                            c = 0;
                        }
                        int i4 = C2888R.string.NotificationActionPinnedText;
                        String title2 = getTitle(chat);
                        Object[] objArr = new Object[3];
                        objArr[c] = string;
                        objArr[1] = string10;
                        objArr[2] = title2;
                        return LocaleController.formatString(i4, objArr);
                    }
                    MessageObject messageObject3 = messageObject.replyMessageObject;
                    if (messageObject3 == null) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                    }
                    if (messageObject3.isMusic()) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedMusicChannel, getTitle(chat));
                    }
                    if (messageObject3.isVideo()) {
                        if (TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedVideoChannel, getTitle(chat));
                        }
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📹 " + messageObject3.messageOwner.message);
                    }
                    if (messageObject3.isGif()) {
                        if (TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedGifChannel, getTitle(chat));
                        }
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🎬 " + messageObject3.messageOwner.message);
                    }
                    if (messageObject3.isVoice()) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedVoiceChannel, getTitle(chat));
                    }
                    if (messageObject3.isRoundVideo()) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedRoundChannel, getTitle(chat));
                    }
                    if (messageObject3.isSticker() || messageObject3.isAnimatedSticker()) {
                        String stickerEmoji3 = messageObject3.getStickerEmoji();
                        return stickerEmoji3 != null ? LocaleController.formatString(C2888R.string.NotificationActionPinnedStickerEmojiChannel, getTitle(chat), stickerEmoji3) : LocaleController.formatString(C2888R.string.NotificationActionPinnedStickerChannel, getTitle(chat));
                    }
                    TLRPC.Message message6 = messageObject3.messageOwner;
                    TLRPC.MessageMedia messageMedia3 = message6.media;
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaDocument) {
                        if (TextUtils.isEmpty(message6.message)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedFileChannel, getTitle(chat));
                        }
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📎 " + messageObject3.messageOwner.message);
                    }
                    if ((messageMedia3 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia3 instanceof TLRPC.TL_messageMediaVenue)) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeoChannel, getTitle(chat));
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaGeoLive) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedGeoLiveChannel, getTitle(chat));
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaContact) {
                        TLRPC.TL_messageMediaContact tL_messageMediaContact3 = (TLRPC.TL_messageMediaContact) messageObject.messageOwner.media;
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedContactChannel2, getTitle(chat), ContactsController.formatName(tL_messageMediaContact3.first_name, tL_messageMediaContact3.last_name));
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaPoll) {
                        TLRPC.TL_messageMediaPoll tL_messageMediaPoll2 = (TLRPC.TL_messageMediaPoll) messageMedia3;
                        return tL_messageMediaPoll2.poll.quiz ? LocaleController.formatString(C2888R.string.NotificationActionPinnedQuizChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text) : LocaleController.formatString(C2888R.string.NotificationActionPinnedPollChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaToDo) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTodoChannel2, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia3).todo.title.text);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaPhoto) {
                        if (TextUtils.isEmpty(message6.message)) {
                            return LocaleController.formatString(C2888R.string.NotificationActionPinnedPhotoChannel, getTitle(chat));
                        }
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🖼 " + messageObject3.messageOwner.message);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaGame) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedGameChannel, getTitle(chat));
                    }
                    CharSequence charSequence2 = messageObject3.messageText;
                    if (charSequence2 == null || charSequence2.length() <= 0) {
                        return LocaleController.formatString(C2888R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                    }
                    CharSequence string11 = messageObject3.messageText;
                    if (string11.length() > 20) {
                        StringBuilder sb4 = new StringBuilder();
                        c2 = 0;
                        sb4.append((Object) string11.subSequence(0, 20));
                        sb4.append("...");
                        string11 = sb4.toString();
                    } else {
                        c2 = 0;
                    }
                    int i5 = C2888R.string.NotificationActionPinnedTextChannel;
                    Object[] objArr2 = new Object[2];
                    objArr2[c2] = getTitle(chat);
                    objArr2[1] = string11;
                    return LocaleController.formatString(i5, objArr2);
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionGameScore) {
                    return messageObject.messageText.toString();
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionSetChatTheme) {
                    String themeEmoticonOrGiftTitle2 = TlUtils.getThemeEmoticonOrGiftTitle(((TLRPC.TL_messageActionSetChatTheme) messageAction3).theme);
                    return TextUtils.isEmpty(themeEmoticonOrGiftTitle2) ? j == clientUserId ? LocaleController.formatString(C2888R.string.ChatThemeDisabledYou, new Object[0]) : LocaleController.formatString("ChatThemeDisabled", C2888R.string.ChatThemeDisabled, string, themeEmoticonOrGiftTitle2) : j == clientUserId ? LocaleController.formatString(C2888R.string.ChatThemeChangedYou, themeEmoticonOrGiftTitle2) : LocaleController.formatString(C2888R.string.ChatThemeChangedTo, string, themeEmoticonOrGiftTitle2);
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByRequest) {
                    return messageObject.messageText.toString();
                }
            } else {
                if (ChatObject.isChannel(chat) && !chat.megagroup) {
                    if (messageObject.isMediaEmpty()) {
                        if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return LocaleController.formatString(C2888R.string.ChannelMessageNoText, string);
                        }
                        String string12 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string12;
                    }
                    if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                        return LocaleController.formatPluralString("NotificationChannelMessagePaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject)).stars_amount, getTitle(chat));
                    }
                    TLRPC.Message message7 = messageObject.messageOwner;
                    if (message7.media instanceof TLRPC.TL_messageMediaPhoto) {
                        if (z || TextUtils.isEmpty(message7.message)) {
                            return LocaleController.formatString(C2888R.string.ChannelMessagePhoto, string);
                        }
                        String string13 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, "🖼 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string13;
                    }
                    if (messageObject.isVideo()) {
                        if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return LocaleController.formatString(C2888R.string.ChannelMessageVideo, string);
                        }
                        String string14 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, "📹 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string14;
                    }
                    if (messageObject.isVoice()) {
                        return LocaleController.formatString(C2888R.string.ChannelMessageAudio, string);
                    }
                    if (messageObject.isRoundVideo()) {
                        return LocaleController.formatString(C2888R.string.ChannelMessageRound, string);
                    }
                    if (messageObject.isMusic()) {
                        return LocaleController.formatString(C2888R.string.ChannelMessageMusic, string);
                    }
                    TLRPC.MessageMedia messageMedia4 = messageObject.messageOwner.media;
                    if (messageMedia4 instanceof TLRPC.TL_messageMediaContact) {
                        TLRPC.TL_messageMediaContact tL_messageMediaContact4 = (TLRPC.TL_messageMediaContact) messageMedia4;
                        return LocaleController.formatString(C2888R.string.ChannelMessageContact2, string, ContactsController.formatName(tL_messageMediaContact4.first_name, tL_messageMediaContact4.last_name));
                    }
                    if (messageMedia4 instanceof TLRPC.TL_messageMediaPoll) {
                        TLRPC.Poll poll2 = ((TLRPC.TL_messageMediaPoll) messageMedia4).poll;
                        return poll2.quiz ? LocaleController.formatString(C2888R.string.ChannelMessageQuiz2, string, poll2.question.text) : LocaleController.formatString(C2888R.string.ChannelMessagePoll2, string, poll2.question.text);
                    }
                    if (messageMedia4 instanceof TLRPC.TL_messageMediaToDo) {
                        return LocaleController.formatString(C2888R.string.ChannelMessageTodo2, string, ((TLRPC.TL_messageMediaToDo) messageMedia4).todo.title.text);
                    }
                    if (messageMedia4 instanceof TLRPC.TL_messageMediaGiveaway) {
                        TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway2 = (TLRPC.TL_messageMediaGiveaway) messageMedia4;
                        return LocaleController.formatString(C2888R.string.NotificationMessageChannelGiveaway, getTitle(chat), Integer.valueOf(tL_messageMediaGiveaway2.quantity), Integer.valueOf(tL_messageMediaGiveaway2.months));
                    }
                    if ((messageMedia4 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia4 instanceof TLRPC.TL_messageMediaVenue)) {
                        return LocaleController.formatString(C2888R.string.ChannelMessageMap, string);
                    }
                    if (messageMedia4 instanceof TLRPC.TL_messageMediaGeoLive) {
                        return LocaleController.formatString(C2888R.string.ChannelMessageLiveLocation, string);
                    }
                    if (messageMedia4 instanceof TLRPC.TL_messageMediaDocument) {
                        if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                            String stickerEmoji4 = messageObject.getStickerEmoji();
                            return stickerEmoji4 != null ? LocaleController.formatString(C2888R.string.ChannelMessageStickerEmoji, string, stickerEmoji4) : LocaleController.formatString(C2888R.string.ChannelMessageSticker, string);
                        }
                        if (messageObject.isGif()) {
                            if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                return LocaleController.formatString(C2888R.string.ChannelMessageGIF, string);
                            }
                            String string15 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, "🎬 " + messageObject.messageOwner.message);
                            zArr[0] = true;
                            return string15;
                        }
                        if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return LocaleController.formatString(C2888R.string.ChannelMessageDocument, string);
                        }
                        String string16 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, "📎 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string16;
                    }
                    if (z || TextUtils.isEmpty(messageObject.messageText)) {
                        return LocaleController.formatString(C2888R.string.ChannelMessageNoText, string);
                    }
                    String string17 = LocaleController.formatString(C2888R.string.NotificationMessageText, string, messageObject.messageText);
                    zArr[0] = true;
                    return string17;
                }
                if (messageObject.isMediaEmpty()) {
                    return (z || TextUtils.isEmpty(messageObject.messageOwner.message)) ? LocaleController.formatString(C2888R.string.NotificationMessageGroupNoText, string, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationMessageGroupText, string, getTitle(chat), messageObject.messageOwner.message);
                }
                if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                    return LocaleController.formatPluralString("NotificationChatMessagePaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject)).stars_amount, string, getTitle(chat));
                }
                TLRPC.Message message8 = messageObject.messageOwner;
                if (message8.media instanceof TLRPC.TL_messageMediaPhoto) {
                    if (z || TextUtils.isEmpty(message8.message)) {
                        return LocaleController.formatString(C2888R.string.NotificationMessageGroupPhoto, string, getTitle(chat));
                    }
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupText, string, getTitle(chat), "🖼 " + messageObject.messageOwner.message);
                }
                if (messageObject.isVideo()) {
                    if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return LocaleController.formatString(C2888R.string.NotificationMessageGroupVideo, string, getTitle(chat));
                    }
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupText, string, getTitle(chat), "📹 " + messageObject.messageOwner.message);
                }
                if (messageObject.isVoice()) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupAudio, string, getTitle(chat));
                }
                if (messageObject.isRoundVideo()) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupRound, string, getTitle(chat));
                }
                if (messageObject.isMusic()) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupMusic, string, getTitle(chat));
                }
                TLRPC.MessageMedia messageMedia5 = messageObject.messageOwner.media;
                if (messageMedia5 instanceof TLRPC.TL_messageMediaContact) {
                    TLRPC.TL_messageMediaContact tL_messageMediaContact5 = (TLRPC.TL_messageMediaContact) messageMedia5;
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupContact2, string, getTitle(chat), ContactsController.formatName(tL_messageMediaContact5.first_name, tL_messageMediaContact5.last_name));
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaPoll) {
                    TLRPC.TL_messageMediaPoll tL_messageMediaPoll3 = (TLRPC.TL_messageMediaPoll) messageMedia5;
                    return tL_messageMediaPoll3.poll.quiz ? LocaleController.formatString(C2888R.string.NotificationMessageGroupQuiz2, string, getTitle(chat), tL_messageMediaPoll3.poll.question.text) : LocaleController.formatString(C2888R.string.NotificationMessageGroupPoll2, string, getTitle(chat), tL_messageMediaPoll3.poll.question.text);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaToDo) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupTodo2, string, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia5).todo.title.text);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGame) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupGame, string, getTitle(chat), messageObject.messageOwner.media.game.title);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGiveaway) {
                    TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway3 = (TLRPC.TL_messageMediaGiveaway) messageMedia5;
                    return LocaleController.formatString(C2888R.string.NotificationMessageChannelGiveaway, getTitle(chat), Integer.valueOf(tL_messageMediaGiveaway3.quantity), Integer.valueOf(tL_messageMediaGiveaway3.months));
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                    return LocaleController.formatString(C2888R.string.BoostingGiveawayResults, new Object[0]);
                }
                if ((messageMedia5 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia5 instanceof TLRPC.TL_messageMediaVenue)) {
                    return LocaleController.formatString("NotificationMessageGroupMap", C2888R.string.NotificationMessageGroupMap, string, getTitle(chat));
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGeoLive) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupLiveLocation, string, getTitle(chat));
                }
                if (!(messageMedia5 instanceof TLRPC.TL_messageMediaDocument)) {
                    return (z || TextUtils.isEmpty(messageObject.messageText)) ? LocaleController.formatString(C2888R.string.NotificationMessageGroupNoText, string, getTitle(chat)) : LocaleController.formatString(C2888R.string.NotificationMessageGroupText, string, getTitle(chat), messageObject.messageText);
                }
                if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                    String stickerEmoji5 = messageObject.getStickerEmoji();
                    return stickerEmoji5 != null ? LocaleController.formatString(C2888R.string.NotificationMessageGroupStickerEmoji, string, getTitle(chat), stickerEmoji5) : LocaleController.formatString(C2888R.string.NotificationMessageGroupSticker, string, getTitle(chat));
                }
                if (messageObject.isGif()) {
                    if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return LocaleController.formatString(C2888R.string.NotificationMessageGroupGif, string, getTitle(chat));
                    }
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupText, string, getTitle(chat), "🎬 " + messageObject.messageOwner.message);
                }
                if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                    return LocaleController.formatString(C2888R.string.NotificationMessageGroupDocument, string, getTitle(chat));
                }
                return LocaleController.formatString(C2888R.string.NotificationMessageGroupText, string, getTitle(chat), "📎 " + messageObject.messageOwner.message);
            }
        }
        return null;
    }

    private void scheduleNotificationRepeat() {
        try {
            Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationRepeat.class);
            intent.putExtra("currentAccount", this.currentAccount);
            PendingIntent service = PendingIntent.getService(ApplicationLoader.applicationContext, 0, intent, 33554432);
            int i = getAccountInstance().getNotificationsSettings().getInt("repeat_messages", 60);
            if (i > 0 && this.personalCount > 0) {
                this.alarmManager.set(2, SystemClock.elapsedRealtime() + ((long) (i * 60000)), service);
            } else {
                this.alarmManager.cancel(service);
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    private boolean isPersonalMessage(MessageObject messageObject) {
        TLRPC.MessageAction messageAction;
        TLRPC.Message message = messageObject.messageOwner;
        TLRPC.Peer peer = message.peer_id;
        return (peer != null && peer.chat_id == 0 && peer.channel_id == 0 && ((messageAction = message.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty))) || messageObject.isStoryReactionPush;
    }

    private int getNotifyOverride(SharedPreferences sharedPreferences, long j, long j2) {
        int property = this.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_NOTIFY, j, j2, -1);
        if (property != 3 || this.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL, j, j2, 0) < getConnectionsManager().getCurrentTime()) {
            return property;
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNotifications$34() {
        showOrUpdateNotification(false);
    }

    public void showNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showNotifications$34();
            }
        });
    }

    public void hideNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hideNotifications$35();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideNotifications$35() {
        notificationManager.cancel(this.notificationId);
        this.lastWearNotifiedMessageId.clear();
        for (int i = 0; i < this.wearNotificationsIds.size(); i++) {
            notificationManager.cancel(((Integer) this.wearNotificationsIds.valueAt(i)).intValue());
        }
        this.wearNotificationsIds.clear();
    }

    private void dismissNotification() {
        FileLog.m1133d("NotificationsController dismissNotification");
        try {
            notificationManager.cancel(this.notificationId);
            this.pushMessages.clear();
            this.pushMessagesDict.clear();
            this.lastWearNotifiedMessageId.clear();
            for (int i = 0; i < this.wearNotificationsIds.size(); i++) {
                if (!this.openedInBubbleDialogs.contains(Long.valueOf(this.wearNotificationsIds.keyAt(i)))) {
                    notificationManager.cancel(((Integer) this.wearNotificationsIds.valueAt(i)).intValue());
                }
            }
            this.wearNotificationsIds.clear();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
                }
            });
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
    
        if (org.telegram.messenger.NotificationsController.audioManager.getRingerMode() == 0) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void playInChatSound() {
        if (this.inChatSoundEnabled && !MediaController.getInstance().isRecordingAudio()) {
            try {
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        return;
        try {
        } catch (Exception e2) {
            e = e2;
        }
        try {
            if (getNotifyOverride(getAccountInstance().getNotificationsSettings(), this.openedDialogId, this.openedTopicId) == 2) {
                return;
            }
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$playInChatSound$38();
                }
            });
        } catch (Exception e3) {
            e = e3;
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playInChatSound$38() {
        if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundPlay) <= 500) {
            return;
        }
        try {
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda46
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                        NotificationsController.m4791$r8$lambda$YWu30oJSAuR52YOOKH98OkETVA(soundPool2, i, i2);
                    }
                });
            }
            if (this.soundIn == 0 && !this.soundInLoaded) {
                this.soundInLoaded = true;
                this.soundIn = this.soundPool.load(ApplicationLoader.applicationContext, C2888R.raw.sound_in, 1);
            }
            int i = this.soundIn;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$YWu30oJSAuR52YOO-KH98OkETVA, reason: not valid java name */
    public static /* synthetic */ void m4791$r8$lambda$YWu30oJSAuR52YOOKH98OkETVA(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    private void scheduleNotificationDelay(boolean z) {
        try {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1133d("delay notification start, onlineReason = " + z);
            }
            this.notificationDelayWakelock.acquire(10000L);
            DispatchQueue dispatchQueue = notificationsQueue;
            dispatchQueue.cancelRunnable(this.notificationDelayRunnable);
            dispatchQueue.postRunnable(this.notificationDelayRunnable, z ? 3000 : MediaDataController.MAX_STYLE_RUNS_COUNT);
        } catch (Exception e) {
            FileLog.m1136e(e);
            showOrUpdateNotification(this.notifyCheck);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void repeatNotificationMaybe() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$repeatNotificationMaybe$39();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repeatNotificationMaybe$39() {
        int i = Calendar.getInstance().get(11);
        if (i >= 11 && i <= 22) {
            notificationManager.cancel(this.notificationId);
            showOrUpdateNotification(true);
        } else {
            scheduleNotificationRepeat();
        }
    }

    private boolean isEmptyVibration(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return false;
        }
        for (long j : jArr) {
            if (j != 0) {
                return false;
            }
        }
        return true;
    }

    public void deleteNotificationChannel(long j, long j2) {
        deleteNotificationChannel(j, j2, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: deleteNotificationChannelInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$deleteNotificationChannel$40(long j, long j2, int i) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            SharedPreferences.Editor editorEdit = notificationsSettings.edit();
            if (i == 0 || i == -1) {
                String str = "org.telegram.key" + j;
                if (j2 != 0) {
                    str = str + ".topic" + j2;
                }
                String string = notificationsSettings.getString(str, null);
                if (string != null) {
                    editorEdit.remove(str).remove(str + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m1133d("delete channel internal " + string);
                    }
                }
            }
            if (i == 1 || i == -1) {
                String str2 = "org.telegram.keyia" + j;
                String string2 = notificationsSettings.getString(str2, null);
                if (string2 != null) {
                    editorEdit.remove(str2).remove(str2 + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string2);
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m1133d("delete channel internal " + string2);
                    }
                }
            }
            editorEdit.apply();
        } catch (Exception e3) {
            FileLog.m1136e(e3);
        }
    }

    public void deleteNotificationChannel(final long j, final long j2, final int i) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteNotificationChannel$40(j, j2, i);
            }
        });
    }

    public void deleteNotificationChannelGlobal(int i) {
        deleteNotificationChannelGlobal(i, -1);
    }

    /* JADX INFO: renamed from: deleteNotificationChannelGlobalInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$deleteNotificationChannelGlobal$41(int i, int i2) {
        String str;
        String str2;
        String str3;
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            SharedPreferences.Editor editorEdit = notificationsSettings.edit();
            if (i2 == 0 || i2 == -1) {
                if (i == 2) {
                    str = "channels";
                } else if (i == 0) {
                    str = "groups";
                } else if (i == 3) {
                    str = "stories";
                } else if (i == 4 || i == 5) {
                    str = "reactions";
                } else {
                    str = "private";
                }
                String string = notificationsSettings.getString(str, null);
                if (string != null) {
                    editorEdit.remove(str).remove(str + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m1133d("delete channel global internal " + string);
                    }
                }
            }
            if (i2 == 1 || i2 == -1) {
                if (i == 2) {
                    str2 = "channels_ia";
                } else if (i == 0) {
                    str2 = "groups_ia";
                } else if (i == 3) {
                    str2 = "stories_ia";
                } else if (i == 4 || i == 5) {
                    str2 = "reactions_ia";
                } else {
                    str2 = "private_ia";
                }
                String string2 = notificationsSettings.getString(str2, null);
                if (string2 != null) {
                    editorEdit.remove(str2).remove(str2 + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string2);
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m1133d("delete channel global internal " + string2);
                    }
                }
            }
            if (i == 2) {
                str3 = "overwrite_channel";
            } else if (i == 0) {
                str3 = "overwrite_group";
            } else if (i == 3) {
                str3 = "overwrite_stories";
            } else if (i == 4 || i == 5) {
                str3 = "overwrite_reactions";
            } else {
                str3 = "overwrite_private";
            }
            editorEdit.remove(str3);
            editorEdit.apply();
        } catch (Exception e3) {
            FileLog.m1136e(e3);
        }
    }

    public void deleteNotificationChannelGlobal(final int i, final int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteNotificationChannelGlobal$41(i, i2);
            }
        });
    }

    public void deleteAllNotificationChannels() {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteAllNotificationChannels$42();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllNotificationChannels$42() {
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            Map<String, ?> all = notificationsSettings.getAll();
            SharedPreferences.Editor editorEdit = notificationsSettings.edit();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                if (key.startsWith("org.telegram.key")) {
                    if (!key.endsWith("_s")) {
                        String str = (String) entry.getValue();
                        systemNotificationManager.deleteNotificationChannel(str);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("delete all channel " + str);
                        }
                    }
                    editorEdit.remove(key);
                }
            }
            editorEdit.apply();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    private boolean unsupportedNotificationShortcut() {
        return Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBubbles;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00bb  */
    @SuppressLint({"RestrictedApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String createNotificationShortcut(NotificationCompat.Builder builder, long j, String str, TLRPC.User user, TLRPC.Chat chat, Person person, boolean z) {
        Bitmap bitmap;
        IconCompat iconCompatCreateWithResource;
        if (!unsupportedNotificationShortcut() && (!ChatObject.isChannel(chat) || chat.megagroup)) {
            try {
                String str2 = "ndid_" + j;
                Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) OpenChatReceiver.class);
                intent.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                if (j > 0) {
                    intent.putExtra("userId", j);
                } else {
                    intent.putExtra("chatId", -j);
                }
                ShortcutInfoCompat.Builder locusId = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, str2).setShortLabel(chat != null ? str : UserObject.getFirstName(user)).setLongLabel(str).setIntent(new Intent("android.intent.action.VIEW")).setIntent(intent).setLongLived(true).setLocusId(new LocusIdCompat(str2));
                if (person != null) {
                    locusId.setPerson(person);
                    locusId.setIcon(person.getIcon());
                    bitmap = person.getIcon() != null ? person.getIcon().getBitmap() : null;
                }
                ShortcutInfoCompat shortcutInfoCompatBuild = locusId.build();
                ShortcutManagerCompat.pushDynamicShortcut(ApplicationLoader.applicationContext, shortcutInfoCompatBuild);
                builder.setShortcutInfo(shortcutInfoCompatBuild);
                Intent intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) BubbleActivity.class);
                StringBuilder sb = new StringBuilder();
                sb.append("com.tmessages.openchat");
                Bitmap bitmap2 = bitmap;
                sb.append(Math.random());
                sb.append(Integer.MAX_VALUE);
                intent2.setAction(sb.toString());
                if (DialogObject.isUserDialog(j)) {
                    intent2.putExtra("userId", j);
                } else {
                    intent2.putExtra("chatId", -j);
                }
                intent2.putExtra("currentAccount", this.currentAccount);
                if (bitmap2 != null) {
                    iconCompatCreateWithResource = IconCompat.createWithAdaptiveBitmap(bitmap2);
                } else if (user != null) {
                    iconCompatCreateWithResource = IconCompat.createWithResource(ApplicationLoader.applicationContext, user.bot ? C2888R.drawable.book_bot : C2888R.drawable.book_user);
                } else {
                    iconCompatCreateWithResource = IconCompat.createWithResource(ApplicationLoader.applicationContext, C2888R.drawable.book_group);
                }
                if (z) {
                    NotificationCompat.BubbleMetadata.Builder builder2 = new NotificationCompat.BubbleMetadata.Builder(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent2, 167772160), iconCompatCreateWithResource);
                    builder2.setSuppressNotification(this.openedDialogId == j);
                    builder2.setAutoExpandBubble(false);
                    builder2.setDesiredHeight(AndroidUtilities.m1124dp(640.0f));
                    builder.setBubbleMetadata(builder2.build());
                    return str2;
                }
                builder.setBubbleMetadata(null);
                return str2;
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        return null;
    }

    @TargetApi(26)
    protected void ensureGroupsCreated() {
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        if (this.groupsCreated == null) {
            this.groupsCreated = Boolean.valueOf(notificationsSettings.getBoolean("groupsCreated5", false));
        }
        if (!this.groupsCreated.booleanValue()) {
            try {
                String str = this.currentAccount + "channel";
                List<NotificationChannel> notificationChannels = systemNotificationManager.getNotificationChannels();
                int size = notificationChannels.size();
                SharedPreferences.Editor editorEdit = null;
                for (int i = 0; i < size; i++) {
                    NotificationChannel notificationChannelM1170m = NotificationsController$$ExternalSyntheticApiModelOutline3.m1170m(notificationChannels.get(i));
                    String id = notificationChannelM1170m.getId();
                    if (id.startsWith(str)) {
                        int importance = notificationChannelM1170m.getImportance();
                        if (importance != 4 && importance != 5 && !id.contains("_ia_")) {
                            if (id.contains("_channels_")) {
                                if (editorEdit == null) {
                                    editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editorEdit.remove("priority_channel").remove("vibrate_channel").remove("ChannelSoundPath").remove("ChannelSound");
                            } else if (id.contains("_reactions_")) {
                                if (editorEdit == null) {
                                    editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editorEdit.remove("priority_react").remove("vibrate_react").remove("ReactionSoundPath").remove("ReactionSound");
                            } else if (id.contains("_groups_")) {
                                if (editorEdit == null) {
                                    editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editorEdit.remove("priority_group").remove("vibrate_group").remove("GroupSoundPath").remove("GroupSound");
                            } else if (id.contains("_private_")) {
                                if (editorEdit == null) {
                                    editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editorEdit.remove("priority_messages");
                                editorEdit.remove("priority_group").remove("vibrate_messages").remove("GlobalSoundPath").remove("GlobalSound");
                            } else {
                                long jLongValue = Utilities.parseLong(id.substring(9, id.indexOf(95, 9))).longValue();
                                if (jLongValue != 0) {
                                    if (editorEdit == null) {
                                        editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                    }
                                    editorEdit.remove("priority_" + jLongValue).remove("vibrate_" + jLongValue).remove("sound_path_" + jLongValue).remove("sound_" + jLongValue);
                                }
                            }
                        }
                        systemNotificationManager.deleteNotificationChannel(id);
                    }
                }
                if (editorEdit != null) {
                    editorEdit.apply();
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            notificationsSettings.edit().putBoolean("groupsCreated5", true).apply();
            this.groupsCreated = Boolean.TRUE;
        }
        if (this.channelGroupsCreated) {
            return;
        }
        List<NotificationChannelGroup> notificationChannelGroups = systemNotificationManager.getNotificationChannelGroups();
        String str2 = "channels" + this.currentAccount;
        String str3 = "groups" + this.currentAccount;
        String str4 = "private" + this.currentAccount;
        String str5 = "stories" + this.currentAccount;
        String str6 = "reactions" + this.currentAccount;
        String str7 = "other" + this.currentAccount;
        int size2 = notificationChannelGroups.size();
        String str8 = str7;
        String str9 = str6;
        String str10 = str5;
        String str11 = str4;
        for (int i2 = 0; i2 < size2; i2++) {
            String id2 = NotificationsController$$ExternalSyntheticApiModelOutline4.m1171m(notificationChannelGroups.get(i2)).getId();
            if (str2 != null && str2.equals(id2)) {
                str2 = null;
            } else if (str3 != null && str3.equals(id2)) {
                str3 = null;
            } else if (str10 != null && str10.equals(id2)) {
                str10 = null;
            } else if (str9 != null && str9.equals(id2)) {
                str9 = null;
            } else if (str11 != null && str11.equals(id2)) {
                str11 = null;
            } else if (str8 != null && str8.equals(id2)) {
                str8 = null;
            }
            if (str2 == null && str10 == null && str9 == null && str3 == null && str11 == null && str8 == null) {
                break;
            }
        }
        if (str2 != null || str3 != null || str9 != null || str10 != null || str11 != null || str8 != null) {
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId()));
            if (user == null) {
                getUserConfig().getCurrentUser();
            }
            String str12 = user != null ? " (" + ContactsController.formatName(user.first_name, user.last_name) + ")" : _UrlKt.FRAGMENT_ENCODE_SET;
            ArrayList arrayList = new ArrayList();
            if (str2 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline2.m1169m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline1.m1168m(str2, LocaleController.getString(C2888R.string.NotificationsChannels) + str12));
            }
            if (str3 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline2.m1169m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline1.m1168m(str3, LocaleController.getString(C2888R.string.NotificationsGroups) + str12));
            }
            if (str10 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline2.m1169m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline1.m1168m(str10, LocaleController.getString(C2888R.string.NotificationsStories) + str12));
            }
            if (str9 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline2.m1169m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline1.m1168m(str9, LocaleController.getString(C2888R.string.NotificationsReactions) + str12));
            }
            if (str11 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline2.m1169m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline1.m1168m(str11, LocaleController.getString(C2888R.string.NotificationsPrivateChats) + str12));
            }
            if (str8 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline2.m1169m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline1.m1168m(str8, LocaleController.getString(C2888R.string.NotificationsOther) + str12));
            }
            systemNotificationManager.createNotificationChannelGroups(arrayList);
        }
        this.channelGroupsCreated = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x05ba  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x05be A[LOOP:1: B:276:0x05bb->B:278:0x05be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x05cb  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0618  */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.app.NotificationChannel] */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.app.NotificationManager] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11, types: [int] */
    /* JADX WARN: Type inference failed for: r4v70 */
    /* JADX WARN: Type inference failed for: r5v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v58 */
    /* JADX WARN: Type inference failed for: r5v59 */
    /* JADX WARN: Type inference failed for: r5v60 */
    @TargetApi(26)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String validateChannelId(long j, long j2, String str, long[] jArr, int i, Uri uri, int i2, boolean z, boolean z2, boolean z3, int i3) {
        String str2;
        String str3;
        String str4;
        int i4;
        String string;
        String str5;
        String str6;
        SharedPreferences sharedPreferences;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        boolean z4;
        int i5;
        String str12;
        long[] jArr2;
        int i6;
        StringBuilder sb;
        boolean z5;
        boolean z6;
        String str13;
        String str14;
        String strMD5;
        ?? r5;
        String str15;
        ?? r4;
        String str16;
        String str17;
        boolean z7;
        long j3;
        long[] jArr3;
        boolean z8;
        String str18;
        String str19;
        boolean z9;
        String str20;
        boolean z10;
        long[] jArr4;
        boolean z11;
        long[] jArr5;
        SharedPreferences.Editor editorEdit;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        String str21;
        String str22;
        boolean z17;
        boolean z18;
        ensureGroupsCreated();
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        String string2 = "groups";
        if (!z3) {
            if (i3 == 2) {
                str2 = "channels" + this.currentAccount;
                str3 = "overwrite_channel";
            } else if (i3 == 0) {
                str2 = "groups" + this.currentAccount;
                str3 = "overwrite_group";
            } else if (i3 == 3) {
                str2 = "stories" + this.currentAccount;
                str3 = "overwrite_stories";
            } else if (i3 == 4 || i3 == 5) {
                str2 = "reactions" + this.currentAccount;
                str3 = "overwrite_reactions";
            } else {
                str2 = "private" + this.currentAccount;
                str3 = "overwrite_private";
            }
            str4 = "reactions";
        } else {
            str2 = "other" + this.currentAccount;
            str4 = "reactions";
            str3 = null;
        }
        boolean z19 = !z && DialogObject.isEncryptedDialog(j);
        boolean z20 = (z2 || str3 == null || !notificationsSettings.getBoolean(str3, false)) ? false : true;
        String strMD52 = Utilities.MD5(uri == null ? "NoSound2" : uri.toString());
        if (strMD52 != null && strMD52.length() > 5) {
            strMD52 = strMD52.substring(0, 5);
        }
        if (z3) {
            string2 = "silent";
            i4 = 0;
            string = LocaleController.getString(C2888R.string.NotificationsSilent);
        } else if (z) {
            string = LocaleController.getString(z2 ? C2888R.string.NotificationsInAppDefault : C2888R.string.NotificationsDefault);
            i4 = 0;
            if (i3 == 2) {
                string2 = z2 ? "channels_ia" : "channels";
            } else if (i3 == 0) {
                if (z2) {
                    string2 = "groups_ia";
                }
            } else if (i3 == 3) {
                string2 = z2 ? "stories_ia" : "stories";
            } else if (i3 == 4 || i3 == 5) {
                if (z2) {
                    str4 = "reactions_ia";
                }
                string2 = str4;
            } else {
                string2 = z2 ? "private_ia" : "private";
            }
        } else {
            i4 = 0;
            String string3 = z2 ? LocaleController.formatString(C2888R.string.NotificationsChatInApp, str) : str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(z2 ? "org.telegram.keyia" : "org.telegram.key");
            sb2.append(j);
            sb2.append("_");
            sb2.append(j2);
            string2 = sb2.toString();
            string = string3;
        }
        String str23 = string2 + "_" + strMD52;
        String string4 = notificationsSettings.getString(str23, null);
        String string5 = notificationsSettings.getString(str23 + "_s", null);
        StringBuilder sb3 = new StringBuilder();
        if (string4 == null) {
            str5 = string5;
            str6 = "secret";
            sharedPreferences = notificationsSettings;
            str7 = str23;
            str8 = string4;
            str9 = "_";
            str10 = string;
            str11 = str2;
            z4 = z20;
            i5 = i4;
            str12 = "_s";
            jArr2 = jArr;
        } else {
            sharedPreferences = notificationsSettings;
            NotificationChannel notificationChannel = systemNotificationManager.getNotificationChannel(string4);
            str10 = string;
            if (BuildVars.LOGS_ENABLED) {
                z4 = z20;
                FileLog.m1133d("current channel for " + string4 + " = " + notificationChannel);
            } else {
                z4 = z20;
            }
            if (notificationChannel == null) {
                str12 = "_s";
                jArr2 = jArr;
                str6 = "secret";
                str7 = str23;
                str9 = "_";
                str11 = str2;
                int i7 = i4;
                i6 = i;
                sb = sb3;
                z5 = i7 == true ? 1 : 0;
                z6 = z4;
                str14 = null;
                strMD5 = null;
                str13 = null;
                r5 = i7;
            } else if (z3 || z4) {
                jArr2 = jArr;
                str5 = string5;
                str6 = "secret";
                str7 = str23;
                str8 = string4;
                str9 = "_";
                str11 = str2;
                i5 = i4;
                str12 = "_s";
            } else {
                int importance = notificationChannel.getImportance();
                Uri sound = notificationChannel.getSound();
                long[] vibrationPattern = notificationChannel.getVibrationPattern();
                boolean zShouldVibrate = notificationChannel.shouldVibrate();
                str11 = str2;
                if (zShouldVibrate || vibrationPattern != null) {
                    j3 = 0;
                    jArr3 = vibrationPattern;
                } else {
                    j3 = 0;
                    jArr3 = new long[2];
                    jArr3[i4] = 0;
                    jArr3[1] = 0;
                }
                int lightColor = notificationChannel.getLightColor();
                str7 = str23;
                str9 = "_";
                if (jArr3 != null) {
                    int i8 = i4;
                    while (true) {
                        z8 = zShouldVibrate;
                        if (i8 >= jArr3.length) {
                            break;
                        }
                        sb3.append(jArr3[i8]);
                        i8++;
                        zShouldVibrate = z8;
                    }
                } else {
                    z8 = zShouldVibrate;
                }
                sb3.append(lightColor);
                if (sound != null) {
                    sb3.append(sound.toString());
                }
                sb3.append(importance);
                if (!z && z19) {
                    sb3.append("secret");
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("current channel settings for " + string4 + " = " + ((Object) sb3) + " old = " + string5);
                }
                String strMD53 = Utilities.MD5(sb3.toString());
                sb3.setLength(i4);
                if (z2 && i2 != importance) {
                    jArr4 = jArr;
                    i6 = i;
                    str18 = string5;
                    str6 = "secret";
                    str19 = string4;
                    z18 = false;
                    z10 = false;
                    str12 = "_s";
                    sb = sb3;
                    str20 = strMD53;
                    z11 = true;
                } else {
                    if (strMD53.equals(string5)) {
                        i6 = i;
                        str18 = string5;
                        str6 = "secret";
                        str19 = string4;
                        z9 = false;
                        str12 = "_s";
                        sb = sb3;
                        str20 = strMD53;
                        z10 = false;
                        jArr4 = jArr;
                    } else {
                        str18 = string5;
                        if (importance == 0) {
                            SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                            if (z) {
                                if (z2) {
                                    str22 = "_s";
                                    str21 = "secret";
                                    z16 = true;
                                } else {
                                    if (i3 == 3) {
                                        editorEdit2.putBoolean("EnableAllStories", false);
                                        z17 = true;
                                    } else if (i3 == 4) {
                                        z17 = true;
                                        editorEdit2.putBoolean("EnableReactionsMessages", true);
                                        editorEdit2.putBoolean("EnableReactionsStories", true);
                                    } else {
                                        z17 = true;
                                        editorEdit2.putInt(getGlobalNotificationsKey(i3), Integer.MAX_VALUE);
                                    }
                                    updateServerNotificationsSettings(i3);
                                    str22 = "_s";
                                    z16 = z17;
                                    str21 = "secret";
                                }
                                z15 = false;
                            } else {
                                if (i3 == 3) {
                                    editorEdit2.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + getSharedPrefKey(j, j3), false);
                                    z15 = false;
                                } else {
                                    z15 = false;
                                    editorEdit2.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j3), 2);
                                }
                                z16 = true;
                                str21 = "secret";
                                str22 = "_s";
                                updateServerNotificationsSettings(j, 0L, true);
                            }
                            editorEdit = editorEdit2;
                            str20 = strMD53;
                            str6 = str21;
                            z10 = z16;
                            z9 = z15;
                            sb = sb3;
                            jArr5 = jArr;
                            str19 = string4;
                            str12 = str22;
                            jArr4 = jArr3;
                        } else {
                            str19 = string4;
                            jArr4 = jArr3;
                            str12 = "_s";
                            str20 = strMD53;
                            sb = sb3;
                            if (importance != i2) {
                                if (z2) {
                                    str6 = "secret";
                                    z12 = false;
                                    editorEdit = null;
                                } else {
                                    SharedPreferences.Editor editorEdit3 = sharedPreferences.edit();
                                    str6 = "secret";
                                    int i9 = (importance == 4 || importance == 5) ? 1 : importance == 1 ? 4 : importance == 2 ? 5 : 0;
                                    if (z) {
                                        if (i3 == 3) {
                                            editorEdit3.putBoolean("EnableAllStories", true);
                                        } else if (i3 == 4) {
                                            editorEdit3.putBoolean("EnableReactionsMessages", true);
                                            editorEdit3.putBoolean("EnableReactionsStories", true);
                                        } else {
                                            z14 = false;
                                            editorEdit3.putInt(getGlobalNotificationsKey(i3), 0);
                                            if (i3 != 2) {
                                                editorEdit3.putInt("priority_channel", i9);
                                                z13 = z14;
                                            } else if (i3 == 0) {
                                                editorEdit3.putInt("priority_group", i9);
                                                z13 = z14;
                                            } else if (i3 == 3) {
                                                editorEdit3.putInt("priority_stories", i9);
                                                z13 = z14;
                                            } else if (i3 == 4 || i3 == 5) {
                                                editorEdit3.putInt("priority_react", i9);
                                                z13 = z14;
                                            } else {
                                                editorEdit3.putInt("priority_messages", i9);
                                                z13 = z14;
                                            }
                                        }
                                        z14 = false;
                                        if (i3 != 2) {
                                        }
                                    } else {
                                        z13 = false;
                                        z13 = false;
                                        if (i3 == 3) {
                                            editorEdit3.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + j, true);
                                        } else {
                                            editorEdit3.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + j, 0);
                                            editorEdit3.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + j);
                                            editorEdit3.putInt("priority_" + j, i9);
                                        }
                                    }
                                    editorEdit = editorEdit3;
                                    z12 = z13;
                                }
                                jArr5 = jArr;
                                z10 = true;
                                z9 = z12;
                            } else {
                                str6 = "secret";
                                z9 = false;
                                jArr5 = jArr;
                                z10 = false;
                                editorEdit = null;
                            }
                        }
                        boolean z21 = z8;
                        if ((!isEmptyVibration(jArr5)) != z21) {
                            if (!z2) {
                                if (editorEdit == null) {
                                    editorEdit = sharedPreferences.edit();
                                }
                                if (!z) {
                                    editorEdit.putInt("vibrate_" + j, z21 ? z9 ? 1 : 0 : 2);
                                } else if (i3 == 2) {
                                    editorEdit.putInt("vibrate_channel", z21 ? z9 ? 1 : 0 : 2);
                                } else if (i3 == 0) {
                                    editorEdit.putInt("vibrate_group", z21 ? z9 ? 1 : 0 : 2);
                                } else if (i3 == 3) {
                                    editorEdit.putInt("vibrate_stories", z21 ? z9 ? 1 : 0 : 2);
                                } else if (i3 == 4 || i3 == 5) {
                                    editorEdit.putInt("vibrate_react", z21 ? z9 ? 1 : 0 : 2);
                                } else {
                                    editorEdit.putInt("vibrate_messages", z21 ? z9 ? 1 : 0 : 2);
                                }
                            }
                            z10 = true;
                        } else {
                            jArr4 = jArr5;
                        }
                        i6 = i;
                        if (lightColor != i6) {
                            if (!z2) {
                                if (editorEdit == null) {
                                    editorEdit = sharedPreferences.edit();
                                }
                                if (!z) {
                                    editorEdit.putInt("color_" + j, lightColor);
                                } else if (i3 == 2) {
                                    editorEdit.putInt("ChannelLed", lightColor);
                                } else if (i3 == 0) {
                                    editorEdit.putInt("GroupLed", lightColor);
                                } else if (i3 == 3) {
                                    editorEdit.putInt("StoriesLed", lightColor);
                                } else if (i3 == 5 || i3 == 4) {
                                    editorEdit.putInt("ReactionsLed", lightColor);
                                } else {
                                    editorEdit.putInt("MessagesLed", lightColor);
                                }
                            }
                            i6 = lightColor;
                            z10 = true;
                        }
                        if (editorEdit != null) {
                            editorEdit.apply();
                        }
                    }
                    z11 = z4;
                    z18 = z9;
                }
                z6 = z11;
                z5 = z10;
                str13 = str19;
                jArr2 = jArr4;
                str14 = str18;
                strMD5 = str20;
                r5 = z18;
            }
            if (z5 || strMD5 == null) {
                str15 = str7;
                if (!z6 || strMD5 == null || !z2 || !z) {
                    for (r4 = r5; r4 < jArr2.length; r4++) {
                        sb.append(jArr2[r4]);
                    }
                    sb.append(i6);
                    if (uri != null) {
                        sb.append(uri.toString());
                    }
                    sb.append(i2);
                    if (!z && z19) {
                        sb.append(str6);
                    }
                    strMD5 = Utilities.MD5(sb.toString());
                    if (z3 && str13 != null && (z6 || !str14.equals(strMD5))) {
                        try {
                            systemNotificationManager.deleteNotificationChannel(str13);
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("delete channel by settings change " + str13);
                        }
                        str16 = strMD5;
                        str17 = null;
                    }
                }
                if (str17 == null) {
                    str17 = z ? this.currentAccount + "channel_" + str15 + str9 + Utilities.random.nextLong() : this.currentAccount + "channel_" + j + str9 + Utilities.random.nextLong();
                    NotificationsController$$ExternalSyntheticApiModelOutline0.m1167m();
                    ?? M335m = zzo$$ExternalSyntheticApiModelOutline0.m335m(str17, z19 ? LocaleController.getString(C2888R.string.SecretChatName) : str10, i2);
                    M335m.setGroup(str11);
                    if (i6 != 0) {
                        z7 = true;
                        M335m.enableLights(true);
                        M335m.setLightColor(i6);
                    } else {
                        z7 = true;
                        M335m.enableLights(r5);
                    }
                    if (!isEmptyVibration(jArr2)) {
                        M335m.enableVibration(z7);
                        if (jArr2.length > 0) {
                            M335m.setVibrationPattern(jArr2);
                        }
                    } else {
                        M335m.enableVibration(r5);
                    }
                    AudioAttributes.Builder builder = new AudioAttributes.Builder();
                    builder.setContentType(4);
                    builder.setUsage(5);
                    if (uri != null) {
                        M335m.setSound(uri, builder.build());
                    } else {
                        M335m.setSound(null, builder.build());
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m1133d("create new channel " + str17);
                    }
                    this.lastNotificationChannelCreateTime = SystemClock.elapsedRealtime();
                    systemNotificationManager.createNotificationChannel(M335m);
                    sharedPreferences.edit().putString(str15, str17).putString(str15 + str12, str16).apply();
                }
                return str17;
            }
            str15 = str7;
            sharedPreferences.edit().putString(str15, str13).putString(str15 + str12, strMD5).apply();
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1133d("change edited channel " + str13);
            }
            str16 = strMD5;
            str17 = str13;
            if (str17 == null) {
            }
            return str17;
        }
        i6 = i;
        sb = sb3;
        z5 = i5 == true ? 1 : 0;
        z6 = z4;
        str13 = str8;
        str14 = str5;
        strMD5 = null;
        r5 = i5;
        if (z5) {
            str15 = str7;
            if (!z6) {
                while (r4 < jArr2.length) {
                }
                sb.append(i6);
                if (uri != null) {
                }
                sb.append(i2);
                if (!z) {
                    sb.append(str6);
                }
                strMD5 = Utilities.MD5(sb.toString());
                if (z3) {
                    str16 = strMD5;
                    str17 = str13;
                } else {
                    str16 = strMD5;
                    str17 = str13;
                }
            }
        }
        if (str17 == null) {
        }
        return str17;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(77:79|(1:81)(1:82)|83|(1:86)|85|87|(1:93)|94|(2:98|(1:100)(1:101))|102|(3:104|(2:110|(1:115)(1:114))(1:108)|109)(1:116)|117|118|(4:634|120|121|122)(2:125|(1:127)(1:128))|(1:(1:136)(1:137))(1:134)|138|(1:145)(1:143)|144|146|(2:(2:149|(1:151))(1:152)|(1:154)(57:155|163|(2:169|(1:171))(1:168)|(4:173|(2:175|(1:177)(1:178))(1:179)|180|(1:182)(3:183|184|(1:186)(1:187)))(1:188)|189|190|(3:194|221|(2:223|652)(4:(1:(2:228|(1:230)(1:231))(1:227))(1:232)|233|(1:235)|236))(1:(4:193|194|221|(0)(0))(4:195|(3:197|(2:203|645)(6:204|(1:206)|207|(1:216)(1:(1:211)(2:212|(1:214)(1:215)))|217|644)|218)|643|219))|220|(1:245)(1:244)|(1:266)(49:250|(1:252)(1:253)|(1:258)(2:255|(2:257|258)(2:259|(1:261)(2:262|(1:264)(1:265))))|(2:269|(1:271))(1:272)|273|(47:275|(1:277)(1:278)|279|(1:281)|282|285|(6:289|321|(1:323)(1:324)|325|(1:327)(1:328)|329)(1:(1:(3:292|(1:294)(1:295)|296)(3:298|(1:300)(1:301)|302))(41:303|(6:(1:306)(1:307)|308|(1:310)(2:(1:312)(1:313)|314)|315|(1:317)(1:318)|319)(1:320)|(1:331)(1:332)|333|(1:339)(1:337)|338|(1:342)|(1:346)|(1:352)(1:351)|(6:354|(1:356)|357|(1:359)(1:360)|361|(1:363)(1:364))(1:365)|(3:632|369|(1:373))|(1:377)(1:378)|379|(1:381)|382|383|(1:385)(3:387|388|(2:(2:391|392)(2:393|(1:395))|396)(25:397|(4:399|(2:402|400)|650|403)(24:404|(4:406|(1:(1:409)(2:410|(1:412)))|413|(0)(1:(3:423|(22:431|450|(1:452)|453|(1:460)|627|461|(1:463)|466|(3:468|469|470)(1:473)|474|(1:478)(10:(2:481|(1:483)(3:625|485|(4:487|(1:489)(1:490)|491|(1:493))))|494|(4:498|522|(2:524|518)|525)(1:(3:500|501|(1:503)(1:525))(2:504|(2:519|(1:521)(0))(2:506|(3:508|519|(0)(0))(3:509|(2:511|(1:513))(2:514|(2:516|(1:518)))|525))))|526|(1:585)(2:(3:533|(1:535)(1:536)|537)|(4:565|(1:567)(1:569)|568|(1:571)(3:572|(1:574)(1:(2:579|584)(3:580|(1:582)|583))|575))(3:541|542|(5:544|(1:552)(1:(1:550)(1:551))|(0)(0)|568|(0)(0))(6:553|(1:555)(1:(2:557|(1:564)(2:630|561))(0))|565|(0)(0)|568|(0)(0))))|586|(1:609)(4:594|(4:596|(3:598|(4:600|(1:602)(1:603)|604|649)(2:605|648)|606)|647|607)|646|608)|(1:617)|618|653)|479|494|(5:496|498|522|(0)|525)(0)|526|(1:585)(0)|586|(2:588|609)(0)|(4:611|613|615|617)|618|653)|432)(2:433|(23:435|(0)(1:443)|450|(0)|453|(3:456|458|460)|627|461|(0)|466|(0)(0)|474|(0)(0)|479|494|(0)(0)|526|(0)(0)|586|(0)(0)|(0)|618|653)(1:432))))(2:445|(1:449))|444|450|(0)|453|(0)|627|461|(0)|466|(0)(0)|474|(0)(0)|479|494|(0)(0)|526|(0)(0)|586|(0)(0)|(0)|618|653)|417|444|450|(0)|453|(0)|627|461|(0)|466|(0)(0)|474|(0)(0)|479|494|(0)(0)|526|(0)(0)|586|(0)(0)|(0)|618|653))|386|417|444|450|(0)|453|(0)|627|461|(0)|466|(0)(0)|474|(0)(0)|479|494|(0)(0)|526|(0)(0)|586|(0)(0)|(0)|618|653))|297|(0)(0)|333|(2:335|339)(0)|338|(1:342)|(2:344|346)|(2:348|352)(0)|(0)(0)|(4:367|632|369|(2:371|373))|(0)(0)|379|(0)|382|383|(0)(0)|386|417|444|450|(0)|453|(0)|627|461|(0)|466|(0)(0)|474|(0)(0)|479|494|(0)(0)|526|(0)(0)|586|(0)(0)|(0)|618|653)(1:283)|284|282|285|(8:287|289|321|(0)(0)|325|(0)(0)|329|297)(0)|(0)(0)|333|(0)(0)|338|(0)|(0)|(0)(0)|(0)(0)|(0)|(0)(0)|379|(0)|382|383|(0)(0)|386|417|444|450|(0)|453|(0)|627|461|(0)|466|(0)(0)|474|(0)(0)|479|494|(0)(0)|526|(0)(0)|586|(0)(0)|(0)|618|653)|267|(0)(0)|273|(0)(0)|284|282|285|(0)(0)|(0)(0)|333|(0)(0)|338|(0)|(0)|(0)(0)|(0)(0)|(0)|(0)(0)|379|(0)|382|383|(0)(0)|386|417|444|450|(0)|453|(0)|627|461|(0)|466|(0)(0)|474|(0)(0)|479|494|(0)(0)|526|(0)(0)|586|(0)(0)|(0)|618|653))(1:156)|(1:(1:159)(1:160))(1:161)|162|163|(4:165|167|169|(0))(0)|(0)(0)|189|190|(0)(0)|220|(1:245)(0)|(3:247|266|267)(0)|(0)(0)|273|(0)(0)|284|282|285|(0)(0)|(0)(0)|333|(0)(0)|338|(0)|(0)|(0)(0)|(0)(0)|(0)|(0)(0)|379|(0)|382|383|(0)(0)|386|417|444|450|(0)|453|(0)|627|461|(0)|466|(0)(0)|474|(0)(0)|479|494|(0)(0)|526|(0)(0)|586|(0)(0)|(0)|618|653) */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0b3a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x0b58, code lost:
    
        org.telegram.messenger.FileLog.m1136e(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03d6 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03e1 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03e9 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x04b6 A[PHI: r14
  0x04b6: PHI (r14v7 int A[IMMUTABLE_TYPE]) = (r14v6 int), (r14v28 int) binds: [B:191:0x04b1, B:193:0x04b5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0592  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0603  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x06b7 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:272:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x06f9 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0757  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0765 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0769  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0883 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:324:0x088f A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:327:0x08b7  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x08b9  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x08c1  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x08c4  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x08cc A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:339:0x08d6  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x08de A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x08e5 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x08f3  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x08fb  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x08fe A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:365:0x091f  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0923  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0939  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x093f  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0974 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:385:0x0983 A[Catch: Exception -> 0x0056, TRY_ENTER, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0998 A[Catch: Exception -> 0x0056, TRY_LEAVE, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0ae4 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0af3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0b32 A[Catch: all -> 0x0b3a, TryCatch #1 {all -> 0x0b3a, blocks: (B:461:0x0b16, B:463:0x0b32, B:466:0x0b3c, B:470:0x0b44, B:474:0x0b4c), top: B:627:0x0b16 }] */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0b40  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0b4b  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0b5d A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:480:0x0b64  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0bb5  */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0bb8  */
    /* JADX WARN: Removed duplicated region for block: B:521:0x0bef  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0bf8  */
    /* JADX WARN: Removed duplicated region for block: B:525:0x0bf9  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0bff A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0cee A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:567:0x0cf9 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:569:0x0d04  */
    /* JADX WARN: Removed duplicated region for block: B:571:0x0d09 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:572:0x0d15  */
    /* JADX WARN: Removed duplicated region for block: B:585:0x0d40 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:588:0x0d54 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:609:0x0e0a  */
    /* JADX WARN: Removed duplicated region for block: B:611:0x0e12 A[Catch: Exception -> 0x0056, TryCatch #2 {Exception -> 0x0056, blocks: (B:13:0x002c, B:14:0x0038, B:16:0x0040, B:18:0x0051, B:19:0x0053, B:23:0x005a, B:25:0x0062, B:27:0x0074, B:28:0x0077, B:32:0x0080, B:35:0x0088, B:36:0x009e, B:38:0x00a6, B:39:0x00dc, B:41:0x00fe, B:44:0x0106, B:46:0x010e, B:49:0x0115, B:53:0x0129, B:71:0x01ee, B:73:0x0220, B:75:0x0232, B:77:0x0238, B:79:0x023c, B:81:0x0258, B:83:0x025f, B:87:0x0272, B:91:0x027e, B:93:0x028a, B:94:0x0290, B:96:0x029b, B:98:0x02a1, B:100:0x02ad, B:101:0x02b9, B:102:0x02c3, B:104:0x02d3, B:106:0x02e3, B:108:0x02e9, B:117:0x031f, B:122:0x033c, B:132:0x035f, B:134:0x0365, B:138:0x0373, B:140:0x0379, B:146:0x0384, B:149:0x0397, B:163:0x03ca, B:165:0x03ce, B:173:0x03e9, B:175:0x03f0, B:177:0x03f8, B:180:0x0426, B:189:0x049d, B:195:0x04c0, B:197:0x04e4, B:199:0x04fa, B:201:0x04fe, B:206:0x050a, B:207:0x0510, B:211:0x051d, B:217:0x0565, B:218:0x0568, B:212:0x0533, B:214:0x053b, B:215:0x054f, B:219:0x0573, B:239:0x05f3, B:250:0x060c, B:252:0x062a, B:255:0x065b, B:257:0x0665, B:259:0x067b, B:261:0x068c, B:269:0x06b7, B:273:0x06da, B:275:0x06f9, B:277:0x0724, B:279:0x0740, B:281:0x0750, B:285:0x075f, B:287:0x0765, B:292:0x0775, B:294:0x0787, B:296:0x079a, B:333:0x08c6, B:335:0x08cc, B:344:0x08e5, B:346:0x08eb, B:354:0x08fe, B:357:0x0908, B:361:0x0913, B:375:0x0934, B:379:0x0944, B:381:0x0974, B:382:0x097c, B:385:0x0983, B:450:0x0a99, B:452:0x0ae4, B:453:0x0aeb, B:456:0x0af5, B:458:0x0af9, B:460:0x0aff, B:478:0x0b5d, B:501:0x0bbd, B:530:0x0c03, B:539:0x0c42, B:541:0x0c4a, B:544:0x0c52, B:546:0x0c5a, B:550:0x0c65, B:567:0x0cf9, B:571:0x0d09, B:586:0x0d4e, B:588:0x0d54, B:590:0x0d58, B:592:0x0d63, B:594:0x0d69, B:596:0x0d73, B:598:0x0d84, B:600:0x0d90, B:602:0x0db0, B:604:0x0dba, B:606:0x0de6, B:607:0x0df3, B:611:0x0e12, B:613:0x0e18, B:615:0x0e20, B:617:0x0e26, B:618:0x0e48, B:574:0x0d18, B:582:0x0d2d, B:584:0x0d39, B:551:0x0c8b, B:552:0x0c90, B:553:0x0c93, B:555:0x0c9b, B:557:0x0ca4, B:559:0x0cac, B:563:0x0ce5, B:564:0x0cee, B:533:0x0c0d, B:535:0x0c15, B:537:0x0c3d, B:585:0x0d40, B:511:0x0bd1, B:516:0x0bde, B:519:0x0be8, B:522:0x0bf1, B:481:0x0b66, B:483:0x0b73, B:476:0x0b58, B:387:0x0998, B:392:0x09a8, B:396:0x09ba, B:395:0x09b5, B:397:0x09ca, B:399:0x09d8, B:400:0x09e1, B:402:0x09e9, B:403:0x09f8, B:404:0x0a01, B:406:0x0a07, B:409:0x0a14, B:412:0x0a1e, B:413:0x0a21, B:415:0x0a27, B:418:0x0a30, B:420:0x0a39, B:423:0x0a41, B:425:0x0a47, B:427:0x0a4b, B:429:0x0a53, B:435:0x0a61, B:437:0x0a67, B:439:0x0a6b, B:441:0x0a73, B:445:0x0a7a, B:447:0x0a89, B:449:0x0a8f, B:295:0x0793, B:298:0x07c2, B:300:0x07d4, B:302:0x07e7, B:301:0x07e0, B:308:0x081b, B:310:0x0823, B:315:0x083b, B:314:0x0836, B:321:0x0877, B:323:0x0883, B:325:0x0896, B:324:0x088f, B:278:0x0731, B:262:0x0698, B:264:0x069c, B:221:0x0582, B:227:0x0598, B:233:0x05db, B:236:0x05e1, B:228:0x05ac, B:230:0x05b2, B:231:0x05c6, B:183:0x0436, B:186:0x0442, B:187:0x045d, B:178:0x0405, B:169:0x03d6, B:171:0x03e1, B:159:0x03b4, B:160:0x03bb, B:161:0x03c2, B:136:0x036a, B:137:0x036f, B:110:0x02ff, B:112:0x0305, B:86:0x026f, B:54:0x0137, B:56:0x013d, B:57:0x0143, B:60:0x014d, B:61:0x0157, B:62:0x0169, B:64:0x016f, B:65:0x0186, B:67:0x018d, B:69:0x0195, B:70:0x01c5, B:51:0x011e, B:72:0x020e, B:561:0x0cb6, B:369:0x0926), top: B:629:0x002c, inners: #3, #4 }] */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v37 */
    /* JADX WARN: Type inference failed for: r14v38 */
    /* JADX WARN: Type inference failed for: r14v39 */
    /* JADX WARN: Type inference failed for: r14v40 */
    /* JADX WARN: Type inference failed for: r14v41 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v6, types: [org.telegram.messenger.BaseController, org.telegram.messenger.NotificationsController] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showOrUpdateNotification(boolean z) {
        String str;
        long j;
        long j2;
        MessageObject messageObject;
        Bitmap bitmap;
        NotificationsController notificationsController;
        String str2;
        String str3;
        boolean z2;
        int i;
        TLRPC.Chat chat;
        boolean z3;
        long j3;
        SharedPreferences sharedPreferences;
        long j4;
        long j5;
        Bitmap bitmap2;
        TLRPC.User user;
        long j6;
        long j7;
        boolean zIsGlobalNotificationsEnabled;
        SharedPreferences sharedPreferences2;
        ?? r1;
        String userName;
        boolean z4;
        String string;
        String string2;
        boolean z5;
        boolean z6;
        long j8;
        long j9;
        TLRPC.Chat chat2;
        String string3;
        long j10;
        SharedPreferences sharedPreferences3;
        long j11;
        String str4;
        String stringForMessage;
        String strReplace;
        String str5;
        ?? r14;
        String str6;
        boolean z7;
        String str7;
        String str8;
        SharedPreferences sharedPreferences4;
        long j12;
        boolean z8;
        long j13;
        long j14;
        long j15;
        long j16;
        int property;
        int property2;
        boolean z9;
        String propertyString;
        Integer numValueOf;
        boolean z10;
        String str9;
        boolean z11;
        NotificationCompat.Builder builder;
        long j17;
        String string4;
        boolean z12;
        int i2;
        String str10;
        boolean z13;
        int iIntValue;
        int i3;
        int i4;
        boolean z14;
        int i5;
        int i6;
        String str11;
        int i7;
        boolean z15;
        boolean z16;
        int i8;
        int i9;
        int i10;
        String str12;
        String str13;
        int i11;
        int i12;
        String str14;
        TLRPC.User user2;
        TLRPC.Chat chat3;
        TLRPC.FileLocation fileLocation;
        int i13;
        NotificationCompat.Builder builder2;
        long[] jArr;
        int i14;
        int i15;
        long[] jArr2;
        ?? r11;
        int i16;
        long[] jArr3;
        boolean z17;
        TLRPC.ReplyMarkup replyMarkup;
        int i17;
        int i18;
        int i19;
        long[] jArr4;
        Object obj;
        int i20;
        int i21;
        String str15;
        int ringerMode;
        String string5;
        boolean z18;
        String string6;
        boolean z19;
        String string7;
        boolean z20;
        int i22;
        String str16;
        boolean z21;
        boolean z22;
        String pluralString;
        if (!getUserConfig().isClientActivated() || ((this.pushMessages.isEmpty() && this.storyPushMessages.isEmpty()) || (!SharedConfig.showNotificationsForAllAccounts && this.currentAccount != UserConfig.selectedAccount))) {
            dismissNotification();
            return;
        }
        try {
            getConnectionsManager().resumeNetworkMaybe();
            long j18 = 0;
            Object obj2 = null;
            for (int i23 = 0; i23 < this.pushMessages.size(); i23++) {
                MessageObject messageObject2 = this.pushMessages.get(i23);
                int i24 = messageObject2.messageOwner.date;
                if (j18 < i24) {
                    j18 = i24;
                    obj2 = messageObject2;
                }
            }
            for (int i25 = 0; i25 < this.storyPushMessages.size(); i25++) {
                StoryNotification storyNotification = this.storyPushMessages.get(i25);
                long j19 = storyNotification.date;
                if (j18 < j19 / 1000) {
                    obj2 = storyNotification;
                    j18 = j19 / 1000;
                }
            }
            if (obj2 == null) {
                return;
            }
            boolean z23 = obj2 instanceof StoryNotification;
            String str17 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (z23) {
                StoryNotification storyNotification2 = (StoryNotification) obj2;
                TLRPC.TL_message tL_message = new TLRPC.TL_message();
                tL_message.date = (int) (System.currentTimeMillis() / 1000);
                int i26 = 0;
                boolean z24 = false;
                j = 1000;
                j2 = 0;
                int size = 0;
                while (i26 < this.storyPushMessages.size()) {
                    z24 |= this.storyPushMessages.get(i26).hidden;
                    tL_message.date = Math.min(tL_message.date, (int) (this.storyPushMessages.get(i26).date / 1000));
                    size += this.storyPushMessages.get(i26).dateByIds.size();
                    i26++;
                    str17 = str17;
                }
                String str18 = str17;
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                long j20 = storyNotification2.dialogId;
                tL_peerUser.user_id = j20;
                tL_message.dialog_id = j20;
                tL_message.peer_id = tL_peerUser;
                ArrayList<String> arrayList = new ArrayList<>();
                ArrayList<Object> arrayList2 = new ArrayList<>();
                parseStoryPushes(arrayList, arrayList2);
                Bitmap bitmapLoadMultipleAvatars = SharedConfig.getDevicePerformanceClass() >= 1 ? loadMultipleAvatars(arrayList2) : null;
                if (z24 || this.storyPushMessages.size() >= 2 || arrayList.isEmpty()) {
                    pluralString = LocaleController.formatPluralString("Stories", size, new Object[0]);
                } else {
                    pluralString = arrayList.get(0);
                }
                String str19 = pluralString;
                if (z24) {
                    tL_message.message = LocaleController.formatPluralString("StoryNotificationHidden", size, new Object[0]);
                    str = str18;
                } else if (arrayList.isEmpty()) {
                    str = str18;
                    tL_message.message = str;
                } else {
                    str = str18;
                    if (arrayList.size() == 1) {
                        if (size == 1) {
                            tL_message.message = LocaleController.getString("StoryNotificationSingle");
                        } else {
                            tL_message.message = LocaleController.formatPluralString("StoryNotification1", size, arrayList.get(0));
                        }
                    } else if (arrayList.size() == 2) {
                        tL_message.message = LocaleController.formatString(C2888R.string.StoryNotification2, arrayList.get(0), arrayList.get(1));
                    } else if (arrayList.size() == 3 && this.storyPushMessages.size() == 3) {
                        tL_message.message = LocaleController.formatString(C2888R.string.StoryNotification3, cutLastName(arrayList.get(0)), cutLastName(arrayList.get(1)), cutLastName(arrayList.get(2)));
                    } else {
                        tL_message.message = LocaleController.formatPluralString("StoryNotification4", this.storyPushMessages.size() - 2, cutLastName(arrayList.get(0)), cutLastName(arrayList.get(1)));
                    }
                }
                MessageObject messageObject3 = new MessageObject(this.currentAccount, tL_message, tL_message.message, str19, str19, false, false, false, false);
                messageObject3.isStoryPush = true;
                messageObject = messageObject3;
                bitmap = bitmapLoadMultipleAvatars;
            } else {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
                j = 1000;
                j2 = 0;
                messageObject = this.pushMessages.get(0);
                bitmap = null;
            }
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            int i27 = notificationsSettings.getInt("dismissDate", 0);
            if (!messageObject.isStoryPush && messageObject.messageOwner.date <= i27) {
                dismissNotification();
                return;
            }
            long dialogId = messageObject.getDialogId();
            long topicId = MessageObject.getTopicId(this.currentAccount, messageObject.messageOwner, getMessagesController().isForum(messageObject));
            boolean z25 = messageObject.isStoryPush;
            long fromChatId = messageObject.messageOwner.mentioned ? messageObject.getFromChatId() : dialogId;
            messageObject.getId();
            TLRPC.Peer peer = messageObject.messageOwner.peer_id;
            long jLongValue = peer.chat_id;
            if (jLongValue == j2) {
                jLongValue = peer.channel_id;
            }
            String str20 = str;
            long jLongValue2 = peer.user_id;
            if (messageObject.isFromUser() && (jLongValue2 == j2 || jLongValue2 == getUserConfig().getClientUserId())) {
                jLongValue2 = messageObject.messageOwner.from_id.user_id;
            }
            if (messageObject.getDialogId() == UserObject.VERIFY && messageObject.getForwardedFromId() != null) {
                if (messageObject.getForwardedFromId().longValue() >= j2) {
                    jLongValue2 = messageObject.getForwardedFromId().longValue();
                    jLongValue = j2;
                } else {
                    jLongValue = messageObject.getForwardedFromId().longValue();
                    jLongValue2 = j2;
                }
            }
            TLRPC.User user3 = getMessagesController().getUser(Long.valueOf(jLongValue2));
            int i28 = (jLongValue > j2 ? 1 : (jLongValue == j2 ? 0 : -1));
            if (i28 == 0) {
                notificationsController = this;
                str2 = "file://";
                str3 = "currentAccount";
                z2 = z25;
                i = i28;
                chat = null;
                z3 = false;
                j3 = jLongValue;
                sharedPreferences = notificationsSettings;
                j4 = fromChatId;
                j5 = topicId;
            } else {
                long j21 = jLongValue;
                TLRPC.Chat chat4 = getMessagesController().getChat(Long.valueOf(j21));
                if (chat4 == null && messageObject.isFcmMessage()) {
                    z22 = messageObject.localChannel;
                } else {
                    z22 = ChatObject.isChannel(chat4) && !chat4.megagroup;
                }
                z3 = z22;
                sharedPreferences = notificationsSettings;
                j4 = fromChatId;
                str2 = "file://";
                str3 = "currentAccount";
                z2 = z25;
                i = i28;
                j5 = topicId;
                j3 = j21;
                chat = chat4;
                notificationsController = this;
            }
            int notifyOverride = notificationsController.getNotifyOverride(sharedPreferences, j4, j5);
            long j22 = j4;
            long j23 = j5;
            if (notifyOverride == -1) {
                try {
                    Boolean boolValueOf = Boolean.valueOf(z3);
                    boolean z26 = messageObject.isReactionPush;
                    NotificationsController notificationsController2 = this;
                    SharedPreferences sharedPreferences5 = sharedPreferences;
                    bitmap2 = bitmap;
                    user = user3;
                    j6 = dialogId;
                    j7 = j23;
                    zIsGlobalNotificationsEnabled = notificationsController2.isGlobalNotificationsEnabled(j6, boolValueOf, z26, z26);
                    sharedPreferences2 = sharedPreferences5;
                    r1 = notificationsController2;
                } catch (Exception e) {
                    e = e;
                }
            } else {
                NotificationsController notificationsController3 = this;
                sharedPreferences2 = sharedPreferences;
                bitmap2 = bitmap;
                user = user3;
                j6 = dialogId;
                j7 = j23;
                if (notifyOverride != 2) {
                    zIsGlobalNotificationsEnabled = true;
                    r1 = notificationsController3;
                } else {
                    zIsGlobalNotificationsEnabled = false;
                    r1 = notificationsController3;
                }
            }
            if (((i != 0 && chat == null) || user == null) && messageObject.isFcmMessage()) {
                userName = messageObject.localName;
            } else if (chat != null) {
                userName = r1.getTitle(chat);
            } else {
                userName = UserObject.getUserName(user);
            }
            boolean z27 = AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter;
            boolean z28 = zIsGlobalNotificationsEnabled;
            String str21 = userName;
            boolean zEqualsIgnoreCase = "samsung".equalsIgnoreCase(Build.MANUFACTURER);
            if (DialogObject.isEncryptedDialog(j6)) {
                z4 = zEqualsIgnoreCase;
            } else {
                if (zEqualsIgnoreCase) {
                    z4 = zEqualsIgnoreCase;
                    z21 = true;
                } else {
                    z4 = zEqualsIgnoreCase;
                    z21 = true;
                    if (r1.pushDialogs.size() <= 1) {
                    }
                }
                if (!z27) {
                    z5 = z21;
                    string2 = str21;
                    if (!messageObject.isReactionPush || messageObject.isStoryReactionPush) {
                        z6 = z5;
                        if (!sharedPreferences2.getBoolean("EnableReactionsPreview", true)) {
                            string2 = LocaleController.getString(C2888R.string.NotificationHiddenName);
                        }
                    } else {
                        z6 = z5;
                    }
                    if (z4) {
                        if (UserConfig.getActivatedAccountsCount() <= 1) {
                            string3 = str20;
                        } else if (r1.pushDialogs.size() == 1) {
                            string3 = UserObject.getFirstName(r1.getUserConfig().getCurrentUser());
                        } else {
                            string3 = UserObject.getFirstName(r1.getUserConfig().getCurrentUser()) + "・";
                        }
                        chat2 = chat;
                        if (r1.pushDialogs.size() == 1) {
                            j8 = j3;
                            j9 = jLongValue2;
                        } else {
                            j9 = jLongValue2;
                            if (r1.pushDialogs.size() == 1) {
                                string3 = string3 + LocaleController.formatPluralString("NewMessages", r1.total_unread_count, new Object[0]);
                                j8 = j3;
                            } else {
                                StringBuilder sb = new StringBuilder();
                                sb.append(string3);
                                j8 = j3;
                                sb.append(LocaleController.formatString(C2888R.string.NotificationMessagesPeopleDisplayOrder, LocaleController.formatPluralString("NewMessages", r1.total_unread_count, new Object[0]), LocaleController.formatPluralString("FromChats", r1.pushDialogs.size(), new Object[0])));
                                string3 = sb.toString();
                            }
                        }
                    } else {
                        j8 = j3;
                        j9 = jLongValue2;
                        chat2 = chat;
                        string3 = str20;
                    }
                    NotificationCompat.Builder builder3 = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
                    int i29 = 1;
                    if (r1.pushMessages.size() <= 1) {
                        j10 = j6;
                        sharedPreferences3 = sharedPreferences2;
                        j11 = j7;
                        str4 = str20;
                        boolean[] zArr = new boolean[i29];
                        stringForMessage = r1.getStringForMessage(messageObject, false, zArr, null);
                        boolean zIsSilentMessage = r1.isSilentMessage(messageObject);
                        if (stringForMessage != null) {
                            return;
                        }
                        if (!z6) {
                            strReplace = stringForMessage;
                        } else if (chat2 != null && !z4) {
                            strReplace = stringForMessage.replace(" @ " + string2, str4);
                        } else if (zArr[0]) {
                            strReplace = stringForMessage.replace(string2 + ": ", str4);
                        } else {
                            strReplace = stringForMessage.replace(string2 + " ", str4);
                        }
                        builder3.setContentText(strReplace);
                        if (z4) {
                            string3 = strReplace;
                        }
                        builder3.setStyle(new NotificationCompat.BigTextStyle().bigText(strReplace));
                        str5 = stringForMessage;
                        r14 = zIsSilentMessage;
                    } else if (z4) {
                        i29 = 1;
                        j10 = j6;
                        sharedPreferences3 = sharedPreferences2;
                        j11 = j7;
                        str4 = str20;
                        boolean[] zArr2 = new boolean[i29];
                        stringForMessage = r1.getStringForMessage(messageObject, false, zArr2, null);
                        boolean zIsSilentMessage2 = r1.isSilentMessage(messageObject);
                        if (stringForMessage != null) {
                        }
                    } else {
                        builder3.setContentText(string3);
                        NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
                        inboxStyle.setBigContentTitle(string2);
                        j11 = j7;
                        int iMin = Math.min(10, r1.pushMessages.size());
                        boolean[] zArr3 = new boolean[1];
                        sharedPreferences3 = sharedPreferences2;
                        int i30 = 0;
                        ?? IsSilentMessage = 2;
                        String str22 = null;
                        while (i30 < iMin) {
                            int i31 = iMin;
                            MessageObject messageObject4 = r1.pushMessages.get(i30);
                            long j24 = j6;
                            int i32 = i30;
                            String stringForMessage2 = r1.getStringForMessage(messageObject4, false, zArr3, null);
                            if (stringForMessage2 == null || (!messageObject4.isStoryPush && messageObject4.messageOwner.date <= i27)) {
                                str16 = str20;
                            } else {
                                IsSilentMessage = IsSilentMessage;
                                if (IsSilentMessage == 2) {
                                    str22 = stringForMessage2;
                                    IsSilentMessage = r1.isSilentMessage(messageObject4);
                                }
                                if (r1.pushDialogs.size() != 1 || !z6) {
                                    str16 = str20;
                                } else if (chat2 != null) {
                                    str16 = str20;
                                    stringForMessage2 = stringForMessage2.replace(" @ " + string2, str16);
                                } else {
                                    str16 = str20;
                                    stringForMessage2 = zArr3[0] ? stringForMessage2.replace(string2 + ": ", str16) : stringForMessage2.replace(string2 + " ", str16);
                                }
                                inboxStyle.addLine(stringForMessage2);
                            }
                            str20 = str16;
                            iMin = i31;
                            i30 = i32 + 1;
                            j6 = j24;
                            IsSilentMessage = IsSilentMessage;
                        }
                        j10 = j6;
                        str4 = str20;
                        inboxStyle.setSummaryText(string3);
                        builder3.setStyle(inboxStyle);
                        str5 = str22;
                        r14 = IsSilentMessage;
                    }
                    str6 = string3;
                    z7 = z || !z28 || MediaController.getInstance().isRecordingAudio() || r14 == 1;
                    if (z7 && j10 == j22 && chat2 != null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(NotificationsSettingsFacade.PROPERTY_CUSTOM);
                        j12 = j10;
                        sb2.append(j12);
                        sharedPreferences4 = sharedPreferences3;
                        int i33 = 180;
                        if (sharedPreferences4.getBoolean(sb2.toString(), false)) {
                            i22 = sharedPreferences4.getInt("smart_max_count_" + j12, 2);
                            i33 = sharedPreferences4.getInt("smart_delay_" + j12, 180);
                        } else {
                            i22 = 2;
                        }
                        if (i22 == 0) {
                            str7 = str6;
                            str8 = str4;
                        } else {
                            Point point = (Point) r1.smartNotificationsDialogs.get(j12);
                            if (point == null) {
                                r1.smartNotificationsDialogs.put(j12, new Point(1, (int) (SystemClock.elapsedRealtime() / j)));
                                str7 = str6;
                                str8 = str4;
                            } else {
                                int i34 = point.y + i33;
                                str7 = str6;
                                str8 = str4;
                                if (i34 < SystemClock.elapsedRealtime() / j) {
                                    point.set(1, (int) (SystemClock.elapsedRealtime() / j));
                                } else {
                                    int i35 = point.x;
                                    if (i35 < i22) {
                                        point.set(i35 + 1, (int) (SystemClock.elapsedRealtime() / j));
                                    } else {
                                        z8 = true;
                                    }
                                }
                            }
                        }
                        if (z8) {
                            j13 = j11;
                        } else {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("sound_enabled_");
                            j13 = j11;
                            sb3.append(getSharedPrefKey(j12, j13));
                            if (!sharedPreferences4.getBoolean(sb3.toString(), true)) {
                                z8 = true;
                            }
                        }
                        String path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                        boolean z29 = ApplicationLoader.mainInterfacePaused;
                        boolean z30 = !z29;
                        getSharedPrefKey(j12, j13);
                        j14 = j12;
                        j15 = j13;
                        if (r1.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j14, j15, false)) {
                            property = r1.dialogsNotificationsFacade.getProperty("vibrate_", j14, j15, 0);
                            property2 = r1.dialogsNotificationsFacade.getProperty("priority_", j14, j15, 3);
                            long property3 = r1.dialogsNotificationsFacade.getProperty("sound_document_id_", j14, j15, 0L);
                            if (property3 != j2) {
                                propertyString = r1.getMediaDataController().ringtoneDataStore.getSoundPath(property3);
                                z9 = true;
                            } else {
                                propertyString = r1.dialogsNotificationsFacade.getPropertyString("sound_path_", j14, j15, null);
                                z9 = false;
                            }
                            int property4 = r1.dialogsNotificationsFacade.getProperty("color_", j14, j15, 0);
                            j16 = j14;
                            numValueOf = property4 != 0 ? Integer.valueOf(property4) : null;
                            z10 = z8;
                            if (!messageObject.isReactionPush || messageObject.isStoryReactionPush) {
                                str9 = str5;
                                z11 = z29;
                                builder = builder3;
                                j17 = sharedPreferences4.getLong("ReactionSoundDocId", 0L);
                                if (j17 == 0) {
                                    string4 = r1.getMediaDataController().ringtoneDataStore.getSoundPath(j17);
                                    z12 = true;
                                } else {
                                    string4 = sharedPreferences4.getString("ReactionSoundPath", path);
                                    z12 = false;
                                }
                                i2 = sharedPreferences4.getInt("vibrate_react", 0);
                                str10 = string4;
                                int i36 = sharedPreferences4.getInt("priority_react", 1);
                                z13 = z12;
                                iIntValue = sharedPreferences4.getInt("ReactionsLed", -16776961);
                                i3 = !messageObject.isStoryReactionPush ? 5 : 4;
                                i4 = i36;
                            } else {
                                if (i == 0) {
                                    str9 = str5;
                                    z11 = z29;
                                    builder = builder3;
                                    long j25 = j2;
                                    if (j9 != j25) {
                                        long j26 = sharedPreferences4.getLong(z2 ? "StoriesSoundDocId" : "GlobalSoundDocId", j25);
                                        if (j26 != j25) {
                                            string5 = r1.getMediaDataController().ringtoneDataStore.getSoundPath(j26);
                                            z18 = true;
                                        } else {
                                            string5 = sharedPreferences4.getString(z2 ? "StoriesSoundPath" : "GlobalSoundPath", path);
                                            z18 = false;
                                        }
                                        int i37 = sharedPreferences4.getInt("vibrate_messages", 0);
                                        String str23 = string5;
                                        int i38 = sharedPreferences4.getInt("priority_messages", 1);
                                        boolean z31 = z18;
                                        iIntValue = sharedPreferences4.getInt("MessagesLed", -16776961);
                                        i3 = z2 ? 3 : 1;
                                        i4 = i38;
                                        z14 = z9;
                                        i5 = 4;
                                        i6 = i37;
                                        str11 = str23;
                                        z13 = z31;
                                    } else {
                                        z14 = z9;
                                        i4 = 0;
                                        iIntValue = -16776961;
                                        str11 = null;
                                        i6 = 0;
                                        i5 = 4;
                                        i3 = 1;
                                        z13 = false;
                                    }
                                    if (i6 == i5) {
                                        z15 = true;
                                        i7 = 0;
                                    } else {
                                        i7 = i6;
                                        z15 = false;
                                    }
                                    if (TextUtils.isEmpty(propertyString) || TextUtils.equals(str11, propertyString)) {
                                        propertyString = str11;
                                        z14 = z13;
                                        z16 = true;
                                    } else {
                                        z16 = false;
                                    }
                                    if (property2 != 3 && i4 != property2) {
                                        i4 = property2;
                                        z16 = false;
                                    }
                                    if (numValueOf != null && numValueOf.intValue() != iIntValue) {
                                        iIntValue = numValueOf.intValue();
                                        z16 = false;
                                    }
                                    if (property == 0 || property == 4 || property == i7) {
                                        property = i7;
                                    } else {
                                        z16 = false;
                                    }
                                    if (z11) {
                                        i8 = i4;
                                        i9 = property;
                                    } else {
                                        if (!sharedPreferences4.getBoolean("EnableInAppSounds", true)) {
                                            propertyString = null;
                                        }
                                        i9 = !sharedPreferences4.getBoolean("EnableInAppVibrate", true) ? 2 : property;
                                        i8 = sharedPreferences4.getBoolean("EnableInAppPopup", true) ? 2 : 0;
                                    }
                                    if (z15 && i9 != 2) {
                                        try {
                                            ringerMode = audioManager.getRingerMode();
                                            if (ringerMode != 0 && ringerMode != 1) {
                                                i9 = 2;
                                            }
                                        } catch (Exception e2) {
                                            FileLog.m1136e(e2);
                                        }
                                    }
                                    if (z10) {
                                        str12 = str7;
                                        i9 = 0;
                                        i8 = 0;
                                        i10 = 0;
                                        propertyString = null;
                                    } else {
                                        String str24 = str7;
                                        i10 = iIntValue;
                                        str12 = str24;
                                    }
                                    Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                                    intent.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                                    intent.setFlags(67108864);
                                    if (messageObject.isOauthPush) {
                                        intent.putExtra("oauth_url", messageObject.localName);
                                    }
                                    if (messageObject.isStoryReactionPush) {
                                        intent.putExtra("storyId", Math.abs(messageObject.getId()));
                                        i11 = i9;
                                        str13 = str12;
                                        str14 = path;
                                    } else if (messageObject.isLiveStoryPush) {
                                        if (i != 0) {
                                            i13 = i9;
                                            str13 = str12;
                                            intent.putExtra("chatId", j8);
                                        } else {
                                            i13 = i9;
                                            str13 = str12;
                                            if (j9 != 0) {
                                                intent.putExtra("userId", j9);
                                            }
                                        }
                                        intent.putExtra("storyId", Math.abs(messageObject.getId()));
                                        str14 = path;
                                        i11 = i13;
                                    } else {
                                        str13 = str12;
                                        long j27 = j9;
                                        i11 = i9;
                                        i12 = i10;
                                        long j28 = j8;
                                        if (messageObject.isStoryPush) {
                                            long[] jArr5 = new long[r1.storyPushMessages.size()];
                                            for (int i39 = 0; i39 < r1.storyPushMessages.size(); i39++) {
                                                jArr5[i39] = r1.storyPushMessages.get(i39).dialogId;
                                            }
                                            intent.putExtra("storyDialogIds", jArr5);
                                            str14 = path;
                                        } else {
                                            if (!DialogObject.isEncryptedDialog(j16)) {
                                                str14 = path;
                                                if (r1.pushDialogs.size() == 1) {
                                                    if (i != 0) {
                                                        intent.putExtra("chatId", j28);
                                                    } else if (j27 != 0) {
                                                        intent.putExtra("userId", j27);
                                                    }
                                                }
                                                if (!AndroidUtilities.needShowPasscode() && !SharedConfig.isWaitingForPasscodeEnter && r1.pushDialogs.size() == 1 && Build.VERSION.SDK_INT < 28) {
                                                    if (chat2 != null) {
                                                        chat3 = chat2;
                                                        TLRPC.ChatPhoto chatPhoto = chat3.photo;
                                                        if (chatPhoto != null && (fileLocation = chatPhoto.photo_small) != null && fileLocation.volume_id != 0 && fileLocation.local_id != 0) {
                                                            user2 = user;
                                                            String str25 = str3;
                                                            intent.putExtra(str25, r1.currentAccount);
                                                            builder2 = builder;
                                                            String str26 = propertyString;
                                                            builder2.setContentTitle(string2).setSmallIcon(C2888R.drawable.notification).setAutoCancel(true).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(((long) messageObject.messageOwner.date) * j);
                                                            if (Build.VERSION.SDK_INT < 31) {
                                                                builder2.setColor(r1.getNotificationColor());
                                                            }
                                                            builder2.setCategory("msg");
                                                            if (chat3 == null && user2 != null && (str15 = user2.phone) != null && str15.length() > 0) {
                                                                builder2.addPerson("tel:+" + user2.phone);
                                                            }
                                                            Intent intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                            intent2.putExtra("messageDate", messageObject.messageOwner.date);
                                                            intent2.putExtra(str25, r1.currentAccount);
                                                            if (messageObject.isStoryPush) {
                                                                intent2.putExtra("story", true);
                                                            }
                                                            if (messageObject.isStoryReactionPush) {
                                                                i21 = 1;
                                                                intent2.putExtra("storyReaction", true);
                                                            } else {
                                                                i21 = 1;
                                                            }
                                                            builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i21, intent2, 167772160));
                                                            if (bitmap2 != null) {
                                                                builder2.setLargeIcon(bitmap2);
                                                            } else {
                                                                if (fileLocation != null) {
                                                                    jArr = null;
                                                                    BitmapDrawable imageFromMemory = ImageLoader.getInstance().getImageFromMemory(fileLocation, null, "50_50");
                                                                    if (imageFromMemory != null) {
                                                                        builder2.setLargeIcon(imageFromMemory.getBitmap());
                                                                    } else {
                                                                        try {
                                                                            File pathToAttach = r1.getFileLoader().getPathToAttach(fileLocation, true);
                                                                            if (pathToAttach.exists()) {
                                                                                float fM1124dp = 160.0f / AndroidUtilities.m1124dp(50.0f);
                                                                                BitmapFactory.Options options = new BitmapFactory.Options();
                                                                                options.inSampleSize = fM1124dp < 1.0f ? 1 : (int) fM1124dp;
                                                                                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(pathToAttach.getAbsolutePath(), options);
                                                                                if (bitmapDecodeFile != null) {
                                                                                    builder2.setLargeIcon(bitmapDecodeFile);
                                                                                }
                                                                            }
                                                                        } catch (Throwable unused) {
                                                                        }
                                                                    }
                                                                }
                                                                if (z || r14 == 1) {
                                                                    builder2.setPriority(-1);
                                                                    if (Build.VERSION.SDK_INT >= 26) {
                                                                        i14 = 2;
                                                                    }
                                                                } else if (i8 == 0) {
                                                                    builder2.setPriority(0);
                                                                    i14 = Build.VERSION.SDK_INT >= 26 ? 3 : 0;
                                                                } else {
                                                                    int i40 = 1;
                                                                    if (i8 == 1) {
                                                                        builder2.setPriority(i40);
                                                                        if (Build.VERSION.SDK_INT < 26) {
                                                                            i14 = 4;
                                                                        }
                                                                    } else if (i8 == 2) {
                                                                        i40 = 1;
                                                                        builder2.setPriority(i40);
                                                                        if (Build.VERSION.SDK_INT < 26) {
                                                                        }
                                                                    } else if (i8 == 4) {
                                                                        builder2.setPriority(-2);
                                                                        if (Build.VERSION.SDK_INT >= 26) {
                                                                            i14 = 1;
                                                                        }
                                                                    } else if (i8 == 5) {
                                                                        builder2.setPriority(-1);
                                                                        if (Build.VERSION.SDK_INT >= 26) {
                                                                            i14 = 2;
                                                                        }
                                                                    }
                                                                }
                                                                if (r14 == 1 && !z10) {
                                                                    if (z11 || (sharedPreferences4.getBoolean("EnableInAppPreview", true) && str9 != null)) {
                                                                        builder2.setTicker(str9.length() > 100 ? str9.substring(0, 100).replace('\n', ' ').trim() + "..." : str9);
                                                                    }
                                                                    if (str26 == null || str26.equalsIgnoreCase("NoSound")) {
                                                                        obj = jArr;
                                                                        if (i12 != 0) {
                                                                            i15 = i12;
                                                                            builder2.setLights(i15, MediaDataController.MAX_STYLE_RUNS_COUNT, MediaDataController.MAX_STYLE_RUNS_COUNT);
                                                                        } else {
                                                                            i15 = i12;
                                                                        }
                                                                        i20 = i11;
                                                                        if (i20 == 2) {
                                                                            long[] jArr6 = {0, 0};
                                                                            builder2.setVibrate(jArr6);
                                                                            r11 = obj;
                                                                            jArr2 = jArr6;
                                                                        } else {
                                                                            if (i20 == 1) {
                                                                                jArr2 = new long[]{0, 100, 0, 100};
                                                                                builder2.setVibrate(jArr2);
                                                                            } else if (i20 == 0 || i20 == 4) {
                                                                                builder2.setDefaults(2);
                                                                                jArr2 = new long[0];
                                                                            } else {
                                                                                if (i20 == 3) {
                                                                                    jArr = new long[]{0, 1000};
                                                                                    builder2.setVibrate(jArr);
                                                                                }
                                                                                r11 = obj;
                                                                                jArr2 = jArr;
                                                                            }
                                                                            r11 = obj;
                                                                        }
                                                                    } else {
                                                                        int i41 = Build.VERSION.SDK_INT;
                                                                        if (i41 >= 26) {
                                                                            if (str26.equalsIgnoreCase("Default") || str26.equals(str14)) {
                                                                                obj = Settings.System.DEFAULT_NOTIFICATION_URI;
                                                                            } else if (z14) {
                                                                                Uri uriForFile = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", new File(str26));
                                                                                ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", uriForFile, 1);
                                                                                obj = uriForFile;
                                                                            } else {
                                                                                obj = Uri.parse(str26);
                                                                            }
                                                                            if (i12 != 0) {
                                                                            }
                                                                            i20 = i11;
                                                                            if (i20 == 2) {
                                                                            }
                                                                        } else {
                                                                            if (str26.equals(str14)) {
                                                                                builder2.setSound(Settings.System.DEFAULT_NOTIFICATION_URI, 5);
                                                                            } else if (i41 >= 24) {
                                                                                String str27 = str2;
                                                                                if (str26.startsWith(str27) && !AndroidUtilities.isInternalUri(Uri.parse(str26))) {
                                                                                    try {
                                                                                        Uri uriForFile2 = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", new File(str26.replace(str27, str8)));
                                                                                        ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", uriForFile2, 1);
                                                                                        builder2.setSound(uriForFile2, 5);
                                                                                    } catch (Exception unused2) {
                                                                                        builder2.setSound(Uri.parse(str26), 5);
                                                                                    }
                                                                                } else {
                                                                                    builder2.setSound(Uri.parse(str26), 5);
                                                                                }
                                                                            }
                                                                            obj = jArr;
                                                                            if (i12 != 0) {
                                                                            }
                                                                            i20 = i11;
                                                                            if (i20 == 2) {
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    i15 = i12;
                                                                    long[] jArr7 = {0, 0};
                                                                    builder2.setVibrate(jArr7);
                                                                    jArr2 = jArr7;
                                                                    r11 = jArr;
                                                                }
                                                                if (!AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter || messageObject.getDialogId() != 777000 || (replyMarkup = messageObject.messageOwner.reply_markup) == null) {
                                                                    i16 = i14;
                                                                    jArr3 = jArr2;
                                                                    z17 = false;
                                                                } else {
                                                                    ArrayList arrayList3 = replyMarkup.rows;
                                                                    int size2 = arrayList3.size();
                                                                    int i42 = 0;
                                                                    z17 = false;
                                                                    while (i42 < size2) {
                                                                        TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow = (TLRPC.TL_keyboardButtonRow) arrayList3.get(i42);
                                                                        int size3 = tL_keyboardButtonRow.buttons.size();
                                                                        boolean z32 = z17;
                                                                        int i43 = 0;
                                                                        while (i43 < size3) {
                                                                            TLRPC.KeyboardButton keyboardButton = (TLRPC.KeyboardButton) tL_keyboardButtonRow.buttons.get(i43);
                                                                            if (keyboardButton instanceof TLRPC.TL_keyboardButtonCallback) {
                                                                                i17 = i14;
                                                                                i18 = size2;
                                                                                Intent intent3 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationCallbackReceiver.class);
                                                                                intent3.putExtra(str25, r1.currentAccount);
                                                                                i19 = i42;
                                                                                long[] jArr8 = jArr2;
                                                                                long j29 = j16;
                                                                                intent3.putExtra("did", j29);
                                                                                byte[] bArr = keyboardButton.data;
                                                                                if (bArr != null) {
                                                                                    jArr4 = jArr8;
                                                                                    intent3.putExtra("data", bArr);
                                                                                } else {
                                                                                    jArr4 = jArr8;
                                                                                }
                                                                                intent3.putExtra("mid", messageObject.getId());
                                                                                String str28 = keyboardButton.text;
                                                                                Context context = ApplicationLoader.applicationContext;
                                                                                int i44 = r1.lastButtonId;
                                                                                j16 = j29;
                                                                                r1.lastButtonId = i44 + 1;
                                                                                builder2.addAction(0, str28, PendingIntent.getBroadcast(context, i44, intent3, 201326592));
                                                                                z32 = true;
                                                                            } else {
                                                                                i17 = i14;
                                                                                i18 = size2;
                                                                                i19 = i42;
                                                                                jArr4 = jArr2;
                                                                            }
                                                                            i43++;
                                                                            i14 = i17;
                                                                            size2 = i18;
                                                                            i42 = i19;
                                                                            jArr2 = jArr4;
                                                                        }
                                                                        i42++;
                                                                        z17 = z32;
                                                                    }
                                                                    i16 = i14;
                                                                    jArr3 = jArr2;
                                                                }
                                                                if (!z17 && Build.VERSION.SDK_INT < 24 && SharedConfig.passcodeHash.length() == 0 && r1.hasMessagesToReply()) {
                                                                    Intent intent4 = new Intent(ApplicationLoader.applicationContext, (Class<?>) PopupReplyReceiver.class);
                                                                    intent4.putExtra(str25, r1.currentAccount);
                                                                    builder2.addAction(C2888R.drawable.ic_ab_reply, LocaleController.getString(C2888R.string.Reply), PendingIntent.getBroadcast(ApplicationLoader.applicationContext, 2, intent4, 201326592));
                                                                }
                                                                r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z30, z10, i3);
                                                                scheduleNotificationRepeat();
                                                                return;
                                                            }
                                                            jArr = null;
                                                            if (z) {
                                                                builder2.setPriority(-1);
                                                                if (Build.VERSION.SDK_INT >= 26) {
                                                                }
                                                            }
                                                            if (r14 == 1) {
                                                                i15 = i12;
                                                                long[] jArr72 = {0, 0};
                                                                builder2.setVibrate(jArr72);
                                                                jArr2 = jArr72;
                                                                r11 = jArr;
                                                            }
                                                            if (AndroidUtilities.needShowPasscode()) {
                                                                i16 = i14;
                                                                jArr3 = jArr2;
                                                                z17 = false;
                                                            }
                                                            if (!z17) {
                                                                Intent intent42 = new Intent(ApplicationLoader.applicationContext, (Class<?>) PopupReplyReceiver.class);
                                                                intent42.putExtra(str25, r1.currentAccount);
                                                                builder2.addAction(C2888R.drawable.ic_ab_reply, LocaleController.getString(C2888R.string.Reply), PendingIntent.getBroadcast(ApplicationLoader.applicationContext, 2, intent42, 201326592));
                                                            }
                                                            r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z30, z10, i3);
                                                            scheduleNotificationRepeat();
                                                            return;
                                                        }
                                                        user2 = user;
                                                    } else {
                                                        chat3 = chat2;
                                                        if (user != null) {
                                                            user2 = user;
                                                            TLRPC.UserProfilePhoto userProfilePhoto = user2.photo;
                                                            if (userProfilePhoto == null || (fileLocation = userProfilePhoto.photo_small) == null || fileLocation.volume_id == 0 || fileLocation.local_id == 0) {
                                                            }
                                                            String str252 = str3;
                                                            intent.putExtra(str252, r1.currentAccount);
                                                            builder2 = builder;
                                                            String str262 = propertyString;
                                                            builder2.setContentTitle(string2).setSmallIcon(C2888R.drawable.notification).setAutoCancel(true).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(((long) messageObject.messageOwner.date) * j);
                                                            if (Build.VERSION.SDK_INT < 31) {
                                                            }
                                                            builder2.setCategory("msg");
                                                            if (chat3 == null) {
                                                                builder2.addPerson("tel:+" + user2.phone);
                                                            }
                                                            Intent intent22 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                            intent22.putExtra("messageDate", messageObject.messageOwner.date);
                                                            intent22.putExtra(str252, r1.currentAccount);
                                                            if (messageObject.isStoryPush) {
                                                            }
                                                            if (messageObject.isStoryReactionPush) {
                                                            }
                                                            builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i21, intent22, 167772160));
                                                            if (bitmap2 != null) {
                                                            }
                                                            jArr = null;
                                                            if (z) {
                                                            }
                                                            if (r14 == 1) {
                                                            }
                                                            if (AndroidUtilities.needShowPasscode()) {
                                                            }
                                                            if (!z17) {
                                                            }
                                                            r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z30, z10, i3);
                                                            scheduleNotificationRepeat();
                                                            return;
                                                        }
                                                        user2 = user;
                                                    }
                                                }
                                            } else {
                                                str14 = path;
                                                user2 = user;
                                                chat3 = chat2;
                                                if (r1.pushDialogs.size() == 1 && j16 != globalSecretChatId) {
                                                    intent.putExtra("encId", DialogObject.getEncryptedChatId(j16));
                                                }
                                            }
                                            fileLocation = null;
                                            String str2522 = str3;
                                            intent.putExtra(str2522, r1.currentAccount);
                                            builder2 = builder;
                                            String str2622 = propertyString;
                                            builder2.setContentTitle(string2).setSmallIcon(C2888R.drawable.notification).setAutoCancel(true).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(((long) messageObject.messageOwner.date) * j);
                                            if (Build.VERSION.SDK_INT < 31) {
                                            }
                                            builder2.setCategory("msg");
                                            if (chat3 == null) {
                                            }
                                            Intent intent222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                            intent222.putExtra("messageDate", messageObject.messageOwner.date);
                                            intent222.putExtra(str2522, r1.currentAccount);
                                            if (messageObject.isStoryPush) {
                                            }
                                            if (messageObject.isStoryReactionPush) {
                                            }
                                            builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i21, intent222, 167772160));
                                            if (bitmap2 != null) {
                                            }
                                            jArr = null;
                                            if (z) {
                                            }
                                            if (r14 == 1) {
                                            }
                                            if (AndroidUtilities.needShowPasscode()) {
                                            }
                                            if (!z17) {
                                            }
                                            r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z30, z10, i3);
                                            scheduleNotificationRepeat();
                                            return;
                                        }
                                        user2 = user;
                                        chat3 = chat2;
                                        fileLocation = null;
                                        String str25222 = str3;
                                        intent.putExtra(str25222, r1.currentAccount);
                                        builder2 = builder;
                                        String str26222 = propertyString;
                                        builder2.setContentTitle(string2).setSmallIcon(C2888R.drawable.notification).setAutoCancel(true).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(((long) messageObject.messageOwner.date) * j);
                                        if (Build.VERSION.SDK_INT < 31) {
                                        }
                                        builder2.setCategory("msg");
                                        if (chat3 == null) {
                                        }
                                        Intent intent2222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                        intent2222.putExtra("messageDate", messageObject.messageOwner.date);
                                        intent2222.putExtra(str25222, r1.currentAccount);
                                        if (messageObject.isStoryPush) {
                                        }
                                        if (messageObject.isStoryReactionPush) {
                                        }
                                        builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i21, intent2222, 167772160));
                                        if (bitmap2 != null) {
                                        }
                                        jArr = null;
                                        if (z) {
                                        }
                                        if (r14 == 1) {
                                        }
                                        if (AndroidUtilities.needShowPasscode()) {
                                        }
                                        if (!z17) {
                                        }
                                        r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z30, z10, i3);
                                        scheduleNotificationRepeat();
                                        return;
                                    }
                                    i12 = i10;
                                    user2 = user;
                                    chat3 = chat2;
                                    fileLocation = null;
                                    String str252222 = str3;
                                    intent.putExtra(str252222, r1.currentAccount);
                                    builder2 = builder;
                                    String str262222 = propertyString;
                                    builder2.setContentTitle(string2).setSmallIcon(C2888R.drawable.notification).setAutoCancel(true).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(((long) messageObject.messageOwner.date) * j);
                                    if (Build.VERSION.SDK_INT < 31) {
                                    }
                                    builder2.setCategory("msg");
                                    if (chat3 == null) {
                                    }
                                    Intent intent22222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                    intent22222.putExtra("messageDate", messageObject.messageOwner.date);
                                    intent22222.putExtra(str252222, r1.currentAccount);
                                    if (messageObject.isStoryPush) {
                                    }
                                    if (messageObject.isStoryReactionPush) {
                                    }
                                    builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i21, intent22222, 167772160));
                                    if (bitmap2 != null) {
                                    }
                                    jArr = null;
                                    if (z) {
                                    }
                                    if (r14 == 1) {
                                    }
                                    if (AndroidUtilities.needShowPasscode()) {
                                    }
                                    if (!z17) {
                                    }
                                    r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z30, z10, i3);
                                    scheduleNotificationRepeat();
                                    return;
                                }
                                if (z3) {
                                    str9 = str5;
                                    z11 = z29;
                                    builder = builder3;
                                    long j30 = j2;
                                    long j31 = sharedPreferences4.getLong("ChannelSoundDocId", j30);
                                    if (j31 != j30) {
                                        string7 = r1.getMediaDataController().ringtoneDataStore.getSoundPath(j31);
                                        z20 = true;
                                    } else {
                                        string7 = sharedPreferences4.getString("ChannelSoundPath", path);
                                        z20 = false;
                                    }
                                    i2 = sharedPreferences4.getInt("vibrate_channel", 0);
                                    str10 = string7;
                                    int i45 = sharedPreferences4.getInt("priority_channel", 1);
                                    z13 = z20;
                                    iIntValue = sharedPreferences4.getInt("ChannelLed", -16776961);
                                    i4 = i45;
                                    i3 = 2;
                                } else {
                                    str9 = str5;
                                    z11 = z29;
                                    builder = builder3;
                                    long j32 = sharedPreferences4.getLong("GroupSoundDocId", 0L);
                                    if (j32 != 0) {
                                        string6 = r1.getMediaDataController().ringtoneDataStore.getSoundPath(j32);
                                        z19 = true;
                                    } else {
                                        string6 = sharedPreferences4.getString("GroupSoundPath", path);
                                        z19 = false;
                                    }
                                    i2 = sharedPreferences4.getInt("vibrate_group", 0);
                                    str10 = string6;
                                    int i46 = sharedPreferences4.getInt("priority_group", 1);
                                    z13 = z19;
                                    iIntValue = sharedPreferences4.getInt("GroupLed", -16776961);
                                    i4 = i46;
                                    i3 = 0;
                                }
                            }
                            i6 = i2;
                            str11 = str10;
                            z14 = z9;
                            i5 = 4;
                            if (i6 == i5) {
                            }
                            if (TextUtils.isEmpty(propertyString)) {
                                propertyString = str11;
                                z14 = z13;
                                z16 = true;
                            }
                            if (property2 != 3) {
                                i4 = property2;
                                z16 = false;
                            }
                            if (numValueOf != null) {
                                iIntValue = numValueOf.intValue();
                                z16 = false;
                            }
                            if (property == 0) {
                                property = i7;
                            }
                            if (z11) {
                            }
                            if (z15) {
                                ringerMode = audioManager.getRingerMode();
                                if (ringerMode != 0) {
                                    i9 = 2;
                                }
                            }
                            if (z10) {
                            }
                            Intent intent5 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                            intent5.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                            intent5.setFlags(67108864);
                            if (messageObject.isOauthPush) {
                            }
                            if (messageObject.isStoryReactionPush) {
                            }
                            i12 = i10;
                            user2 = user;
                            chat3 = chat2;
                            fileLocation = null;
                            String str2522222 = str3;
                            intent5.putExtra(str2522222, r1.currentAccount);
                            builder2 = builder;
                            String str2622222 = propertyString;
                            builder2.setContentTitle(string2).setSmallIcon(C2888R.drawable.notification).setAutoCancel(true).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent5, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(((long) messageObject.messageOwner.date) * j);
                            if (Build.VERSION.SDK_INT < 31) {
                            }
                            builder2.setCategory("msg");
                            if (chat3 == null) {
                            }
                            Intent intent222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                            intent222222.putExtra("messageDate", messageObject.messageOwner.date);
                            intent222222.putExtra(str2522222, r1.currentAccount);
                            if (messageObject.isStoryPush) {
                            }
                            if (messageObject.isStoryReactionPush) {
                            }
                            builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i21, intent222222, 167772160));
                            if (bitmap2 != null) {
                            }
                            jArr = null;
                            if (z) {
                            }
                            if (r14 == 1) {
                            }
                            if (AndroidUtilities.needShowPasscode()) {
                            }
                            if (!z17) {
                            }
                            r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z30, z10, i3);
                            scheduleNotificationRepeat();
                            return;
                        }
                        j16 = j14;
                        property = 0;
                        property2 = 3;
                        z9 = false;
                        propertyString = null;
                        z10 = z8;
                        if (messageObject.isReactionPush) {
                            str9 = str5;
                            z11 = z29;
                            builder = builder3;
                            j17 = sharedPreferences4.getLong("ReactionSoundDocId", 0L);
                            if (j17 == 0) {
                            }
                            i2 = sharedPreferences4.getInt("vibrate_react", 0);
                            str10 = string4;
                            int i362 = sharedPreferences4.getInt("priority_react", 1);
                            z13 = z12;
                            iIntValue = sharedPreferences4.getInt("ReactionsLed", -16776961);
                            i3 = !messageObject.isStoryReactionPush ? 5 : 4;
                            i4 = i362;
                            i6 = i2;
                            str11 = str10;
                            z14 = z9;
                            i5 = 4;
                        }
                        if (i6 == i5) {
                        }
                        if (TextUtils.isEmpty(propertyString)) {
                        }
                        if (property2 != 3) {
                        }
                        if (numValueOf != null) {
                        }
                        if (property == 0) {
                        }
                        if (z11) {
                        }
                        if (z15) {
                        }
                        if (z10) {
                        }
                        Intent intent52 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                        intent52.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                        intent52.setFlags(67108864);
                        if (messageObject.isOauthPush) {
                        }
                        if (messageObject.isStoryReactionPush) {
                        }
                        i12 = i10;
                        user2 = user;
                        chat3 = chat2;
                        fileLocation = null;
                        String str25222222 = str3;
                        intent52.putExtra(str25222222, r1.currentAccount);
                        builder2 = builder;
                        String str26222222 = propertyString;
                        builder2.setContentTitle(string2).setSmallIcon(C2888R.drawable.notification).setAutoCancel(true).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent52, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(((long) messageObject.messageOwner.date) * j);
                        if (Build.VERSION.SDK_INT < 31) {
                        }
                        builder2.setCategory("msg");
                        if (chat3 == null) {
                        }
                        Intent intent2222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                        intent2222222.putExtra("messageDate", messageObject.messageOwner.date);
                        intent2222222.putExtra(str25222222, r1.currentAccount);
                        if (messageObject.isStoryPush) {
                        }
                        if (messageObject.isStoryReactionPush) {
                        }
                        builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i21, intent2222222, 167772160));
                        if (bitmap2 != null) {
                        }
                        jArr = null;
                        if (z) {
                        }
                        if (r14 == 1) {
                        }
                        if (AndroidUtilities.needShowPasscode()) {
                        }
                        if (!z17) {
                        }
                        r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z30, z10, i3);
                        scheduleNotificationRepeat();
                        return;
                    }
                    str7 = str6;
                    str8 = str4;
                    sharedPreferences4 = sharedPreferences3;
                    j12 = j10;
                    z8 = z7;
                    if (z8) {
                    }
                    String path2 = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                    boolean z292 = ApplicationLoader.mainInterfacePaused;
                    boolean z302 = !z292;
                    getSharedPrefKey(j12, j13);
                    j14 = j12;
                    j15 = j13;
                    if (r1.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j14, j15, false)) {
                    }
                    z10 = z8;
                    if (messageObject.isReactionPush) {
                    }
                    if (i6 == i5) {
                    }
                    if (TextUtils.isEmpty(propertyString)) {
                    }
                    if (property2 != 3) {
                    }
                    if (numValueOf != null) {
                    }
                    if (property == 0) {
                    }
                    if (z11) {
                    }
                    if (z15) {
                    }
                    if (z10) {
                    }
                    Intent intent522 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                    intent522.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                    intent522.setFlags(67108864);
                    if (messageObject.isOauthPush) {
                    }
                    if (messageObject.isStoryReactionPush) {
                    }
                    i12 = i10;
                    user2 = user;
                    chat3 = chat2;
                    fileLocation = null;
                    String str252222222 = str3;
                    intent522.putExtra(str252222222, r1.currentAccount);
                    builder2 = builder;
                    String str262222222 = propertyString;
                    builder2.setContentTitle(string2).setSmallIcon(C2888R.drawable.notification).setAutoCancel(true).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent522, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(((long) messageObject.messageOwner.date) * j);
                    if (Build.VERSION.SDK_INT < 31) {
                    }
                    builder2.setCategory("msg");
                    if (chat3 == null) {
                    }
                    Intent intent22222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                    intent22222222.putExtra("messageDate", messageObject.messageOwner.date);
                    intent22222222.putExtra(str252222222, r1.currentAccount);
                    if (messageObject.isStoryPush) {
                    }
                    if (messageObject.isStoryReactionPush) {
                    }
                    builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i21, intent22222222, 167772160));
                    if (bitmap2 != null) {
                    }
                    jArr = null;
                    if (z) {
                    }
                    if (r14 == 1) {
                    }
                    if (AndroidUtilities.needShowPasscode()) {
                    }
                    if (!z17) {
                    }
                    r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z302, z10, i3);
                    scheduleNotificationRepeat();
                    return;
                }
            }
            if (!z27) {
                string = LocaleController.getString(C2888R.string.AppName);
            } else if (i != 0) {
                string = LocaleController.getString(C2888R.string.NotificationHiddenChatName);
            } else {
                string = LocaleController.getString(C2888R.string.NotificationHiddenName);
            }
            string2 = string;
            z5 = false;
            if (messageObject.isReactionPush) {
                z6 = z5;
                if (!sharedPreferences2.getBoolean("EnableReactionsPreview", true)) {
                }
            }
            if (z4) {
            }
            NotificationCompat.Builder builder32 = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
            int i292 = 1;
            if (r1.pushMessages.size() <= 1) {
            }
            str6 = string3;
            if (z) {
            }
            if (z7) {
                str7 = str6;
                str8 = str4;
                sharedPreferences4 = sharedPreferences3;
                j12 = j10;
                z8 = z7;
            }
            if (z8) {
            }
            String path22 = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
            boolean z2922 = ApplicationLoader.mainInterfacePaused;
            boolean z3022 = !z2922;
            getSharedPrefKey(j12, j13);
            j14 = j12;
            j15 = j13;
            if (r1.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j14, j15, false)) {
            }
            z10 = z8;
            if (messageObject.isReactionPush) {
            }
            if (i6 == i5) {
            }
            if (TextUtils.isEmpty(propertyString)) {
            }
            if (property2 != 3) {
            }
            if (numValueOf != null) {
            }
            if (property == 0) {
            }
            if (z11) {
            }
            if (z15) {
            }
            if (z10) {
            }
            Intent intent5222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
            intent5222.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
            intent5222.setFlags(67108864);
            if (messageObject.isOauthPush) {
            }
            if (messageObject.isStoryReactionPush) {
            }
            i12 = i10;
            user2 = user;
            chat3 = chat2;
            fileLocation = null;
            String str2522222222 = str3;
            intent5222.putExtra(str2522222222, r1.currentAccount);
            builder2 = builder;
            String str2622222222 = propertyString;
            builder2.setContentTitle(string2).setSmallIcon(C2888R.drawable.notification).setAutoCancel(true).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent5222, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(((long) messageObject.messageOwner.date) * j);
            if (Build.VERSION.SDK_INT < 31) {
            }
            builder2.setCategory("msg");
            if (chat3 == null) {
            }
            Intent intent222222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
            intent222222222.putExtra("messageDate", messageObject.messageOwner.date);
            intent222222222.putExtra(str2522222222, r1.currentAccount);
            if (messageObject.isStoryPush) {
            }
            if (messageObject.isStoryReactionPush) {
            }
            builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i21, intent222222222, 167772160));
            if (bitmap2 != null) {
            }
            jArr = null;
            if (z) {
            }
            if (r14 == 1) {
            }
            if (AndroidUtilities.needShowPasscode()) {
            }
            if (!z17) {
            }
            r1.showExtraNotifications(builder2, str13, j16, j15, str21, jArr3, i15, r11, i16, z16, z3022, z10, i3);
            scheduleNotificationRepeat();
            return;
        } catch (Exception e3) {
            e = e3;
        }
        FileLog.m1136e(e);
    }

    private int getNotificationColor() {
        return AppUtils.getNotificationColor();
    }

    private boolean isSilentMessage(MessageObject messageObject) {
        return messageObject.messageOwner.silent || messageObject.isReactionPush;
    }

    @SuppressLint({"NewApi"})
    private void setNotificationChannel(Notification notification, NotificationCompat.Builder builder, boolean z) {
        if (z) {
            builder.setChannelId(OTHER_NOTIFICATIONS_CHANNEL);
        } else {
            builder.setChannelId(notification.getChannelId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetNotificationSound(NotificationCompat.Builder builder, long j, long j2, String str, long[] jArr, int i, Uri uri, int i2, boolean z, boolean z2, boolean z3, int i3) {
        FileLog.m1133d("resetNotificationSound");
        Uri uri2 = Settings.System.DEFAULT_RINGTONE_URI;
        if (uri2 == null || uri == null || TextUtils.equals(uri2.toString(), uri.toString())) {
            return;
        }
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        String string = uri2.toString();
        String string2 = LocaleController.getString(C2888R.string.DefaultRingtone);
        if (z) {
            if (i3 == 2) {
                editorEdit.putString("ChannelSound", string2);
            } else if (i3 == 0) {
                editorEdit.putString("GroupSound", string2);
            } else if (i3 == 1) {
                editorEdit.putString("GlobalSound", string2);
            } else if (i3 == 3) {
                editorEdit.putString("StoriesSound", string2);
            } else if (i3 == 4 || i3 == 5) {
                editorEdit.putString("ReactionSound", string2);
            }
            if (i3 == 2) {
                editorEdit.putString("ChannelSoundPath", string);
            } else if (i3 == 0) {
                editorEdit.putString("GroupSoundPath", string);
            } else if (i3 == 1) {
                editorEdit.putString("GlobalSoundPath", string);
            } else if (i3 == 3) {
                editorEdit.putString("StoriesSoundPath", string);
            } else if (i3 == 4 || i3 == 5) {
                editorEdit.putString("ReactionSound", string);
            }
            getNotificationsController().lambda$deleteNotificationChannelGlobal$41(i3, -1);
        } else {
            editorEdit.putString("sound_" + getSharedPrefKey(j, j2), string2);
            editorEdit.putString("sound_path_" + getSharedPrefKey(j, j2), string);
            lambda$deleteNotificationChannel$40(j, j2, -1);
        }
        editorEdit.apply();
        builder.setChannelId(validateChannelId(j, j2, str, jArr, i, uri2, i2, z, z2, z3, i3));
        notificationManager.notify(this.notificationId, builder.build());
    }

    /*  JADX ERROR: Type inference failed with stack overflow
        jadx.core.utils.exceptions.JadxOverflowException
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @android.annotation.SuppressLint({"InlinedApi"})
    private void showExtraNotifications(androidx.core.app.NotificationCompat.Builder r81, java.lang.String r82, long r83, long r85, java.lang.String r87, long[] r88, int r89, android.net.Uri r90, int r91, boolean r92, boolean r93, boolean r94, int r95) {
        /*
            Method dump skipped, instruction units count: 5774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.showExtraNotifications(androidx.core.app.NotificationCompat$Builder, java.lang.String, long, long, java.lang.String, long[], int, android.net.Uri, int, boolean, boolean, boolean, int):void");
    }

    /* JADX INFO: renamed from: org.telegram.messenger.NotificationsController$1NotificationHolder, reason: invalid class name */
    class C1NotificationHolder {
        TLRPC.Chat chat;
        long dialogId;

        /* JADX INFO: renamed from: id */
        int f1605id;
        String name;
        NotificationCompat.Builder notification;
        boolean story;
        long topicId;
        TLRPC.User user;
        final /* synthetic */ String val$chatName;
        final /* synthetic */ int val$chatType;
        final /* synthetic */ int val$importance;
        final /* synthetic */ boolean val$isDefault;
        final /* synthetic */ boolean val$isInApp;
        final /* synthetic */ boolean val$isSilent;
        final /* synthetic */ long val$lastTopicId;
        final /* synthetic */ int val$ledColor;
        final /* synthetic */ Uri val$sound;
        final /* synthetic */ long[] val$vibrationPattern;

        C1NotificationHolder(int i, long j, boolean z, long j2, String str, TLRPC.User user, TLRPC.Chat chat, NotificationCompat.Builder builder, long j3, String str2, long[] jArr, int i2, Uri uri, int i3, boolean z2, boolean z3, boolean z4, int i4) {
            this.val$lastTopicId = j3;
            this.val$chatName = str2;
            this.val$vibrationPattern = jArr;
            this.val$ledColor = i2;
            this.val$sound = uri;
            this.val$importance = i3;
            this.val$isDefault = z2;
            this.val$isInApp = z3;
            this.val$isSilent = z4;
            this.val$chatType = i4;
            this.f1605id = i;
            this.name = str;
            this.user = user;
            this.chat = chat;
            this.notification = builder;
            this.dialogId = j;
            this.story = z;
            this.topicId = j2;
        }

        void call() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1137w("show dialog notification with id " + this.f1605id + " " + this.dialogId + " user=" + this.user + " chat=" + this.chat);
            }
            try {
                NotificationsController.notificationManager.notify(this.f1605id, this.notification.build());
            } catch (SecurityException e) {
                FileLog.m1136e(e);
                NotificationsController.this.resetNotificationSound(this.notification, this.dialogId, this.val$lastTopicId, this.val$chatName, this.val$vibrationPattern, this.val$ledColor, this.val$sound, this.val$importance, this.val$isDefault, this.val$isInApp, this.val$isSilent, this.val$chatType);
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$m6od9kHW-9uO1euU4_-KKWj-l1k, reason: not valid java name */
    public static /* synthetic */ void m4795$r8$lambda$m6od9kHW9uO1euU4_KKWjl1k(Uri uri, File file) {
        try {
            ApplicationLoader.applicationContext.revokeUriPermission(uri, 1);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (file != null) {
            try {
                file.delete();
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        }
    }

    private String cutLastName(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(32);
        if (iIndexOf < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.substring(0, iIndexOf));
        sb.append(str.endsWith("…") ? "…" : _UrlKt.FRAGMENT_ENCODE_SET);
        return sb.toString();
    }

    private Pair<Integer, Boolean> parseStoryPushes(ArrayList<String> arrayList, ArrayList<Object> arrayList2) {
        String userName;
        TLRPC.FileLocation fileLocation;
        int iMin = Math.min(3, this.storyPushMessages.size());
        boolean z = false;
        int size = 0;
        for (int i = 0; i < iMin; i++) {
            StoryNotification storyNotification = this.storyPushMessages.get(i);
            size += storyNotification.dateByIds.size();
            z |= storyNotification.hidden;
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(storyNotification.dialogId));
            if (user == null && (user = getMessagesStorage().getUserSync(storyNotification.dialogId)) != null) {
                getMessagesController().putUser(user, true);
            }
            Object obj = null;
            if (user != null) {
                userName = UserObject.getUserName(user);
                TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
                if (userProfilePhoto != null && (fileLocation = userProfilePhoto.photo_small) != null && fileLocation.volume_id != 0 && fileLocation.local_id != 0) {
                    File pathToAttach = getFileLoader().getPathToAttach(user.photo.photo_small, true);
                    if (!pathToAttach.exists()) {
                        pathToAttach = user.photo.photo_big != null ? getFileLoader().getPathToAttach(user.photo.photo_big, true) : null;
                        if (pathToAttach != null && !pathToAttach.exists()) {
                            pathToAttach = null;
                        }
                    }
                    if (pathToAttach != null) {
                        obj = pathToAttach;
                    }
                }
            } else {
                userName = storyNotification.localName;
                if (userName != null) {
                }
            }
            if (userName.length() > 50) {
                userName = userName.substring(0, 25) + "…";
            }
            arrayList.add(userName);
            if (obj == null && user != null) {
                arrayList2.add(user);
            } else if (obj != null) {
                arrayList2.add(obj);
            }
        }
        if (z) {
            arrayList2.clear();
        }
        return new Pair<>(Integer.valueOf(size), Boolean.valueOf(z));
    }

    public static Person.Builder loadRoundAvatar(long j, File file, Person.Builder builder) {
        if (j == UserObject.OAUTH) {
            builder.setIcon(IconCompat.createWithResource(ApplicationLoader.applicationContext, C2888R.drawable.ic_launcher_dr));
            return builder;
        }
        if (file != null && Build.VERSION.SDK_INT >= 28) {
            try {
                builder.setIcon(IconCompat.createWithBitmap(ImageDecoder.decodeBitmap(ImageDecoder.createSource(file), new ImageDecoder.OnHeaderDecodedListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda23
                    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                        imageDecoder.setPostProcessor(new PostProcessor() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda19
                            @Override // android.graphics.PostProcessor
                            public final int onPostProcess(Canvas canvas) {
                                return NotificationsController.$r8$lambda$CnmFC0bhiPjnt6BqvCrfOMLJsRA(canvas);
                            }
                        });
                    }
                })));
            } catch (Throwable unused) {
            }
        }
        return builder;
    }

    public static /* synthetic */ int $r8$lambda$CnmFC0bhiPjnt6BqvCrfOMLJsRA(Canvas canvas) {
        Path path = new Path();
        path.setFillType(Path.FillType.INVERSE_EVEN_ODD);
        int width = canvas.getWidth();
        float f = width / 2;
        path.addRoundRect(0.0f, 0.0f, width, canvas.getHeight(), f, f, Path.Direction.CW);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(0);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        canvas.drawPath(path, paint);
        return -3;
    }

    public static Bitmap loadMultipleAvatars(ArrayList<Object> arrayList) {
        int i;
        Bitmap bitmap;
        Paint paint;
        boolean z;
        float f;
        char c;
        float size;
        float size2;
        float f2;
        float f3;
        float f4;
        float f5;
        Object obj;
        ArrayList<Object> arrayList2 = arrayList;
        if (Build.VERSION.SDK_INT < 28 || arrayList2 == null || arrayList2.size() == 0) {
            return null;
        }
        int iM1124dp = AndroidUtilities.m1124dp(64.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iM1124dp, iM1124dp, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        Paint paint2 = new Paint(3);
        boolean z2 = true;
        Paint paint3 = new Paint(1);
        Rect rect = new Rect();
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        char c2 = 2;
        float f6 = arrayList2.size() == 1 ? 1.0f : arrayList2.size() == 2 ? 0.65f : 0.5f;
        int i2 = 0;
        TextPaint textPaint = null;
        while (i2 < arrayList2.size()) {
            float f7 = iM1124dp;
            float f8 = (1.0f - f6) * f7;
            try {
                size = (f8 / arrayList2.size()) * ((arrayList2.size() - 1) - i2);
                try {
                    size2 = i2 * (f8 / arrayList2.size());
                    f2 = f7 * f6;
                    f3 = f2 / 2.0f;
                    i = iM1124dp;
                    f4 = size + f3;
                    bitmap = bitmapCreateBitmap;
                    f5 = size2 + f3;
                    f = f6;
                    try {
                        canvas.drawCircle(f4, f5, AndroidUtilities.m1124dp(2.0f) + f3, paint3);
                        obj = arrayList2.get(i2);
                        paint = paint3;
                    } catch (Throwable unused) {
                        paint = paint3;
                    }
                } catch (Throwable unused2) {
                    i = iM1124dp;
                    bitmap = bitmapCreateBitmap;
                    paint = paint3;
                    z = z2;
                    f = f6;
                }
            } catch (Throwable unused3) {
                i = iM1124dp;
                bitmap = bitmapCreateBitmap;
                paint = paint3;
                z = z2;
                f = f6;
                c = c2;
            }
            if (obj instanceof File) {
                String absolutePath = ((File) arrayList2.get(i2)).getAbsolutePath();
                BitmapFactory.Options options = new BitmapFactory.Options();
                z = true;
                try {
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(absolutePath, options);
                    int i3 = (int) f2;
                    options.inSampleSize = StoryEntry.calculateInSampleSize(options, i3, i3);
                    try {
                        options.inJustDecodeBounds = false;
                        options.inDither = true;
                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(absolutePath, options);
                        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                        BitmapShader bitmapShader = new BitmapShader(bitmapDecodeFile, tileMode, tileMode);
                        matrix.reset();
                        matrix.postScale(f2 / bitmapDecodeFile.getWidth(), f2 / bitmapDecodeFile.getHeight());
                        matrix.postTranslate(size, size2);
                        bitmapShader.setLocalMatrix(matrix);
                        paint2.setShader(bitmapShader);
                        canvas.drawCircle(f4, f5, f3, paint2);
                        bitmapDecodeFile.recycle();
                    } catch (Throwable unused4) {
                        c = 2;
                    }
                } catch (Throwable unused5) {
                    c = 2;
                }
            } else {
                if (obj instanceof TLRPC.User) {
                    TLRPC.User user = (TLRPC.User) obj;
                    c = 2;
                    try {
                        paint2.setShader(new LinearGradient(size, size2, size, size2 + f2, new int[]{Theme.getColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(user.f1825id)]), Theme.getColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(user.f1825id)])}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
                        canvas.drawCircle(f4, f5, f3, paint2);
                        if (textPaint == null) {
                            try {
                                z = true;
                                try {
                                    TextPaint textPaint2 = new TextPaint(1);
                                    try {
                                        textPaint2.setTypeface(AndroidUtilities.bold());
                                        textPaint2.setTextSize(f7 * 0.25f);
                                        textPaint2.setColor(-1);
                                        textPaint = textPaint2;
                                    } catch (Throwable unused6) {
                                        textPaint = textPaint2;
                                    }
                                } catch (Throwable unused7) {
                                }
                            } catch (Throwable unused8) {
                                z = true;
                            }
                        } else {
                            z = true;
                        }
                        StringBuilder sb = new StringBuilder();
                        AvatarDrawable.getAvatarSymbols(user.first_name, user.last_name, null, sb);
                        String string = sb.toString();
                        try {
                            textPaint.getTextBounds(string, 0, string.length(), rect);
                            canvas.drawText(string, (f4 - (rect.width() / 2.0f)) - rect.left, (f5 - (rect.height() / 2.0f)) - rect.top, textPaint);
                        } catch (Throwable unused9) {
                        }
                    } catch (Throwable unused10) {
                        z = true;
                    }
                    i2++;
                    c2 = c;
                    z2 = z;
                    iM1124dp = i;
                    bitmapCreateBitmap = bitmap;
                    f6 = f;
                    paint3 = paint;
                    arrayList2 = arrayList;
                }
                z = true;
                i2++;
                c2 = c;
                z2 = z;
                iM1124dp = i;
                bitmapCreateBitmap = bitmap;
                f6 = f;
                paint3 = paint;
                arrayList2 = arrayList;
            }
            c = 2;
            z = true;
            i2++;
            c2 = c;
            z2 = z;
            iM1124dp = i;
            bitmapCreateBitmap = bitmap;
            f6 = f;
            paint3 = paint;
            arrayList2 = arrayList;
        }
        return bitmapCreateBitmap;
    }

    public void playOutChatSound() {
        if (!this.inChatSoundEnabled || MediaController.getInstance().isRecordingAudio()) {
            return;
        }
        try {
            if (audioManager.getRingerMode() == 0) {
                return;
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$playOutChatSound$47();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playOutChatSound$47() {
        try {
            if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundOutPlay) <= 100) {
                return;
            }
            this.lastSoundOutPlay = SystemClock.elapsedRealtime();
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda36
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                        NotificationsController.m4794$r8$lambda$gKQNTsOhV2njT98D4ijWx9ye7E(soundPool2, i, i2);
                    }
                });
            }
            if (this.soundOut == 0 && !this.soundOutLoaded) {
                this.soundOutLoaded = true;
                this.soundOut = this.soundPool.load(ApplicationLoader.applicationContext, C2888R.raw.sound_out, 1);
            }
            int i = this.soundOut;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$gKQNTsOhV2njT98D4ijW-x9ye7E, reason: not valid java name */
    public static /* synthetic */ void m4794$r8$lambda$gKQNTsOhV2njT98D4ijWx9ye7E(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    public void clearDialogNotificationsSettings(long j, long j2) {
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        String sharedPrefKey = getSharedPrefKey(j, j2);
        editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey).remove(NotificationsSettingsFacade.PROPERTY_CUSTOM + sharedPrefKey);
        getMessagesStorage().setDialogFlags(j, 0L);
        TLRPC.Dialog dialog = (TLRPC.Dialog) getMessagesController().dialogs_dict.get(j);
        if (dialog != null) {
            dialog.notify_settings = new TLRPC.TL_peerNotifySettings();
        }
        editorEdit.apply();
        getNotificationsController().updateServerNotificationsSettings(j, j2, true);
    }

    public void setDialogNotificationsSettings(long j, long j2, int i) {
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        TLRPC.Dialog dialog = (TLRPC.Dialog) MessagesController.getInstance(UserConfig.selectedAccount).dialogs_dict.get(j);
        if (i == 4) {
            if (isGlobalNotificationsEnabled(j, false, false)) {
                editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2));
            } else {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), 0);
            }
            getMessagesStorage().setDialogFlags(j, 0L);
            if (dialog != null) {
                dialog.notify_settings = new TLRPC.TL_peerNotifySettings();
            }
        } else {
            int currentTime = ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime();
            if (i == 0) {
                currentTime += 3600;
            } else if (i == 1) {
                currentTime += 28800;
            } else if (i == 2) {
                currentTime += 172800;
            } else if (i == 3) {
                currentTime = Integer.MAX_VALUE;
            }
            long j3 = 1;
            if (i == 3) {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), 2);
            } else {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), 3);
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + getSharedPrefKey(j, j2), currentTime);
                j3 = 1 | (((long) currentTime) << 32);
            }
            getInstance(UserConfig.selectedAccount).removeNotificationsForDialog(j);
            MessagesStorage.getInstance(UserConfig.selectedAccount).setDialogFlags(j, j3);
            if (dialog != null) {
                TLRPC.TL_peerNotifySettings tL_peerNotifySettings = new TLRPC.TL_peerNotifySettings();
                dialog.notify_settings = tL_peerNotifySettings;
                tL_peerNotifySettings.mute_until = currentTime;
            }
        }
        editorEdit.apply();
        updateServerNotificationsSettings(j, j2);
    }

    public void updateServerNotificationsSettings(long j, long j2) {
        updateServerNotificationsSettings(j, j2, true);
    }

    public void updateServerNotificationsSettings(long j, long j2, boolean z) {
        if (z) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsSettingsUpdated, new Object[0]);
        }
        if (DialogObject.isEncryptedDialog(j)) {
            return;
        }
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        TL_account.updateNotifySettings updatenotifysettings = new TL_account.updateNotifySettings();
        updatenotifysettings.settings = new TLRPC.TL_inputPeerNotifySettings();
        String sharedPrefKey = getSharedPrefKey(j, j2);
        TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings = updatenotifysettings.settings;
        tL_inputPeerNotifySettings.flags |= 1;
        tL_inputPeerNotifySettings.show_previews = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + sharedPrefKey, true);
        TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings2 = updatenotifysettings.settings;
        tL_inputPeerNotifySettings2.flags = tL_inputPeerNotifySettings2.flags | 2;
        tL_inputPeerNotifySettings2.silent = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + sharedPrefKey, false);
        if (notificationsSettings.contains(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey)) {
            TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings3 = updatenotifysettings.settings;
            tL_inputPeerNotifySettings3.flags |= 64;
            tL_inputPeerNotifySettings3.stories_muted = !notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey, true);
        }
        int i = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), -1);
        if (i != -1) {
            TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings4 = updatenotifysettings.settings;
            tL_inputPeerNotifySettings4.flags |= 4;
            if (i == 3) {
                tL_inputPeerNotifySettings4.mute_until = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + getSharedPrefKey(j, j2), 0);
            } else {
                tL_inputPeerNotifySettings4.mute_until = i == 2 ? Integer.MAX_VALUE : 0;
            }
        }
        long j3 = notificationsSettings.getLong("sound_document_id_" + getSharedPrefKey(j, j2), 0L);
        String string = notificationsSettings.getString("sound_path_" + getSharedPrefKey(j, j2), null);
        TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings5 = updatenotifysettings.settings;
        tL_inputPeerNotifySettings5.flags = tL_inputPeerNotifySettings5.flags | 8;
        if (j3 != 0) {
            TLRPC.TL_notificationSoundRingtone tL_notificationSoundRingtone = new TLRPC.TL_notificationSoundRingtone();
            tL_notificationSoundRingtone.f1789id = j3;
            updatenotifysettings.settings.sound = tL_notificationSoundRingtone;
        } else if (string != null) {
            if (string.equalsIgnoreCase("NoSound")) {
                updatenotifysettings.settings.sound = new TLRPC.TL_notificationSoundNone();
            } else {
                TLRPC.TL_notificationSoundLocal tL_notificationSoundLocal = new TLRPC.TL_notificationSoundLocal();
                tL_notificationSoundLocal.title = notificationsSettings.getString("sound_" + getSharedPrefKey(j, j2), null);
                tL_notificationSoundLocal.data = string;
                updatenotifysettings.settings.sound = tL_notificationSoundLocal;
            }
        } else {
            tL_inputPeerNotifySettings5.sound = new TLRPC.TL_notificationSoundDefault();
        }
        if (j2 != 0 && j != getUserConfig().getClientUserId()) {
            TLRPC.TL_inputNotifyForumTopic tL_inputNotifyForumTopic = new TLRPC.TL_inputNotifyForumTopic();
            tL_inputNotifyForumTopic.peer = getMessagesController().getInputPeer(j);
            tL_inputNotifyForumTopic.top_msg_id = (int) j2;
            updatenotifysettings.peer = tL_inputNotifyForumTopic;
        } else {
            TLRPC.TL_inputNotifyPeer tL_inputNotifyPeer = new TLRPC.TL_inputNotifyPeer();
            updatenotifysettings.peer = tL_inputNotifyPeer;
            tL_inputNotifyPeer.peer = getMessagesController().getInputPeer(j);
        }
        getConnectionsManager().sendRequest(updatenotifysettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda55
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                NotificationsController.$r8$lambda$XCcar2pyUU3PNWJSRPBNWRsFJM0(tLObject, tL_error);
            }
        });
    }

    public void updateServerNotificationsSettings(int i) {
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        if (i == 4 || i == 5) {
            TL_account.setReactionsNotifySettings setreactionsnotifysettings = new TL_account.setReactionsNotifySettings();
            setreactionsnotifysettings.settings = new TL_account.TL_reactionsNotifySettings();
            if (notificationsSettings.getBoolean("EnableReactionsMessages", true)) {
                setreactionsnotifysettings.settings.flags |= 1;
                if (notificationsSettings.getBoolean("EnableReactionsMessagesContacts", false)) {
                    setreactionsnotifysettings.settings.messages_notify_from = new TL_account.TL_reactionNotificationsFromContacts();
                } else {
                    setreactionsnotifysettings.settings.messages_notify_from = new TL_account.TL_reactionNotificationsFromAll();
                }
            }
            if (notificationsSettings.getBoolean("EnableReactionsStories", true)) {
                setreactionsnotifysettings.settings.flags |= 2;
                if (notificationsSettings.getBoolean("EnableReactionsStoriesContacts", false)) {
                    setreactionsnotifysettings.settings.stories_notify_from = new TL_account.TL_reactionNotificationsFromContacts();
                } else {
                    setreactionsnotifysettings.settings.stories_notify_from = new TL_account.TL_reactionNotificationsFromAll();
                }
            }
            setreactionsnotifysettings.settings.show_previews = notificationsSettings.getBoolean("EnableReactionsPreview", true);
            setreactionsnotifysettings.settings.sound = getInputSound(notificationsSettings, "ReactionSound", "ReactionSoundDocId", "ReactionSoundPath");
            getConnectionsManager().sendRequest(setreactionsnotifysettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda28
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    NotificationsController.$r8$lambda$m8WhB6SNQirs3X5XQWhhP5mgO4s(tLObject, tL_error);
                }
            });
            return;
        }
        TL_account.updateNotifySettings updatenotifysettings = new TL_account.updateNotifySettings();
        TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings = new TLRPC.TL_inputPeerNotifySettings();
        updatenotifysettings.settings = tL_inputPeerNotifySettings;
        tL_inputPeerNotifySettings.flags = 5;
        if (i == 0) {
            updatenotifysettings.peer = new TLRPC.TL_inputNotifyChats();
            updatenotifysettings.settings.mute_until = notificationsSettings.getInt("EnableGroup2", 0);
            updatenotifysettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewGroup", true);
            TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings2 = updatenotifysettings.settings;
            tL_inputPeerNotifySettings2.flags |= 8;
            tL_inputPeerNotifySettings2.sound = getInputSound(notificationsSettings, "GroupSound", "GroupSoundDocId", "GroupSoundPath");
        } else if (i == 1 || i == 3) {
            updatenotifysettings.peer = new TLRPC.TL_inputNotifyUsers();
            updatenotifysettings.settings.mute_until = notificationsSettings.getInt("EnableAll2", 0);
            updatenotifysettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewAll", true);
            TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings3 = updatenotifysettings.settings;
            tL_inputPeerNotifySettings3.flags |= 128;
            tL_inputPeerNotifySettings3.stories_hide_sender = notificationsSettings.getBoolean("EnableHideStoriesSenders", false);
            if (notificationsSettings.contains("EnableAllStories")) {
                TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings4 = updatenotifysettings.settings;
                tL_inputPeerNotifySettings4.flags |= 64;
                tL_inputPeerNotifySettings4.stories_muted = !notificationsSettings.getBoolean("EnableAllStories", true);
            }
            TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings5 = updatenotifysettings.settings;
            tL_inputPeerNotifySettings5.flags |= 8;
            tL_inputPeerNotifySettings5.sound = getInputSound(notificationsSettings, "GlobalSound", "GlobalSoundDocId", "GlobalSoundPath");
            TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings6 = updatenotifysettings.settings;
            tL_inputPeerNotifySettings6.flags |= 256;
            tL_inputPeerNotifySettings6.stories_sound = getInputSound(notificationsSettings, "StoriesSound", "StoriesSoundDocId", "StoriesSoundPath");
        } else {
            updatenotifysettings.peer = new TLRPC.TL_inputNotifyBroadcasts();
            updatenotifysettings.settings.mute_until = notificationsSettings.getInt("EnableChannel2", 0);
            updatenotifysettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewChannel", true);
            TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings7 = updatenotifysettings.settings;
            tL_inputPeerNotifySettings7.flags |= 8;
            tL_inputPeerNotifySettings7.sound = getInputSound(notificationsSettings, "ChannelSound", "ChannelSoundDocId", "ChannelSoundPath");
        }
        getConnectionsManager().sendRequest(updatenotifysettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda29
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                NotificationsController.m4780$r8$lambda$1t1axbSYGQIU_GMVkHnzrj3Llc(tLObject, tL_error);
            }
        });
    }

    private TLRPC.NotificationSound getInputSound(SharedPreferences sharedPreferences, String str, String str2, String str3) {
        long j = sharedPreferences.getLong(str2, 0L);
        String string = sharedPreferences.getString(str3, "NoSound");
        if (j != 0) {
            TLRPC.TL_notificationSoundRingtone tL_notificationSoundRingtone = new TLRPC.TL_notificationSoundRingtone();
            tL_notificationSoundRingtone.f1789id = j;
            return tL_notificationSoundRingtone;
        }
        if (string != null) {
            if (string.equalsIgnoreCase("NoSound")) {
                return new TLRPC.TL_notificationSoundNone();
            }
            TLRPC.TL_notificationSoundLocal tL_notificationSoundLocal = new TLRPC.TL_notificationSoundLocal();
            tL_notificationSoundLocal.title = sharedPreferences.getString(str, null);
            tL_notificationSoundLocal.data = string;
            return tL_notificationSoundLocal;
        }
        return new TLRPC.TL_notificationSoundDefault();
    }

    public boolean isGlobalNotificationsEnabled(long j, boolean z, boolean z2) {
        return isGlobalNotificationsEnabled(j, null, z, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isGlobalNotificationsEnabled(long j, Boolean bool, boolean z, boolean z2) {
        int i;
        if (z) {
            i = 4;
        } else if (z2) {
            i = 5;
        } else if (!DialogObject.isChatDialog(j)) {
            i = 1;
        } else if (bool != null) {
            i = bool.booleanValue() ? 2 : 0;
        } else {
            TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-j));
            if (!ChatObject.isChannel(chat) || chat.megagroup) {
            }
        }
        return isGlobalNotificationsEnabled(i);
    }

    public boolean isGlobalNotificationsEnabled(int i) {
        if (i == 4) {
            return getAccountInstance().getNotificationsSettings().getBoolean("EnableReactionsMessages", true);
        }
        if (i == 5) {
            return getAccountInstance().getNotificationsSettings().getBoolean("EnableReactionsStories", true);
        }
        if (i == 3) {
            return getAccountInstance().getNotificationsSettings().getBoolean("EnableAllStories", true);
        }
        return getAccountInstance().getNotificationsSettings().getInt(getGlobalNotificationsKey(i), 0) < getConnectionsManager().getCurrentTime();
    }

    public void setGlobalNotificationsEnabled(int i, int i2) {
        getAccountInstance().getNotificationsSettings().edit().putInt(getGlobalNotificationsKey(i), i2).apply();
        updateServerNotificationsSettings(i);
        getMessagesStorage().updateMutedDialogsFiltersCounters();
        deleteNotificationChannelGlobal(i);
    }

    public static String getGlobalNotificationsKey(int i) {
        if (i == 0) {
            return "EnableGroup2";
        }
        if (i == 1) {
            return "EnableAll2";
        }
        return "EnableChannel2";
    }

    public void muteDialog(long j, long j2, boolean z) {
        if (z) {
            getInstance(this.currentAccount).muteUntil(j, j2, Integer.MAX_VALUE);
            return;
        }
        boolean zIsGlobalNotificationsEnabled = getInstance(this.currentAccount).isGlobalNotificationsEnabled(j, false, false);
        boolean z2 = j2 != 0;
        SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
        if (zIsGlobalNotificationsEnabled && !z2) {
            editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2));
        } else {
            editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), 0);
        }
        if (j2 == 0) {
            getMessagesStorage().setDialogFlags(j, 0L);
            TLRPC.Dialog dialog = (TLRPC.Dialog) getMessagesController().dialogs_dict.get(j);
            if (dialog != null) {
                dialog.notify_settings = new TLRPC.TL_peerNotifySettings();
            }
        }
        editorEdit.apply();
        updateServerNotificationsSettings(j, j2);
    }

    public NotificationsSettingsFacade getNotificationsSettingsFacade() {
        return this.dialogsNotificationsFacade;
    }

    public void loadTopicsNotificationsExceptions(final long j, final Consumer<HashSet<Integer>> consumer) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadTopicsNotificationsExceptions$52(j, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadTopicsNotificationsExceptions$52(long j, final Consumer consumer) {
        final HashSet hashSet = new HashSet();
        Iterator<Map.Entry<String, ?>> it = MessagesController.getNotificationsSettings(this.currentAccount).getAll().entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            if (key != null) {
                if (key.startsWith(NotificationsSettingsFacade.PROPERTY_NOTIFY + j)) {
                    Integer num = Utilities.parseInt((CharSequence) key.replace(NotificationsSettingsFacade.PROPERTY_NOTIFY + j, _UrlKt.FRAGMENT_ENCODE_SET));
                    int iIntValue = num.intValue();
                    if (iIntValue != 0 && getMessagesController().isDialogMuted(j, iIntValue) != getMessagesController().isDialogMuted(j, 0L)) {
                        hashSet.add(num);
                    }
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.$r8$lambda$0CEGUOl_qmFmYy3ALvzz2hIMSaw(consumer, hashSet);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$0CEGUOl_qmFmYy3ALvzz2hIMSaw(Consumer consumer, HashSet hashSet) {
        if (consumer != null) {
            consumer.m940v(hashSet);
        }
    }

    private static class DialogKey {
        final long dialogId;
        final boolean story;
        final long topicId;

        private DialogKey(long j, long j2, boolean z) {
            this.dialogId = j;
            this.topicId = j2;
            this.story = z;
        }
    }

    public static class StoryNotification {
        public long date;
        final HashMap<Integer, Pair<Long, Long>> dateByIds;
        final long dialogId;
        boolean hidden;
        String localName;

        public StoryNotification(long j, String str, int i, long j2) {
            this(j, str, i, j2, j2 + 86400000);
        }

        public StoryNotification(long j, String str, int i, long j2, long j3) {
            HashMap<Integer, Pair<Long, Long>> map = new HashMap<>();
            this.dateByIds = map;
            this.dialogId = j;
            this.localName = str;
            map.put(Integer.valueOf(i), new Pair<>(Long.valueOf(j2), Long.valueOf(j3)));
            this.date = j2;
        }

        public long getLeastDate() {
            long jLongValue = -1;
            for (Pair<Long, Long> pair : this.dateByIds.values()) {
                if (jLongValue == -1 || jLongValue > ((Long) pair.first).longValue()) {
                    jLongValue = ((Long) pair.first).longValue();
                }
            }
            return jLongValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkStoryPushes() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i = 0;
        boolean z = false;
        while (i < this.storyPushMessages.size()) {
            StoryNotification storyNotification = this.storyPushMessages.get(i);
            Iterator<Map.Entry<Integer, Pair<Long, Long>>> it = storyNotification.dateByIds.entrySet().iterator();
            while (it.hasNext()) {
                if (jCurrentTimeMillis >= ((Long) it.next().getValue().second).longValue()) {
                    it.remove();
                    z = true;
                }
            }
            if (z) {
                if (storyNotification.dateByIds.isEmpty()) {
                    getMessagesStorage().deleteStoryPushMessage(storyNotification.dialogId);
                    this.storyPushMessages.remove(i);
                    i--;
                } else {
                    getMessagesStorage().putStoryPushMessage(storyNotification);
                }
            }
            i++;
        }
        if (z) {
            showOrUpdateNotification(false);
        }
        updateStoryPushesRunnable();
    }

    private void updateStoryPushesRunnable() {
        long jMin = Long.MAX_VALUE;
        for (int i = 0; i < this.storyPushMessages.size(); i++) {
            Iterator<Pair<Long, Long>> it = this.storyPushMessages.get(i).dateByIds.values().iterator();
            while (it.hasNext()) {
                jMin = Math.min(jMin, ((Long) it.next().second).longValue());
            }
        }
        DispatchQueue dispatchQueue = notificationsQueue;
        dispatchQueue.cancelRunnable(this.checkStoryPushesRunnable);
        long jCurrentTimeMillis = jMin - System.currentTimeMillis();
        if (jMin != Long.MAX_VALUE) {
            dispatchQueue.postRunnable(this.checkStoryPushesRunnable, Math.max(0L, jCurrentTimeMillis));
        }
    }

    private String getTitle(TLRPC.Chat chat) {
        if (chat == null) {
            return null;
        }
        if (chat.monoforum) {
            return ForumUtilities.getMonoForumTitle(this.currentAccount, chat);
        }
        return chat.title;
    }
}
