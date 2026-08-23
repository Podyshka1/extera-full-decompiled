package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.ActivityManager;
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
import android.graphics.Color;
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
import androidx.core.app.RemoteInput;
import androidx.core.content.FileProvider;
import androidx.core.content.LocusIdCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.IconCompat;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.utils.AppUtils;
import com.google.android.gms.cast.CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.cast.CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline1;
import com.google.common.collect.Lists;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.function.Consumer;
import java.util.function.ToLongFunction;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.messenger.voip.VoIPGroupNotification;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.BubbleActivity;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PopupNotificationActivity;
import org.telegram.ui.Stories.recorder.StoryEntry;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes.dex */
public class NotificationsController extends BaseController implements NotificationCenter.NotificationCenterDelegate {
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
    private static final LongSparseArray<String> sharedPrefCachedKeys;
    private static NotificationManager systemNotificationManager;
    private AlarmManager alarmManager;
    private boolean channelGroupsCreated;
    private Runnable checkStoryPushesRunnable;
    private final ArrayList<MessageObject> delayedPushMessages;
    NotificationsSettingsFacade dialogsNotificationsFacade;
    private final LongSparseArray<MessageObject> fcmRandomMessagesDict;
    private Boolean groupsCreated;
    private boolean inChatSoundEnabled;
    private int lastBadgeCount;
    private int lastButtonId;
    public long lastNotificationChannelCreateTime;
    private int lastOnlineFromOtherDevice;
    private long lastSoundOutPlay;
    private long lastSoundPlay;
    private final LongSparseArray<Integer> lastWearNotifiedMessageId;
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
    private final HashSet<String> pendingVoiceLoads;
    private int personalCount;
    public final ArrayList<MessageObject> popupMessages;
    public ArrayList<MessageObject> popupReplyMessages;
    private final LongSparseArray<Integer> pushDialogs;
    private final LongSparseArray<Integer> pushDialogsOverrideMention;
    private final ArrayList<MessageObject> pushMessages;
    private final LongSparseArray<SparseArray<MessageObject>> pushMessagesDict;
    public boolean showBadgeMessages;
    public boolean showBadgeMuted;
    public boolean showBadgeNumber;
    private final LongSparseArray<Point> smartNotificationsDialogs;
    private int soundIn;
    private boolean soundInLoaded;
    private int soundOut;
    private boolean soundOutLoaded;
    private SoundPool soundPool;
    private int soundRecord;
    private boolean soundRecordLoaded;
    char[] spoilerChars;
    private final ArrayList<StoryNotification> storyPushMessages;
    private final LongSparseArray<StoryNotification> storyPushMessagesDict;
    private int total_unread_count;
    private final LongSparseArray<Integer> wearNotificationsIds;
    private static final DispatchQueue notificationsQueue = new DispatchQueue("notificationsQueue");
    public static long globalSecretChatId = DialogObject.makeEncryptedDialogId(1);

    /* JADX INFO: renamed from: $r8$lambda$1t1axbSYGQIU_GMVkHn-zrj3Llc, reason: not valid java name */
    public static /* synthetic */ void m5964$r8$lambda$1t1axbSYGQIU_GMVkHnzrj3Llc(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: renamed from: $r8$lambda$H_bZLJEQVx9OdWW6-ZrpVB2xjp0, reason: not valid java name */
    public static /* synthetic */ void m5969$r8$lambda$H_bZLJEQVx9OdWW6ZrpVB2xjp0(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$TMEsjTkj9lYdR59uaNuAf1n8IoU(TLObject tLObject, TLRPC.TL_error tL_error) {
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
        sharedPrefCachedKeys = new LongSparseArray<>();
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
        this.pushMessagesDict = new LongSparseArray<>();
        this.fcmRandomMessagesDict = new LongSparseArray<>();
        this.smartNotificationsDialogs = new LongSparseArray<>();
        this.pushDialogs = new LongSparseArray<>();
        this.wearNotificationsIds = new LongSparseArray<>();
        this.lastWearNotifiedMessageId = new LongSparseArray<>();
        this.pushDialogsOverrideMention = new LongSparseArray<>();
        this.pendingVoiceLoads = new HashSet<>();
        this.popupMessages = new ArrayList<>();
        this.popupReplyMessages = new ArrayList<>();
        this.openedInBubbleDialogs = new HashSet<>();
        this.storyPushMessages = new ArrayList<>();
        this.storyPushMessagesDict = new LongSparseArray<>();
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
        this.checkStoryPushesRunnable = new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.checkStoryPushes();
            }
        };
        this.notificationId = this.currentAccount + 1;
        StringBuilder sb = new StringBuilder("messages");
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
            FileLog.m898e(e);
        }
        try {
            this.alarmManager = (AlarmManager) ApplicationLoader.applicationContext.getSystemService("alarm");
        } catch (Exception e2) {
            FileLog.m898e(e2);
        }
        try {
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).newWakeLock(1, "telegram:notification_delay_lock");
            this.notificationDelayWakelock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
        } catch (Exception e3) {
            FileLog.m898e(e3);
        }
        this.notificationDelayRunnable = new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.dialogsNotificationsFacade = new NotificationsSettingsFacade(this.currentAccount);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("delay reached");
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
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        getNotificationCenter().addObserver(this, NotificationCenter.fileLoaded);
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
                FileLog.m898e(e);
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
            CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline1.m281m();
            NotificationChannel notificationChannelM280m = CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline0.m280m(OTHER_NOTIFICATIONS_CHANNEL, "Internal notifications", 3);
            notificationChannelM280m.enableLights(false);
            notificationChannelM280m.enableVibration(false);
            notificationChannelM280m.setSound(null, null);
            try {
                systemNotificationManager.createNotificationChannel(notificationChannelM280m);
            } catch (Exception e2) {
                FileLog.m898e(e2);
            }
        }
    }

    public static String getSharedPrefKey(long j, long j2) {
        return getSharedPrefKey(j, j2, false);
    }

    public static String getSharedPrefKey(long j, long j2, boolean z) {
        String strValueOf;
        if (z) {
            if (j2 != 0) {
                return String.format(Locale.US, "%d_%d", Long.valueOf(j), Long.valueOf(j2));
            }
            return String.valueOf(j);
        }
        long j3 = (j2 << 12) + j;
        LongSparseArray<String> longSparseArray = sharedPrefCachedKeys;
        int iIndexOfKey = longSparseArray.indexOfKey(j3);
        if (iIndexOfKey >= 0) {
            return longSparseArray.valueAt(iIndexOfKey);
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
                TLRPC.Dialog dialog = MessagesController.getInstance(this.currentAccount).dialogs_dict.get(j);
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanup$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$2() {
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
            FileLog.m898e(e);
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
                    String id = NotificationsController$$ExternalSyntheticApiModelOutline2.m914m(notificationChannels.get(i)).getId();
                    if (id.startsWith(str)) {
                        try {
                            systemNotificationManager.deleteNotificationChannel(id);
                        } catch (Exception e2) {
                            FileLog.m898e(e2);
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m895d("delete channel cleanup " + id);
                        }
                    }
                }
            } catch (Throwable th) {
                FileLog.m898e(th);
            }
        }
    }

    public void setInChatSoundEnabled(boolean z) {
        this.inChatSoundEnabled = z;
    }

    public void setOpenedDialogId(final long j, final long j2) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setOpenedDialogId$3(j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenedDialogId$3(long j, long j2) {
        this.openedDialogId = j;
        this.openedTopicId = j2;
    }

    public void setOpenedInBubble(final long j, final boolean z) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setOpenedInBubble$4(z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenedInBubble$4(boolean z, long j) {
        HashSet<Long> hashSet = this.openedInBubbleDialogs;
        if (z) {
            hashSet.add(Long.valueOf(j));
        } else {
            hashSet.remove(Long.valueOf(j));
        }
    }

    public void setLastOnlineFromOtherDevice(final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setLastOnlineFromOtherDevice$5(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLastOnlineFromOtherDevice$5(int i) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("set last online from other device = " + i);
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

    public void forceShowPopupForReply() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$forceShowPopupForReply$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forceShowPopupForReply$7() {
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$forceShowPopupForReply$6(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forceShowPopupForReply$6(ArrayList arrayList) {
        this.popupReplyMessages = arrayList;
        Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) PopupNotificationActivity.class);
        intent.putExtra("force", true);
        intent.putExtra("currentAccount", this.currentAccount);
        intent.setFlags(268763140);
        ApplicationLoader.applicationContext.startActivity(intent);
        ApplicationLoader.applicationContext.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    public void removeDeletedMessagesFromNotifications(final LongSparseArray<ArrayList<Integer>> longSparseArray, final boolean z) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeDeletedMessagesFromNotifications$10(longSparseArray, z, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$10(LongSparseArray longSparseArray, boolean z, final ArrayList arrayList) {
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
            SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(jKeyAt);
            if (sparseArray == null) {
                num = num4;
                i = i5;
            } else {
                ArrayList arrayList2 = (ArrayList) longSparseArray2.get(jKeyAt);
                int size = arrayList2.size();
                int i6 = i4;
                while (i6 < size) {
                    int iIntValue = ((Integer) arrayList2.get(i6)).intValue();
                    MessageObject messageObject = sparseArray.get(iIntValue);
                    if (messageObject == null) {
                        num2 = num4;
                        i2 = i5;
                    } else if (!messageObject.isStoryReactionPush && (!z || messageObject.isReactionPush)) {
                        num2 = num4;
                        long dialogId = messageObject.getDialogId();
                        Integer num5 = this.pushDialogs.get(dialogId);
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
                            boolean zIsForum = getMessagesController().isForum(dialogId);
                            int i7 = this.total_unread_count;
                            if (zIsForum) {
                                int i8 = i7 - (num5.intValue() > 0 ? 1 : 0);
                                this.total_unread_count = i8;
                                this.total_unread_count = i8 + (num3.intValue() > 0 ? 1 : 0);
                            } else {
                                int iIntValue3 = i7 - num5.intValue();
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedMessagesFromNotifications$8(arrayList);
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedMessagesFromNotifications$9(size2);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$8(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$9(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void removeDeletedHisoryFromNotifications(final LongSparseIntArray longSparseIntArray) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeDeletedHisoryFromNotifications$13(longSparseIntArray, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$13(LongSparseIntArray longSparseIntArray, final ArrayList arrayList) {
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
            Integer num3 = this.pushDialogs.get(j);
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
                        SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(j);
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
                boolean zIsForum = getMessagesController().isForum(j);
                int i5 = this.total_unread_count;
                if (zIsForum) {
                    int i6 = i5 - (num3.intValue() > 0 ? 1 : 0);
                    this.total_unread_count = i6;
                    this.total_unread_count = i6 + (numValueOf.intValue() > 0 ? 1 : 0);
                } else {
                    int iIntValue = i5 - num3.intValue();
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedHisoryFromNotifications$11(arrayList);
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedHisoryFromNotifications$12(size);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$11(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$12(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void processSeenStoryReactions(long j, final int i) {
        if (j != getUserConfig().getClientUserId()) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processSeenStoryReactions$14(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSeenStoryReactions$14(int i) {
        int i2 = 0;
        boolean z = false;
        while (i2 < this.pushMessages.size()) {
            MessageObject messageObject = this.pushMessages.get(i2);
            if (messageObject.isStoryReactionPush && Math.abs(messageObject.getId()) == i) {
                this.pushMessages.remove(i2);
                SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(messageObject.getDialogId());
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDeleteStory$15(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDeleteStory$15(long j, int i) {
        boolean z;
        StoryNotification storyNotification = this.storyPushMessagesDict.get(j);
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
                SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(messageObject.getDialogId());
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processReadStories$16(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processReadStories$16(long j, int i) {
        boolean z;
        StoryNotification storyNotification = this.storyPushMessagesDict.get(j);
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
                SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(messageObject.getDialogId());
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processIgnoreStories$17();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStories$17() {
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processIgnoreStoryReactions$18();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStoryReactions$18() {
        int i = 0;
        boolean z = false;
        while (i < this.pushMessages.size()) {
            MessageObject messageObject = this.pushMessages.get(i);
            if (messageObject != null && messageObject.isStoryReactionPush) {
                this.pushMessages.remove(i);
                i--;
                SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(messageObject.getDialogId());
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processIgnoreStories$19(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStories$19(long j) {
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
                this.f$0.lambda$processReadMessages$21(longSparseIntArray, arrayList, j, i2, i, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processReadMessages$21(LongSparseIntArray longSparseIntArray, final ArrayList arrayList, long j, int i, int i2, boolean z) {
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
                        SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(dialogId2);
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
                            SparseArray<MessageObject> sparseArray2 = this.pushMessagesDict.get(dialogId);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processReadMessages$20(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processReadMessages$20(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005b  */
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

    public void processEditedMessages(final LongSparseArray<ArrayList<MessageObject>> longSparseArray) {
        TLRPC.Message message;
        if (longSparseArray == null || longSparseArray.size() == 0) {
            return;
        }
        for (int i = 0; i < longSparseArray.size(); i++) {
            ArrayList<MessageObject> arrayListValueAt = longSparseArray.valueAt(i);
            if (arrayListValueAt != null) {
                for (int i2 = 0; i2 < arrayListValueAt.size(); i2++) {
                    MessageObject messageObject = arrayListValueAt.get(i2);
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processEditedMessages$22(longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processEditedMessages$22(LongSparseArray longSparseArray) {
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
                SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(dialogId);
                if (sparseArray == null) {
                    break;
                }
                MessageObject messageObject2 = sparseArray.get(messageObject.getId());
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
            StringBuilder sb = new StringBuilder("NotificationsController: processNewMessages msgs.size()=");
            sb.append(arrayList == null ? "null" : Integer.valueOf(arrayList.size()));
            sb.append(" isLast=");
            z3 = z;
            sb.append(z3);
            sb.append(" isFcm=");
            z4 = z2;
            sb.append(z4);
            sb.append(")");
            FileLog.m895d(sb.toString());
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
                            ArrayList<TLRPC.Peer> arrayList2 = tL_messageActionConferenceCall.other_participants;
                            int size = arrayList2.size();
                            int i2 = 0;
                            while (i2 < size) {
                                TLRPC.Peer peer = arrayList2.get(i2);
                                i2++;
                                hashSet.add(Long.valueOf(DialogObject.getPeerDialogId(peer)));
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
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda50
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processNewMessages$27(arrayList, arrayList3, z4, z3, countDownLatch);
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
    public /* synthetic */ void lambda$processNewMessages$27(ArrayList arrayList, final ArrayList arrayList2, boolean z, boolean z2, CountDownLatch countDownLatch) {
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
        SparseArray<MessageObject> sparseArray;
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
                        FileLog.m895d("skipped message because 1");
                    }
                } else if (messageObject2.isStoryPush) {
                    TLRPC.Message message = messageObject2.messageOwner;
                    long jCurrentTimeMillis = message == null ? System.currentTimeMillis() : ((long) message.date) * 1000;
                    long dialogId2 = messageObject2.getDialogId();
                    int id = messageObject2.getId();
                    StoryNotification storyNotification = notificationsController.storyPushMessagesDict.get(dialogId2);
                    if (storyNotification != null) {
                        storyNotification.dateByIds.put(Integer.valueOf(id), new Pair<>(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis + DurationKt.MILLIS_IN_DAY)));
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
                    Collections.sort(notificationsController.storyPushMessages, Comparator.comparingLong(new ToLongFunction() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda26
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
                            final int i4 = message2.id;
                            boolean z16 = z8;
                            z5 = z9;
                            long j8 = ((long) message2.date) + 60;
                            z4 = z16;
                            i = i3;
                            long currentTime = ConnectionsManager.getInstance(notificationsController.currentAccount).getCurrentTime();
                            if (currentTime <= j8) {
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda27
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$processNewMessages$24(i4);
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
                    SparseArray<MessageObject> sparseArray2 = notificationsController.pushMessagesDict.get(dialogId);
                    MessageObject messageObject3 = sparseArray2 != null ? sparseArray2.get(id2) : null;
                    SharedPreferences sharedPreferences2 = notificationsSettings;
                    if (messageObject3 == null) {
                        j2 = j9;
                        long j11 = messageObject2.messageOwner.random_id;
                        if (j11 != 0 && (messageObject3 = notificationsController.fcmRandomMessagesDict.get(j11)) != null) {
                            notificationsController.fcmRandomMessagesDict.remove(messageObject2.messageOwner.random_id);
                        }
                    } else {
                        j2 = j9;
                    }
                    MessageObject messageObject4 = messageObject3;
                    if (messageObject4 != null) {
                        if (messageObject4.isFcmMessage()) {
                            if (sparseArray2 == null) {
                                sparseArray2 = new SparseArray<>();
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
                            FileLog.m895d("skipped message because old message with same dialog and message ids exist: did=" + j7 + ", mid=" + id2);
                        }
                    } else {
                        notificationsSettings = sharedPreferences2;
                        long j12 = dialogId;
                        boolean z17 = z6;
                        if (z11) {
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m895d("skipped message because edited");
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
                                    FileLog.m895d("skipped message because chat is already opened (openedDialogId = " + notificationsController.openedDialogId + ")");
                                }
                            } else {
                                TLRPC.Message message3 = messageObject2.messageOwner;
                                if (!message3.mentioned) {
                                    str = ")";
                                    fromChatId = dialogId3;
                                    j3 = fromChatId;
                                } else if (!z5 && (message3.action instanceof TLRPC.TL_messageActionPinMessage)) {
                                    if (BuildVars.LOGS_ENABLED) {
                                        FileLog.m895d("skipped message because message is mention of pinned");
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
                                            FileLog.m895d("NotificationsController: process new messages, isGlobalNotificationsEnabled(" + j5 + ", " + z17 + ", " + messageObject2.isReactionPush + ", " + messageObject2.isStoryReactionPush + ") = " + zIsGlobalNotificationsEnabled2);
                                        }
                                        zBooleanValue = zIsGlobalNotificationsEnabled2;
                                    } else {
                                        zBooleanValue = notifyOverride != 2 ? z4 : false;
                                    }
                                    longSparseArray.put(j5, Boolean.valueOf(zBooleanValue));
                                }
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.m895d("NotificationsController: process new messages, value is " + zBooleanValue + " (" + j5 + ", " + z17 + ", " + messageObject2.isReactionPush + ", " + messageObject2.isStoryReactionPush + str2);
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
                                            sparseArray = new SparseArray<>();
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
                                        Integer num2 = notificationsController.pushDialogsOverrideMention.get(j13);
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processNewMessages$25(arrayList2, i5);
                }
            });
        }
        if (z || z12) {
            if (z18) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("NotificationsController processNewMessages: edited branch, showOrUpdateNotification " + notificationsController.notifyCheck);
                }
                notificationsController.delayedPushMessages.clear();
                notificationsController.showOrUpdateNotification(notificationsController.notifyCheck);
            } else if (z10) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("NotificationsController processNewMessages: added branch");
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
                Integer num3 = notificationsController.pushDialogs.get(j);
                if (num3 != null) {
                    z3 = true;
                    iIntValue = num3.intValue() + 1;
                } else {
                    z3 = true;
                    iIntValue = 1;
                }
                if (notificationsController.notifyCheck && !zIsGlobalNotificationsEnabled && (num = notificationsController.pushDialogsOverrideMention.get(j)) != null && num.intValue() != 0) {
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
                        FileLog.m895d("NotificationsController processNewMessages: added branch: " + notificationsController.notifyCheck);
                    }
                    notificationsController.showOrUpdateNotification(notificationsController.notifyCheck);
                    final int size = notificationsController.pushDialogs.size();
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda29
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$processNewMessages$26(size);
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
    public /* synthetic */ void lambda$processNewMessages$24(int i) {
        LongSparseArray<ArrayList<Integer>> longSparseArray = new LongSparseArray<>();
        longSparseArray.put(0L, Lists.newArrayList(Integer.valueOf(i)));
        removeDeletedMessagesFromNotifications(longSparseArray, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNewMessages$25(ArrayList arrayList, int i) {
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
    public /* synthetic */ void lambda$processNewMessages$26(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    private void appendMessage(MessageObject messageObject) {
        int i = 0;
        while (true) {
            int size = this.pushMessages.size();
            ArrayList<MessageObject> arrayList = this.pushMessages;
            if (i < size) {
                if (arrayList.get(i).getId() == messageObject.getId() && this.pushMessages.get(i).getDialogId() == messageObject.getDialogId() && this.pushMessages.get(i).isStoryPush == messageObject.isStoryPush) {
                    return;
                } else {
                    i++;
                }
            } else {
                arrayList.add(0, messageObject);
                return;
            }
        }
    }

    public int getTotalUnreadCount() {
        return this.total_unread_count;
    }

    public void processDialogsUpdateRead(final LongSparseIntArray longSparseIntArray) {
        final ArrayList arrayList = new ArrayList();
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDialogsUpdateRead$30(longSparseIntArray, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0050 A[PHI: r4
  0x0050: PHI (r4v3 int) = (r4v2 int), (r4v23 int) binds: [B:6:0x002e, B:14:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processDialogsUpdateRead$30(LongSparseIntArray longSparseIntArray, final ArrayList arrayList) {
        int iIntValue;
        boolean z;
        boolean zIsGlobalNotificationsEnabled;
        boolean zIsForum;
        Integer num;
        int i = this.total_unread_count;
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        int i2 = 0;
        while (true) {
            if (i2 >= longSparseIntArray.size()) {
                break;
            }
            long jKeyAt = longSparseIntArray.keyAt(i2);
            Integer num2 = this.pushDialogs.get(jKeyAt);
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
            if (this.notifyCheck && !zIsGlobalNotificationsEnabled && (num = this.pushDialogsOverrideMention.get(jKeyAt)) != null && num.intValue() != 0) {
                iIntValue = num.intValue();
                zIsGlobalNotificationsEnabled = true;
            }
            if (iIntValue == 0) {
                this.smartNotificationsDialogs.remove(jKeyAt);
            }
            if (iIntValue >= 0) {
                if ((!zIsGlobalNotificationsEnabled || iIntValue == 0) && num2 != null) {
                    zIsForum = getMessagesController().isForum(jKeyAt);
                    int i4 = this.total_unread_count;
                    if (zIsForum) {
                        this.total_unread_count = i4 - (num2.intValue() > 0 ? 1 : 0);
                    } else {
                        this.total_unread_count = i4 - num2.intValue();
                    }
                }
                if (iIntValue == 0) {
                    this.pushDialogs.remove(jKeyAt);
                    this.pushDialogsOverrideMention.remove(jKeyAt);
                    int i5 = 0;
                    while (i5 < this.pushMessages.size()) {
                        MessageObject messageObject = this.pushMessages.get(i5);
                        if (!messageObject.messageOwner.from_scheduled && messageObject.getDialogId() == jKeyAt && !messageObject.isStoryReactionPush) {
                            if (isPersonalMessage(messageObject)) {
                                this.personalCount--;
                            }
                            this.pushMessages.remove(i5);
                            i5--;
                            this.delayedPushMessages.remove(messageObject);
                            long j = messageObject.messageOwner.peer_id.channel_id;
                            long j2 = j != 0 ? -j : 0L;
                            SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(j2);
                            if (sparseArray != null) {
                                sparseArray.remove(messageObject.getId());
                                if (sparseArray.size() == 0) {
                                    this.pushMessagesDict.remove(j2);
                                }
                            }
                            arrayList.add(messageObject);
                        }
                        i5++;
                    }
                } else if (zIsGlobalNotificationsEnabled) {
                    boolean zIsForum2 = getMessagesController().isForum(jKeyAt);
                    int i6 = this.total_unread_count;
                    if (zIsForum2) {
                        this.total_unread_count = i6 + (iIntValue <= 0 ? 0 : 1);
                    } else {
                        this.total_unread_count = i6 + iIntValue;
                    }
                    this.pushDialogs.put(jKeyAt, Integer.valueOf(iIntValue));
                }
            } else if (num2 != null) {
                iIntValue += num2.intValue();
                if (!zIsGlobalNotificationsEnabled) {
                    zIsForum = getMessagesController().isForum(jKeyAt);
                    int i42 = this.total_unread_count;
                    if (zIsForum) {
                    }
                    if (iIntValue == 0) {
                    }
                } else {
                    zIsForum = getMessagesController().isForum(jKeyAt);
                    int i422 = this.total_unread_count;
                    if (zIsForum) {
                    }
                    if (iIntValue == 0) {
                    }
                }
            }
            i2++;
        }
        if (!arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDialogsUpdateRead$28(arrayList);
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDialogsUpdateRead$29(size);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$28(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$29(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void processLoadedUnreadMessages(final LongSparseArray<Integer> longSparseArray, final ArrayList<TLRPC.Message> arrayList, final ArrayList<MessageObject> arrayList2, ArrayList<TLRPC.User> arrayList3, ArrayList<TLRPC.Chat> arrayList4, ArrayList<TLRPC.EncryptedChat> arrayList5, final Collection<StoryNotification> collection) {
        getMessagesController().putUsers(arrayList3, true);
        getMessagesController().putChats(arrayList4, true);
        getMessagesController().putEncryptedChats(arrayList5, true);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedUnreadMessages$33(arrayList, longSparseArray, arrayList2, collection);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$33(ArrayList arrayList, LongSparseArray longSparseArray, ArrayList arrayList2, Collection collection) {
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
                        SparseArray<MessageObject> sparseArray = notificationsController.pushMessagesDict.get(j);
                        if (sparseArray == null || sparseArray.indexOfKey(message3.id) < 0) {
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
                                        sparseArray = new SparseArray<>();
                                        notificationsController.pushMessagesDict.put(j3, sparseArray);
                                    }
                                    sparseArray.put(message2.id, messageObject2);
                                    notificationsController.appendMessage(messageObject2);
                                    if (dialogId2 != j6) {
                                        Integer num = notificationsController.pushDialogsOverrideMention.get(dialogId2);
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
                boolean zIsForum = notificationsController.getMessagesController().isForum(jKeyAt);
                int i6 = notificationsController.total_unread_count;
                if (zIsForum) {
                    notificationsController.total_unread_count = i6 + (iIntValue > 0 ? 1 : i);
                } else {
                    notificationsController.total_unread_count = i6 + iIntValue;
                }
            }
            i5++;
            sharedPreferences3 = sharedPreferences;
        }
        SharedPreferences sharedPreferences4 = sharedPreferences3;
        if (arrayList2 != null) {
            for (int i7 = 0; i7 < arrayList2.size(); i7++) {
                MessageObject messageObject3 = (MessageObject) arrayList2.get(i7);
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
                            SparseArray<MessageObject> sparseArray2 = notificationsController.pushMessagesDict.get(dialogId);
                            if (sparseArray2 == null) {
                                sparseArray2 = new SparseArray<>();
                                notificationsController.pushMessagesDict.put(dialogId, sparseArray2);
                            }
                            sparseArray2.put(id, messageObject);
                        } else if (j8 != j7) {
                            notificationsController.fcmRandomMessagesDict.put(j8, messageObject);
                        }
                        notificationsController.appendMessage(messageObject);
                        if (dialogId3 != fromChatId2) {
                            Integer num3 = notificationsController.pushDialogsOverrideMention.get(dialogId3);
                            notificationsController.pushDialogsOverrideMention.put(dialogId3, Integer.valueOf(num3 == null ? 1 : num3.intValue() + 1));
                        }
                        Integer num4 = notificationsController.pushDialogs.get(fromChatId2);
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
                StoryNotification storyNotification2 = notificationsController.storyPushMessagesDict.get(j10);
                if (storyNotification2 != null) {
                    storyNotification2.dateByIds.putAll(storyNotification.dateByIds);
                } else {
                    notificationsController.storyPushMessages.add(storyNotification);
                    notificationsController.storyPushMessagesDict.put(j10, storyNotification);
                }
            }
            Collections.sort(notificationsController.storyPushMessages, Comparator.comparingLong(new ToLongFunction() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda34
                @Override // java.util.function.ToLongFunction
                public final long applyAsLong(Object obj) {
                    return ((NotificationsController.StoryNotification) obj).date;
                }
            }));
        }
        final int size = notificationsController.pushDialogs.size();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedUnreadMessages$32(size);
            }
        });
        notificationsController.showOrUpdateNotification(SystemClock.elapsedRealtime() / 1000 < 60);
        if (notificationsController.showBadgeNumber) {
            notificationsController.setBadge(notificationsController.getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$32(int i) {
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
                    boolean z = notificationsController.showBadgeMessages;
                    boolean z2 = notificationsController.showBadgeMuted;
                    if (z) {
                        if (z2) {
                            try {
                                ArrayList arrayList = new ArrayList(MessagesController.getInstance(i).allDialogs);
                                int size2 = arrayList.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    TLRPC.Dialog dialog = (TLRPC.Dialog) arrayList.get(i2);
                                    if ((dialog == null || !DialogObject.isChatDialog(dialog.id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-dialog.id)))) && dialog != null) {
                                        dialogUnreadCount += MessagesController.getInstance(i).getDialogUnreadCount(dialog);
                                    }
                                }
                            } catch (Exception e) {
                                FileLog.m898e(e);
                            }
                        } else {
                            size = notificationsController.total_unread_count;
                            dialogUnreadCount += size;
                        }
                    } else if (z2) {
                        try {
                            int size3 = MessagesController.getInstance(i).allDialogs.size();
                            for (int i3 = 0; i3 < size3; i3++) {
                                TLRPC.Dialog dialog2 = MessagesController.getInstance(i).allDialogs.get(i3);
                                if ((!DialogObject.isChatDialog(dialog2.id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-dialog2.id)))) && MessagesController.getInstance(i).getDialogUnreadCount(dialog2) != 0) {
                                    dialogUnreadCount++;
                                }
                            }
                        } catch (Exception e2) {
                            FileLog.m898e(e2);
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
    public /* synthetic */ void lambda$updateBadge$34() {
        setBadge(getTotalAllUnreadCount());
    }

    public void updateBadge() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateBadge$34();
            }
        });
    }

    private void setBadge(int i) {
        if (this.lastBadgeCount == i) {
            return;
        }
        FileLog.m895d("setBadge " + i);
        this.lastBadgeCount = i;
        NotificationBadge.applyCount(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:161:0x0235, code lost:
    
        if (r12.getBoolean("EnablePreviewChannel", r6) != false) goto L162;
     */
    /* JADX WARN: Removed duplicated region for block: B:164:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:733:0x0df3  */
    /* JADX WARN: Removed duplicated region for block: B:753:0x0e49  */
    /* JADX WARN: Removed duplicated region for block: B:754:0x0e4b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getShortStringForMessage(MessageObject messageObject, String[] strArr, boolean[] zArr) {
        long j;
        String title;
        TLRPC.Chat chat;
        boolean z;
        boolean z2;
        String forcedFirstName;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        TLRPC.Chat chat2;
        String str;
        TLRPC.MessageFwdHeader messageFwdHeader2;
        TLRPC.Peer peer2;
        if (AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return LocaleController.getString(C2573R.string.NotificationHiddenMessage);
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
                    return LocaleController.getString(C2573R.string.Message);
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
                    if (messageObject.messageOwner.peer_id.channel_id != 0 && !messageObject.isSupergroup()) {
                        return LocaleController.formatString(C2573R.string.ChannelMessageNoText, messageObject.localName);
                    }
                    return LocaleController.formatString(C2573R.string.NotificationMessageGroupNoText, messageObject.localUserName, messageObject.localName);
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
            return LocaleController.getString(C2573R.string.NotificationHiddenMessage);
        }
        boolean z4 = ChatObject.isChannel(chat) && !chat.megagroup;
        TLRPC.Message message2 = messageObject.messageOwner;
        if (message2 != null && message2.rich_message != null) {
            return messageObject.messageText.toString();
        }
        if (z3) {
            if (j3 == 0 && fromChatId != 0) {
                z = true;
                if (!notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                }
                TLRPC.Message message3 = messageObject.messageOwner;
                z2 = message3 instanceof TLRPC.TL_messageService;
                String title2 = _UrlKt.FRAGMENT_ENCODE_SET;
                if (!z2) {
                    strArr[0] = null;
                    TLRPC.MessageAction messageAction = message3.action;
                    if (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper) {
                        return LocaleController.getString(C2573R.string.WallpaperSameNotification);
                    }
                    if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                        return LocaleController.getString(C2573R.string.WallpaperNotification);
                    }
                    if (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) {
                        return messageObject.messageText.toString();
                    }
                    if ((messageAction instanceof TLRPC.TL_messageActionUserJoined) || (messageAction instanceof TLRPC.TL_messageActionContactSignUp)) {
                        return LocaleController.formatString(C2573R.string.NotificationContactJoined, title);
                    }
                    if (messageAction instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                        return LocaleController.formatString(C2573R.string.NotificationContactNewPhoto, title);
                    }
                    if (messageAction instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                        String string = LocaleController.formatString(C2573R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(((long) messageObject.messageOwner.date) * 1000), LocaleController.getInstance().getFormatterDay().format(((long) messageObject.messageOwner.date) * 1000));
                        int i = C2573R.string.NotificationUnrecognizedDevice;
                        String str2 = getUserConfig().getCurrentUser().first_name;
                        TLRPC.MessageAction messageAction2 = messageObject.messageOwner.action;
                        return LocaleController.formatString(i, str2, string, messageAction2.title, messageAction2.address);
                    }
                    if (TlUtils.isInstance(messageAction, TLRPC.TL_messageActionGameScore.class, TLRPC.TL_messageActionPaymentSent.class, TLRPC.TL_messageActionPaymentSentMe.class, TLRPC.TL_messageActionStarGift.class, TLRPC.TL_messageActionGiftPremium.class, TLRPC.TL_messageActionStarGiftUnique.class, TLRPC.TL_messageActionPaidMessagesPrice.class, TLRPC.TL_messageActionPaidMessagesRefunded.class, TLRPC.TL_messageActionGiftTon.class)) {
                        return messageObject.messageText.toString();
                    }
                    TLRPC.Message message4 = messageObject.messageOwner;
                    TLRPC.MessageAction messageAction3 = message4.action;
                    if (messageAction3 instanceof TLRPC.TL_messageActionPhoneCall) {
                        if (messageAction3.video) {
                            return LocaleController.getString(C2573R.string.CallMessageVideoIncomingMissed);
                        }
                        return LocaleController.getString(C2573R.string.CallMessageIncomingMissed);
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionConferenceCall) {
                        if (messageAction3.video) {
                            return LocaleController.getString(C2573R.string.CallMessageVideoIncomingConferenceMissed);
                        }
                        return LocaleController.getString(C2573R.string.CallMessageIncomingConferenceMissed);
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser) {
                        long jLongValue = messageAction3.user_id;
                        if (jLongValue == 0 && messageAction3.users.size() == 1) {
                            jLongValue = messageObject.messageOwner.action.users.get(0).longValue();
                        }
                        if (jLongValue == 0) {
                            StringBuilder sb = new StringBuilder();
                            for (int i2 = 0; i2 < messageObject.messageOwner.action.users.size(); i2++) {
                                TLRPC.User user2 = getMessagesController().getUser(messageObject.messageOwner.action.users.get(i2));
                                if (user2 != null) {
                                    String userName2 = UserObject.getUserName(user2);
                                    if (sb.length() != 0) {
                                        sb.append(", ");
                                    }
                                    sb.append(userName2);
                                }
                            }
                            return LocaleController.formatString(C2573R.string.NotificationGroupAddMember, title, getTitle(chat), sb.toString());
                        }
                        if (messageObject.messageOwner.peer_id.channel_id != 0 && !chat.megagroup) {
                            return LocaleController.formatString(C2573R.string.ChannelAddedByNotification, title, getTitle(chat));
                        }
                        if (jLongValue == clientUserId) {
                            return LocaleController.formatString(C2573R.string.NotificationInvitedToGroup, title, getTitle(chat));
                        }
                        TLRPC.User user3 = getMessagesController().getUser(Long.valueOf(jLongValue));
                        if (user3 == null) {
                            return null;
                        }
                        if (fromChatId == user3.id) {
                            if (chat.megagroup) {
                                return LocaleController.formatString(C2573R.string.NotificationGroupAddSelfMega, title, getTitle(chat));
                            }
                            return LocaleController.formatString(C2573R.string.NotificationGroupAddSelf, title, getTitle(chat));
                        }
                        return LocaleController.formatString(C2573R.string.NotificationGroupAddMember, title, getTitle(chat), UserObject.getUserName(user3));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionGroupCall) {
                        if (messageAction3.duration != 0) {
                            return LocaleController.formatString(C2573R.string.NotificationGroupEndedCall, title, getTitle(chat));
                        }
                        return LocaleController.formatString(C2573R.string.NotificationGroupCreatedCall, title, getTitle(chat));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionGroupCallScheduled) {
                        return messageObject.messageText.toString();
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                        long jLongValue2 = messageAction3.user_id;
                        if (jLongValue2 == 0 && messageAction3.users.size() == 1) {
                            jLongValue2 = messageObject.messageOwner.action.users.get(0).longValue();
                        }
                        if (jLongValue2 != 0) {
                            if (jLongValue2 == clientUserId) {
                                return LocaleController.formatString(C2573R.string.NotificationGroupInvitedYouToCall, title, getTitle(chat));
                            }
                            TLRPC.User user4 = getMessagesController().getUser(Long.valueOf(jLongValue2));
                            if (user4 == null) {
                                return null;
                            }
                            return LocaleController.formatString(C2573R.string.NotificationGroupInvitedToCall, title, getTitle(chat), UserObject.getUserName(user4));
                        }
                        StringBuilder sb2 = new StringBuilder();
                        for (int i3 = 0; i3 < messageObject.messageOwner.action.users.size(); i3++) {
                            TLRPC.User user5 = getMessagesController().getUser(messageObject.messageOwner.action.users.get(i3));
                            if (user5 != null) {
                                String userName3 = UserObject.getUserName(user5);
                                if (sb2.length() != 0) {
                                    sb2.append(", ");
                                }
                                sb2.append(userName3);
                            }
                        }
                        return LocaleController.formatString(C2573R.string.NotificationGroupInvitedToCall, title, getTitle(chat), sb2.toString());
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionGiftCode) {
                        return LocaleController.getString(C2573R.string.BoostingReceivedGiftNoName);
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink) {
                        return LocaleController.formatString(C2573R.string.NotificationInvitedToGroupByLink, title, getTitle(chat));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatEditTitle) {
                        return LocaleController.formatString(C2573R.string.NotificationEditedGroupName, title, messageAction3.title);
                    }
                    if ((messageAction3 instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction3 instanceof TLRPC.TL_messageActionChatDeletePhoto)) {
                        if (message4.peer_id.channel_id != 0 && !chat.megagroup) {
                            if (messageObject.isVideoAvatar()) {
                                return LocaleController.formatString(C2573R.string.ChannelVideoEditNotification, getTitle(chat));
                            }
                            return LocaleController.formatString(C2573R.string.ChannelPhotoEditNotification, getTitle(chat));
                        }
                        if (messageObject.isVideoAvatar()) {
                            return LocaleController.formatString(C2573R.string.NotificationEditedGroupVideo, title, getTitle(chat));
                        }
                        return LocaleController.formatString(C2573R.string.NotificationEditedGroupPhoto, title, getTitle(chat));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatDeleteUser) {
                        long j4 = messageAction3.user_id;
                        if (j4 == clientUserId) {
                            return LocaleController.formatString(C2573R.string.NotificationGroupKickYou, title, getTitle(chat));
                        }
                        if (j4 == fromChatId) {
                            return LocaleController.formatString(C2573R.string.NotificationGroupLeftMember, title, getTitle(chat));
                        }
                        TLRPC.User user6 = getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.action.user_id));
                        if (user6 == null) {
                            return null;
                        }
                        return LocaleController.formatString(C2573R.string.NotificationGroupKickMember, title, getTitle(chat), UserObject.getUserName(user6));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatCreate) {
                        return messageObject.messageText.toString();
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChannelCreate) {
                        return messageObject.messageText.toString();
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatMigrateTo) {
                        return LocaleController.formatString(C2573R.string.ActionMigrateFromGroupNotify, getTitle(chat));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChannelMigrateFrom) {
                        return LocaleController.formatString(C2573R.string.ActionMigrateFromGroupNotify, messageAction3.title);
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
                            if (TextUtils.isEmpty(themeEmoticonOrGiftTitle)) {
                                if (j == clientUserId) {
                                    return LocaleController.formatString(C2573R.string.ChatThemeDisabledYou, new Object[0]);
                                }
                                return LocaleController.formatString(C2573R.string.ChatThemeDisabled, title, themeEmoticonOrGiftTitle);
                            }
                            if (j == clientUserId) {
                                return LocaleController.formatString(C2573R.string.ChatThemeChangedYou, themeEmoticonOrGiftTitle);
                            }
                            return LocaleController.formatString(C2573R.string.ChatThemeChangedTo, title, themeEmoticonOrGiftTitle);
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
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoText, title, getTitle(chat));
                        }
                        if (messageObject2.isMusic()) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedMusic, title, getTitle(chat));
                        }
                        if (messageObject2.isVideo()) {
                            if (!TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, title, "📹 " + messageObject2.messageOwner.message, getTitle(chat));
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedVideo, title, getTitle(chat));
                        }
                        if (messageObject2.isGif()) {
                            if (!TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, title, "🎬 " + messageObject2.messageOwner.message, getTitle(chat));
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedGif, title, getTitle(chat));
                        }
                        if (messageObject2.isVoice()) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedVoice, title, getTitle(chat));
                        }
                        if (messageObject2.isRoundVideo()) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedRound, title, getTitle(chat));
                        }
                        if (messageObject2.isSticker() || messageObject2.isAnimatedSticker()) {
                            String stickerEmoji = messageObject2.getStickerEmoji();
                            if (stickerEmoji != null) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedStickerEmoji, title, getTitle(chat), stickerEmoji);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedSticker, title, getTitle(chat));
                        }
                        TLRPC.Message message5 = messageObject2.messageOwner;
                        TLRPC.MessageMedia messageMedia = message5.media;
                        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                            if (!TextUtils.isEmpty(message5.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, title, "📎 " + messageObject2.messageOwner.message, getTitle(chat));
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedFile, title, getTitle(chat));
                        }
                        if ((messageMedia instanceof TLRPC.TL_messageMediaGeo) || (messageMedia instanceof TLRPC.TL_messageMediaVenue)) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeo, title, getTitle(chat));
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaGeoLive) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeoLive, title, getTitle(chat));
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaContact) {
                            TLRPC.TL_messageMediaContact tL_messageMediaContact = (TLRPC.TL_messageMediaContact) messageMedia;
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedContact2, title, getTitle(chat), ContactsController.formatName(tL_messageMediaContact.first_name, tL_messageMediaContact.last_name));
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                            TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia;
                            if (tL_messageMediaPoll.poll.quiz) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedQuiz2, title, getTitle(chat), tL_messageMediaPoll.poll.question.text);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedPoll2, title, getTitle(chat), tL_messageMediaPoll.poll.question.text);
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedTodo2, title, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia).todo.title.text);
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                            if (!TextUtils.isEmpty(message5.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, title, "🖼 " + messageObject2.messageOwner.message, getTitle(chat));
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedPhoto, title, getTitle(chat));
                        }
                        if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedGame, title, getTitle(chat));
                        }
                        CharSequence charSequence = messageObject2.messageText;
                        if (charSequence != null && charSequence.length() > 0) {
                            CharSequence charSequence2 = messageObject2.messageText;
                            if (charSequence2.length() > 20) {
                                charSequence2 = ((Object) charSequence2.subSequence(0, 20)) + "...";
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, title, charSequence2, getTitle(chat));
                        }
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoText, title, getTitle(chat));
                    }
                    MessageObject messageObject3 = messageObject.replyMessageObject;
                    if (chat != null) {
                        if (messageObject3 == null) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                        }
                        if (messageObject3.isMusic()) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedMusicChannel, getTitle(chat));
                        }
                        if (messageObject3.isVideo()) {
                            if (!TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📹 " + messageObject3.messageOwner.message);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedVideoChannel, getTitle(chat));
                        }
                        if (messageObject3.isGif()) {
                            if (!TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🎬 " + messageObject3.messageOwner.message);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedGifChannel, getTitle(chat));
                        }
                        if (messageObject3.isVoice()) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedVoiceChannel, getTitle(chat));
                        }
                        if (messageObject3.isRoundVideo()) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedRoundChannel, getTitle(chat));
                        }
                        if (messageObject3.isSticker() || messageObject3.isAnimatedSticker()) {
                            String stickerEmoji2 = messageObject3.getStickerEmoji();
                            if (stickerEmoji2 != null) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedStickerEmojiChannel, getTitle(chat), stickerEmoji2);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedStickerChannel, getTitle(chat));
                        }
                        TLRPC.Message message6 = messageObject3.messageOwner;
                        TLRPC.MessageMedia messageMedia2 = message6.media;
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaDocument) {
                            if (!TextUtils.isEmpty(message6.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📎 " + messageObject3.messageOwner.message);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedFileChannel, getTitle(chat));
                        }
                        if ((messageMedia2 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia2 instanceof TLRPC.TL_messageMediaVenue)) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeoChannel, getTitle(chat));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaGeoLive) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeoLiveChannel, getTitle(chat));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaContact) {
                            TLRPC.TL_messageMediaContact tL_messageMediaContact2 = (TLRPC.TL_messageMediaContact) messageMedia2;
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedContactChannel2, getTitle(chat), ContactsController.formatName(tL_messageMediaContact2.first_name, tL_messageMediaContact2.last_name));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                            TLRPC.TL_messageMediaPoll tL_messageMediaPoll2 = (TLRPC.TL_messageMediaPoll) messageMedia2;
                            if (tL_messageMediaPoll2.poll.quiz) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedQuizChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedPollChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text);
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedTodoChannel2, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia2).todo.title.text);
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) {
                            if (!TextUtils.isEmpty(message6.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🖼 " + messageObject3.messageOwner.message);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedPhotoChannel, getTitle(chat));
                        }
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedGameChannel, getTitle(chat));
                        }
                        CharSequence charSequence3 = messageObject3.messageText;
                        if (charSequence3 != null && charSequence3.length() > 0) {
                            CharSequence charSequence4 = messageObject3.messageText;
                            if (charSequence4.length() > 20) {
                                charSequence4 = ((Object) charSequence4.subSequence(0, 20)) + "...";
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), charSequence4);
                        }
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                    }
                    if (messageObject3 == null) {
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoTextUser, title);
                    }
                    if (messageObject3.isMusic()) {
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedMusicUser, title);
                    }
                    if (messageObject3.isVideo()) {
                        if (!TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextUser, title, "📹 " + messageObject3.messageOwner.message);
                        }
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedVideoUser, title);
                    }
                    if (messageObject3.isGif()) {
                        if (!TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextUser, title, "🎬 " + messageObject3.messageOwner.message);
                        }
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedGifUser, title);
                    }
                    if (messageObject3.isVoice()) {
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedVoiceUser, title);
                    }
                    if (messageObject3.isRoundVideo()) {
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedRoundUser, title);
                    }
                    if (messageObject3.isSticker() || messageObject3.isAnimatedSticker()) {
                        String stickerEmoji3 = messageObject3.getStickerEmoji();
                        if (stickerEmoji3 != null) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedStickerEmojiUser, title, stickerEmoji3);
                        }
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedStickerUser, title);
                    }
                    TLRPC.Message message7 = messageObject3.messageOwner;
                    TLRPC.MessageMedia messageMedia3 = message7.media;
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaDocument) {
                        if (!TextUtils.isEmpty(message7.message)) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextUser, title, "📎 " + messageObject3.messageOwner.message);
                        }
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedFileUser, title);
                    }
                    if ((messageMedia3 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia3 instanceof TLRPC.TL_messageMediaVenue)) {
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeoUser, title);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaGeoLive) {
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeoLiveUser, title);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaContact) {
                        TLRPC.TL_messageMediaContact tL_messageMediaContact3 = (TLRPC.TL_messageMediaContact) messageMedia3;
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedContactUser, title, ContactsController.formatName(tL_messageMediaContact3.first_name, tL_messageMediaContact3.last_name));
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaPoll) {
                        TLRPC.Poll poll = ((TLRPC.TL_messageMediaPoll) messageMedia3).poll;
                        if (poll.quiz) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedQuizUser, title, poll.question.text);
                        }
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedPollUser, title, poll.question.text);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaToDo) {
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedTodoUser, title, ((TLRPC.TL_messageMediaToDo) messageMedia3).todo.title.text);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaPhoto) {
                        if (!TextUtils.isEmpty(message7.message)) {
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextUser, title, "🖼 " + messageObject3.messageOwner.message);
                        }
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedPhotoUser, title);
                    }
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaGame) {
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedGameUser, title);
                    }
                    CharSequence charSequence5 = messageObject3.messageText;
                    if (charSequence5 != null && charSequence5.length() > 0) {
                        CharSequence charSequence6 = messageObject3.messageText;
                        if (charSequence6.length() > 20) {
                            charSequence6 = ((Object) charSequence6.subSequence(0, 20)) + "...";
                        }
                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextUser, title, charSequence6);
                    }
                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoTextUser, title);
                }
                if (messageObject.isMediaEmpty()) {
                    if (!TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return replaceSpoilers(messageObject);
                    }
                    return LocaleController.getString(C2573R.string.Message);
                }
                if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                    TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject);
                    int size = tL_messageMediaPaidMedia.extended_media.size();
                    boolean z5 = false;
                    for (int i4 = 0; i4 < size; i4++) {
                        TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i4);
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
                    return LocaleController.formatString(C2573R.string.AttachPaidMedia, size == 1 ? LocaleController.getString(z5 ? C2573R.string.AttachVideo : C2573R.string.AttachPhoto) : LocaleController.formatPluralString(z5 ? "Media" : "Photos", size, new Object[0]));
                }
                if (messageObject.isVoiceOnce()) {
                    return LocaleController.getString(C2573R.string.AttachOnceAudio);
                }
                if (messageObject.isRoundOnce()) {
                    return LocaleController.getString(C2573R.string.AttachOnceRound);
                }
                TLRPC.Message message8 = messageObject.messageOwner;
                if (message8.media instanceof TLRPC.TL_messageMediaPhoto) {
                    if (!TextUtils.isEmpty(message8.message)) {
                        return "🖼 " + replaceSpoilers(messageObject);
                    }
                    if (messageObject.messageOwner.media.ttl_seconds != 0) {
                        return LocaleController.getString(C2573R.string.AttachDestructingPhoto);
                    }
                    return LocaleController.getString(C2573R.string.AttachPhoto);
                }
                if (messageObject.isVideo()) {
                    if (!TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return "📹 " + replaceSpoilers(messageObject);
                    }
                    if (messageObject.messageOwner.media.ttl_seconds != 0) {
                        return LocaleController.getString(C2573R.string.AttachDestructingVideo);
                    }
                    return LocaleController.getString(C2573R.string.AttachVideo);
                }
                if (messageObject.isGame()) {
                    return LocaleController.getString(C2573R.string.AttachGame);
                }
                if (messageObject.isVoice()) {
                    return LocaleController.getString(C2573R.string.AttachAudio);
                }
                if (messageObject.isRoundVideo()) {
                    return LocaleController.getString(C2573R.string.AttachRound);
                }
                if (messageObject.isMusic()) {
                    return LocaleController.getString(C2573R.string.AttachMusic);
                }
                TLRPC.MessageMedia messageMedia5 = messageObject.messageOwner.media;
                if (messageMedia5 instanceof TLRPC.TL_messageMediaContact) {
                    return LocaleController.getString(C2573R.string.AttachContact);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaPoll) {
                    if (((TLRPC.TL_messageMediaPoll) messageMedia5).poll.quiz) {
                        return LocaleController.getString(C2573R.string.QuizPoll);
                    }
                    return LocaleController.getString(C2573R.string.Poll);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaToDo) {
                    return LocaleController.getString(C2573R.string.Todo);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGiveaway) {
                    return LocaleController.getString(C2573R.string.BoostingGiveaway);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                    return LocaleController.getString(C2573R.string.BoostingGiveawayResults);
                }
                if ((messageMedia5 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia5 instanceof TLRPC.TL_messageMediaVenue)) {
                    return LocaleController.getString(C2573R.string.AttachLocation);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGeoLive) {
                    return LocaleController.getString(C2573R.string.AttachLiveLocation);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaDocument) {
                    if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                        String stickerEmoji4 = messageObject.getStickerEmoji();
                        if (stickerEmoji4 != null) {
                            return stickerEmoji4 + " " + LocaleController.getString(C2573R.string.AttachSticker);
                        }
                        return LocaleController.getString(C2573R.string.AttachSticker);
                    }
                    boolean zIsGif = messageObject.isGif();
                    TLRPC.Message message9 = messageObject.messageOwner;
                    if (zIsGif) {
                        if (!TextUtils.isEmpty(message9.message)) {
                            return "🎬 " + replaceSpoilers(messageObject);
                        }
                        return LocaleController.getString(C2573R.string.AttachGif);
                    }
                    if (!TextUtils.isEmpty(message9.message)) {
                        return "📎 " + replaceSpoilers(messageObject);
                    }
                    return LocaleController.getString(C2573R.string.AttachDocument);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaStory) {
                    if (((TLRPC.TL_messageMediaStory) messageMedia5).via_mention) {
                        int i5 = C2573R.string.StoryNotificationMention;
                        String str3 = strArr[0];
                        if (str3 != null) {
                            title2 = str3;
                        }
                        return LocaleController.formatString(i5, title2);
                    }
                    return LocaleController.getString(C2573R.string.Story);
                }
                if (!TextUtils.isEmpty(messageObject.messageText)) {
                    return replaceSpoilers(messageObject);
                }
                return LocaleController.getString(C2573R.string.Message);
            }
            z = true;
            if (j3 != 0) {
                if (!z4) {
                    if (!notificationsSettings.getBoolean("EnablePreviewGroup", z)) {
                    }
                    TLRPC.Message message32 = messageObject.messageOwner;
                    z2 = message32 instanceof TLRPC.TL_messageService;
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
        return LocaleController.getString(C2573R.string.Message);
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
        String string2;
        String userName;
        if (AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return LocaleController.getString(C2573R.string.YouHaveNewMessage);
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
        boolean z2 = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + j2, true);
        if (messageObject.isFcmMessage()) {
            if (j3 == 0 && fromChatId != 0) {
                if (!z2 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                    if (zArr2 != null) {
                        zArr2[0] = false;
                    }
                    return LocaleController.formatString(C2573R.string.NotificationMessageNoText, messageObject.localName);
                }
            } else if (j3 != 0 && (!z2 || ((!messageObject.localChannel && !notificationsSettings.getBoolean("EnablePreviewGroup", true)) || (messageObject.localChannel && !notificationsSettings.getBoolean("EnablePreviewChannel", true))))) {
                if (zArr2 != null) {
                    zArr2[0] = false;
                }
                if (messageObject.messageOwner.peer_id.channel_id != 0 && !messageObject.isSupergroup()) {
                    return LocaleController.formatString(C2573R.string.ChannelMessageNoText, messageObject.localName);
                }
                return LocaleController.formatString(C2573R.string.NotificationMessageGroupNoText, messageObject.localUserName, messageObject.localName);
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
            string = LocaleController.getString(C2573R.string.BotAuthNotificationTitle);
        } else if (fromChatId > 0) {
            if (!messageObject.messageOwner.from_scheduled) {
                TLRPC.User user = getMessagesController().getUser(Long.valueOf(fromChatId));
                userName = user != null ? UserObject.getUserName(user) : null;
            } else if (j2 == clientUserId) {
                userName = LocaleController.getString(C2573R.string.MessageScheduledReminderNotification);
            } else {
                userName = LocaleController.getString(C2573R.string.NotificationMessageScheduledName);
            }
            j = j2;
            string = userName;
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
            return LocaleController.getString(C2573R.string.YouHaveNewMessage);
        }
        if (j3 != 0 || fromChatId == 0) {
            if (j3 != 0) {
                boolean z3 = ChatObject.isChannel(chat) && !chat.megagroup;
                if (z2 && ((!z3 && notificationsSettings.getBoolean("EnablePreviewGroup", true)) || (z3 && notificationsSettings.getBoolean("EnablePreviewChannel", true)))) {
                    TLRPC.Message message2 = messageObject.messageOwner;
                    if (message2 instanceof TLRPC.TL_messageService) {
                        TLRPC.MessageAction messageAction = message2.action;
                        if (messageAction instanceof TLRPC.TL_messageActionChatAddUser) {
                            long jLongValue = messageAction.user_id;
                            if (jLongValue == 0 && messageAction.users.size() == 1) {
                                jLongValue = messageObject.messageOwner.action.users.get(0).longValue();
                            }
                            if (jLongValue == 0) {
                                StringBuilder sb = new StringBuilder();
                                for (int i = 0; i < messageObject.messageOwner.action.users.size(); i++) {
                                    TLRPC.User user2 = getMessagesController().getUser(messageObject.messageOwner.action.users.get(i));
                                    if (user2 != null) {
                                        String userName2 = UserObject.getUserName(user2);
                                        if (sb.length() != 0) {
                                            sb.append(", ");
                                        }
                                        sb.append(userName2);
                                    }
                                }
                                return LocaleController.formatString(C2573R.string.NotificationGroupAddMember, string, getTitle(chat), sb.toString());
                            }
                            if (messageObject.messageOwner.peer_id.channel_id != 0 && !chat.megagroup) {
                                return LocaleController.formatString(C2573R.string.ChannelAddedByNotification, string, getTitle(chat));
                            }
                            if (jLongValue == clientUserId) {
                                return LocaleController.formatString(C2573R.string.NotificationInvitedToGroup, string, getTitle(chat));
                            }
                            TLRPC.User user3 = getMessagesController().getUser(Long.valueOf(jLongValue));
                            if (user3 == null) {
                                return null;
                            }
                            if (fromChatId == user3.id) {
                                if (chat.megagroup) {
                                    return LocaleController.formatString(C2573R.string.NotificationGroupAddSelfMega, string, getTitle(chat));
                                }
                                return LocaleController.formatString(C2573R.string.NotificationGroupAddSelf, string, getTitle(chat));
                            }
                            return LocaleController.formatString(C2573R.string.NotificationGroupAddMember, string, getTitle(chat), UserObject.getUserName(user3));
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionGroupCall) {
                            if (messageAction.duration != 0) {
                                return LocaleController.formatString(C2573R.string.NotificationGroupEndedCall, string, getTitle(chat));
                            }
                            return LocaleController.formatString(C2573R.string.NotificationGroupCreatedCall, string, getTitle(chat));
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionGroupCallScheduled) {
                            return messageObject.messageText.toString();
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                            long jLongValue2 = messageAction.user_id;
                            if (jLongValue2 == 0 && messageAction.users.size() == 1) {
                                jLongValue2 = messageObject.messageOwner.action.users.get(0).longValue();
                            }
                            if (jLongValue2 != 0) {
                                if (jLongValue2 == clientUserId) {
                                    return LocaleController.formatString(C2573R.string.NotificationGroupInvitedYouToCall, string, getTitle(chat));
                                }
                                TLRPC.User user4 = getMessagesController().getUser(Long.valueOf(jLongValue2));
                                if (user4 == null) {
                                    return null;
                                }
                                return LocaleController.formatString(C2573R.string.NotificationGroupInvitedToCall, string, getTitle(chat), UserObject.getUserName(user4));
                            }
                            StringBuilder sb2 = new StringBuilder();
                            for (int i2 = 0; i2 < messageObject.messageOwner.action.users.size(); i2++) {
                                TLRPC.User user5 = getMessagesController().getUser(messageObject.messageOwner.action.users.get(i2));
                                if (user5 != null) {
                                    String userName3 = UserObject.getUserName(user5);
                                    if (sb2.length() != 0) {
                                        sb2.append(", ");
                                    }
                                    sb2.append(userName3);
                                }
                            }
                            return LocaleController.formatString(C2573R.string.NotificationGroupInvitedToCall, string, getTitle(chat), sb2.toString());
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionGiftCode) {
                            TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) messageAction;
                            TLRPC.Chat chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tL_messageActionGiftCode.boost_peer)));
                            String title = chat3 != null ? getTitle(chat3) : null;
                            if (title == null) {
                                return LocaleController.getString(C2573R.string.BoostingReceivedGiftNoName);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationMessageGiftCode, title, LocaleController.formatPluralString("Months", tL_messageActionGiftCode.months, new Object[0]));
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionChatJoinedByLink) {
                            return LocaleController.formatString(C2573R.string.NotificationInvitedToGroupByLink, string, getTitle(chat));
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionChatEditTitle) {
                            return LocaleController.formatString(C2573R.string.NotificationEditedGroupName, string, messageAction.title);
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionTodoCompletions) {
                            return messageObject.messageText.toString();
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionTodoAppendTasks) {
                            return messageObject.messageText.toString();
                        }
                        if ((messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction instanceof TLRPC.TL_messageActionChatDeletePhoto)) {
                            if (message2.peer_id.channel_id != 0 && !chat.megagroup) {
                                if (messageObject.isVideoAvatar()) {
                                    return LocaleController.formatString(C2573R.string.ChannelVideoEditNotification, getTitle(chat));
                                }
                                return LocaleController.formatString(C2573R.string.ChannelPhotoEditNotification, getTitle(chat));
                            }
                            if (messageObject.isVideoAvatar()) {
                                return LocaleController.formatString(C2573R.string.NotificationEditedGroupVideo, string, getTitle(chat));
                            }
                            return LocaleController.formatString(C2573R.string.NotificationEditedGroupPhoto, string, getTitle(chat));
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionChatDeleteUser) {
                            long j4 = messageAction.user_id;
                            if (j4 == clientUserId) {
                                return LocaleController.formatString(C2573R.string.NotificationGroupKickYou, string, getTitle(chat));
                            }
                            if (j4 == fromChatId) {
                                return LocaleController.formatString(C2573R.string.NotificationGroupLeftMember, string, getTitle(chat));
                            }
                            TLRPC.User user6 = getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.action.user_id));
                            if (user6 == null) {
                                return null;
                            }
                            return LocaleController.formatString(C2573R.string.NotificationGroupKickMember, string, getTitle(chat), UserObject.getUserName(user6));
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionChatCreate) {
                            return messageObject.messageText.toString();
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionChannelCreate) {
                            return messageObject.messageText.toString();
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionChatMigrateTo) {
                            return LocaleController.formatString(C2573R.string.ActionMigrateFromGroupNotify, getTitle(chat));
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionChannelMigrateFrom) {
                            return LocaleController.formatString(C2573R.string.ActionMigrateFromGroupNotify, messageAction.title);
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionScreenshotTaken) {
                            return messageObject.messageText.toString();
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionPinMessage) {
                            if (!ChatObject.isChannel(chat) || chat.megagroup) {
                                MessageObject messageObject2 = messageObject.replyMessageObject;
                                if (messageObject2 == null) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoText, string, getTitle(chat));
                                }
                                if (messageObject2.isMusic()) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedMusic, string, getTitle(chat));
                                }
                                if (messageObject2.isVideo()) {
                                    if (!TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, string, "📹 " + messageObject2.messageOwner.message, getTitle(chat));
                                    }
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedVideo, string, getTitle(chat));
                                }
                                if (messageObject2.isGif()) {
                                    if (!TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, string, "🎬 " + messageObject2.messageOwner.message, getTitle(chat));
                                    }
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedGif, string, getTitle(chat));
                                }
                                if (messageObject2.isVoice()) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedVoice, string, getTitle(chat));
                                }
                                if (messageObject2.isRoundVideo()) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedRound, string, getTitle(chat));
                                }
                                if (messageObject2.isSticker() || messageObject2.isAnimatedSticker()) {
                                    String stickerEmoji = messageObject2.getStickerEmoji();
                                    if (stickerEmoji != null) {
                                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedStickerEmoji, string, getTitle(chat), stickerEmoji);
                                    }
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedSticker, string, getTitle(chat));
                                }
                                TLRPC.Message message3 = messageObject2.messageOwner;
                                TLRPC.MessageMedia messageMedia = message3.media;
                                if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                                    if (!TextUtils.isEmpty(message3.message)) {
                                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, string, "📎 " + messageObject2.messageOwner.message, getTitle(chat));
                                    }
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedFile, string, getTitle(chat));
                                }
                                if ((messageMedia instanceof TLRPC.TL_messageMediaGeo) || (messageMedia instanceof TLRPC.TL_messageMediaVenue)) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeo, string, getTitle(chat));
                                }
                                if (messageMedia instanceof TLRPC.TL_messageMediaGeoLive) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeoLive, string, getTitle(chat));
                                }
                                if (messageMedia instanceof TLRPC.TL_messageMediaContact) {
                                    TLRPC.TL_messageMediaContact tL_messageMediaContact = (TLRPC.TL_messageMediaContact) messageObject.messageOwner.media;
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedContact2, string, getTitle(chat), ContactsController.formatName(tL_messageMediaContact.first_name, tL_messageMediaContact.last_name));
                                }
                                if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                                    TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia;
                                    if (tL_messageMediaPoll.poll.quiz) {
                                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedQuiz2, string, getTitle(chat), tL_messageMediaPoll.poll.question.text);
                                    }
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedPoll2, string, getTitle(chat), tL_messageMediaPoll.poll.question.text);
                                }
                                if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedTodo2, string, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia).todo.title.text);
                                }
                                if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                                    if (!TextUtils.isEmpty(message3.message)) {
                                        return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, string, "🖼 " + messageObject2.messageOwner.message, getTitle(chat));
                                    }
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedPhoto, string, getTitle(chat));
                                }
                                if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedGame, string, getTitle(chat));
                                }
                                CharSequence charSequence = messageObject2.messageText;
                                if (charSequence != null && charSequence.length() > 0) {
                                    CharSequence charSequence2 = messageObject2.messageText;
                                    if (charSequence2.length() > 20) {
                                        charSequence2 = ((Object) charSequence2.subSequence(0, 20)) + "...";
                                    }
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedText, string, charSequence2, getTitle(chat));
                                }
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoText, string, getTitle(chat));
                            }
                            MessageObject messageObject3 = messageObject.replyMessageObject;
                            if (messageObject3 == null) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                            }
                            if (messageObject3.isMusic()) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedMusicChannel, getTitle(chat));
                            }
                            if (messageObject3.isVideo()) {
                                if (!TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📹 " + messageObject3.messageOwner.message);
                                }
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedVideoChannel, getTitle(chat));
                            }
                            if (messageObject3.isGif()) {
                                if (!TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🎬 " + messageObject3.messageOwner.message);
                                }
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedGifChannel, getTitle(chat));
                            }
                            if (messageObject3.isVoice()) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedVoiceChannel, getTitle(chat));
                            }
                            if (messageObject3.isRoundVideo()) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedRoundChannel, getTitle(chat));
                            }
                            if (messageObject3.isSticker() || messageObject3.isAnimatedSticker()) {
                                String stickerEmoji2 = messageObject3.getStickerEmoji();
                                if (stickerEmoji2 != null) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedStickerEmojiChannel, getTitle(chat), stickerEmoji2);
                                }
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedStickerChannel, getTitle(chat));
                            }
                            TLRPC.Message message4 = messageObject3.messageOwner;
                            TLRPC.MessageMedia messageMedia2 = message4.media;
                            if (messageMedia2 instanceof TLRPC.TL_messageMediaDocument) {
                                if (!TextUtils.isEmpty(message4.message)) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📎 " + messageObject3.messageOwner.message);
                                }
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedFileChannel, getTitle(chat));
                            }
                            if ((messageMedia2 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia2 instanceof TLRPC.TL_messageMediaVenue)) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeoChannel, getTitle(chat));
                            }
                            if (messageMedia2 instanceof TLRPC.TL_messageMediaGeoLive) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedGeoLiveChannel, getTitle(chat));
                            }
                            if (messageMedia2 instanceof TLRPC.TL_messageMediaContact) {
                                TLRPC.TL_messageMediaContact tL_messageMediaContact2 = (TLRPC.TL_messageMediaContact) messageObject.messageOwner.media;
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedContactChannel2, getTitle(chat), ContactsController.formatName(tL_messageMediaContact2.first_name, tL_messageMediaContact2.last_name));
                            }
                            if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                                TLRPC.TL_messageMediaPoll tL_messageMediaPoll2 = (TLRPC.TL_messageMediaPoll) messageMedia2;
                                if (tL_messageMediaPoll2.poll.quiz) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedQuizChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text);
                                }
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedPollChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text);
                            }
                            if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedTodoChannel2, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia2).todo.title.text);
                            }
                            if (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) {
                                if (!TextUtils.isEmpty(message4.message)) {
                                    return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🖼 " + messageObject3.messageOwner.message);
                                }
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedPhotoChannel, getTitle(chat));
                            }
                            if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedGameChannel, getTitle(chat));
                            }
                            CharSequence charSequence3 = messageObject3.messageText;
                            if (charSequence3 != null && charSequence3.length() > 0) {
                                CharSequence charSequence4 = messageObject3.messageText;
                                if (charSequence4.length() > 20) {
                                    charSequence4 = ((Object) charSequence4.subSequence(0, 20)) + "...";
                                }
                                return LocaleController.formatString(C2573R.string.NotificationActionPinnedTextChannel, getTitle(chat), charSequence4);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionGameScore) {
                            return messageObject.messageText.toString();
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionSetChatTheme) {
                            String themeEmoticonOrGiftTitle = TlUtils.getThemeEmoticonOrGiftTitle(((TLRPC.TL_messageActionSetChatTheme) messageAction).theme);
                            if (TextUtils.isEmpty(themeEmoticonOrGiftTitle)) {
                                if (j == clientUserId) {
                                    return LocaleController.formatString(C2573R.string.ChatThemeDisabledYou, new Object[0]);
                                }
                                return LocaleController.formatString("ChatThemeDisabled", C2573R.string.ChatThemeDisabled, string, themeEmoticonOrGiftTitle);
                            }
                            if (j == clientUserId) {
                                return LocaleController.formatString(C2573R.string.ChatThemeChangedYou, themeEmoticonOrGiftTitle);
                            }
                            return LocaleController.formatString(C2573R.string.ChatThemeChangedTo, string, themeEmoticonOrGiftTitle);
                        }
                        if (messageAction instanceof TLRPC.TL_messageActionChatJoinedByRequest) {
                            return messageObject.messageText.toString();
                        }
                    } else {
                        if (ChatObject.isChannel(chat) && !chat.megagroup) {
                            if (messageObject.isMediaEmpty()) {
                                if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    String string3 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return string3;
                                }
                                return LocaleController.formatString(C2573R.string.ChannelMessageNoText, string);
                            }
                            if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                                return LocaleController.formatPluralString("NotificationChannelMessagePaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject)).stars_amount, getTitle(chat));
                            }
                            TLRPC.Message message5 = messageObject.messageOwner;
                            if (message5.media instanceof TLRPC.TL_messageMediaPhoto) {
                                if (!z && !TextUtils.isEmpty(message5.message)) {
                                    String string4 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, "🖼 " + messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return string4;
                                }
                                return LocaleController.formatString(C2573R.string.ChannelMessagePhoto, string);
                            }
                            if (messageObject.isVideo()) {
                                if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    String string5 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, "📹 " + messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return string5;
                                }
                                return LocaleController.formatString(C2573R.string.ChannelMessageVideo, string);
                            }
                            if (messageObject.isVoice()) {
                                return LocaleController.formatString(C2573R.string.ChannelMessageAudio, string);
                            }
                            if (messageObject.isRoundVideo()) {
                                return LocaleController.formatString(C2573R.string.ChannelMessageRound, string);
                            }
                            if (messageObject.isMusic()) {
                                return LocaleController.formatString(C2573R.string.ChannelMessageMusic, string);
                            }
                            TLRPC.MessageMedia messageMedia3 = messageObject.messageOwner.media;
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaContact) {
                                TLRPC.TL_messageMediaContact tL_messageMediaContact3 = (TLRPC.TL_messageMediaContact) messageMedia3;
                                return LocaleController.formatString(C2573R.string.ChannelMessageContact2, string, ContactsController.formatName(tL_messageMediaContact3.first_name, tL_messageMediaContact3.last_name));
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaPoll) {
                                TLRPC.Poll poll = ((TLRPC.TL_messageMediaPoll) messageMedia3).poll;
                                if (poll.quiz) {
                                    return LocaleController.formatString(C2573R.string.ChannelMessageQuiz2, string, poll.question.text);
                                }
                                return LocaleController.formatString(C2573R.string.ChannelMessagePoll2, string, poll.question.text);
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaToDo) {
                                return LocaleController.formatString(C2573R.string.ChannelMessageTodo2, string, ((TLRPC.TL_messageMediaToDo) messageMedia3).todo.title.text);
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaGiveaway) {
                                TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway = (TLRPC.TL_messageMediaGiveaway) messageMedia3;
                                return LocaleController.formatString(C2573R.string.NotificationMessageChannelGiveaway, getTitle(chat), Integer.valueOf(tL_messageMediaGiveaway.quantity), Integer.valueOf(tL_messageMediaGiveaway.months));
                            }
                            if ((messageMedia3 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia3 instanceof TLRPC.TL_messageMediaVenue)) {
                                return LocaleController.formatString(C2573R.string.ChannelMessageMap, string);
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaGeoLive) {
                                return LocaleController.formatString(C2573R.string.ChannelMessageLiveLocation, string);
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaDocument) {
                                if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                                    String stickerEmoji3 = messageObject.getStickerEmoji();
                                    if (stickerEmoji3 != null) {
                                        return LocaleController.formatString(C2573R.string.ChannelMessageStickerEmoji, string, stickerEmoji3);
                                    }
                                    return LocaleController.formatString(C2573R.string.ChannelMessageSticker, string);
                                }
                                if (messageObject.isGif()) {
                                    if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                        String string6 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, "🎬 " + messageObject.messageOwner.message);
                                        zArr[0] = true;
                                        return string6;
                                    }
                                    return LocaleController.formatString(C2573R.string.ChannelMessageGIF, string);
                                }
                                if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    String string7 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, "📎 " + messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return string7;
                                }
                                return LocaleController.formatString(C2573R.string.ChannelMessageDocument, string);
                            }
                            if (!z && !TextUtils.isEmpty(messageObject.messageText)) {
                                String string8 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, messageObject.messageText);
                                zArr[0] = true;
                                return string8;
                            }
                            return LocaleController.formatString(C2573R.string.ChannelMessageNoText, string);
                        }
                        if (messageObject.isMediaEmpty()) {
                            if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationMessageGroupText, string, getTitle(chat), messageObject.messageOwner.message);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupNoText, string, getTitle(chat));
                        }
                        if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                            return LocaleController.formatPluralString("NotificationChatMessagePaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject)).stars_amount, string, getTitle(chat));
                        }
                        TLRPC.Message message6 = messageObject.messageOwner;
                        if (message6.media instanceof TLRPC.TL_messageMediaPhoto) {
                            if (!z && !TextUtils.isEmpty(message6.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationMessageGroupText, string, getTitle(chat), "🖼 " + messageObject.messageOwner.message);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupPhoto, string, getTitle(chat));
                        }
                        if (messageObject.isVideo()) {
                            if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationMessageGroupText, string, getTitle(chat), "📹 " + messageObject.messageOwner.message);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupVideo, string, getTitle(chat));
                        }
                        if (messageObject.isVoice()) {
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupAudio, string, getTitle(chat));
                        }
                        if (messageObject.isRoundVideo()) {
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupRound, string, getTitle(chat));
                        }
                        if (messageObject.isMusic()) {
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupMusic, string, getTitle(chat));
                        }
                        TLRPC.MessageMedia messageMedia4 = messageObject.messageOwner.media;
                        if (messageMedia4 instanceof TLRPC.TL_messageMediaContact) {
                            TLRPC.TL_messageMediaContact tL_messageMediaContact4 = (TLRPC.TL_messageMediaContact) messageMedia4;
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupContact2, string, getTitle(chat), ContactsController.formatName(tL_messageMediaContact4.first_name, tL_messageMediaContact4.last_name));
                        }
                        if (messageMedia4 instanceof TLRPC.TL_messageMediaPoll) {
                            TLRPC.TL_messageMediaPoll tL_messageMediaPoll3 = (TLRPC.TL_messageMediaPoll) messageMedia4;
                            if (tL_messageMediaPoll3.poll.quiz) {
                                return LocaleController.formatString(C2573R.string.NotificationMessageGroupQuiz2, string, getTitle(chat), tL_messageMediaPoll3.poll.question.text);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupPoll2, string, getTitle(chat), tL_messageMediaPoll3.poll.question.text);
                        }
                        if (messageMedia4 instanceof TLRPC.TL_messageMediaToDo) {
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupTodo2, string, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia4).todo.title.text);
                        }
                        if (messageMedia4 instanceof TLRPC.TL_messageMediaGame) {
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupGame, string, getTitle(chat), messageObject.messageOwner.media.game.title);
                        }
                        if (messageMedia4 instanceof TLRPC.TL_messageMediaGiveaway) {
                            TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway2 = (TLRPC.TL_messageMediaGiveaway) messageMedia4;
                            return LocaleController.formatString(C2573R.string.NotificationMessageChannelGiveaway, getTitle(chat), Integer.valueOf(tL_messageMediaGiveaway2.quantity), Integer.valueOf(tL_messageMediaGiveaway2.months));
                        }
                        if (messageMedia4 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                            return LocaleController.formatString(C2573R.string.BoostingGiveawayResults, new Object[0]);
                        }
                        if ((messageMedia4 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia4 instanceof TLRPC.TL_messageMediaVenue)) {
                            return LocaleController.formatString("NotificationMessageGroupMap", C2573R.string.NotificationMessageGroupMap, string, getTitle(chat));
                        }
                        if (messageMedia4 instanceof TLRPC.TL_messageMediaGeoLive) {
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupLiveLocation, string, getTitle(chat));
                        }
                        if (messageMedia4 instanceof TLRPC.TL_messageMediaDocument) {
                            if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                                String stickerEmoji4 = messageObject.getStickerEmoji();
                                if (stickerEmoji4 != null) {
                                    return LocaleController.formatString(C2573R.string.NotificationMessageGroupStickerEmoji, string, getTitle(chat), stickerEmoji4);
                                }
                                return LocaleController.formatString(C2573R.string.NotificationMessageGroupSticker, string, getTitle(chat));
                            }
                            if (messageObject.isGif()) {
                                if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    return LocaleController.formatString(C2573R.string.NotificationMessageGroupText, string, getTitle(chat), "🎬 " + messageObject.messageOwner.message);
                                }
                                return LocaleController.formatString(C2573R.string.NotificationMessageGroupGif, string, getTitle(chat));
                            }
                            if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                return LocaleController.formatString(C2573R.string.NotificationMessageGroupText, string, getTitle(chat), "📎 " + messageObject.messageOwner.message);
                            }
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupDocument, string, getTitle(chat));
                        }
                        if (!z && !TextUtils.isEmpty(messageObject.messageText)) {
                            return LocaleController.formatString(C2573R.string.NotificationMessageGroupText, string, getTitle(chat), messageObject.messageText);
                        }
                        return LocaleController.formatString(C2573R.string.NotificationMessageGroupNoText, string, getTitle(chat));
                    }
                } else {
                    if (zArr2 != null) {
                        zArr2[0] = false;
                    }
                    if (ChatObject.isChannel(chat) && !chat.megagroup) {
                        return LocaleController.formatString(C2573R.string.ChannelMessageNoText, string);
                    }
                    if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                        return LocaleController.formatPluralString("NotificationMessagePaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject)).stars_amount, string);
                    }
                    return LocaleController.formatString(C2573R.string.NotificationMessageGroupNoText, string, getTitle(chat));
                }
            }
        } else if (z2 && notificationsSettings.getBoolean("EnablePreviewAll", true)) {
            TLRPC.Message message7 = messageObject.messageOwner;
            if (message7 instanceof TLRPC.TL_messageService) {
                TLRPC.MessageAction messageAction2 = message7.action;
                if ((messageAction2 instanceof TLRPC.TL_messageActionChangeCreator) || (messageAction2 instanceof TLRPC.TL_messageActionNewCreatorPending)) {
                    return messageObject.messageText.toString();
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionSetSameChatWallPaper) {
                    return LocaleController.getString(C2573R.string.WallpaperSameNotification);
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                    return LocaleController.getString(C2573R.string.WallpaperNotification);
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionGeoProximityReached) {
                    return messageObject.messageText.toString();
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionTodoCompletions) {
                    return messageObject.messageText.toString();
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionTodoAppendTasks) {
                    return messageObject.messageText.toString();
                }
                if ((messageAction2 instanceof TLRPC.TL_messageActionUserJoined) || (messageAction2 instanceof TLRPC.TL_messageActionContactSignUp)) {
                    return LocaleController.formatString(C2573R.string.NotificationContactJoined, string);
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                    return LocaleController.formatString(C2573R.string.NotificationContactNewPhoto, string);
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                    String string9 = LocaleController.formatString(C2573R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(((long) messageObject.messageOwner.date) * 1000), LocaleController.getInstance().getFormatterDay().format(((long) messageObject.messageOwner.date) * 1000));
                    int i3 = C2573R.string.NotificationUnrecognizedDevice;
                    String str = getUserConfig().getCurrentUser().first_name;
                    TLRPC.MessageAction messageAction3 = messageObject.messageOwner.action;
                    return LocaleController.formatString(i3, str, string9, messageAction3.title, messageAction3.address);
                }
                if ((messageAction2 instanceof TLRPC.TL_messageActionGameScore) || (messageAction2 instanceof TLRPC.TL_messageActionPaymentSent) || (messageAction2 instanceof TLRPC.TL_messageActionPaymentSentMe)) {
                    return messageObject.messageText.toString();
                }
                if ((messageAction2 instanceof TLRPC.TL_messageActionStarGift) || (messageAction2 instanceof TLRPC.TL_messageActionGiftPremium) || (messageAction2 instanceof TLRPC.TL_messageActionGiftTon)) {
                    return messageObject.messageText.toString();
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionStarGiftUnique) {
                    return messageObject.messageText.toString();
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionSuggestBirthday) {
                    return messageObject.messageText.toString();
                }
                if ((messageAction2 instanceof TLRPC.TL_messageActionPaidMessagesRefunded) || (messageAction2 instanceof TLRPC.TL_messageActionPaidMessagesPrice)) {
                    return messageObject.messageText.toString();
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionPhoneCall) {
                    if (messageAction2.video) {
                        return LocaleController.getString(C2573R.string.CallMessageVideoIncomingMissed);
                    }
                    return LocaleController.getString(C2573R.string.CallMessageIncomingMissed);
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionConferenceCall) {
                    if (messageAction2.video) {
                        return LocaleController.getString(C2573R.string.CallMessageVideoIncomingConferenceMissed);
                    }
                    return LocaleController.getString(C2573R.string.CallMessageIncomingConferenceMissed);
                }
                if (messageAction2 instanceof TLRPC.TL_messageActionSetChatTheme) {
                    String themeEmoticonOrGiftTitle2 = TlUtils.getThemeEmoticonOrGiftTitle(((TLRPC.TL_messageActionSetChatTheme) messageAction2).theme);
                    if (TextUtils.isEmpty(themeEmoticonOrGiftTitle2)) {
                        if (j == clientUserId) {
                            string2 = LocaleController.formatString(C2573R.string.ChatThemeDisabledYou, new Object[0]);
                        } else {
                            string2 = LocaleController.formatString(C2573R.string.ChatThemeDisabled, string, themeEmoticonOrGiftTitle2);
                        }
                    } else if (j == clientUserId) {
                        string2 = LocaleController.formatString(C2573R.string.ChatThemeChangedYou, themeEmoticonOrGiftTitle2);
                    } else {
                        string2 = LocaleController.formatString(C2573R.string.ChatThemeChangedTo, string, themeEmoticonOrGiftTitle2);
                    }
                    zArr[0] = true;
                    return string2;
                }
            } else {
                if (messageObject.isMediaEmpty()) {
                    if (!z) {
                        if (!TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            String string10 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, messageObject.messageOwner.message);
                            zArr[0] = true;
                            return string10;
                        }
                        return LocaleController.formatString(C2573R.string.NotificationMessageNoText, string);
                    }
                    return LocaleController.formatString(C2573R.string.NotificationMessageNoText, string);
                }
                TLRPC.Message message8 = messageObject.messageOwner;
                if (message8.media instanceof TLRPC.TL_messageMediaPhoto) {
                    if (!z && !TextUtils.isEmpty(message8.message)) {
                        String string11 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, "🖼 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string11;
                    }
                    if (messageObject.messageOwner.media.ttl_seconds != 0) {
                        return LocaleController.formatString(C2573R.string.NotificationMessageSDPhoto, string);
                    }
                    return LocaleController.formatString(C2573R.string.NotificationMessagePhoto, string);
                }
                if (messageObject.isVideo()) {
                    if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        String string12 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, "📹 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string12;
                    }
                    if (messageObject.messageOwner.media.ttl_seconds != 0) {
                        return LocaleController.formatString(C2573R.string.NotificationMessageSDVideo, string);
                    }
                    return LocaleController.formatString(C2573R.string.NotificationMessageVideo, string);
                }
                if (messageObject.isGame()) {
                    return LocaleController.formatString(C2573R.string.NotificationMessageGame, string, messageObject.messageOwner.media.game.title);
                }
                if (messageObject.isVoice()) {
                    return LocaleController.formatString(C2573R.string.NotificationMessageAudio, string);
                }
                if (messageObject.isRoundVideo()) {
                    return LocaleController.formatString(C2573R.string.NotificationMessageRound, string);
                }
                if (messageObject.isMusic()) {
                    return LocaleController.formatString(C2573R.string.NotificationMessageMusic, string);
                }
                TLRPC.MessageMedia messageMedia5 = messageObject.messageOwner.media;
                if (messageMedia5 instanceof TLRPC.TL_messageMediaContact) {
                    TLRPC.TL_messageMediaContact tL_messageMediaContact5 = (TLRPC.TL_messageMediaContact) messageMedia5;
                    return LocaleController.formatString(C2573R.string.NotificationMessageContact2, string, ContactsController.formatName(tL_messageMediaContact5.first_name, tL_messageMediaContact5.last_name));
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGiveaway) {
                    TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway3 = (TLRPC.TL_messageMediaGiveaway) messageMedia5;
                    return LocaleController.formatString(C2573R.string.NotificationMessageChannelGiveaway, string, Integer.valueOf(tL_messageMediaGiveaway3.quantity), Integer.valueOf(tL_messageMediaGiveaway3.months));
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                    return LocaleController.formatString(C2573R.string.BoostingGiveawayResults, new Object[0]);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaPoll) {
                    TLRPC.Poll poll2 = ((TLRPC.TL_messageMediaPoll) messageMedia5).poll;
                    if (poll2.quiz) {
                        return LocaleController.formatString(C2573R.string.NotificationMessageQuiz2, string, poll2.question.text);
                    }
                    return LocaleController.formatString(C2573R.string.NotificationMessagePoll2, string, poll2.question.text);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaToDo) {
                    return LocaleController.formatString(C2573R.string.NotificationMessageTodo2, string, ((TLRPC.TL_messageMediaToDo) messageMedia5).todo.title.text);
                }
                if ((messageMedia5 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia5 instanceof TLRPC.TL_messageMediaVenue)) {
                    return LocaleController.formatString(C2573R.string.NotificationMessageMap, string);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaGeoLive) {
                    return LocaleController.formatString(C2573R.string.NotificationMessageLiveLocation, string);
                }
                if (messageMedia5 instanceof TLRPC.TL_messageMediaDocument) {
                    if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                        String stickerEmoji5 = messageObject.getStickerEmoji();
                        if (stickerEmoji5 != null) {
                            return LocaleController.formatString(C2573R.string.NotificationMessageStickerEmoji, string, stickerEmoji5);
                        }
                        return LocaleController.formatString(C2573R.string.NotificationMessageSticker, string);
                    }
                    if (messageObject.isGif()) {
                        if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            String string13 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, "🎬 " + messageObject.messageOwner.message);
                            zArr[0] = true;
                            return string13;
                        }
                        return LocaleController.formatString(C2573R.string.NotificationMessageGif, string);
                    }
                    if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        String string14 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, "📎 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string14;
                    }
                    return LocaleController.formatString(C2573R.string.NotificationMessageDocument, string);
                }
                if (!z && !TextUtils.isEmpty(messageObject.messageText)) {
                    String string15 = LocaleController.formatString(C2573R.string.NotificationMessageText, string, messageObject.messageText);
                    zArr[0] = true;
                    return string15;
                }
                return LocaleController.formatString(C2573R.string.NotificationMessageNoText, string);
            }
        } else {
            if (zArr2 != null) {
                zArr2[0] = false;
            }
            return LocaleController.formatString(C2573R.string.NotificationMessageNoText, string);
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
            FileLog.m898e(e);
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
    public /* synthetic */ void lambda$showNotifications$35() {
        showOrUpdateNotification(false);
    }

    public void showNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showNotifications$35();
            }
        });
    }

    public void hideNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hideNotifications$36();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideNotifications$36() {
        notificationManager.cancel(this.notificationId);
        this.lastWearNotifiedMessageId.clear();
        int i = 0;
        while (true) {
            int size = this.wearNotificationsIds.size();
            LongSparseArray<Integer> longSparseArray = this.wearNotificationsIds;
            if (i < size) {
                notificationManager.cancel(longSparseArray.valueAt(i).intValue());
                i++;
            } else {
                longSparseArray.clear();
                return;
            }
        }
    }

    private void dismissNotification() {
        FileLog.m895d("NotificationsController dismissNotification");
        try {
            notificationManager.cancel(this.notificationId);
            this.pushMessages.clear();
            this.pushMessagesDict.clear();
            this.lastWearNotifiedMessageId.clear();
            int i = 0;
            while (true) {
                int size = this.wearNotificationsIds.size();
                LongSparseArray<Integer> longSparseArray = this.wearNotificationsIds;
                if (i < size) {
                    if (!this.openedInBubbleDialogs.contains(Long.valueOf(longSparseArray.keyAt(i)))) {
                        notificationManager.cancel(this.wearNotificationsIds.valueAt(i).intValue());
                    }
                    i++;
                } else {
                    longSparseArray.clear();
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda17
                        @Override // java.lang.Runnable
                        public final void run() {
                            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
                        }
                    });
                    return;
                }
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public ArrayList<MessageObject> getPushMessagesSnapshot() {
        ArrayList<MessageObject> arrayList;
        synchronized (this) {
            arrayList = new ArrayList<>(this.pushMessages);
        }
        return arrayList;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.fileLoaded) {
            final String str = (String) objArr[0];
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didReceivedNotification$38(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$38(String str) {
        if (this.pendingVoiceLoads.remove(str)) {
            showOrUpdateNotification(true);
        }
    }

    private void playInChatSound() {
        if (!this.inChatSoundEnabled || MediaController.getInstance().isRecordingAudio()) {
            return;
        }
        try {
            if (audioManager.getRingerMode() == 0) {
                return;
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        try {
            if (getNotifyOverride(getAccountInstance().getNotificationsSettings(), this.openedDialogId, this.openedTopicId) == 2) {
                return;
            }
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$playInChatSound$40();
                }
            });
        } catch (Exception e2) {
            FileLog.m898e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playInChatSound$40() {
        if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundPlay) <= 500) {
            return;
        }
        try {
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda56
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                        NotificationsController.$r8$lambda$FC_HwUM3QBEiCRgKZAe2XqW3hzc(soundPool2, i, i2);
                    }
                });
            }
            if (this.soundIn == 0 && !this.soundInLoaded) {
                this.soundInLoaded = true;
                this.soundIn = this.soundPool.load(ApplicationLoader.applicationContext, C2573R.raw.sound_in, 1);
            }
            int i = this.soundIn;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m898e(e2);
        }
    }

    public static /* synthetic */ void $r8$lambda$FC_HwUM3QBEiCRgKZAe2XqW3hzc(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
    }

    private void scheduleNotificationDelay(boolean z) {
        try {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("delay notification start, onlineReason = " + z);
            }
            this.notificationDelayWakelock.acquire(10000L);
            DispatchQueue dispatchQueue = notificationsQueue;
            dispatchQueue.cancelRunnable(this.notificationDelayRunnable);
            dispatchQueue.postRunnable(this.notificationDelayRunnable, z ? 3000 : 1000);
        } catch (Exception e) {
            FileLog.m898e(e);
            showOrUpdateNotification(this.notifyCheck);
        }
    }

    public void repeatNotificationMaybe() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$repeatNotificationMaybe$41();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repeatNotificationMaybe$41() {
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
    public void lambda$deleteNotificationChannel$42(long j, long j2, int i) {
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
                    editorEdit.remove(str).remove(str.concat("_s"));
                    try {
                        systemNotificationManager.deleteNotificationChannel(string);
                    } catch (Exception e) {
                        FileLog.m898e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m895d("delete channel internal ".concat(string));
                    }
                }
            }
            if (i == 1 || i == -1) {
                String str2 = "org.telegram.keyia" + j;
                String string2 = notificationsSettings.getString(str2, null);
                if (string2 != null) {
                    editorEdit.remove(str2).remove(str2.concat("_s"));
                    try {
                        systemNotificationManager.deleteNotificationChannel(string2);
                    } catch (Exception e2) {
                        FileLog.m898e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m895d("delete channel internal ".concat(string2));
                    }
                }
            }
            editorEdit.apply();
        } catch (Exception e3) {
            FileLog.m898e(e3);
        }
    }

    public void deleteNotificationChannel(final long j, final long j2, final int i) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteNotificationChannel$42(j, j2, i);
            }
        });
    }

    public void deleteNotificationChannelGlobal(int i) {
        deleteNotificationChannelGlobal(i, -1);
    }

    /* JADX INFO: renamed from: deleteNotificationChannelGlobalInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$deleteNotificationChannelGlobal$43(int i, int i2) {
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
                    editorEdit.remove(str).remove(str.concat("_s"));
                    try {
                        systemNotificationManager.deleteNotificationChannel(string);
                    } catch (Exception e) {
                        FileLog.m898e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m895d("delete channel global internal ".concat(string));
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
                    editorEdit.remove(str2).remove(str2.concat("_s"));
                    try {
                        systemNotificationManager.deleteNotificationChannel(string2);
                    } catch (Exception e2) {
                        FileLog.m898e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m895d("delete channel global internal ".concat(string2));
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
            FileLog.m898e(e3);
        }
    }

    public void deleteNotificationChannelGlobal(final int i, final int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteNotificationChannelGlobal$43(i, i2);
            }
        });
    }

    public void deleteAllNotificationChannels() {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteAllNotificationChannels$44();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllNotificationChannels$44() {
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
                            FileLog.m895d("delete all channel " + str);
                        }
                    }
                    editorEdit.remove(key);
                }
            }
            editorEdit.apply();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    private boolean unsupportedNotificationShortcut() {
        return Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBubbles;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00ba  */
    @SuppressLint({"RestrictedApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String createNotificationShortcut(NotificationCompat.Builder builder, long j, String str, TLRPC.User user, TLRPC.Chat chat, Person person, boolean z) {
        Bitmap bitmap;
        IconCompat iconCompatCreateWithResource;
        if (unsupportedNotificationShortcut() || (ChatObject.isChannel(chat) && !chat.megagroup)) {
            return null;
        }
        try {
            String str2 = "ndid_" + j;
            Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) OpenChatReceiver.class);
            intent.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
            if (j > 0) {
                intent.putExtra("userId", j);
            } else {
                intent.putExtra("chatId", -j);
            }
            ShortcutInfoCompat.Builder intent2 = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, str2).setShortLabel(chat != null ? str : UserObject.getFirstName(user)).setLongLabel(str).setIntent(new Intent("android.intent.action.VIEW")).setIntent(intent);
            boolean z2 = true;
            ShortcutInfoCompat.Builder locusId = intent2.setLongLived(true).setLocusId(new LocusIdCompat(str2));
            if (person != null) {
                locusId.setPerson(person);
                locusId.setIcon(person.getIcon());
                bitmap = person.getIcon() != null ? person.getIcon().getBitmap() : null;
            }
            ShortcutInfoCompat shortcutInfoCompatBuild = locusId.build();
            ShortcutManagerCompat.pushDynamicShortcut(ApplicationLoader.applicationContext, shortcutInfoCompatBuild);
            builder.setShortcutInfo(shortcutInfoCompatBuild);
            Intent intent3 = new Intent(ApplicationLoader.applicationContext, (Class<?>) BubbleActivity.class);
            intent3.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
            if (DialogObject.isUserDialog(j)) {
                intent3.putExtra("userId", j);
            } else {
                intent3.putExtra("chatId", -j);
            }
            intent3.putExtra("currentAccount", this.currentAccount);
            if (bitmap != null) {
                iconCompatCreateWithResource = IconCompat.createWithAdaptiveBitmap(bitmap);
            } else if (user != null) {
                iconCompatCreateWithResource = IconCompat.createWithResource(ApplicationLoader.applicationContext, user.bot ? C2573R.drawable.book_bot : C2573R.drawable.book_user);
            } else {
                iconCompatCreateWithResource = IconCompat.createWithResource(ApplicationLoader.applicationContext, C2573R.drawable.book_group);
            }
            if (z) {
                NotificationCompat.BubbleMetadata.Builder builder2 = new NotificationCompat.BubbleMetadata.Builder(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent3, 167772160), iconCompatCreateWithResource);
                if (this.openedDialogId != j) {
                    z2 = false;
                }
                builder2.setSuppressNotification(z2);
                builder2.setAutoExpandBubble(false);
                builder2.setDesiredHeight(AndroidUtilities.dp(640.0f));
                builder.setBubbleMetadata(builder2.build());
                return str2;
            }
            builder.setBubbleMetadata(null);
            return str2;
        } catch (Exception e) {
            FileLog.m898e(e);
            return null;
        }
    }

    @TargetApi(26)
    public void ensureGroupsCreated() {
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
                    NotificationChannel notificationChannelM914m = NotificationsController$$ExternalSyntheticApiModelOutline2.m914m(notificationChannels.get(i));
                    String id = notificationChannelM914m.getId();
                    if (id.startsWith(str)) {
                        int importance = notificationChannelM914m.getImportance();
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
                FileLog.m898e(e);
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
            String id2 = NotificationsController$$ExternalSyntheticApiModelOutline3.m915m(notificationChannelGroups.get(i2)).getId();
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
                NotificationsController$$ExternalSyntheticApiModelOutline1.m913m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline0.m912m(str2, LocaleController.getString(C2573R.string.NotificationsChannels) + str12));
            }
            if (str3 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline1.m913m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline0.m912m(str3, LocaleController.getString(C2573R.string.NotificationsGroups) + str12));
            }
            if (str10 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline1.m913m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline0.m912m(str10, LocaleController.getString(C2573R.string.NotificationsStories) + str12));
            }
            if (str9 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline1.m913m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline0.m912m(str9, LocaleController.getString(C2573R.string.NotificationsReactions) + str12));
            }
            if (str11 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline1.m913m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline0.m912m(str11, LocaleController.getString(C2573R.string.NotificationsPrivateChats) + str12));
            }
            if (str8 != null) {
                NotificationsController$$ExternalSyntheticApiModelOutline1.m913m();
                arrayList.add(NotificationsController$$ExternalSyntheticApiModelOutline0.m912m(str8, LocaleController.getString(C2573R.string.NotificationsOther) + str12));
            }
            systemNotificationManager.createNotificationChannelGroups(arrayList);
        }
        this.channelGroupsCreated = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0561  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0573 A[LOOP:1: B:277:0x0570->B:279:0x0573, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0580  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x05c2  */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.app.NotificationManager] */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.app.NotificationChannel] */
    /* JADX WARN: Type inference failed for: r4v66 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [int] */
    /* JADX WARN: Type inference failed for: r5v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v56 */
    /* JADX WARN: Type inference failed for: r5v57 */
    /* JADX WARN: Type inference failed for: r5v58 */
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
        StringBuilder sb2;
        String str21;
        boolean z16;
        boolean z17;
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
        boolean z18 = !z && DialogObject.isEncryptedDialog(j);
        boolean z19 = (z2 || str3 == null || !notificationsSettings.getBoolean(str3, false)) ? false : true;
        boolean z20 = true;
        String strMD52 = Utilities.MD5(uri == null ? "NoSound2" : uri.toString());
        if (strMD52 != null && strMD52.length() > 5) {
            strMD52 = strMD52.substring(0, 5);
        }
        if (z3) {
            string2 = "silent";
            i4 = 0;
            string = LocaleController.getString(C2573R.string.NotificationsSilent);
        } else if (z) {
            string = LocaleController.getString(z2 ? C2573R.string.NotificationsInAppDefault : C2573R.string.NotificationsDefault);
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
            String string3 = z2 ? LocaleController.formatString(C2573R.string.NotificationsChatInApp, str) : str;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(z2 ? "org.telegram.keyia" : "org.telegram.key");
            sb3.append(j);
            sb3.append("_");
            sb3.append(j2);
            string2 = sb3.toString();
            string = string3;
        }
        String str22 = string2 + "_" + strMD52;
        String string4 = notificationsSettings.getString(str22, null);
        String string5 = notificationsSettings.getString(str22.concat("_s"), null);
        StringBuilder sb4 = new StringBuilder();
        if (string4 == null) {
            str5 = "secret";
            str6 = string5;
            sharedPreferences = notificationsSettings;
            str7 = str22;
            str8 = string4;
            str9 = "_";
            str10 = string;
            str11 = str2;
            z4 = z19;
            i5 = i4;
            str12 = "_s";
            jArr2 = jArr;
        } else {
            sharedPreferences = notificationsSettings;
            NotificationChannel notificationChannel = systemNotificationManager.getNotificationChannel(string4);
            str10 = string;
            if (BuildVars.LOGS_ENABLED) {
                z4 = z19;
                FileLog.m895d("current channel for " + string4 + " = " + notificationChannel);
            } else {
                z4 = z19;
            }
            if (notificationChannel == null) {
                str12 = "_s";
                jArr2 = jArr;
                sb = sb4;
                str5 = "secret";
                str7 = str22;
                str9 = "_";
                str11 = str2;
                int i7 = i4;
                i6 = i;
                z5 = i7 == true ? 1 : 0;
                z6 = z4;
                str14 = null;
                strMD5 = null;
                str13 = null;
                r5 = i7;
            } else if (z3 || z4) {
                jArr2 = jArr;
                str5 = "secret";
                str6 = string5;
                str7 = str22;
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
                str7 = str22;
                str9 = "_";
                if (jArr3 != null) {
                    int i8 = i4;
                    while (true) {
                        z8 = zShouldVibrate;
                        if (i8 >= jArr3.length) {
                            break;
                        }
                        sb4.append(jArr3[i8]);
                        i8++;
                        zShouldVibrate = z8;
                    }
                } else {
                    z8 = zShouldVibrate;
                }
                sb4.append(lightColor);
                if (sound != null) {
                    sb4.append(sound.toString());
                }
                sb4.append(importance);
                if (!z && z18) {
                    sb4.append("secret");
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("current channel settings for " + string4 + " = " + ((Object) sb4) + " old = " + string5);
                }
                String strMD53 = Utilities.MD5(sb4.toString());
                sb4.setLength(i4);
                if (z2 && i2 != importance) {
                    jArr4 = jArr;
                    i6 = i;
                    str5 = "secret";
                    str18 = string5;
                    z17 = false;
                    z10 = false;
                    sb = sb4;
                    z11 = true;
                    str19 = string4;
                    str12 = "_s";
                    str20 = strMD53;
                } else {
                    if (!strMD53.equals(string5)) {
                        str5 = "secret";
                        if (importance != 0) {
                            str18 = string5;
                            sb = sb4;
                            jArr4 = jArr3;
                            str19 = string4;
                            str12 = "_s";
                            str20 = strMD53;
                            if (importance != i2) {
                                if (z2) {
                                    str5 = str5;
                                    z12 = false;
                                    editorEdit = null;
                                } else {
                                    SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                                    str5 = str5;
                                    int i9 = (importance == 4 || importance == 5) ? 1 : importance == 1 ? 4 : importance == 2 ? 5 : 0;
                                    if (z) {
                                        if (i3 == 3) {
                                            editorEdit2.putBoolean("EnableAllStories", true);
                                        } else if (i3 == 4) {
                                            editorEdit2.putBoolean("EnableReactionsMessages", true);
                                            editorEdit2.putBoolean("EnableReactionsStories", true);
                                        } else {
                                            z14 = false;
                                            editorEdit2.putInt(getGlobalNotificationsKey(i3), 0);
                                            if (i3 != 2) {
                                                editorEdit2.putInt("priority_channel", i9);
                                                z13 = z14;
                                            } else if (i3 == 0) {
                                                editorEdit2.putInt("priority_group", i9);
                                                z13 = z14;
                                            } else if (i3 == 3) {
                                                editorEdit2.putInt("priority_stories", i9);
                                                z13 = z14;
                                            } else if (i3 == 4 || i3 == 5) {
                                                editorEdit2.putInt("priority_react", i9);
                                                z13 = z14;
                                            } else {
                                                editorEdit2.putInt("priority_messages", i9);
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
                                            editorEdit2.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + j, true);
                                        } else {
                                            editorEdit2.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + j, 0);
                                            editorEdit2.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + j);
                                            editorEdit2.putInt("priority_" + j, i9);
                                        }
                                    }
                                    editorEdit = editorEdit2;
                                    z12 = z13;
                                }
                                jArr5 = jArr;
                                z10 = true;
                                z9 = z12;
                            } else {
                                str5 = str5;
                                z9 = false;
                                jArr5 = jArr;
                                z10 = false;
                                editorEdit = null;
                            }
                        } else {
                            SharedPreferences.Editor editorEdit3 = sharedPreferences.edit();
                            if (z) {
                                if (z2) {
                                    str21 = "_s";
                                } else {
                                    if (i3 == 3) {
                                        editorEdit3.putBoolean("EnableAllStories", false);
                                        z16 = true;
                                    } else if (i3 == 4) {
                                        z16 = true;
                                        editorEdit3.putBoolean("EnableReactionsMessages", true);
                                        editorEdit3.putBoolean("EnableReactionsStories", true);
                                    } else {
                                        z16 = true;
                                        editorEdit3.putInt(getGlobalNotificationsKey(i3), Integer.MAX_VALUE);
                                    }
                                    updateServerNotificationsSettings(i3);
                                    str21 = "_s";
                                    z20 = z16;
                                }
                                sb2 = sb4;
                                z15 = false;
                                str18 = string5;
                            } else {
                                if (i3 == 3) {
                                    editorEdit3.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + getSharedPrefKey(j, j3), false);
                                    z15 = false;
                                } else {
                                    z15 = false;
                                    editorEdit3.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j3), 2);
                                }
                                z20 = true;
                                str18 = string5;
                                sb2 = sb4;
                                str21 = "_s";
                                updateServerNotificationsSettings(j, 0L, true);
                            }
                            editorEdit = editorEdit3;
                            str20 = strMD53;
                            sb = sb2;
                            z10 = z20;
                            z9 = z15;
                            jArr5 = jArr;
                            str19 = string4;
                            str12 = str21;
                            jArr4 = jArr3;
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
                    } else {
                        i6 = i;
                        str5 = "secret";
                        str18 = string5;
                        str19 = string4;
                        z9 = false;
                        str12 = "_s";
                        sb = sb4;
                        str20 = strMD53;
                        z10 = false;
                        jArr4 = jArr;
                    }
                    z11 = z4;
                    z17 = z9;
                }
                z6 = z11;
                z5 = z10;
                str13 = str19;
                jArr2 = jArr4;
                str14 = str18;
                strMD5 = str20;
                r5 = z17;
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
                    if (!z && z18) {
                        sb.append(str5);
                    }
                    strMD5 = Utilities.MD5(sb.toString());
                    if (z3 && str13 != null && (z6 || !str14.equals(strMD5))) {
                        try {
                            systemNotificationManager.deleteNotificationChannel(str13);
                        } catch (Exception e) {
                            FileLog.m898e(e);
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m895d("delete channel by settings change ".concat(str13));
                        }
                        str16 = strMD5;
                        str17 = null;
                    }
                }
                if (str17 == null) {
                    int i10 = this.currentAccount;
                    str17 = z ? i10 + "channel_" + str15 + str9 + Utilities.random.nextLong() : i10 + "channel_" + j + str9 + Utilities.random.nextLong();
                    CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline1.m281m();
                    ?? M280m = CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline0.m280m(str17, z18 ? LocaleController.getString(C2573R.string.SecretChatName) : str10, i2);
                    M280m.setGroup(str11);
                    if (i6 != 0) {
                        z7 = true;
                        M280m.enableLights(true);
                        M280m.setLightColor(i6);
                    } else {
                        z7 = true;
                        M280m.enableLights(r5);
                    }
                    if (!isEmptyVibration(jArr2)) {
                        M280m.enableVibration(z7);
                        if (jArr2.length > 0) {
                            M280m.setVibrationPattern(jArr2);
                        }
                    } else {
                        M280m.enableVibration(r5);
                    }
                    AudioAttributes.Builder builder = new AudioAttributes.Builder();
                    builder.setContentType(4);
                    builder.setUsage(5);
                    if (uri != null) {
                        M280m.setSound(uri, builder.build());
                    } else {
                        M280m.setSound(null, builder.build());
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m895d("create new channel ".concat(str17));
                    }
                    this.lastNotificationChannelCreateTime = SystemClock.elapsedRealtime();
                    systemNotificationManager.createNotificationChannel(M280m);
                    sharedPreferences.edit().putString(str15, str17).putString(str15.concat(str12), str16).apply();
                }
                return str17;
            }
            str15 = str7;
            sharedPreferences.edit().putString(str15, str13).putString(str15.concat(str12), strMD5).apply();
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("change edited channel " + str13);
            }
            str16 = strMD5;
            str17 = str13;
            if (str17 == null) {
            }
            return str17;
        }
        i6 = i;
        sb = sb4;
        z5 = i5 == true ? 1 : 0;
        z6 = z4;
        str13 = str8;
        str14 = str6;
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
                    sb.append(str5);
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

    public static class DialogNotificationSettings {
        int chatType;
        int importance;
        boolean isDefault;
        boolean isInApp;
        boolean isInternalSoundFile;
        int ledColor;
        boolean notifyDisabled;
        String soundPath;
        int vibrate;

        private DialogNotificationSettings() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private DialogNotificationSettings computeDialogNotificationSettings(SharedPreferences sharedPreferences, long j, long j2, boolean z, boolean z2, boolean z3, long j3, long j4, boolean z4, boolean z5) {
        boolean z6;
        boolean z7;
        long j5;
        int i;
        int i2;
        boolean z8;
        Integer numValueOf;
        String str;
        int i3;
        String string;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z9;
        int i9;
        boolean z10;
        String propertyString;
        boolean z11;
        if (!z5) {
            StringBuilder sb = new StringBuilder("sound_enabled_");
            sb.append(getSharedPrefKey(j, j2));
            z6 = !sharedPreferences.getBoolean(sb.toString(), true) ? true : z5;
        }
        String path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
        boolean z12 = ApplicationLoader.mainInterfacePaused;
        boolean z13 = !z12;
        if (this.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j, j2, false)) {
            z7 = z6;
            i = 0;
            j5 = 0;
            int property = this.dialogsNotificationsFacade.getProperty("vibrate_", j, j2, 0);
            int property2 = this.dialogsNotificationsFacade.getProperty("priority_", j, j2, 3);
            long property3 = this.dialogsNotificationsFacade.getProperty("sound_document_id_", j, j2, 0L);
            if (property3 != 0) {
                propertyString = getMediaDataController().ringtoneDataStore.getSoundPath(property3);
                z11 = true;
            } else {
                propertyString = this.dialogsNotificationsFacade.getPropertyString("sound_path_", j, j2, null);
                z11 = false;
            }
            String str2 = propertyString;
            int property4 = this.dialogsNotificationsFacade.getProperty("color_", j, j2, 0);
            numValueOf = property4 != 0 ? Integer.valueOf(property4) : null;
            z8 = z11;
            i2 = property;
            i3 = property2;
            str = str2;
        } else {
            z7 = z6;
            j5 = 0;
            i = 0;
            i2 = 0;
            z8 = false;
            numValueOf = null;
            str = null;
            i3 = 3;
        }
        int iIntValue = -16776961;
        if (z2 || z3) {
            long j6 = sharedPreferences.getLong("ReactionSoundDocId", j5);
            if (j6 != j5) {
                string = getMediaDataController().ringtoneDataStore.getSoundPath(j6);
                i4 = 1;
            } else {
                string = sharedPreferences.getString("ReactionSoundPath", path);
                i4 = i;
            }
            i5 = sharedPreferences.getInt("vibrate_react", i);
            i6 = sharedPreferences.getInt("priority_react", 1);
            iIntValue = sharedPreferences.getInt("ReactionsLed", -16776961);
            i7 = z3 ? 5 : 4;
        } else if (j3 == j5) {
            if (j4 != j5) {
                long j7 = sharedPreferences.getLong(z ? "StoriesSoundDocId" : "GlobalSoundDocId", j5);
                if (j7 != j5) {
                    string = getMediaDataController().ringtoneDataStore.getSoundPath(j7);
                    i4 = 1;
                } else {
                    string = sharedPreferences.getString(z ? "StoriesSoundPath" : "GlobalSoundPath", path);
                    i4 = i;
                }
                i5 = sharedPreferences.getInt("vibrate_messages", i);
                i6 = sharedPreferences.getInt("priority_messages", 1);
                iIntValue = sharedPreferences.getInt("MessagesLed", -16776961);
                if (z) {
                    i7 = 3;
                }
            } else {
                i4 = i;
                i5 = i4;
                i6 = i5;
                string = null;
            }
            i7 = 1;
        } else if (z4) {
            long j8 = sharedPreferences.getLong("ChannelSoundDocId", j5);
            if (j8 != j5) {
                string = getMediaDataController().ringtoneDataStore.getSoundPath(j8);
                i4 = 1;
            } else {
                string = sharedPreferences.getString("ChannelSoundPath", path);
                i4 = i;
            }
            i5 = sharedPreferences.getInt("vibrate_channel", i);
            i6 = sharedPreferences.getInt("priority_channel", 1);
            iIntValue = sharedPreferences.getInt("ChannelLed", -16776961);
            i7 = 2;
        } else {
            long j9 = sharedPreferences.getLong("GroupSoundDocId", j5);
            if (j9 != j5) {
                string = getMediaDataController().ringtoneDataStore.getSoundPath(j9);
                i4 = 1;
            } else {
                string = sharedPreferences.getString("GroupSoundPath", path);
                i4 = i;
            }
            i5 = sharedPreferences.getInt("vibrate_group", i);
            i6 = sharedPreferences.getInt("priority_group", 1);
            iIntValue = sharedPreferences.getInt("GroupLed", -16776961);
            i7 = i;
        }
        if (i5 == 4) {
            i5 = i;
            i8 = 1;
        } else {
            i8 = i;
        }
        if (TextUtils.isEmpty(str) || TextUtils.equals(string, str)) {
            z9 = i4;
            str = string;
            i9 = 1;
        } else {
            i9 = i;
            z9 = z8;
        }
        if (i3 != 3 && i6 != i3) {
            i9 = i;
            i6 = i3;
        }
        if (numValueOf != null && numValueOf.intValue() != iIntValue) {
            iIntValue = numValueOf.intValue();
            i9 = i;
        }
        if (i2 == 0 || i2 == 4 || i2 == i5) {
            z10 = i9;
            i2 = i5;
        } else {
            z10 = i;
        }
        if (!z12) {
            if (!sharedPreferences.getBoolean("EnableInAppSounds", true)) {
                str = null;
            }
            if (!sharedPreferences.getBoolean("EnableInAppVibrate", true)) {
                i2 = 2;
            }
            i6 = sharedPreferences.getBoolean("EnableInAppPopup", true) ? 2 : i;
        }
        if (i8 != 0 && i2 != 2) {
            try {
                int ringerMode = audioManager.getRingerMode();
                i2 = (ringerMode == 0 || ringerMode == 1) ? i2 : 2;
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
        if (z7) {
            i6 = i;
            iIntValue = i6;
            str = null;
        } else {
            i = i2;
        }
        DialogNotificationSettings dialogNotificationSettings = new DialogNotificationSettings();
        dialogNotificationSettings.notifyDisabled = z7;
        dialogNotificationSettings.vibrate = i;
        dialogNotificationSettings.soundPath = str;
        dialogNotificationSettings.isInternalSoundFile = z9;
        dialogNotificationSettings.ledColor = iIntValue;
        dialogNotificationSettings.importance = i6;
        dialogNotificationSettings.isDefault = z10;
        dialogNotificationSettings.isInApp = z13;
        dialogNotificationSettings.chatType = i7;
        return dialogNotificationSettings;
    }

    private String validateChannelIdForDialog(long j, long j2, boolean z, MessageObject messageObject, long j3, long j4, boolean z2, String str) {
        boolean z3;
        boolean zIsGlobalNotificationsEnabled;
        long[] jArr;
        int i;
        String str2;
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            boolean z4 = messageObject != null && messageObject.isReactionPush;
            int notifyOverride = getNotifyOverride(notificationsSettings, j, j2);
            if (notifyOverride == -1) {
                z3 = z4;
                zIsGlobalNotificationsEnabled = isGlobalNotificationsEnabled(j, Boolean.valueOf(z2), z3, z4);
            } else {
                z3 = z4;
                zIsGlobalNotificationsEnabled = notifyOverride != 2;
            }
            DialogNotificationSettings dialogNotificationSettingsComputeDialogNotificationSettings = computeDialogNotificationSettings(notificationsSettings, j, j2, z, z3, messageObject != null && messageObject.isStoryReactionPush, j3, j4, z2, !zIsGlobalNotificationsEnabled);
            int i2 = dialogNotificationSettingsComputeDialogNotificationSettings.importance;
            int i3 = (i2 == 1 || i2 == 2) ? 4 : i2 == 4 ? 1 : i2 == 5 ? 2 : 3;
            Uri uriForFile = Settings.System.DEFAULT_NOTIFICATION_URI;
            String path = uriForFile.getPath();
            if (dialogNotificationSettingsComputeDialogNotificationSettings.notifyDisabled || (str2 = dialogNotificationSettingsComputeDialogNotificationSettings.soundPath) == null || str2.equalsIgnoreCase("NoSound")) {
                uriForFile = null;
            } else if (!dialogNotificationSettingsComputeDialogNotificationSettings.soundPath.equalsIgnoreCase("Default") && !dialogNotificationSettingsComputeDialogNotificationSettings.soundPath.equals(path)) {
                if (dialogNotificationSettingsComputeDialogNotificationSettings.isInternalSoundFile) {
                    uriForFile = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", new File(dialogNotificationSettingsComputeDialogNotificationSettings.soundPath));
                    ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", uriForFile, 1);
                } else {
                    uriForFile = Uri.parse(dialogNotificationSettingsComputeDialogNotificationSettings.soundPath);
                }
            }
            Uri uri = uriForFile;
            boolean z5 = dialogNotificationSettingsComputeDialogNotificationSettings.notifyDisabled;
            if (z5 || (i = dialogNotificationSettingsComputeDialogNotificationSettings.vibrate) == 2) {
                jArr = new long[]{0, 0};
            } else if (i == 1) {
                jArr = new long[]{0, 100, 0, 100};
            } else if (i == 3) {
                jArr = new long[]{0, 1000};
            } else {
                jArr = new long[0];
            }
            return validateChannelId(j, j2, str, jArr, dialogNotificationSettingsComputeDialogNotificationSettings.ledColor, uri, i3, dialogNotificationSettingsComputeDialogNotificationSettings.isDefault, dialogNotificationSettingsComputeDialogNotificationSettings.isInApp, z5, dialogNotificationSettingsComputeDialogNotificationSettings.chatType);
        } catch (Exception e) {
            FileLog.m898e(e);
            return OTHER_NOTIFICATIONS_CHANNEL;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(58:77|(1:79)(1:80)|81|(1:84)|83|85|(1:91)|92|(2:96|(1:98)(1:99))|100|(3:102|(2:108|(1:113)(1:112))(1:106)|107)(1:114)|115|(1:117)(2:118|(1:120)(1:121))|(1:(1:130)(1:131))(1:127)|128|132|(1:138)(1:137)|139|(2:(2:142|(1:144))(1:145)|(1:147)(39:148|156|(39:162|(1:164)|(5:167|(2:169|(1:171)(1:172))(1:173)|174|(1:176)(3:178|179|(1:181)(1:182))|177)(1:183)|184|185|(3:189|217|(2:219|514)(4:(1:(2:224|(1:226)(1:227))(1:223))(1:228)|229|(1:231)|232))(1:(4:188|189|217|(0)(0))(4:190|(3:192|(2:213|506)(6:199|(1:201)(1:202)|203|(1:(1:207)(2:208|(1:210)(1:211)))|212|507)|214)|505|215))|216|(1:241)(1:240)|(1:264)(4:246|(1:248)(1:249)|(2:251|(1:253)(2:256|(1:258)(2:259|(30:261|265|263|266|(1:268)|269|270|(1:272)(4:274|275|(2:(1:278)(2:279|(1:281))|282)(2:284|(4:286|(2:289|287)|512|290)(24:291|292|(24:294|(1:(1:297)(2:298|(1:300)))|301|(1:305)(1:(3:311|(1:319)|305)(1:(2:321|(0)(1:329))(0)))|336|(1:338)|339|(1:346)|491|347|(1:349)|352|(1:354)|355|356|(1:359)(8:(2:362|(1:364)(3:493|366|(4:368|(1:370)(1:371)|372|(1:374))))|375|(4:378|400|(2:402|396)|403)(1:(3:380|381|(1:383)(2:384|403))(2:385|(2:397|(1:399)(1:403))(2:(2:390|(1:392))(1:(2:394|(1:396)))|403)))|(1:461)(5:(3:407|(1:411)|(5:443|(1:445)(1:447)|446|(1:449)(1:(1:452)(1:(1:460)(2:456|(1:458)(1:459))))|450)(3:420|421|(6:423|(1:431)(1:(1:429)(1:430))|(0)(0)|446|(0)(0)|450)(7:432|(1:434)(2:435|(1:442)(2:495|439))|443|(0)(0)|446|(0)(0)|450)))(1:412)|413|(1:415)|416|(6:418|443|(0)(0)|446|(0)(0)|450)(0))|462|(3:470|(4:472|(3:474|(4:476|(1:478)|479|511)(2:480|510)|481)|509|482)|508)|483|515)|360|375|(4:378|400|(0)|403)(0)|(1:461)(0)|462|(6:464|466|468|470|(0)|508)|483|515)(2:331|(1:335))|330|336|(0)|339|(3:342|344|346)|491|347|(0)|352|(0)|355|356|(0)(0)|360|375|(0)(0)|(0)(0)|462|(0)|483|515))|283)|273|330|336|(0)|339|(0)|491|347|(0)|352|(0)|355|356|(0)(0)|360|375|(0)(0)|(0)(0)|462|(0)|483|515)(29:262|263|266|(0)|269|270|(0)(0)|273|330|336|(0)|339|(0)|491|347|(0)|352|(0)|355|356|(0)(0)|360|375|(0)(0)|(0)(0)|462|(0)|483|515))))|254)|255|265|263|266|(0)|269|270|(0)(0)|273|330|336|(0)|339|(0)|491|347|(0)|352|(0)|355|356|(0)(0)|360|375|(0)(0)|(0)(0)|462|(0)|483|515)(1:161)|165|(0)(0)|184|185|(0)(0)|216|(1:241)(0)|(4:243|264|255|265)(0)|263|266|(0)|269|270|(0)(0)|273|330|336|(0)|339|(0)|491|347|(0)|352|(0)|355|356|(0)(0)|360|375|(0)(0)|(0)(0)|462|(0)|483|515))(1:149)|(1:(1:152)(1:153))(1:154)|155|156|(4:158|160|162|(1:165)(0))(0)|(0)(0)|184|185|(0)(0)|216|(0)(0)|(0)(0)|263|266|(0)|269|270|(0)(0)|273|330|336|(0)|339|(0)|491|347|(0)|352|(0)|355|356|(0)(0)|360|375|(0)(0)|(0)(0)|462|(0)|483|515) */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x08b1, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x08cb, code lost:
    
        org.telegram.messenger.FileLog.m898e(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03a1 A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03ac A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03b7 A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0482  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0485 A[PHI: r13
  0x0485: PHI (r13v4 int A[IMMUTABLE_TYPE]) = (r13v3 int), (r13v35 int) binds: [B:186:0x0480, B:188:0x0484] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0562  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x05c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05d4  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0685  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0712 A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0721 A[Catch: Exception -> 0x0b64, TRY_ENTER, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0735 A[Catch: Exception -> 0x0b64, TRY_LEAVE, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x07b2  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x085c A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x086b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x08aa A[Catch: all -> 0x08b1, TryCatch #0 {all -> 0x08b1, blocks: (B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd), top: B:491:0x088e, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:354:0x08b7 A[Catch: all -> 0x08b1, TryCatch #0 {all -> 0x08b1, blocks: (B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd), top: B:491:0x088e, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x08d1 A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x08d6  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x092a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x092c  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x096c  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0970 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0a59  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0a5c A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0a66  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0a6b A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0a77  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x0a9e A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0ab0 A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:472:0x0ace A[Catch: Exception -> 0x0b64, TryCatch #3 {Exception -> 0x0b64, blocks: (B:13:0x002c, B:14:0x003a, B:16:0x0042, B:18:0x0053, B:19:0x0055, B:21:0x0059, B:23:0x0063, B:25:0x0073, B:26:0x0077, B:29:0x007e, B:32:0x0086, B:33:0x0099, B:35:0x00a1, B:36:0x00d7, B:38:0x00f9, B:41:0x0101, B:43:0x0109, B:46:0x0110, B:50:0x0124, B:69:0x01de, B:71:0x020d, B:73:0x021f, B:75:0x0225, B:77:0x0229, B:79:0x0247, B:81:0x024e, B:85:0x0261, B:89:0x026d, B:91:0x0279, B:92:0x027f, B:94:0x028a, B:96:0x0290, B:98:0x029c, B:99:0x02a7, B:100:0x02b1, B:102:0x02c1, B:104:0x02cf, B:106:0x02d5, B:115:0x02fe, B:117:0x0309, B:125:0x032d, B:127:0x0333, B:132:0x0344, B:134:0x034a, B:139:0x0352, B:142:0x0365, B:156:0x0395, B:158:0x0399, B:167:0x03b7, B:169:0x03c0, B:171:0x03c8, B:174:0x03f5, B:184:0x046c, B:190:0x048f, B:192:0x04b4, B:194:0x04cc, B:196:0x04d0, B:201:0x04da, B:203:0x04e2, B:207:0x04ef, B:208:0x0503, B:210:0x0509, B:211:0x051d, B:212:0x0530, B:214:0x0536, B:215:0x053e, B:235:0x05c4, B:246:0x05dd, B:248:0x05fb, B:251:0x062d, B:253:0x0637, B:256:0x064e, B:258:0x065c, B:259:0x0668, B:261:0x066c, B:266:0x0690, B:268:0x0712, B:269:0x071a, B:272:0x0721, B:336:0x080f, B:338:0x085c, B:339:0x0863, B:342:0x086d, B:344:0x0871, B:346:0x0877, B:359:0x08d1, B:381:0x0932, B:407:0x0974, B:413:0x0983, B:415:0x098b, B:416:0x09ad, B:418:0x09b2, B:420:0x09ba, B:423:0x09c2, B:425:0x09ca, B:429:0x09d3, B:445:0x0a5c, B:449:0x0a6b, B:462:0x0aaa, B:464:0x0ab0, B:466:0x0ab4, B:468:0x0abf, B:470:0x0ac5, B:472:0x0ace, B:474:0x0add, B:476:0x0ae9, B:478:0x0b08, B:479:0x0b0d, B:481:0x0b35, B:482:0x0b3e, B:483:0x0b48, B:452:0x0a79, B:458:0x0a8a, B:460:0x0a97, B:430:0x09f7, B:431:0x09fc, B:432:0x09ff, B:434:0x0a05, B:435:0x0a0b, B:437:0x0a13, B:441:0x0a4a, B:442:0x0a52, B:461:0x0a9e, B:390:0x0946, B:394:0x0952, B:397:0x095c, B:400:0x0965, B:362:0x08d8, B:364:0x08e5, B:357:0x08cb, B:274:0x0735, B:278:0x0744, B:282:0x074f, B:281:0x074c, B:284:0x075d, B:286:0x0761, B:287:0x076a, B:289:0x0772, B:290:0x0781, B:291:0x0788, B:294:0x0792, B:297:0x079d, B:300:0x07a5, B:301:0x07a8, B:303:0x07ae, B:306:0x07b5, B:308:0x07bd, B:311:0x07c5, B:313:0x07c9, B:315:0x07cd, B:317:0x07d3, B:321:0x07dd, B:323:0x07e3, B:325:0x07e7, B:327:0x07ed, B:331:0x07f4, B:333:0x07ff, B:335:0x0805, B:217:0x0552, B:223:0x056a, B:229:0x05ad, B:232:0x05b3, B:224:0x057e, B:226:0x0584, B:227:0x0598, B:178:0x0407, B:181:0x0413, B:182:0x042c, B:172:0x03d5, B:162:0x03a1, B:164:0x03ac, B:152:0x0380, B:153:0x0387, B:154:0x038e, B:130:0x033a, B:131:0x033f, B:108:0x02e4, B:110:0x02ea, B:84:0x025e, B:52:0x0133, B:54:0x0139, B:55:0x013e, B:58:0x0148, B:59:0x0151, B:60:0x0162, B:62:0x0168, B:63:0x017d, B:65:0x0184, B:67:0x018c, B:68:0x01b7, B:48:0x0119, B:70:0x01fe, B:347:0x088e, B:349:0x08aa, B:352:0x08b3, B:354:0x08b7, B:355:0x08bd, B:439:0x0a1d), top: B:497:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Type inference failed for: r0v37, types: [org.telegram.messenger.FileLoader] */
    /* JADX WARN: Type inference failed for: r0v68, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r0v69, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r10v20, types: [androidx.core.app.NotificationCompat$Builder] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r14v12, types: [int] */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v30 */
    /* JADX WARN: Type inference failed for: r14v31 */
    /* JADX WARN: Type inference failed for: r14v32 */
    /* JADX WARN: Type inference failed for: r14v33 */
    /* JADX WARN: Type inference failed for: r14v39 */
    /* JADX WARN: Type inference failed for: r14v40 */
    /* JADX WARN: Type inference failed for: r14v41 */
    /* JADX WARN: Type inference failed for: r14v42 */
    /* JADX WARN: Type inference failed for: r14v43 */
    /* JADX WARN: Type inference failed for: r14v44 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r1v3, types: [org.telegram.messenger.BaseController, org.telegram.messenger.NotificationsController] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v11, types: [android.content.SharedPreferences] */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v57, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r7v15, types: [androidx.core.app.NotificationCompat$Builder] */
    /* JADX WARN: Type inference failed for: r7v16, types: [androidx.core.app.NotificationCompat$Builder] */
    /* JADX WARN: Type inference failed for: r7v8, types: [androidx.core.app.NotificationCompat$Builder] */
    /* JADX WARN: Type inference failed for: r8v12, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v34 */
    /* JADX WARN: Type inference failed for: r8v35 */
    /* JADX WARN: Type inference failed for: r8v36 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showOrUpdateNotification(boolean z) {
        String str;
        MessageObject messageObject;
        Bitmap bitmap;
        MessageObject messageObject2;
        SharedPreferences sharedPreferences;
        long j;
        long j2;
        boolean z2;
        TLRPC.Chat chat;
        boolean z3;
        SharedPreferences sharedPreferences2;
        long j3;
        boolean zIsGlobalNotificationsEnabled;
        ?? r1;
        String userName;
        boolean z4;
        String string;
        boolean z5;
        String str2;
        String string2;
        boolean z6;
        String str3;
        long j4;
        TLRPC.User user;
        TLRPC.Chat chat2;
        String string3;
        long j5;
        SharedPreferences sharedPreferences3;
        boolean z7;
        MessageObject messageObject3;
        String stringForMessage;
        String strReplace;
        ?? r14;
        ?? r4;
        boolean z8;
        MessageObject messageObject4;
        SharedPreferences sharedPreferences4;
        long j6;
        boolean z9;
        MessageObject messageObject5;
        TLRPC.Chat chat3;
        MessageObject messageObject6;
        int i;
        int i2;
        TLRPC.User user2;
        boolean z10;
        TLRPC.FileLocation fileLocation;
        TLRPC.FileLocation fileLocation2;
        ?? r8;
        int i3;
        ?? r6;
        int i4;
        long[] jArr;
        Uri uri;
        TLRPC.ReplyMarkup replyMarkup;
        int size;
        int i5;
        ArrayList<TLRPC.TL_keyboardButtonRow> arrayList;
        int i6;
        MessageObject messageObject7;
        String str4;
        Uri uriForFile;
        int i7;
        long[] jArr2;
        String str5;
        int i8;
        boolean z11;
        String pluralString;
        if (!getUserConfig().isClientActivated() || ((this.pushMessages.isEmpty() && this.storyPushMessages.isEmpty()) || (!SharedConfig.showNotificationsForAllAccounts && this.currentAccount != UserConfig.selectedAccount))) {
            dismissNotification();
            return;
        }
        try {
            getConnectionsManager().resumeNetworkMaybe();
            long j7 = 0;
            Object obj = null;
            for (int i9 = 0; i9 < this.pushMessages.size(); i9++) {
                MessageObject messageObject8 = this.pushMessages.get(i9);
                int i10 = messageObject8.messageOwner.date;
                if (j7 < i10) {
                    j7 = i10;
                    obj = messageObject8;
                }
            }
            for (int i11 = 0; i11 < this.storyPushMessages.size(); i11++) {
                StoryNotification storyNotification = this.storyPushMessages.get(i11);
                long j8 = storyNotification.date;
                if (j7 < j8 / 1000) {
                    obj = storyNotification;
                    j7 = j8 / 1000;
                }
            }
            if (obj == null) {
                return;
            }
            boolean z12 = obj instanceof StoryNotification;
            String str6 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (z12) {
                StoryNotification storyNotification2 = (StoryNotification) obj;
                TLRPC.TL_message tL_message = new TLRPC.TL_message();
                tL_message.date = (int) (System.currentTimeMillis() / 1000);
                int i12 = 0;
                boolean z13 = false;
                int size2 = 0;
                while (i12 < this.storyPushMessages.size()) {
                    z13 |= this.storyPushMessages.get(i12).hidden;
                    tL_message.date = Math.min(tL_message.date, (int) (this.storyPushMessages.get(i12).date / 1000));
                    size2 += this.storyPushMessages.get(i12).dateByIds.size();
                    i12++;
                    str6 = str6;
                }
                String str7 = str6;
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                long j9 = storyNotification2.dialogId;
                tL_peerUser.user_id = j9;
                tL_message.dialog_id = j9;
                tL_message.peer_id = tL_peerUser;
                ArrayList<String> arrayList2 = new ArrayList<>();
                ArrayList<Object> arrayList3 = new ArrayList<>();
                parseStoryPushes(arrayList2, arrayList3);
                Bitmap bitmapLoadMultipleAvatars = SharedConfig.getDevicePerformanceClass() >= 1 ? loadMultipleAvatars(arrayList3) : null;
                if (z13 || this.storyPushMessages.size() >= 2 || arrayList2.isEmpty()) {
                    pluralString = LocaleController.formatPluralString("Stories", size2, new Object[0]);
                } else {
                    pluralString = arrayList2.get(0);
                }
                String str8 = pluralString;
                if (z13) {
                    tL_message.message = LocaleController.formatPluralString("StoryNotificationHidden", size2, new Object[0]);
                    str = str7;
                } else if (arrayList2.isEmpty()) {
                    str = str7;
                    tL_message.message = str;
                } else {
                    str = str7;
                    if (arrayList2.size() == 1) {
                        if (size2 == 1) {
                            tL_message.message = LocaleController.getString("StoryNotificationSingle");
                        } else {
                            tL_message.message = LocaleController.formatPluralString("StoryNotification1", size2, arrayList2.get(0));
                        }
                    } else if (arrayList2.size() == 2) {
                        tL_message.message = LocaleController.formatString(C2573R.string.StoryNotification2, arrayList2.get(0), arrayList2.get(1));
                    } else {
                        if (arrayList2.size() == 3 && this.storyPushMessages.size() == 3) {
                            tL_message.message = LocaleController.formatString(C2573R.string.StoryNotification3, cutLastName(arrayList2.get(0)), cutLastName(arrayList2.get(1)), cutLastName(arrayList2.get(2)));
                        } else {
                            tL_message.message = LocaleController.formatPluralString("StoryNotification4", this.storyPushMessages.size() - 2, cutLastName(arrayList2.get(0)), cutLastName(arrayList2.get(1)));
                        }
                        MessageObject messageObject9 = new MessageObject(this.currentAccount, tL_message, tL_message.message, str8, str8, false, false, false, false);
                        messageObject9.isStoryPush = true;
                        messageObject = messageObject9;
                        bitmap = bitmapLoadMultipleAvatars;
                    }
                }
                MessageObject messageObject92 = new MessageObject(this.currentAccount, tL_message, tL_message.message, str8, str8, false, false, false, false);
                messageObject92.isStoryPush = true;
                messageObject = messageObject92;
                bitmap = bitmapLoadMultipleAvatars;
            } else {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
                messageObject = this.pushMessages.get(0);
                bitmap = null;
            }
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            int i13 = notificationsSettings.getInt("dismissDate", 0);
            if (!messageObject.isStoryPush && messageObject.messageOwner.date <= i13) {
                dismissNotification();
                return;
            }
            long dialogId = messageObject.getDialogId();
            long topicId = MessageObject.getTopicId(this.currentAccount, messageObject.messageOwner, getMessagesController().isForum(messageObject));
            boolean z14 = messageObject.isStoryPush;
            long fromChatId = messageObject.messageOwner.mentioned ? messageObject.getFromChatId() : dialogId;
            messageObject.getId();
            TLRPC.Peer peer = messageObject.messageOwner.peer_id;
            long jLongValue = peer.chat_id;
            if (jLongValue == 0) {
                jLongValue = peer.channel_id;
            }
            Bitmap bitmap2 = bitmap;
            long jLongValue2 = peer.user_id;
            if (messageObject.isFromUser() && (jLongValue2 == 0 || jLongValue2 == getUserConfig().getClientUserId())) {
                jLongValue2 = messageObject.messageOwner.from_id.user_id;
            }
            if (messageObject.getDialogId() == UserObject.VERIFY && messageObject.getForwardedFromId() != null) {
                if (messageObject.getForwardedFromId().longValue() >= 0) {
                    jLongValue2 = messageObject.getForwardedFromId().longValue();
                    jLongValue = 0;
                } else {
                    jLongValue = messageObject.getForwardedFromId().longValue();
                    jLongValue2 = 0;
                }
            }
            TLRPC.User user3 = getMessagesController().getUser(Long.valueOf(jLongValue2));
            if (jLongValue != 0) {
                TLRPC.Chat chat4 = getMessagesController().getChat(Long.valueOf(jLongValue));
                if (chat4 == null && messageObject.isFcmMessage()) {
                    z11 = messageObject.localChannel;
                } else {
                    z11 = ChatObject.isChannel(chat4) && !chat4.megagroup;
                }
                z2 = z14;
                long j10 = jLongValue2;
                messageObject2 = messageObject;
                sharedPreferences = notificationsSettings;
                z3 = z11;
                chat = chat4;
                j = fromChatId;
                j2 = j10;
            } else {
                messageObject2 = messageObject;
                sharedPreferences = notificationsSettings;
                j = fromChatId;
                j2 = jLongValue2;
                z2 = z14;
                chat = null;
                z3 = false;
            }
            int notifyOverride = getNotifyOverride(sharedPreferences, j, topicId);
            long j11 = j;
            if (notifyOverride == -1) {
                Boolean boolValueOf = Boolean.valueOf(z3);
                boolean z15 = messageObject2.isReactionPush;
                NotificationsController notificationsController = this;
                SharedPreferences sharedPreferences5 = sharedPreferences;
                j3 = dialogId;
                zIsGlobalNotificationsEnabled = notificationsController.isGlobalNotificationsEnabled(j3, boolValueOf, z15, z15);
                sharedPreferences2 = sharedPreferences5;
                r1 = notificationsController;
            } else {
                NotificationsController notificationsController2 = this;
                sharedPreferences2 = sharedPreferences;
                j3 = dialogId;
                if (notifyOverride != 2) {
                    zIsGlobalNotificationsEnabled = true;
                    r1 = notificationsController2;
                } else {
                    zIsGlobalNotificationsEnabled = false;
                    r1 = notificationsController2;
                }
            }
            if (((jLongValue != 0 && chat == null) || user3 == null) && messageObject2.isFcmMessage()) {
                userName = messageObject2.localName;
            } else if (chat != null) {
                userName = r1.getTitle(chat);
            } else {
                userName = UserObject.getUserName(user3);
            }
            String str9 = userName;
            boolean z16 = AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter;
            boolean z17 = zIsGlobalNotificationsEnabled;
            boolean zEqualsIgnoreCase = "samsung".equalsIgnoreCase(Build.MANUFACTURER);
            if (DialogObject.isEncryptedDialog(j3)) {
                z4 = zEqualsIgnoreCase;
            } else {
                if (zEqualsIgnoreCase) {
                    z4 = zEqualsIgnoreCase;
                } else {
                    z4 = zEqualsIgnoreCase;
                    if (r1.pushDialogs.size() <= 1) {
                    }
                }
                if (!z16) {
                    string = str9;
                    z5 = true;
                    if (!messageObject2.isReactionPush || messageObject2.isStoryReactionPush) {
                        str2 = string;
                        if (sharedPreferences2.getBoolean("EnableReactionsPreview", true)) {
                            string2 = LocaleController.getString(C2573R.string.NotificationHiddenName);
                        }
                        if (z4) {
                            z6 = z5;
                            str3 = "currentAccount";
                            j4 = jLongValue;
                            user = user3;
                            chat2 = chat;
                            string3 = str;
                        } else {
                            z6 = z5;
                            if (UserConfig.getActivatedAccountsCount() <= 1) {
                                string3 = str;
                            } else if (r1.pushDialogs.size() == 1) {
                                string3 = UserObject.getFirstName(r1.getUserConfig().getCurrentUser());
                            } else {
                                string3 = UserObject.getFirstName(r1.getUserConfig().getCurrentUser()) + "・";
                            }
                            str3 = "currentAccount";
                            if (r1.pushDialogs.size() == 1) {
                                j4 = jLongValue;
                            } else {
                                j4 = jLongValue;
                                if (r1.pushDialogs.size() == 1) {
                                    string3 = string3 + LocaleController.formatPluralString("NewMessages", r1.total_unread_count, new Object[0]);
                                } else {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(string3);
                                    user = user3;
                                    chat2 = chat;
                                    sb.append(LocaleController.formatString(C2573R.string.NotificationMessagesPeopleDisplayOrder, LocaleController.formatPluralString("NewMessages", r1.total_unread_count, new Object[0]), LocaleController.formatPluralString("FromChats", r1.pushDialogs.size(), new Object[0])));
                                    string3 = sb.toString();
                                }
                            }
                            user = user3;
                            chat2 = chat;
                        }
                        ?? builder = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
                        int i14 = 1;
                        if (r1.pushMessages.size() <= 1) {
                            j5 = j3;
                            sharedPreferences3 = sharedPreferences2;
                            z7 = z3;
                            boolean[] zArr = new boolean[i14];
                            messageObject3 = messageObject2;
                            stringForMessage = r1.getStringForMessage(messageObject3, false, zArr, null);
                            boolean zIsSilentMessage = r1.isSilentMessage(messageObject3);
                            if (stringForMessage != null) {
                                return;
                            }
                            if (!z6) {
                                strReplace = stringForMessage;
                            } else if (chat2 != null && !z4) {
                                strReplace = stringForMessage.replace(" @ " + string2, str);
                            } else if (zArr[0]) {
                                strReplace = stringForMessage.replace(string2 + ": ", str);
                            } else {
                                strReplace = stringForMessage.replace(string2 + " ", str);
                            }
                            builder.setContentText(strReplace);
                            if (z4) {
                                string3 = strReplace;
                            }
                            builder.setStyle(new NotificationCompat.BigTextStyle().bigText(strReplace));
                            r14 = zIsSilentMessage;
                        } else if (z4) {
                            i14 = 1;
                            j5 = j3;
                            sharedPreferences3 = sharedPreferences2;
                            z7 = z3;
                            boolean[] zArr2 = new boolean[i14];
                            messageObject3 = messageObject2;
                            stringForMessage = r1.getStringForMessage(messageObject3, false, zArr2, null);
                            boolean zIsSilentMessage2 = r1.isSilentMessage(messageObject3);
                            if (stringForMessage != null) {
                            }
                        } else {
                            builder.setContentText(string3);
                            NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
                            inboxStyle.setBigContentTitle(string2);
                            z7 = z3;
                            int iMin = Math.min(10, r1.pushMessages.size());
                            sharedPreferences3 = sharedPreferences2;
                            boolean[] zArr3 = new boolean[1];
                            j5 = j3;
                            int i15 = 0;
                            String str10 = null;
                            ?? r142 = 2;
                            while (i15 < iMin) {
                                String str11 = str10;
                                MessageObject messageObject10 = r1.pushMessages.get(i15);
                                int i16 = i15;
                                int i17 = iMin;
                                MessageObject messageObject11 = messageObject2;
                                String stringForMessage2 = r1.getStringForMessage(messageObject10, false, zArr3, null);
                                if (stringForMessage2 == null || (!messageObject10.isStoryPush && messageObject10.messageOwner.date <= i13)) {
                                    str10 = str11;
                                } else {
                                    if (r142 == 2) {
                                        boolean zIsSilentMessage3 = r1.isSilentMessage(messageObject10);
                                        str10 = stringForMessage2;
                                        r142 = zIsSilentMessage3;
                                    } else {
                                        str10 = str11;
                                        r142 = r142;
                                    }
                                    if (r1.pushDialogs.size() == 1 && z6) {
                                        if (chat2 != null) {
                                            stringForMessage2 = stringForMessage2.replace(" @ " + string2, str);
                                        } else if (zArr3[0]) {
                                            stringForMessage2 = stringForMessage2.replace(string2 + ": ", str);
                                        } else {
                                            stringForMessage2 = stringForMessage2.replace(string2 + " ", str);
                                        }
                                    }
                                    inboxStyle.addLine(stringForMessage2);
                                }
                                i15 = i16 + 1;
                                iMin = i17;
                                messageObject2 = messageObject11;
                                r142 = r142;
                            }
                            inboxStyle.setSummaryText(string3);
                            builder.setStyle(inboxStyle);
                            stringForMessage = str10;
                            messageObject3 = messageObject2;
                            r14 = r142;
                        }
                        String str12 = string3;
                        r4 = r14;
                        z8 = !z || !z17 || MediaController.getInstance().isRecordingAudio() || r4 == 1;
                        if (z8 || j5 != j11 || chat2 == null) {
                            messageObject4 = messageObject3;
                            sharedPreferences4 = sharedPreferences3;
                            j6 = j5;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(NotificationsSettingsFacade.PROPERTY_CUSTOM);
                            j6 = j5;
                            sb2.append(j6);
                            sharedPreferences4 = sharedPreferences3;
                            int i18 = 180;
                            if (sharedPreferences4.getBoolean(sb2.toString(), false)) {
                                i8 = sharedPreferences4.getInt("smart_max_count_" + j6, 2);
                                i18 = sharedPreferences4.getInt("smart_delay_" + j6, 180);
                            } else {
                                i8 = 2;
                            }
                            if (i8 != 0) {
                                Point point = r1.smartNotificationsDialogs.get(j6);
                                if (point == null) {
                                    r1.smartNotificationsDialogs.put(j6, new Point(1, (int) (SystemClock.elapsedRealtime() / 1000)));
                                } else if (point.y + i18 < SystemClock.elapsedRealtime() / 1000) {
                                    point.set(1, (int) (SystemClock.elapsedRealtime() / 1000));
                                } else {
                                    int i19 = point.x;
                                    if (i19 < i8) {
                                        messageObject4 = messageObject3;
                                        point.set(i19 + 1, (int) (SystemClock.elapsedRealtime() / 1000));
                                        z9 = z8;
                                        messageObject5 = messageObject4;
                                        long j12 = j6;
                                        boolean z18 = messageObject5.isReactionPush;
                                        boolean z19 = messageObject5.isStoryReactionPush;
                                        MessageObject messageObject12 = messageObject5;
                                        String str13 = stringForMessage;
                                        String str14 = string2;
                                        ?? r2 = sharedPreferences4;
                                        String str15 = str;
                                        long j13 = j2;
                                        String str16 = str3;
                                        long j14 = j4;
                                        chat3 = chat2;
                                        DialogNotificationSettings dialogNotificationSettingsComputeDialogNotificationSettings = r1.computeDialogNotificationSettings(r2, j12, topicId, z2, z18, z19, j14, j13, z7, z9);
                                        boolean z20 = dialogNotificationSettingsComputeDialogNotificationSettings.notifyDisabled;
                                        int i20 = dialogNotificationSettingsComputeDialogNotificationSettings.vibrate;
                                        String str17 = dialogNotificationSettingsComputeDialogNotificationSettings.soundPath;
                                        boolean z21 = dialogNotificationSettingsComputeDialogNotificationSettings.isInternalSoundFile;
                                        int i21 = dialogNotificationSettingsComputeDialogNotificationSettings.ledColor;
                                        int i22 = dialogNotificationSettingsComputeDialogNotificationSettings.importance;
                                        String path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                                        boolean z22 = dialogNotificationSettingsComputeDialogNotificationSettings.isDefault;
                                        boolean z23 = dialogNotificationSettingsComputeDialogNotificationSettings.isInApp;
                                        int i23 = dialogNotificationSettingsComputeDialogNotificationSettings.chatType;
                                        long j15 = j12;
                                        Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                                        intent.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                                        intent.setFlags(67108864);
                                        messageObject6 = messageObject12;
                                        if (messageObject6.isOauthPush) {
                                            intent.putExtra("oauth_url", messageObject6.localName);
                                        }
                                        if (messageObject6.isStoryReactionPush) {
                                            intent.putExtra("storyId", Math.abs(messageObject6.getId()));
                                            i2 = i20;
                                            i = i21;
                                        } else {
                                            i = i21;
                                            if (messageObject6.isLiveStoryPush) {
                                                if (jLongValue != 0) {
                                                    intent.putExtra("chatId", j14);
                                                } else if (j13 != 0) {
                                                    intent.putExtra("userId", j13);
                                                }
                                                intent.putExtra("storyId", Math.abs(messageObject6.getId()));
                                            } else if (messageObject6.isStoryPush) {
                                                long[] jArr3 = new long[r1.storyPushMessages.size()];
                                                for (int i24 = 0; i24 < r1.storyPushMessages.size(); i24++) {
                                                    jArr3[i24] = r1.storyPushMessages.get(i24).dialogId;
                                                }
                                                intent.putExtra("storyDialogIds", jArr3);
                                            } else {
                                                boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j15);
                                                LongSparseArray<Integer> longSparseArray = r1.pushDialogs;
                                                if (!zIsEncryptedDialog) {
                                                    i2 = i20;
                                                    z10 = true;
                                                    r8 = 1;
                                                    r8 = 1;
                                                    z10 = true;
                                                    z10 = true;
                                                    z10 = true;
                                                    z10 = true;
                                                    if (longSparseArray.size() == 1) {
                                                        if (jLongValue != 0) {
                                                            intent.putExtra("chatId", j14);
                                                        } else if (j13 != 0) {
                                                            intent.putExtra("userId", j13);
                                                        }
                                                    }
                                                    if (AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter || r1.pushDialogs.size() != 1 || Build.VERSION.SDK_INT >= 28) {
                                                        user2 = user;
                                                    } else if (chat3 != null) {
                                                        TLRPC.ChatPhoto chatPhoto = chat3.photo;
                                                        if (chatPhoto != null && (fileLocation2 = chatPhoto.photo_small) != null && fileLocation2.volume_id != 0 && fileLocation2.local_id != 0) {
                                                            fileLocation = fileLocation2;
                                                            user2 = user;
                                                        }
                                                        user2 = user;
                                                    } else if (user != null) {
                                                        user2 = user;
                                                        TLRPC.UserProfilePhoto userProfilePhoto = user2.photo;
                                                        if (userProfilePhoto == null || (fileLocation = userProfilePhoto.photo_small) == null || fileLocation.volume_id == 0 || fileLocation.local_id == 0) {
                                                        }
                                                    }
                                                    intent.putExtra(str16, r1.currentAccount);
                                                    builder.setContentTitle(str14).setSmallIcon(IconManager.getNotificationIcon()).setAutoCancel(r8).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(r8).setShowWhen(r8).setWhen(((long) messageObject6.messageOwner.date) * 1000);
                                                    if (Build.VERSION.SDK_INT < 31) {
                                                        builder.setColor(r1.getNotificationColor());
                                                    }
                                                    builder.setCategory("msg");
                                                    if (chat3 == null && user2 != null && (str5 = user2.phone) != null && str5.length() > 0) {
                                                        builder.addPerson("tel:+" + user2.phone);
                                                    }
                                                    ?? intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                    intent2.putExtra("messageDate", messageObject6.messageOwner.date);
                                                    intent2.putExtra(str16, r1.currentAccount);
                                                    if (messageObject6.isStoryPush) {
                                                        intent2.putExtra("story", r8);
                                                    }
                                                    if (messageObject6.isStoryReactionPush) {
                                                        intent2.putExtra("storyReaction", r8);
                                                    }
                                                    builder.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, r8, intent2, 167772160));
                                                    if (bitmap2 != null) {
                                                        builder.setLargeIcon(bitmap2);
                                                    } else {
                                                        if (fileLocation != null) {
                                                            BitmapDrawable imageFromMemory = ImageLoader.getInstance().getImageFromMemory(fileLocation, null, "50_50");
                                                            if (imageFromMemory != null) {
                                                                builder.setLargeIcon(imageFromMemory.getBitmap());
                                                            } else {
                                                                try {
                                                                    File pathToAttach = r1.getFileLoader().getPathToAttach(fileLocation, r8);
                                                                    if (pathToAttach.exists()) {
                                                                        float fDp = 160.0f / AndroidUtilities.dp(50.0f);
                                                                        BitmapFactory.Options options = new BitmapFactory.Options();
                                                                        options.inSampleSize = fDp < 1.0f ? r8 : (int) fDp;
                                                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(pathToAttach.getAbsolutePath(), options);
                                                                        if (bitmapDecodeFile != null) {
                                                                            builder.setLargeIcon(bitmapDecodeFile);
                                                                        }
                                                                    }
                                                                } catch (Throwable unused) {
                                                                }
                                                            }
                                                        }
                                                        if (z || r4 == r8) {
                                                            i3 = 2;
                                                            builder.setPriority(-1);
                                                            if (Build.VERSION.SDK_INT >= 26) {
                                                                r6 = i3;
                                                            }
                                                        } else if (i22 == 0) {
                                                            builder.setPriority(0);
                                                            if (Build.VERSION.SDK_INT >= 26) {
                                                                i3 = 2;
                                                                r6 = 3;
                                                            } else {
                                                                i3 = 2;
                                                            }
                                                        } else {
                                                            i3 = 2;
                                                            if (i22 == r8 || i22 == 2) {
                                                                builder.setPriority(r8);
                                                                r6 = Build.VERSION.SDK_INT >= 26 ? 4 : 0;
                                                            } else if (i22 == 4) {
                                                                builder.setPriority(-2);
                                                                if (Build.VERSION.SDK_INT >= 26) {
                                                                    r6 = r8;
                                                                }
                                                            } else if (i22 == 5) {
                                                                builder.setPriority(-1);
                                                                if (Build.VERSION.SDK_INT >= 26) {
                                                                    r6 = i3;
                                                                }
                                                            }
                                                        }
                                                        if (r4 == r8 && !z20) {
                                                            if (z23) {
                                                                if (r2.getBoolean("EnableInAppPreview", r8) && (str4 = str13) != null) {
                                                                }
                                                                if (str17 != null || str17.equalsIgnoreCase("NoSound")) {
                                                                    uriForFile = null;
                                                                    if (i == 0) {
                                                                        i4 = i;
                                                                        builder.setLights(i4, 1000, 1000);
                                                                    } else {
                                                                        i4 = i;
                                                                    }
                                                                    i7 = i2;
                                                                    if (i7 != i3) {
                                                                        jArr2 = new long[i3];
                                                                        // fill-array-data instruction
                                                                        jArr2[0] = 0;
                                                                        jArr2[1] = 0;
                                                                        builder.setVibrate(jArr2);
                                                                    } else if (i7 == r8) {
                                                                        jArr2 = new long[]{0, 100, 0, 100};
                                                                        builder.setVibrate(jArr2);
                                                                    } else if (i7 == 0 || i7 == 4) {
                                                                        builder.setDefaults(i3);
                                                                        jArr2 = new long[0];
                                                                    } else if (i7 == 3) {
                                                                        jArr2 = new long[i3];
                                                                        // fill-array-data instruction
                                                                        jArr2[0] = 0;
                                                                        jArr2[1] = 1000;
                                                                        builder.setVibrate(jArr2);
                                                                    } else {
                                                                        uri = uriForFile;
                                                                        jArr = null;
                                                                    }
                                                                    uri = uriForFile;
                                                                    jArr = jArr2;
                                                                } else if (Build.VERSION.SDK_INT >= 26) {
                                                                    if (str17.equalsIgnoreCase("Default") || str17.equals(path)) {
                                                                        uriForFile = Settings.System.DEFAULT_NOTIFICATION_URI;
                                                                    } else if (z21) {
                                                                        uriForFile = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", new File(str17));
                                                                        ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", uriForFile, r8);
                                                                    } else {
                                                                        uriForFile = Uri.parse(str17);
                                                                    }
                                                                    if (i == 0) {
                                                                    }
                                                                    i7 = i2;
                                                                    if (i7 != i3) {
                                                                    }
                                                                    uri = uriForFile;
                                                                    jArr = jArr2;
                                                                } else {
                                                                    if (str17.equals(path)) {
                                                                        builder.setSound(Settings.System.DEFAULT_NOTIFICATION_URI, 5);
                                                                    } else if (str17.startsWith("file://") && !AndroidUtilities.isInternalUri(Uri.parse(str17))) {
                                                                        try {
                                                                            Uri uriForFile2 = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", new File(str17.replace("file://", str15)));
                                                                            ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", uriForFile2, r8);
                                                                            builder.setSound(uriForFile2, 5);
                                                                        } catch (Exception unused2) {
                                                                            builder.setSound(Uri.parse(str17), 5);
                                                                        }
                                                                    } else {
                                                                        builder.setSound(Uri.parse(str17), 5);
                                                                    }
                                                                    uriForFile = null;
                                                                    if (i == 0) {
                                                                    }
                                                                    i7 = i2;
                                                                    if (i7 != i3) {
                                                                    }
                                                                    uri = uriForFile;
                                                                    jArr = jArr2;
                                                                }
                                                            } else {
                                                                str4 = str13;
                                                            }
                                                            if (str4.length() > 100) {
                                                                str4 = str4.substring(0, 100).replace('\n', ' ').trim() + "...";
                                                            }
                                                            builder.setTicker(str4);
                                                            if (str17 != null) {
                                                                uriForFile = null;
                                                                if (i == 0) {
                                                                }
                                                                i7 = i2;
                                                                if (i7 != i3) {
                                                                }
                                                                uri = uriForFile;
                                                                jArr = jArr2;
                                                            }
                                                        } else {
                                                            i4 = i;
                                                            jArr = new long[i3];
                                                            // fill-array-data instruction
                                                            jArr[0] = 0;
                                                            jArr[1] = 0;
                                                            builder.setVibrate(jArr);
                                                            uri = null;
                                                        }
                                                        if (!AndroidUtilities.needShowPasscode() && !SharedConfig.isWaitingForPasscodeEnter && messageObject6.getDialogId() == 777000 && (replyMarkup = messageObject6.messageOwner.reply_markup) != null) {
                                                            ArrayList<TLRPC.TL_keyboardButtonRow> arrayList4 = replyMarkup.rows;
                                                            size = arrayList4.size();
                                                            for (i5 = 0; i5 < size; i5++) {
                                                                TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow = arrayList4.get(i5);
                                                                int size3 = tL_keyboardButtonRow.buttons.size();
                                                                int i25 = 0;
                                                                while (i25 < size3) {
                                                                    TLRPC.KeyboardButton keyboardButton = tL_keyboardButtonRow.buttons.get(i25);
                                                                    if (keyboardButton instanceof TLRPC.TL_keyboardButtonCallback) {
                                                                        arrayList = arrayList4;
                                                                        Intent intent3 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationCallbackReceiver.class);
                                                                        intent3.putExtra(str16, r1.currentAccount);
                                                                        i6 = size;
                                                                        messageObject7 = messageObject6;
                                                                        long j16 = j15;
                                                                        intent3.putExtra("did", j16);
                                                                        byte[] bArr = keyboardButton.data;
                                                                        if (bArr != null) {
                                                                            intent3.putExtra("data", bArr);
                                                                        }
                                                                        intent3.putExtra("mid", messageObject7.getId());
                                                                        String str18 = keyboardButton.text;
                                                                        Context context = ApplicationLoader.applicationContext;
                                                                        int i26 = r1.lastButtonId;
                                                                        j15 = j16;
                                                                        r1.lastButtonId = i26 + 1;
                                                                        builder.addAction(0, str18, PendingIntent.getBroadcast(context, i26, intent3, 201326592));
                                                                    } else {
                                                                        arrayList = arrayList4;
                                                                        i6 = size;
                                                                        messageObject7 = messageObject6;
                                                                    }
                                                                    i25++;
                                                                    size = i6;
                                                                    arrayList4 = arrayList;
                                                                    messageObject6 = messageObject7;
                                                                }
                                                            }
                                                        }
                                                        r1.showExtraNotifications(builder, str12, j15, topicId, str9, jArr, i4, uri, r6 == true ? 1 : 0, z22, z23, z20, i23);
                                                        scheduleNotificationRepeat();
                                                    }
                                                    if (z) {
                                                        i3 = 2;
                                                        builder.setPriority(-1);
                                                        if (Build.VERSION.SDK_INT >= 26) {
                                                        }
                                                    }
                                                    if (r4 == r8) {
                                                        i4 = i;
                                                        jArr = new long[i3];
                                                        // fill-array-data instruction
                                                        jArr[0] = 0;
                                                        jArr[1] = 0;
                                                        builder.setVibrate(jArr);
                                                        uri = null;
                                                    }
                                                    if (!AndroidUtilities.needShowPasscode()) {
                                                        ArrayList<TLRPC.TL_keyboardButtonRow> arrayList42 = replyMarkup.rows;
                                                        size = arrayList42.size();
                                                        while (i5 < size) {
                                                        }
                                                    }
                                                    r1.showExtraNotifications(builder, str12, j15, topicId, str9, jArr, i4, uri, r6 == true ? 1 : 0, z22, z23, z20, i23);
                                                    scheduleNotificationRepeat();
                                                }
                                                i2 = i20;
                                                user2 = user;
                                                z10 = true;
                                                z10 = true;
                                                z10 = true;
                                                if (longSparseArray.size() == 1 && j15 != globalSecretChatId) {
                                                    intent.putExtra("encId", DialogObject.getEncryptedChatId(j15));
                                                }
                                                fileLocation = null;
                                                r8 = z10;
                                                intent.putExtra(str16, r1.currentAccount);
                                                builder.setContentTitle(str14).setSmallIcon(IconManager.getNotificationIcon()).setAutoCancel(r8).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(r8).setShowWhen(r8).setWhen(((long) messageObject6.messageOwner.date) * 1000);
                                                if (Build.VERSION.SDK_INT < 31) {
                                                }
                                                builder.setCategory("msg");
                                                if (chat3 == null) {
                                                    builder.addPerson("tel:+" + user2.phone);
                                                }
                                                ?? intent22 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                intent22.putExtra("messageDate", messageObject6.messageOwner.date);
                                                intent22.putExtra(str16, r1.currentAccount);
                                                if (messageObject6.isStoryPush) {
                                                }
                                                if (messageObject6.isStoryReactionPush) {
                                                }
                                                builder.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, r8, intent22, 167772160));
                                                if (bitmap2 != null) {
                                                }
                                                if (z) {
                                                }
                                                if (r4 == r8) {
                                                }
                                                if (!AndroidUtilities.needShowPasscode()) {
                                                }
                                                r1.showExtraNotifications(builder, str12, j15, topicId, str9, jArr, i4, uri, r6 == true ? 1 : 0, z22, z23, z20, i23);
                                                scheduleNotificationRepeat();
                                            }
                                            i2 = i20;
                                        }
                                        user2 = user;
                                        z10 = true;
                                        fileLocation = null;
                                        r8 = z10;
                                        intent.putExtra(str16, r1.currentAccount);
                                        builder.setContentTitle(str14).setSmallIcon(IconManager.getNotificationIcon()).setAutoCancel(r8).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(r8).setShowWhen(r8).setWhen(((long) messageObject6.messageOwner.date) * 1000);
                                        if (Build.VERSION.SDK_INT < 31) {
                                        }
                                        builder.setCategory("msg");
                                        if (chat3 == null) {
                                        }
                                        ?? intent222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                        intent222.putExtra("messageDate", messageObject6.messageOwner.date);
                                        intent222.putExtra(str16, r1.currentAccount);
                                        if (messageObject6.isStoryPush) {
                                        }
                                        if (messageObject6.isStoryReactionPush) {
                                        }
                                        builder.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, r8, intent222, 167772160));
                                        if (bitmap2 != null) {
                                        }
                                        if (z) {
                                        }
                                        if (r4 == r8) {
                                        }
                                        if (!AndroidUtilities.needShowPasscode()) {
                                        }
                                        r1.showExtraNotifications(builder, str12, j15, topicId, str9, jArr, i4, uri, r6 == true ? 1 : 0, z22, z23, z20, i23);
                                        scheduleNotificationRepeat();
                                    }
                                    messageObject5 = messageObject3;
                                    z9 = true;
                                    long j122 = j6;
                                    boolean z182 = messageObject5.isReactionPush;
                                    boolean z192 = messageObject5.isStoryReactionPush;
                                    MessageObject messageObject122 = messageObject5;
                                    String str132 = stringForMessage;
                                    String str142 = string2;
                                    ?? r22 = sharedPreferences4;
                                    String str152 = str;
                                    long j132 = j2;
                                    String str162 = str3;
                                    long j142 = j4;
                                    chat3 = chat2;
                                    DialogNotificationSettings dialogNotificationSettingsComputeDialogNotificationSettings2 = r1.computeDialogNotificationSettings(r22, j122, topicId, z2, z182, z192, j142, j132, z7, z9);
                                    boolean z202 = dialogNotificationSettingsComputeDialogNotificationSettings2.notifyDisabled;
                                    int i202 = dialogNotificationSettingsComputeDialogNotificationSettings2.vibrate;
                                    String str172 = dialogNotificationSettingsComputeDialogNotificationSettings2.soundPath;
                                    boolean z212 = dialogNotificationSettingsComputeDialogNotificationSettings2.isInternalSoundFile;
                                    int i212 = dialogNotificationSettingsComputeDialogNotificationSettings2.ledColor;
                                    int i222 = dialogNotificationSettingsComputeDialogNotificationSettings2.importance;
                                    String path2 = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                                    boolean z222 = dialogNotificationSettingsComputeDialogNotificationSettings2.isDefault;
                                    boolean z232 = dialogNotificationSettingsComputeDialogNotificationSettings2.isInApp;
                                    int i232 = dialogNotificationSettingsComputeDialogNotificationSettings2.chatType;
                                    long j152 = j122;
                                    Intent intent4 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                                    intent4.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                                    intent4.setFlags(67108864);
                                    messageObject6 = messageObject122;
                                    if (messageObject6.isOauthPush) {
                                    }
                                    if (messageObject6.isStoryReactionPush) {
                                    }
                                    user2 = user;
                                    z10 = true;
                                    fileLocation = null;
                                    r8 = z10;
                                    intent4.putExtra(str162, r1.currentAccount);
                                    builder.setContentTitle(str142).setSmallIcon(IconManager.getNotificationIcon()).setAutoCancel(r8).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent4, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(r8).setShowWhen(r8).setWhen(((long) messageObject6.messageOwner.date) * 1000);
                                    if (Build.VERSION.SDK_INT < 31) {
                                    }
                                    builder.setCategory("msg");
                                    if (chat3 == null) {
                                    }
                                    ?? intent2222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                    intent2222.putExtra("messageDate", messageObject6.messageOwner.date);
                                    intent2222.putExtra(str162, r1.currentAccount);
                                    if (messageObject6.isStoryPush) {
                                    }
                                    if (messageObject6.isStoryReactionPush) {
                                    }
                                    builder.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, r8, intent2222, 167772160));
                                    if (bitmap2 != null) {
                                    }
                                    if (z) {
                                    }
                                    if (r4 == r8) {
                                    }
                                    if (!AndroidUtilities.needShowPasscode()) {
                                    }
                                    r1.showExtraNotifications(builder, str12, j152, topicId, str9, jArr, i4, uri, r6 == true ? 1 : 0, z222, z232, z202, i232);
                                    scheduleNotificationRepeat();
                                }
                            }
                            messageObject4 = messageObject3;
                        }
                        z9 = z8;
                        messageObject5 = messageObject4;
                        long j1222 = j6;
                        boolean z1822 = messageObject5.isReactionPush;
                        boolean z1922 = messageObject5.isStoryReactionPush;
                        MessageObject messageObject1222 = messageObject5;
                        String str1322 = stringForMessage;
                        String str1422 = string2;
                        ?? r222 = sharedPreferences4;
                        String str1522 = str;
                        long j1322 = j2;
                        String str1622 = str3;
                        long j1422 = j4;
                        chat3 = chat2;
                        DialogNotificationSettings dialogNotificationSettingsComputeDialogNotificationSettings22 = r1.computeDialogNotificationSettings(r222, j1222, topicId, z2, z1822, z1922, j1422, j1322, z7, z9);
                        boolean z2022 = dialogNotificationSettingsComputeDialogNotificationSettings22.notifyDisabled;
                        int i2022 = dialogNotificationSettingsComputeDialogNotificationSettings22.vibrate;
                        String str1722 = dialogNotificationSettingsComputeDialogNotificationSettings22.soundPath;
                        boolean z2122 = dialogNotificationSettingsComputeDialogNotificationSettings22.isInternalSoundFile;
                        int i2122 = dialogNotificationSettingsComputeDialogNotificationSettings22.ledColor;
                        int i2222 = dialogNotificationSettingsComputeDialogNotificationSettings22.importance;
                        String path22 = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                        boolean z2222 = dialogNotificationSettingsComputeDialogNotificationSettings22.isDefault;
                        boolean z2322 = dialogNotificationSettingsComputeDialogNotificationSettings22.isInApp;
                        int i2322 = dialogNotificationSettingsComputeDialogNotificationSettings22.chatType;
                        long j1522 = j1222;
                        Intent intent42 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                        intent42.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                        intent42.setFlags(67108864);
                        messageObject6 = messageObject1222;
                        if (messageObject6.isOauthPush) {
                        }
                        if (messageObject6.isStoryReactionPush) {
                        }
                        user2 = user;
                        z10 = true;
                        fileLocation = null;
                        r8 = z10;
                        intent42.putExtra(str1622, r1.currentAccount);
                        builder.setContentTitle(str1422).setSmallIcon(IconManager.getNotificationIcon()).setAutoCancel(r8).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent42, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(r8).setShowWhen(r8).setWhen(((long) messageObject6.messageOwner.date) * 1000);
                        if (Build.VERSION.SDK_INT < 31) {
                        }
                        builder.setCategory("msg");
                        if (chat3 == null) {
                        }
                        ?? intent22222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                        intent22222.putExtra("messageDate", messageObject6.messageOwner.date);
                        intent22222.putExtra(str1622, r1.currentAccount);
                        if (messageObject6.isStoryPush) {
                        }
                        if (messageObject6.isStoryReactionPush) {
                        }
                        builder.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, r8, intent22222, 167772160));
                        if (bitmap2 != null) {
                        }
                        if (z) {
                        }
                        if (r4 == r8) {
                        }
                        if (!AndroidUtilities.needShowPasscode()) {
                        }
                        r1.showExtraNotifications(builder, str12, j1522, topicId, str9, jArr, i4, uri, r6 == true ? 1 : 0, z2222, z2322, z2022, i2322);
                        scheduleNotificationRepeat();
                    }
                    str2 = string;
                    string2 = str2;
                    if (z4) {
                    }
                    ?? builder2 = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
                    int i142 = 1;
                    if (r1.pushMessages.size() <= 1) {
                    }
                    String str122 = string3;
                    r4 = r14;
                    if (z) {
                    }
                    if (z8) {
                        messageObject4 = messageObject3;
                        sharedPreferences4 = sharedPreferences3;
                        j6 = j5;
                        z9 = z8;
                        messageObject5 = messageObject4;
                    }
                    long j12222 = j6;
                    boolean z18222 = messageObject5.isReactionPush;
                    boolean z19222 = messageObject5.isStoryReactionPush;
                    MessageObject messageObject12222 = messageObject5;
                    String str13222 = stringForMessage;
                    String str14222 = string2;
                    ?? r2222 = sharedPreferences4;
                    String str15222 = str;
                    long j13222 = j2;
                    String str16222 = str3;
                    long j14222 = j4;
                    chat3 = chat2;
                    DialogNotificationSettings dialogNotificationSettingsComputeDialogNotificationSettings222 = r1.computeDialogNotificationSettings(r2222, j12222, topicId, z2, z18222, z19222, j14222, j13222, z7, z9);
                    boolean z20222 = dialogNotificationSettingsComputeDialogNotificationSettings222.notifyDisabled;
                    int i20222 = dialogNotificationSettingsComputeDialogNotificationSettings222.vibrate;
                    String str17222 = dialogNotificationSettingsComputeDialogNotificationSettings222.soundPath;
                    boolean z21222 = dialogNotificationSettingsComputeDialogNotificationSettings222.isInternalSoundFile;
                    int i21222 = dialogNotificationSettingsComputeDialogNotificationSettings222.ledColor;
                    int i22222 = dialogNotificationSettingsComputeDialogNotificationSettings222.importance;
                    String path222 = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                    boolean z22222 = dialogNotificationSettingsComputeDialogNotificationSettings222.isDefault;
                    boolean z23222 = dialogNotificationSettingsComputeDialogNotificationSettings222.isInApp;
                    int i23222 = dialogNotificationSettingsComputeDialogNotificationSettings222.chatType;
                    long j15222 = j12222;
                    Intent intent422 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                    intent422.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                    intent422.setFlags(67108864);
                    messageObject6 = messageObject12222;
                    if (messageObject6.isOauthPush) {
                    }
                    if (messageObject6.isStoryReactionPush) {
                    }
                    user2 = user;
                    z10 = true;
                    fileLocation = null;
                    r8 = z10;
                    intent422.putExtra(str16222, r1.currentAccount);
                    builder2.setContentTitle(str14222).setSmallIcon(IconManager.getNotificationIcon()).setAutoCancel(r8).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent422, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(r8).setShowWhen(r8).setWhen(((long) messageObject6.messageOwner.date) * 1000);
                    if (Build.VERSION.SDK_INT < 31) {
                    }
                    builder2.setCategory("msg");
                    if (chat3 == null) {
                    }
                    ?? intent222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                    intent222222.putExtra("messageDate", messageObject6.messageOwner.date);
                    intent222222.putExtra(str16222, r1.currentAccount);
                    if (messageObject6.isStoryPush) {
                    }
                    if (messageObject6.isStoryReactionPush) {
                    }
                    builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, r8, intent222222, 167772160));
                    if (bitmap2 != null) {
                    }
                    if (z) {
                    }
                    if (r4 == r8) {
                    }
                    if (!AndroidUtilities.needShowPasscode()) {
                    }
                    r1.showExtraNotifications(builder2, str122, j15222, topicId, str9, jArr, i4, uri, r6 == true ? 1 : 0, z22222, z23222, z20222, i23222);
                    scheduleNotificationRepeat();
                }
            }
            if (!z16) {
                string = LocaleController.getString(C2573R.string.AppName);
            } else if (jLongValue != 0) {
                string = LocaleController.getString(C2573R.string.NotificationHiddenChatName);
            } else {
                string = LocaleController.getString(C2573R.string.NotificationHiddenName);
            }
            z5 = false;
            if (messageObject2.isReactionPush) {
                str2 = string;
                if (sharedPreferences2.getBoolean("EnableReactionsPreview", true)) {
                    string2 = str2;
                }
            }
            if (z4) {
            }
            ?? builder22 = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
            int i1422 = 1;
            if (r1.pushMessages.size() <= 1) {
            }
            String str1222 = string3;
            r4 = r14;
            if (z) {
            }
            if (z8) {
            }
            long j122222 = j6;
            boolean z182222 = messageObject5.isReactionPush;
            boolean z192222 = messageObject5.isStoryReactionPush;
            MessageObject messageObject122222 = messageObject5;
            String str132222 = stringForMessage;
            String str142222 = string2;
            ?? r22222 = sharedPreferences4;
            String str152222 = str;
            long j132222 = j2;
            String str162222 = str3;
            long j142222 = j4;
            chat3 = chat2;
            DialogNotificationSettings dialogNotificationSettingsComputeDialogNotificationSettings2222 = r1.computeDialogNotificationSettings(r22222, j122222, topicId, z2, z182222, z192222, j142222, j132222, z7, z9);
            boolean z202222 = dialogNotificationSettingsComputeDialogNotificationSettings2222.notifyDisabled;
            int i202222 = dialogNotificationSettingsComputeDialogNotificationSettings2222.vibrate;
            String str172222 = dialogNotificationSettingsComputeDialogNotificationSettings2222.soundPath;
            boolean z212222 = dialogNotificationSettingsComputeDialogNotificationSettings2222.isInternalSoundFile;
            int i212222 = dialogNotificationSettingsComputeDialogNotificationSettings2222.ledColor;
            int i222222 = dialogNotificationSettingsComputeDialogNotificationSettings2222.importance;
            String path2222 = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
            boolean z222222 = dialogNotificationSettingsComputeDialogNotificationSettings2222.isDefault;
            boolean z232222 = dialogNotificationSettingsComputeDialogNotificationSettings2222.isInApp;
            int i232222 = dialogNotificationSettingsComputeDialogNotificationSettings2222.chatType;
            long j152222 = j122222;
            Intent intent4222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
            intent4222.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
            intent4222.setFlags(67108864);
            messageObject6 = messageObject122222;
            if (messageObject6.isOauthPush) {
            }
            if (messageObject6.isStoryReactionPush) {
            }
            user2 = user;
            z10 = true;
            fileLocation = null;
            r8 = z10;
            intent4222.putExtra(str162222, r1.currentAccount);
            builder22.setContentTitle(str142222).setSmallIcon(IconManager.getNotificationIcon()).setAutoCancel(r8).setNumber(r1.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent4222, 1140850688)).setGroup(r1.notificationGroup).setGroupSummary(r8).setShowWhen(r8).setWhen(((long) messageObject6.messageOwner.date) * 1000);
            if (Build.VERSION.SDK_INT < 31) {
            }
            builder22.setCategory("msg");
            if (chat3 == null) {
            }
            ?? intent2222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
            intent2222222.putExtra("messageDate", messageObject6.messageOwner.date);
            intent2222222.putExtra(str162222, r1.currentAccount);
            if (messageObject6.isStoryPush) {
            }
            if (messageObject6.isStoryReactionPush) {
            }
            builder22.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, r8, intent2222222, 167772160));
            if (bitmap2 != null) {
            }
            if (z) {
            }
            if (r4 == r8) {
            }
            if (!AndroidUtilities.needShowPasscode()) {
            }
            r1.showExtraNotifications(builder22, str1222, j152222, topicId, str9, jArr, i4, uri, r6 == true ? 1 : 0, z222222, z232222, z202222, i232222);
            scheduleNotificationRepeat();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
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
        FileLog.m895d("resetNotificationSound");
        Uri uri2 = Settings.System.DEFAULT_RINGTONE_URI;
        if (uri2 == null || uri == null || TextUtils.equals(uri2.toString(), uri.toString())) {
            return;
        }
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        String string = uri2.toString();
        String string2 = LocaleController.getString(C2573R.string.DefaultRingtone);
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
            getNotificationsController().lambda$deleteNotificationChannelGlobal$43(i3, -1);
        } else {
            editorEdit.putString("sound_" + getSharedPrefKey(j, j2), string2);
            editorEdit.putString("sound_path_" + getSharedPrefKey(j, j2), string);
            lambda$deleteNotificationChannel$42(j, j2, -1);
        }
        editorEdit.apply();
        builder.setChannelId(validateChannelId(j, j2, str, jArr, i, uri2, i2, z, z2, z3, i3));
        notificationManager.notify(this.notificationId, builder.build());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(38:353|915|354|(0)(7:358|359|939|360|937|361|362)|374|(1:381)(1:380)|382|(1:386)(1:385)|387|(1:396)|395|(1:405)(1:404)|406|(8:408|(1:410)(2:412|(5:414|130|61|62|948)(2:415|(1:(1:418)(1:419))(10:420|(1:422)(2:423|(1:428)(1:427))|429|(2:432|430)|953|433|(1:437)(1:436)|438|(1:440)(1:441)|442)))|411|429|(1:430)|953|433|(4:437|438|(0)(0)|442)(0))(4:444|(6:446|(1:448)(3:450|(1:452)(2:453|(2:458|(1:460)(2:461|(1:465)))(1:457))|(3:467|(1:469)|470)(15:471|(1:473)|474|(2:482|(1:484)(1:485))(1:480)|481|486|(3:491|(1:(1:495)(2:496|(1:498)(1:499)))(0)|671)(1:490)|500|(2:(3:503|(1:(2:506|(1:508))(1:509))(2:510|(1:512))|671)(1:513)|514)(1:515)|(4:521|(1:581)(2:525|(4:527|(2:530|548)(4:531|(1:535)|(1:546)(2:541|(0)(1:545))|547)|(3:566|578|582)(4:553|(2:555|(0)(2:561|(1:565)))(2:567|(1:577))|578|582)|671)(1:579))|580|582)(1:520)|583|(7:585|(1:599)(8:600|(1:621)(3:604|(9:933|606|607|925|608|609|929|610|611)(1:619)|620)|622|(1:624)(1:626)|625|627|(3:919|629|(5:638|(1:640)|641|644|(1:658)(2:649|(3:651|(3:935|653|(1:657))(2:659|(2:661|(1:663)))|658)(0)))(1:642))(3:634|(1:636)(1:633)|(0)(0))|671)|643|641|644|(1:658)(0)|671)(1:664)|665|(2:670|965)(2:669|966)|671))|449|670|965|671)|964|672)|443|673|(2:679|(2:684|(38:695|(4:697|(2:700|698)|963|701)(2:702|(1:704)(2:705|(1:707)(1:708)))|709|(1:711)|712|(1:714)|715|(2:717|(1:719)(1:720))(2:721|(1:723)(1:724))|(1:726)(1:727)|728|(4:730|(2:733|731)|954|734)(1:735)|736|(1:738)|739|(1:741)|927|742|(1:744)|(4:749|921|750|(1:752))(1:755)|756|(1:760)|(1:779)(4:766|(4:769|(2:770|(1:957)(2:772|(2:958|774)(1:775)))|(1:956)(1:778)|767)|955|777)|(1:781)|782|(2:(1:787)|(1:794))|795|(1:802)(1:801)|803|(1:805)|(1:807)|808|(3:813|(4:815|(3:817|(4:819|(1:821)|822|962)(2:823|961)|824)|960|825)|959)|826|(1:834)(2:829|(1:833))|835|(1:(7:(1:850)(1:848)|(1:852)(1:853)|854|(1:856)(1:857)|858|(1:860)(1:861)|862)(1:863))(1:864)|865|947)(3:688|(1:690)(2:691|(1:693))|694))(1:683))(1:677)|678|709|(0)|712|(0)|715|(0)(0)|(0)(0)|728|(0)(0)|736|(0)|739|(0)|927|742|(0)|(0)(0)|756|(0)|(7:762|779|(0)|782|(3:784|(0)|(2:789|794))|795|(9:797|802|803|(0)|(0)|808|(4:810|813|(0)|959)|826|(5:834|835|(0)(0)|865|947)(0))(0))(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:746:0x1316, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:747:0x1317, code lost:
    
        r3 = r69;
     */
    /* JADX WARN: Removed duplicated region for block: B:144:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x04d1  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04f9  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x050c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0564 A[PHI: r0 r4
  0x0564: PHI (r0v84 org.telegram.tgnet.TLRPC$FileLocation) = (r0v83 org.telegram.tgnet.TLRPC$FileLocation), (r0v88 org.telegram.tgnet.TLRPC$FileLocation) binds: [B:217:0x0562, B:207:0x053f] A[DONT_GENERATE, DONT_INLINE]
  0x0564: PHI (r4v18 int) = (r4v17 int), (r4v19 int) binds: [B:217:0x0562, B:207:0x053f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0566  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x07ba  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x07c5  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0805  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0811  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0819  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0828  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0846  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x08ca  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x08d7  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x08dc  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x08e7  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x08f4  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0911  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0928  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0941  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0a75 A[LOOP:5: B:430:0x0a6d->B:432:0x0a75, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0aa6  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0ac0  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0ac5  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0ad5  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0c4e  */
    /* JADX WARN: Removed duplicated region for block: B:566:0x0d6e  */
    /* JADX WARN: Removed duplicated region for block: B:624:0x0ec3  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x0ec8  */
    /* JADX WARN: Removed duplicated region for block: B:634:0x0ef2  */
    /* JADX WARN: Removed duplicated region for block: B:638:0x0f47  */
    /* JADX WARN: Removed duplicated region for block: B:642:0x0f78  */
    /* JADX WARN: Removed duplicated region for block: B:658:0x0fdb  */
    /* JADX WARN: Removed duplicated region for block: B:679:0x108d  */
    /* JADX WARN: Removed duplicated region for block: B:684:0x10a2  */
    /* JADX WARN: Removed duplicated region for block: B:697:0x10d3  */
    /* JADX WARN: Removed duplicated region for block: B:702:0x10fa  */
    /* JADX WARN: Removed duplicated region for block: B:711:0x1138  */
    /* JADX WARN: Removed duplicated region for block: B:714:0x1159  */
    /* JADX WARN: Removed duplicated region for block: B:717:0x11bb  */
    /* JADX WARN: Removed duplicated region for block: B:721:0x11f4  */
    /* JADX WARN: Removed duplicated region for block: B:726:0x121a  */
    /* JADX WARN: Removed duplicated region for block: B:727:0x1232  */
    /* JADX WARN: Removed duplicated region for block: B:730:0x124c  */
    /* JADX WARN: Removed duplicated region for block: B:735:0x1276  */
    /* JADX WARN: Removed duplicated region for block: B:738:0x12ae  */
    /* JADX WARN: Removed duplicated region for block: B:741:0x12e8  */
    /* JADX WARN: Removed duplicated region for block: B:744:0x130e A[Catch: Exception -> 0x1316, TRY_LEAVE, TryCatch #6 {Exception -> 0x1316, blocks: (B:742:0x12ef, B:744:0x130e), top: B:927:0x12ef }] */
    /* JADX WARN: Removed duplicated region for block: B:749:0x131c  */
    /* JADX WARN: Removed duplicated region for block: B:755:0x132c  */
    /* JADX WARN: Removed duplicated region for block: B:760:0x1343  */
    /* JADX WARN: Removed duplicated region for block: B:762:0x134e  */
    /* JADX WARN: Removed duplicated region for block: B:779:0x13a2  */
    /* JADX WARN: Removed duplicated region for block: B:781:0x13a5  */
    /* JADX WARN: Removed duplicated region for block: B:787:0x13ee  */
    /* JADX WARN: Removed duplicated region for block: B:802:0x1419  */
    /* JADX WARN: Removed duplicated region for block: B:805:0x1422  */
    /* JADX WARN: Removed duplicated region for block: B:807:0x1427  */
    /* JADX WARN: Removed duplicated region for block: B:815:0x1441  */
    /* JADX WARN: Removed duplicated region for block: B:834:0x14f2  */
    /* JADX WARN: Removed duplicated region for block: B:837:0x14fa  */
    /* JADX WARN: Removed duplicated region for block: B:864:0x15a5  */
    /* JADX WARN: Removed duplicated region for block: B:919:0x0ed2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @SuppressLint({"InlinedApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showExtraNotifications(NotificationCompat.Builder builder, String str, long j, long j2, String str2, long[] jArr, int i, Uri uri, int i2, boolean z, boolean z2, boolean z3, int i3) {
        LongSparseArray<Integer> longSparseArray;
        boolean z4;
        Notification notification;
        ArrayList arrayList;
        LongSparseArray longSparseArray2;
        NotificationCompat.Builder builder2;
        Notification notificationBuild;
        ArrayList arrayList2;
        boolean z5;
        int i4;
        boolean z6;
        long j3;
        LongSparseArray longSparseArray3;
        ArrayList<StoryNotification> arrayList3;
        int id;
        MessageObject messageObject;
        long j4;
        Integer num;
        ArrayList arrayList4;
        LongSparseArray longSparseArray4;
        Integer num2;
        int i5;
        String str3;
        ArrayList<StoryNotification> arrayList5;
        long j5;
        DialogKey dialogKey;
        TLRPC.User user;
        String string;
        TLRPC.User user2;
        TLRPC.Chat chat;
        TLRPC.FileLocation fileLocation;
        boolean z7;
        boolean z8;
        SharedPreferences sharedPreferences;
        LongSparseArray longSparseArray5;
        Notification notification2;
        ArrayList arrayList6;
        int i6;
        boolean z9;
        long j6;
        ArrayList arrayList7;
        boolean z10;
        TLRPC.Chat chat2;
        boolean zCanSendPlain;
        TLRPC.User user3;
        int i7;
        TLRPC.Chat chat3;
        int i8;
        TLRPC.FileLocation fileLocation2;
        boolean z11;
        String str4;
        String str5;
        TLRPC.FileLocation fileLocation3;
        DialogKey dialogKey2;
        File file;
        Bitmap bitmap;
        File file2;
        Bitmap bitmap2;
        Bitmap bitmap3;
        NotificationsController notificationsController;
        TLRPC.Chat chat4;
        TLRPC.User user4;
        String str6;
        String str7;
        ArrayList<StoryNotification> arrayList8;
        int i9;
        String string2;
        NotificationCompat.Action actionBuild;
        int i10;
        Integer num3;
        DialogKey dialogKey3;
        int iMax;
        String str8;
        String str9;
        long j7;
        long j8;
        String str10;
        Person person;
        NotificationCompat.MessagingStyle messagingStyle;
        int i11;
        long j9;
        long j10;
        DialogKey dialogKey4;
        NotificationCompat.Action action;
        StringBuilder sb;
        Bitmap bitmapLoadMultipleAvatars;
        String str11;
        int i12;
        ArrayList<TLRPC.TL_keyboardButtonRow> arrayList9;
        MessageObject messageObject2;
        String str12;
        String[] strArr;
        long senderId;
        StringBuilder sb2;
        Person person2;
        long j11;
        boolean[] zArr;
        String str13;
        NotificationCompat.MessagingStyle messagingStyle2;
        Person personBuild;
        NotificationCompat.MessagingStyle messagingStyle3;
        File pathToAttach;
        TLRPC.ChatPhoto chatPhoto;
        TLRPC.FileLocation fileLocation4;
        TLRPC.UserProfilePhoto userProfilePhoto;
        TLRPC.FileLocation fileLocation5;
        TLRPC.UserProfilePhoto userProfilePhoto2;
        TLRPC.FileLocation fileLocation6;
        TLRPC.ReplyMarkup replyMarkup;
        Uri uriForFile;
        NotificationCompat.MessagingStyle messagingStyle4;
        File file3;
        final File file4;
        final Uri uriForFile2;
        File file5;
        MessageObject messageObject3;
        long j12;
        DialogKey dialogKey5;
        String str14;
        NotificationCompat.Action action2;
        ArrayList<TLRPC.TL_keyboardButtonRow> arrayList10;
        Bitmap bitmap4;
        NotificationCompat.Action action3;
        MessageObject messageObject4;
        String string3;
        NotificationCompat.Action action4;
        ArrayList<StoryNotification> arrayList11;
        long j13;
        NotificationCompat.Builder category;
        MessageObject messageObject5;
        TLRPC.TL_keyboardButtonCopy tL_keyboardButtonCopy;
        long j14;
        TLRPC.User user5;
        long j15;
        TLRPC.User user6;
        DialogKey dialogKey6;
        Notification notification3;
        boolean z12;
        ArrayList arrayList12;
        long j16;
        long j17;
        long j18;
        boolean z13;
        String str15;
        boolean z14;
        long j19;
        MessageObject messageObject6;
        int size;
        int i13;
        String str16;
        ArrayList<TLRPC.TL_keyboardButtonRow> arrayList13;
        MessageObject messageObject7;
        TLRPC.Message message;
        TLRPC.ReplyMarkup replyMarkup2;
        ArrayList<Object> arrayList14;
        String str17;
        boolean z15;
        int i14;
        TLRPC.UserProfilePhoto userProfilePhoto3;
        TLRPC.FileLocation fileLocation7;
        Bitmap bitmap5;
        Bitmap bitmapDecodeFile;
        String string4;
        TLRPC.UserProfilePhoto userProfilePhoto4;
        NotificationsController notificationsController2 = this;
        FileLog.m895d("showExtraNotifications pushMessages.size()=" + notificationsController2.pushMessages.size());
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setChannelId(notificationsController2.validateChannelId(j, j2, str2, jArr, i, uri, i2, z, z2, z3, i3));
        }
        Notification notificationBuild2 = builder.build();
        SharedPreferences notificationsSettings = notificationsController2.getAccountInstance().getNotificationsSettings();
        ArrayList arrayList15 = new ArrayList();
        if (!notificationsController2.storyPushMessages.isEmpty()) {
            arrayList15.add(new DialogKey(0L, 0L, true));
        }
        LongSparseArray longSparseArray6 = new LongSparseArray();
        int i15 = 0;
        for (int i16 = 0; i16 < notificationsController2.pushMessages.size(); i16++) {
            MessageObject messageObject8 = notificationsController2.pushMessages.get(i16);
            long dialogId = messageObject8.getDialogId();
            long topicId = MessageObject.getTopicId(notificationsController2.currentAccount, messageObject8.messageOwner, notificationsController2.getMessagesController().isForum(messageObject8));
            int i17 = notificationsSettings.getInt("dismissDate" + dialogId, 0);
            if (!messageObject8.isStoryPush && messageObject8.messageOwner.date <= i17) {
                FileLog.m895d("showExtraNotifications: dialog " + dialogId + " is skipped, message date (" + messageObject8.messageOwner.date + " <= " + i17 + ")");
            } else {
                ArrayList arrayList16 = (ArrayList) longSparseArray6.get(dialogId);
                if (arrayList16 == null) {
                    arrayList16 = new ArrayList();
                    longSparseArray6.put(dialogId, arrayList16);
                    FileLog.m895d("showExtraNotifications: sortedDialogs += " + dialogId);
                    arrayList15.add(new DialogKey(dialogId, topicId, false));
                }
                arrayList16.add(messageObject8);
            }
        }
        LongSparseArray longSparseArray7 = new LongSparseArray();
        int i18 = 0;
        while (true) {
            int size2 = notificationsController2.wearNotificationsIds.size();
            longSparseArray = notificationsController2.wearNotificationsIds;
            if (i18 >= size2) {
                break;
            }
            longSparseArray7.put(longSparseArray.keyAt(i18), notificationsController2.wearNotificationsIds.valueAt(i18));
            i18++;
        }
        longSparseArray.clear();
        ArrayList arrayList17 = new ArrayList();
        int i19 = Build.VERSION.SDK_INT;
        if (i19 > 27) {
            z4 = arrayList15.size() > (notificationsController2.storyPushMessages.isEmpty() ? 1 : 2);
        }
        if (z4 && i19 >= 26) {
            checkOtherNotificationsChannel();
        }
        long clientUserId = notificationsController2.getUserConfig().getClientUserId();
        boolean z16 = AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter;
        FileLog.m895d("showExtraNotifications: passcode=" + (SharedConfig.passcodeHash.length() > 0) + " waitingForPasscode=" + z16 + " selfUserId=" + clientUserId + " useSummaryNotification=" + z4);
        LongSparseArray longSparseArray8 = new LongSparseArray();
        int size3 = arrayList15.size();
        while (true) {
            if (i15 >= size3) {
                notification = notificationBuild2;
                break;
            }
            Notification notification4 = notificationBuild2;
            if (arrayList17.size() >= 7) {
                FileLog.m895d("showExtraNotifications: break from holders, count over 7");
                notification = notification4;
                break;
            }
            DialogKey dialogKey7 = (DialogKey) arrayList15.get(i15);
            ArrayList arrayList18 = arrayList15;
            int i20 = i15;
            if (dialogKey7.story) {
                ArrayList<StoryNotification> arrayList19 = new ArrayList<>();
                if (notificationsController2.storyPushMessages.isEmpty()) {
                    StringBuilder sb3 = new StringBuilder("showExtraNotifications: [");
                    z5 = z16;
                    sb3.append(dialogKey7.dialogId);
                    sb3.append("] continue; story but storyPushMessages is empty");
                    FileLog.m895d(sb3.toString());
                    sharedPreferences = notificationsSettings;
                    longSparseArray3 = longSparseArray6;
                    arrayList7 = arrayList17;
                    longSparseArray4 = longSparseArray7;
                    longSparseArray5 = longSparseArray8;
                    i4 = size3;
                    z9 = z4;
                    j6 = clientUserId;
                    notification2 = notification4;
                    arrayList6 = arrayList18;
                    i6 = i20;
                    i15 = i6 + 1;
                    arrayList17 = arrayList7;
                    arrayList15 = arrayList6;
                    z16 = z5;
                    size3 = i4;
                    longSparseArray6 = longSparseArray3;
                    notificationBuild2 = notification2;
                    longSparseArray7 = longSparseArray4;
                    notificationsSettings = sharedPreferences;
                    clientUserId = j6;
                    z4 = z9;
                    longSparseArray8 = longSparseArray5;
                } else {
                    arrayList2 = arrayList17;
                    z5 = z16;
                    i4 = size3;
                    z6 = z4;
                    long j20 = notificationsController2.storyPushMessages.get(0).dialogId;
                    Iterator<Integer> it = notificationsController2.storyPushMessages.get(0).dateByIds.keySet().iterator();
                    int iMax2 = 0;
                    while (it.hasNext()) {
                        iMax2 = Math.max(iMax2, it.next().intValue());
                        arrayList19 = arrayList19;
                    }
                    longSparseArray3 = longSparseArray6;
                    arrayList3 = arrayList19;
                    j4 = j20;
                    messageObject = null;
                    id = iMax2;
                    j3 = 0;
                }
            } else {
                arrayList2 = arrayList17;
                z5 = z16;
                i4 = size3;
                z6 = z4;
                long j21 = dialogKey7.dialogId;
                j3 = dialogKey7.topicId;
                ArrayList<StoryNotification> arrayList20 = (ArrayList) longSparseArray6.get(j21);
                longSparseArray3 = longSparseArray6;
                arrayList3 = arrayList20;
                id = ((MessageObject) arrayList20.get(0)).getId();
                messageObject = (MessageObject) arrayList20.get(0);
                j4 = j21;
            }
            long j22 = clientUserId;
            Integer numValueOf = (Integer) longSparseArray7.get(dialogKey7.dialogId);
            if (dialogKey7.story) {
                num = 2147483646;
            } else {
                long j23 = dialogKey7.dialogId;
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(((int) j23) + ((int) (j23 >> 32)));
                } else {
                    longSparseArray7.remove(j23);
                }
                num = numValueOf;
            }
            int i21 = 0;
            for (int i22 = 0; i22 < arrayList3.size(); i22++) {
                if (i21 < ((MessageObject) arrayList3.get(i22)).messageOwner.date) {
                    i21 = ((MessageObject) arrayList3.get(i22)).messageOwner.date;
                }
            }
            if (dialogKey7.story) {
                arrayList4 = arrayList2;
                TLRPC.User user7 = notificationsController2.getMessagesController().getUser(Long.valueOf(j4));
                longSparseArray4 = longSparseArray7;
                if (notificationsController2.storyPushMessages.size() == 1) {
                    if (user7 != null) {
                        string = UserObject.getFirstName(user7);
                    } else {
                        string = notificationsController2.storyPushMessages.get(0).localName;
                    }
                    num2 = num;
                } else {
                    num2 = num;
                    string = LocaleController.formatPluralString("Stories", notificationsController2.storyPushMessages.size(), new Object[0]);
                }
                if (user7 == null || (userProfilePhoto4 = user7.photo) == null || (fileLocation = userProfilePhoto4.photo_small) == null) {
                    i5 = i21;
                } else {
                    i5 = i21;
                    if (fileLocation.volume_id != 0 && fileLocation.local_id != 0) {
                        str3 = "showExtraNotifications: [";
                        arrayList5 = arrayList3;
                        j5 = j4;
                        chat = null;
                    }
                    z7 = false;
                    z8 = false;
                    z10 = false;
                    dialogKey = dialogKey7;
                    user2 = user7;
                }
                str3 = "showExtraNotifications: [";
                arrayList5 = arrayList3;
                j5 = j4;
                chat = null;
                fileLocation = null;
                z7 = false;
                z8 = false;
                z10 = false;
                dialogKey = dialogKey7;
                user2 = user7;
            } else {
                arrayList4 = arrayList2;
                longSparseArray4 = longSparseArray7;
                num2 = num;
                i5 = i21;
                if (!DialogObject.isEncryptedDialog(j4)) {
                    boolean z17 = (messageObject == null || messageObject.isReactionPush || messageObject.isStoryReactionPush || j4 == 777000) ? false : true;
                    if (DialogObject.isUserDialog(j4)) {
                        TLRPC.User user8 = notificationsController2.getMessagesController().getUser(Long.valueOf(j4));
                        if (user8 == null) {
                            if (messageObject.isFcmMessage()) {
                                str5 = messageObject.localName;
                                j5 = j4;
                                z11 = z17;
                                user3 = user8;
                            } else {
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.m899w("not found user to show dialog notification " + j4);
                                }
                                sharedPreferences = notificationsSettings;
                                longSparseArray5 = longSparseArray8;
                                notification2 = notification4;
                                arrayList6 = arrayList18;
                                i6 = i20;
                                z9 = z6;
                                j6 = j22;
                                arrayList7 = arrayList4;
                            }
                        } else {
                            j5 = j4;
                            String userName = UserObject.getUserName(user8);
                            z11 = z17;
                            TLRPC.UserProfilePhoto userProfilePhoto5 = user8.photo;
                            if (userProfilePhoto5 == null || (fileLocation3 = userProfilePhoto5.photo_small) == null) {
                                user3 = user8;
                                str4 = userName;
                            } else {
                                user3 = user8;
                                str4 = userName;
                                if (fileLocation3.volume_id != 0 && fileLocation3.local_id != 0) {
                                    str5 = str4;
                                    if (j5 != UserObject.OAUTH) {
                                        string = LocaleController.getString(C2573R.string.BotAuthNotificationTitle);
                                    } else if (j5 == UserObject.VERIFY) {
                                        string = LocaleController.getString(C2573R.string.VerifyCodesNotifications);
                                    } else if (UserObject.isReplyUser(j5)) {
                                        string = LocaleController.getString(C2573R.string.RepliesTitle);
                                    } else if (j5 == j22) {
                                        string = LocaleController.getString(C2573R.string.MessageScheduledReminderNotification);
                                    } else {
                                        str3 = "showExtraNotifications: [";
                                        arrayList5 = arrayList3;
                                        string = str5;
                                        zCanSendPlain = z11;
                                        z7 = false;
                                        z8 = false;
                                        fileLocation = fileLocation3;
                                        dialogKey = dialogKey7;
                                        chat2 = null;
                                        i7 = (j5 > UserObject.VERIFY ? 1 : (j5 == UserObject.VERIFY ? 0 : -1));
                                        if (i7 == 0 || messageObject == null || messageObject.getForwardedFromId() == null) {
                                            chat3 = chat2;
                                            z10 = zCanSendPlain;
                                        } else {
                                            Long forwardedFromId = messageObject.getForwardedFromId();
                                            chat3 = chat2;
                                            z10 = zCanSendPlain;
                                            long jLongValue = forwardedFromId.longValue();
                                            if (DialogObject.isUserDialog(jLongValue)) {
                                                TLRPC.UserProfilePhoto userProfilePhoto6 = getMessagesController().getUser(forwardedFromId).photo;
                                                if (userProfilePhoto6 != null && (fileLocation2 = userProfilePhoto6.photo_small) != null) {
                                                    i8 = i7;
                                                    if (fileLocation2.volume_id != 0 && fileLocation2.local_id != 0) {
                                                        fileLocation = fileLocation2;
                                                    }
                                                }
                                                user2 = user3;
                                                chat = chat3;
                                                if (i8 == 0) {
                                                }
                                            } else {
                                                i8 = i7;
                                                TLRPC.ChatPhoto chatPhoto2 = getMessagesController().getChat(Long.valueOf(-jLongValue)).photo;
                                                if (chatPhoto2 != null && (fileLocation2 = chatPhoto2.photo_small) != null && fileLocation2.volume_id != 0 && fileLocation2.local_id != 0) {
                                                }
                                                user2 = user3;
                                                chat = chat3;
                                                if (i8 == 0) {
                                                }
                                            }
                                        }
                                        i8 = i7;
                                        user2 = user3;
                                        chat = chat3;
                                        if (i8 == 0) {
                                        }
                                    }
                                    fileLocation = fileLocation3;
                                    str3 = "showExtraNotifications: [";
                                    arrayList5 = arrayList3;
                                    zCanSendPlain = z11;
                                    chat2 = null;
                                    z7 = false;
                                    z8 = false;
                                    dialogKey = dialogKey7;
                                    i7 = (j5 > UserObject.VERIFY ? 1 : (j5 == UserObject.VERIFY ? 0 : -1));
                                    if (i7 == 0) {
                                        chat3 = chat2;
                                        z10 = zCanSendPlain;
                                        i8 = i7;
                                        user2 = user3;
                                        chat = chat3;
                                        if (i8 == 0) {
                                        }
                                    }
                                }
                            }
                            str5 = str4;
                        }
                        fileLocation3 = null;
                        if (j5 != UserObject.OAUTH) {
                        }
                        fileLocation = fileLocation3;
                        str3 = "showExtraNotifications: [";
                        arrayList5 = arrayList3;
                        zCanSendPlain = z11;
                        chat2 = null;
                        z7 = false;
                        z8 = false;
                        dialogKey = dialogKey7;
                        i7 = (j5 > UserObject.VERIFY ? 1 : (j5 == UserObject.VERIFY ? 0 : -1));
                        if (i7 == 0) {
                        }
                    } else {
                        j5 = j4;
                        boolean z18 = z17;
                        chat2 = notificationsController2.getMessagesController().getChat(Long.valueOf(-j5));
                        if (chat2 == null) {
                            if (messageObject.isFcmMessage()) {
                                boolean zIsSupergroup = messageObject.isSupergroup();
                                String str18 = messageObject.localName;
                                z7 = zIsSupergroup;
                                str3 = "showExtraNotifications: [";
                                arrayList5 = arrayList3;
                                z8 = messageObject.localChannel;
                                string = str18;
                                zCanSendPlain = false;
                                fileLocation = null;
                                user3 = null;
                                dialogKey = dialogKey7;
                                i7 = (j5 > UserObject.VERIFY ? 1 : (j5 == UserObject.VERIFY ? 0 : -1));
                                if (i7 == 0) {
                                }
                            } else {
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.m899w("not found chat to show dialog notification " + j5);
                                }
                                sharedPreferences = notificationsSettings;
                                longSparseArray5 = longSparseArray8;
                                notification2 = notification4;
                                arrayList6 = arrayList18;
                                i6 = i20;
                                z9 = z6;
                                j6 = j22;
                                arrayList7 = arrayList4;
                            }
                        } else {
                            boolean z19 = chat2.megagroup;
                            boolean z20 = ChatObject.isChannel(chat2) && !chat2.megagroup;
                            string = notificationsController2.getTitle(chat2);
                            z8 = z20;
                            TLRPC.ChatPhoto chatPhoto3 = chat2.photo;
                            if (chatPhoto3 == null || (fileLocation = chatPhoto3.photo_small) == null) {
                                str3 = "showExtraNotifications: [";
                                arrayList5 = arrayList3;
                            } else {
                                str3 = "showExtraNotifications: [";
                                arrayList5 = arrayList3;
                                if (fileLocation.volume_id == 0 || fileLocation.local_id == 0) {
                                }
                                if (j3 == 0) {
                                    dialogKey = dialogKey7;
                                    TLRPC.TL_forumTopic tL_forumTopicFindTopic = notificationsController2.getMessagesController().getTopicsController().findTopic(chat2.id, j3);
                                    if (tL_forumTopicFindTopic != null) {
                                        string = tL_forumTopicFindTopic.title + " in " + string;
                                    }
                                } else {
                                    dialogKey = dialogKey7;
                                }
                                zCanSendPlain = !z18 ? ChatObject.canSendPlain(chat2) : z18;
                                z7 = z19;
                                user3 = null;
                                i7 = (j5 > UserObject.VERIFY ? 1 : (j5 == UserObject.VERIFY ? 0 : -1));
                                if (i7 == 0) {
                                }
                            }
                            fileLocation = null;
                            if (j3 == 0) {
                            }
                            if (!z18) {
                            }
                            z7 = z19;
                            user3 = null;
                            i7 = (j5 > UserObject.VERIFY ? 1 : (j5 == UserObject.VERIFY ? 0 : -1));
                            if (i7 == 0) {
                            }
                        }
                    }
                    i15 = i6 + 1;
                    arrayList17 = arrayList7;
                    arrayList15 = arrayList6;
                    z16 = z5;
                    size3 = i4;
                    longSparseArray6 = longSparseArray3;
                    notificationBuild2 = notification2;
                    longSparseArray7 = longSparseArray4;
                    notificationsSettings = sharedPreferences;
                    clientUserId = j6;
                    z4 = z9;
                    longSparseArray8 = longSparseArray5;
                } else {
                    str3 = "showExtraNotifications: [";
                    arrayList5 = arrayList3;
                    j5 = j4;
                    dialogKey = dialogKey7;
                    if (j5 != globalSecretChatId) {
                        int encryptedChatId = DialogObject.getEncryptedChatId(j5);
                        TLRPC.EncryptedChat encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(encryptedChatId));
                        if (encryptedChat == null) {
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m899w("not found secret chat to show dialog notification " + encryptedChatId);
                            }
                        } else {
                            user = getMessagesController().getUser(Long.valueOf(encryptedChat.user_id));
                            if (user == null) {
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.m899w("not found secret chat user to show dialog notification " + encryptedChat.user_id);
                                }
                            }
                        }
                        notificationsController2 = this;
                        sharedPreferences = notificationsSettings;
                        longSparseArray5 = longSparseArray8;
                        notification2 = notification4;
                        arrayList6 = arrayList18;
                        i6 = i20;
                        z9 = z6;
                        j6 = j22;
                        arrayList7 = arrayList4;
                        i15 = i6 + 1;
                        arrayList17 = arrayList7;
                        arrayList15 = arrayList6;
                        z16 = z5;
                        size3 = i4;
                        longSparseArray6 = longSparseArray3;
                        notificationBuild2 = notification2;
                        longSparseArray7 = longSparseArray4;
                        notificationsSettings = sharedPreferences;
                        clientUserId = j6;
                        z4 = z9;
                        longSparseArray8 = longSparseArray5;
                    } else {
                        user = null;
                    }
                    string = LocaleController.getString(C2573R.string.SecretChatName);
                    user2 = user;
                    chat = null;
                    fileLocation = null;
                    z7 = false;
                    z8 = false;
                }
                z10 = false;
            }
            if (messageObject != null && messageObject.isStoryReactionPush && !notificationsSettings.getBoolean("EnableReactionsPreview", true)) {
                string = LocaleController.getString(C2573R.string.NotificationHiddenChatName);
                fileLocation = null;
                z10 = false;
            }
            if (z5) {
                if (DialogObject.isChatDialog(j5)) {
                    string4 = LocaleController.getString(C2573R.string.NotificationHiddenChatName);
                } else {
                    string4 = LocaleController.getString(C2573R.string.NotificationHiddenName);
                }
                string = string4;
                fileLocation = null;
                z10 = false;
            }
            if (fileLocation != null) {
                File pathToAttach2 = getFileLoader().getPathToAttach(fileLocation, true);
                sharedPreferences = notificationsSettings;
                if (Build.VERSION.SDK_INT < 28) {
                    dialogKey2 = dialogKey;
                    bitmap5 = null;
                    BitmapDrawable imageFromMemory = ImageLoader.getInstance().getImageFromMemory(fileLocation, null, "50_50");
                    if (imageFromMemory != null) {
                        bitmapDecodeFile = imageFromMemory.getBitmap();
                    } else {
                        try {
                            if (pathToAttach2.exists()) {
                                float fDp = 160.0f / AndroidUtilities.dp(50.0f);
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inSampleSize = fDp < 1.0f ? 1 : (int) fDp;
                                bitmapDecodeFile = BitmapFactory.decodeFile(pathToAttach2.getAbsolutePath(), options);
                            } else {
                                bitmapDecodeFile = null;
                            }
                        } catch (Throwable unused) {
                            file = pathToAttach2;
                            bitmap = bitmap5;
                        }
                    }
                    bitmap = bitmapDecodeFile;
                    file = pathToAttach2;
                } else {
                    dialogKey2 = dialogKey;
                    bitmap5 = null;
                }
                file = pathToAttach2;
                bitmap = bitmap5;
            } else {
                sharedPreferences = notificationsSettings;
                dialogKey2 = dialogKey;
                file = null;
                bitmap = null;
            }
            if (chat != null) {
                Person.Builder name = new Person.Builder().setName(string);
                if (file != null && file.exists() && Build.VERSION.SDK_INT >= 28) {
                    loadRoundAvatar(j5, file, name);
                }
                file2 = file;
                bitmap2 = bitmap;
                longSparseArray8.put(-chat.id, name.build());
            } else {
                file2 = file;
                bitmap2 = bitmap;
            }
            File file6 = file2;
            if ((z8 && !z7) || !z10 || SharedConfig.isWaitingForPasscodeEnter || j22 == j5 || UserObject.isReplyUser(j5)) {
                chat4 = chat;
                user4 = user2;
                str6 = "max_id";
                str7 = "dialog_id";
                bitmap3 = bitmap2;
                arrayList8 = arrayList5;
                notificationsController = this;
            } else {
                bitmap3 = bitmap2;
                notificationsController = this;
                if (MessagesController.getInstance(notificationsController.currentAccount).getSendPaidMessagesStars(j5) > 0) {
                    chat4 = chat;
                    user4 = user2;
                    str6 = "max_id";
                    str7 = "dialog_id";
                    arrayList8 = arrayList5;
                } else {
                    chat4 = chat;
                    user4 = user2;
                    Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) WearReplyReceiver.class);
                    intent.putExtra("dialog_id", j5);
                    intent.putExtra("max_id", id);
                    intent.putExtra("topic_id", j3);
                    intent.putExtra("currentAccount", notificationsController.currentAccount);
                    if (arrayList5.isEmpty()) {
                        str6 = "max_id";
                        str7 = "dialog_id";
                        arrayList8 = arrayList5;
                    } else {
                        ArrayList arrayList21 = new ArrayList();
                        str6 = "max_id";
                        int i23 = 0;
                        while (i23 < arrayList5.size()) {
                            ArrayList<StoryNotification> arrayList22 = arrayList5;
                            MessageObject messageObject9 = (MessageObject) arrayList22.get(i23);
                            if (messageObject9 == null || !messageObject9.isVoice() || !messageObject9.isContentUnread() || messageObject9.isOut()) {
                                i10 = i23;
                            } else {
                                i10 = i23;
                                arrayList21.add(Integer.valueOf(messageObject9.getId()));
                            }
                            i23 = i10 + 1;
                            arrayList5 = arrayList22;
                        }
                        arrayList8 = arrayList5;
                        if (arrayList21.isEmpty()) {
                            str7 = "dialog_id";
                        } else {
                            int size4 = arrayList21.size();
                            i9 = id;
                            int[] iArr = new int[size4];
                            str7 = "dialog_id";
                            for (int i24 = 0; i24 < size4; i24++) {
                                iArr[i24] = ((Integer) arrayList21.get(i24)).intValue();
                            }
                            intent.putExtra("voice_msg_ids", iArr);
                            PendingIntent broadcast = PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num2.intValue(), intent, 167772160);
                            RemoteInput remoteInputBuild = new RemoteInput.Builder(EXTRA_VOICE_REPLY).setLabel(LocaleController.getString(C2573R.string.Reply)).build();
                            if (!DialogObject.isChatDialog(j5)) {
                                string2 = LocaleController.formatString(C2573R.string.ReplyToGroup, string);
                            } else {
                                string2 = LocaleController.formatString(C2573R.string.ReplyToUser, string);
                            }
                            actionBuild = new NotificationCompat.Action.Builder(C2573R.drawable.ic_reply_icon, string2, broadcast).setAllowGeneratedReplies(true).setSemanticAction(1).addRemoteInput(remoteInputBuild).setShowsUserInterface(false).build();
                            num3 = notificationsController.pushDialogs.get(j5);
                            if (num3 == null) {
                                num3 = 0;
                            }
                            dialogKey3 = dialogKey2;
                            if (dialogKey3.story) {
                                iMax = notificationsController.storyPushMessages.size();
                            } else {
                                iMax = Math.max(num3.intValue(), arrayList8.size());
                            }
                            if (iMax <= 1 || Build.VERSION.SDK_INT >= 28) {
                                str8 = string;
                                str9 = str8;
                            } else {
                                str8 = String.format("%1$s (%2$d)", string, Integer.valueOf(iMax));
                                str9 = string;
                            }
                            Person person3 = (Person) longSparseArray8.get(j22);
                            String str19 = str9;
                            if (Build.VERSION.SDK_INT >= 28 || person3 != null) {
                                j7 = j3;
                            } else {
                                TLRPC.User user9 = notificationsController.getMessagesController().getUser(Long.valueOf(j22));
                                if (user9 == null) {
                                    user9 = notificationsController.getUserConfig().getCurrentUser();
                                }
                                if (user9 != null) {
                                    try {
                                        userProfilePhoto3 = user9.photo;
                                    } catch (Throwable th) {
                                        th = th;
                                        j7 = j3;
                                    }
                                    if (userProfilePhoto3 == null || (fileLocation7 = userProfilePhoto3.photo_small) == null) {
                                        j7 = j3;
                                    } else {
                                        j7 = j3;
                                        try {
                                            if (fileLocation7.volume_id != 0 && fileLocation7.local_id != 0) {
                                                Person.Builder name2 = new Person.Builder().setName(LocaleController.getString(C2573R.string.FromYou));
                                                str10 = "Stories";
                                                j8 = j5;
                                                try {
                                                    loadRoundAvatar(notificationsController.getUserConfig().getClientUserId(), notificationsController.getFileLoader().getPathToAttach(user9.photo.photo_small, true), name2);
                                                    Person personBuild2 = name2.build();
                                                    try {
                                                        longSparseArray8.put(j22, personBuild2);
                                                        person3 = personBuild2;
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        person3 = personBuild2;
                                                        FileLog.m898e(th);
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                }
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            str10 = "Stories";
                                            j8 = j5;
                                            FileLog.m898e(th);
                                            person = person3;
                                            if (messageObject == null) {
                                            }
                                            i15 = i6 + 1;
                                            arrayList17 = arrayList7;
                                            arrayList15 = arrayList6;
                                            z16 = z5;
                                            size3 = i4;
                                            longSparseArray6 = longSparseArray3;
                                            notificationBuild2 = notification2;
                                            longSparseArray7 = longSparseArray4;
                                            notificationsSettings = sharedPreferences;
                                            clientUserId = j6;
                                            z4 = z9;
                                            longSparseArray8 = longSparseArray5;
                                        }
                                        person = person3;
                                        boolean z21 = (messageObject == null && (messageObject.messageOwner.action instanceof TLRPC.TL_messageActionChatJoinedByRequest)) ? false : true;
                                        String str20 = _UrlKt.FRAGMENT_ENCODE_SET;
                                        if (person == null && z21) {
                                            messagingStyle = new NotificationCompat.MessagingStyle(person);
                                        } else {
                                            messagingStyle = new NotificationCompat.MessagingStyle(_UrlKt.FRAGMENT_ENCODE_SET);
                                        }
                                        i11 = Build.VERSION.SDK_INT;
                                        if (i11 >= 28 || ((DialogObject.isChatDialog(j8) && !z8) || UserObject.isReplyUser(j8))) {
                                            messagingStyle.setConversationTitle(str8);
                                        }
                                        messagingStyle.setGroupConversation(i11 >= 28 || (!z8 && DialogObject.isChatDialog(j8)) || UserObject.isReplyUser(j8));
                                        StringBuilder sb4 = new StringBuilder();
                                        String[] strArr2 = new String[1];
                                        boolean[] zArr2 = new boolean[1];
                                        if (dialogKey3.story) {
                                            long j24 = j8;
                                            j9 = j22;
                                            j10 = j24;
                                            dialogKey4 = dialogKey3;
                                            String str21 = str3;
                                            action = actionBuild;
                                            int size5 = arrayList8.size() - 1;
                                            int id2 = 0;
                                            ArrayList<TLRPC.TL_keyboardButtonRow> arrayList23 = null;
                                            while (size5 >= 0) {
                                                int i25 = size5;
                                                MessageObject messageObject10 = (MessageObject) arrayList8.get(size5);
                                                int i26 = id2;
                                                ArrayList<TLRPC.TL_keyboardButtonRow> arrayList24 = arrayList23;
                                                ArrayList<StoryNotification> arrayList25 = arrayList8;
                                                long topicId2 = MessageObject.getTopicId(notificationsController.currentAccount, messageObject10.messageOwner, notificationsController.getMessagesController().isForum(messageObject10));
                                                if (j7 != topicId2) {
                                                    StringBuilder sb5 = new StringBuilder(str21);
                                                    sb5.append(j10);
                                                    sb5.append("] continue; topic id is not equal: topicId=");
                                                    String str22 = str21;
                                                    messageObject2 = messageObject;
                                                    long j25 = j7;
                                                    sb5.append(j25);
                                                    sb5.append(" messageTopicId=");
                                                    sb5.append(topicId2);
                                                    sb5.append("; selfId=");
                                                    sb5.append(notificationsController.getUserConfig().getClientUserId());
                                                    FileLog.m895d(sb5.toString());
                                                    sb2 = sb4;
                                                    j11 = j25;
                                                    str12 = str22;
                                                    strArr = strArr2;
                                                } else {
                                                    String str23 = str21;
                                                    messageObject2 = messageObject;
                                                    long j26 = j7;
                                                    String shortStringForMessage = notificationsController.getShortStringForMessage(messageObject10, strArr2, zArr2);
                                                    if (j10 == UserObject.OAUTH) {
                                                        strArr2[0] = LocaleController.getString(C2573R.string.BotAuthNotificationTitle);
                                                        str12 = str23;
                                                        strArr = strArr2;
                                                    } else if (j10 != UserObject.VERIFY || messageObject10.getForwardedFromId() == null) {
                                                        str12 = str23;
                                                        strArr = strArr2;
                                                        if (j10 == j9) {
                                                            strArr[0] = str19;
                                                        } else if (DialogObject.isChatDialog(j10) && messageObject10.messageOwner.from_scheduled) {
                                                            strArr[0] = LocaleController.getString(C2573R.string.NotificationMessageScheduledName);
                                                        }
                                                    } else {
                                                        str12 = str23;
                                                        strArr = strArr2;
                                                        strArr[0] = notificationsController.getMessagesController().getPeerName(messageObject10.getForwardedFromId().longValue());
                                                    }
                                                    if (shortStringForMessage == null) {
                                                        if (BuildVars.LOGS_ENABLED) {
                                                            FileLog.m899w("message text is null for " + messageObject10.getId() + " did = " + messageObject10.getDialogId());
                                                        }
                                                        sb2 = sb4;
                                                        j11 = j26;
                                                    } else {
                                                        if (sb4.length() > 0) {
                                                            sb4.append("\n\n");
                                                        }
                                                        if (j10 != j9 && messageObject10.messageOwner.from_scheduled && DialogObject.isUserDialog(j10)) {
                                                            shortStringForMessage = String.format("%1$s: %2$s", LocaleController.getString(C2573R.string.NotificationMessageScheduledName), shortStringForMessage);
                                                            sb4.append(shortStringForMessage);
                                                        } else {
                                                            String str24 = strArr[0];
                                                            if (str24 != null) {
                                                                sb4.append(String.format("%1$s: %2$s", str24, shortStringForMessage));
                                                            } else {
                                                                sb4.append(shortStringForMessage);
                                                            }
                                                        }
                                                        String str25 = shortStringForMessage;
                                                        if (j10 == UserObject.VERIFY && messageObject10.getForwardedFromId() != null) {
                                                            senderId = messageObject10.getForwardedFromId().longValue();
                                                        } else {
                                                            if (!DialogObject.isUserDialog(j10)) {
                                                                if (z8) {
                                                                    senderId = -j10;
                                                                } else {
                                                                    senderId = DialogObject.isChatDialog(j10) ? messageObject10.getSenderId() : j10;
                                                                }
                                                            }
                                                            size5 = i25 - 1;
                                                            str20 = str13;
                                                            strArr2 = strArr;
                                                            str21 = str12;
                                                            arrayList8 = arrayList25;
                                                            messageObject = messageObject2;
                                                            zArr2 = zArr;
                                                            sb4 = sb2;
                                                            j7 = j11;
                                                        }
                                                        sb2 = sb4;
                                                        Person person4 = (Person) longSparseArray8.get(senderId + (j26 << 16));
                                                        String string5 = strArr[0];
                                                        if (string5 == null) {
                                                            if (z5) {
                                                                if (!DialogObject.isChatDialog(j10)) {
                                                                    person2 = person4;
                                                                    if (Build.VERSION.SDK_INT > 27) {
                                                                        string5 = LocaleController.getString(C2573R.string.NotificationHiddenName);
                                                                    }
                                                                } else if (z8) {
                                                                    person2 = person4;
                                                                    if (Build.VERSION.SDK_INT > 27) {
                                                                        string5 = LocaleController.getString(C2573R.string.NotificationHiddenChatName);
                                                                    }
                                                                } else {
                                                                    person2 = person4;
                                                                    string5 = LocaleController.getString(C2573R.string.NotificationHiddenChatUserName);
                                                                }
                                                                size5 = i25 - 1;
                                                                str20 = str13;
                                                                strArr2 = strArr;
                                                                str21 = str12;
                                                                arrayList8 = arrayList25;
                                                                messageObject = messageObject2;
                                                                zArr2 = zArr;
                                                                sb4 = sb2;
                                                                j7 = j11;
                                                            } else {
                                                                person2 = person4;
                                                            }
                                                            string5 = str20;
                                                        } else {
                                                            person2 = person4;
                                                        }
                                                        if (person2 == null || !TextUtils.equals(person2.getName(), string5)) {
                                                            Person.Builder name3 = new Person.Builder().setName(string5);
                                                            if (!zArr2[0] || DialogObject.isEncryptedDialog(j10)) {
                                                                j11 = j26;
                                                                zArr = zArr2;
                                                                str13 = str20;
                                                            } else {
                                                                zArr = zArr2;
                                                                if (Build.VERSION.SDK_INT >= 28) {
                                                                    if (DialogObject.isUserDialog(j10) || z8) {
                                                                        str13 = str20;
                                                                        j11 = j26;
                                                                        messagingStyle3 = messagingStyle;
                                                                        pathToAttach = file6;
                                                                    } else {
                                                                        j11 = j26;
                                                                        long senderId2 = messageObject10.getSenderId();
                                                                        TLRPC.User user10 = notificationsController.getMessagesController().getUser(Long.valueOf(senderId2));
                                                                        if (user10 == null && (user10 = notificationsController.getMessagesStorage().getUserSync(senderId2)) != null) {
                                                                            notificationsController.getMessagesController().putUser(user10, true);
                                                                        }
                                                                        if (user10 == null || (userProfilePhoto2 = user10.photo) == null || (fileLocation6 = userProfilePhoto2.photo_small) == null) {
                                                                            messagingStyle3 = messagingStyle;
                                                                            str13 = str20;
                                                                        } else {
                                                                            messagingStyle3 = messagingStyle;
                                                                            str13 = str20;
                                                                            if (fileLocation6.volume_id != 0 && fileLocation6.local_id != 0) {
                                                                                pathToAttach = notificationsController.getFileLoader().getPathToAttach(user10.photo.photo_small, true);
                                                                            }
                                                                        }
                                                                        pathToAttach = null;
                                                                    }
                                                                    if (pathToAttach != null || j10 != UserObject.VERIFY || messageObject10.getForwardedFromId() == null) {
                                                                        messagingStyle2 = messagingStyle3;
                                                                        loadRoundAvatar(j10, pathToAttach, name3);
                                                                        personBuild = name3.build();
                                                                        longSparseArray8.put(senderId, personBuild);
                                                                    } else {
                                                                        if (senderId >= 0) {
                                                                            TLRPC.User user11 = notificationsController.getMessagesController().getUser(Long.valueOf(senderId));
                                                                            if (user11 != null && (userProfilePhoto = user11.photo) != null && (fileLocation5 = userProfilePhoto.photo_small) != null) {
                                                                                messagingStyle2 = messagingStyle3;
                                                                                if (fileLocation5.volume_id != 0 && fileLocation5.local_id != 0) {
                                                                                    pathToAttach = notificationsController.getFileLoader().getPathToAttach(user11.photo.photo_small, true);
                                                                                }
                                                                            }
                                                                        } else {
                                                                            messagingStyle2 = messagingStyle3;
                                                                            TLRPC.Chat chat5 = notificationsController.getMessagesController().getChat(Long.valueOf(-senderId));
                                                                            if (chat5 != null && (chatPhoto = chat5.photo) != null && (fileLocation4 = chatPhoto.photo_small) != null && fileLocation4.volume_id != 0 && fileLocation4.local_id != 0) {
                                                                                pathToAttach = notificationsController.getFileLoader().getPathToAttach(chat5.photo.photo_small, true);
                                                                            }
                                                                        }
                                                                        loadRoundAvatar(j10, pathToAttach, name3);
                                                                        personBuild = name3.build();
                                                                        longSparseArray8.put(senderId, personBuild);
                                                                    }
                                                                    size5 = i25 - 1;
                                                                    str20 = str13;
                                                                    strArr2 = strArr;
                                                                    str21 = str12;
                                                                    arrayList8 = arrayList25;
                                                                    messageObject = messageObject2;
                                                                    zArr2 = zArr;
                                                                    sb4 = sb2;
                                                                    j7 = j11;
                                                                } else {
                                                                    str13 = str20;
                                                                    j11 = j26;
                                                                }
                                                            }
                                                            messagingStyle2 = messagingStyle;
                                                            personBuild = name3.build();
                                                            longSparseArray8.put(senderId, personBuild);
                                                        } else {
                                                            j11 = j26;
                                                            personBuild = person2;
                                                            zArr = zArr2;
                                                            str13 = str20;
                                                            messagingStyle2 = messagingStyle;
                                                        }
                                                        if (!DialogObject.isEncryptedDialog(j10)) {
                                                            if (!zArr[0] || Build.VERSION.SDK_INT < 28 || ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).isLowRamDevice() || z5 || messageObject10.isSecretMedia() || !(messageObject10.type == 1 || messageObject10.isSticker())) {
                                                                messagingStyle = messagingStyle2;
                                                            } else {
                                                                File pathToMessage = notificationsController.getFileLoader().getPathToMessage(messageObject10.messageOwner);
                                                                if (pathToMessage.exists() && messageObject10.hasMediaSpoilers()) {
                                                                    file4 = new File(pathToMessage.getParentFile(), pathToMessage.getName() + ".blur.jpg");
                                                                    if (file4.exists()) {
                                                                        file5 = pathToMessage;
                                                                        messagingStyle4 = messagingStyle2;
                                                                    } else {
                                                                        try {
                                                                            Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(pathToMessage.getAbsolutePath());
                                                                            Bitmap bitmapStackBlurBitmapMax = Utilities.stackBlurBitmapMax(bitmapDecodeFile2);
                                                                            bitmapDecodeFile2.recycle();
                                                                            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapStackBlurBitmapMax, bitmapDecodeFile2.getWidth(), bitmapDecodeFile2.getHeight(), true);
                                                                            Utilities.stackBlurBitmap(bitmapCreateScaledBitmap, 5);
                                                                            bitmapStackBlurBitmapMax.recycle();
                                                                            Canvas canvas = new Canvas(bitmapCreateScaledBitmap);
                                                                            file5 = pathToMessage;
                                                                            try {
                                                                                notificationsController.mediaSpoilerEffect.setColor(ColorUtils.setAlphaComponent(-1, (int) (Color.alpha(-1) * 0.325f)));
                                                                                messagingStyle4 = messagingStyle2;
                                                                            } catch (Exception e) {
                                                                                e = e;
                                                                                messagingStyle4 = messagingStyle2;
                                                                                FileLog.m898e(e);
                                                                                file3 = file5;
                                                                                NotificationCompat.MessagingStyle.Message message2 = new NotificationCompat.MessagingStyle.Message(str25, ((long) messageObject10.messageOwner.date) * 1000, personBuild);
                                                                                String str26 = !messageObject10.isSticker() ? "image/webp" : "image/jpeg";
                                                                                if (!file3.exists()) {
                                                                                }
                                                                                size5 = i25 - 1;
                                                                                str20 = str13;
                                                                                strArr2 = strArr;
                                                                                str21 = str12;
                                                                                arrayList8 = arrayList25;
                                                                                messageObject = messageObject2;
                                                                                zArr2 = zArr;
                                                                                sb4 = sb2;
                                                                                j7 = j11;
                                                                            }
                                                                            try {
                                                                                notificationsController.mediaSpoilerEffect.setBounds(0, 0, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight());
                                                                                notificationsController.mediaSpoilerEffect.draw(canvas);
                                                                                FileOutputStream fileOutputStream = new FileOutputStream(file4);
                                                                                bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                                                                fileOutputStream.close();
                                                                                bitmapCreateScaledBitmap.recycle();
                                                                                file3 = file4;
                                                                            } catch (Exception e2) {
                                                                                e = e2;
                                                                                FileLog.m898e(e);
                                                                                file3 = file5;
                                                                            }
                                                                        } catch (Exception e3) {
                                                                            e = e3;
                                                                            file5 = pathToMessage;
                                                                        }
                                                                    }
                                                                    file3 = file5;
                                                                } else {
                                                                    messagingStyle4 = messagingStyle2;
                                                                    file3 = pathToMessage;
                                                                    file4 = null;
                                                                }
                                                                NotificationCompat.MessagingStyle.Message message22 = new NotificationCompat.MessagingStyle.Message(str25, ((long) messageObject10.messageOwner.date) * 1000, personBuild);
                                                                String str262 = !messageObject10.isSticker() ? "image/webp" : "image/jpeg";
                                                                if (!file3.exists()) {
                                                                    try {
                                                                        uriForFile2 = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", file3);
                                                                    } catch (Exception e4) {
                                                                        FileLog.m898e(e4);
                                                                    }
                                                                    if (uriForFile2 == null) {
                                                                        message22.setData(str262, uriForFile2);
                                                                        messagingStyle = messagingStyle4;
                                                                        messagingStyle.addMessage(message22);
                                                                        ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", uriForFile2, 1);
                                                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda33
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                NotificationsController.$r8$lambda$gQghIUHs5ZKeIK8dHwFQ_2pzquE(uriForFile2, file4);
                                                                            }
                                                                        }, 20000L);
                                                                        if (!TextUtils.isEmpty(messageObject10.caption)) {
                                                                            messagingStyle.addMessage(messageObject10.caption, ((long) messageObject10.messageOwner.date) * 1000, personBuild);
                                                                        }
                                                                        if (!zArr[0] && !z5 && messageObject10.isVoice()) {
                                                                            List<NotificationCompat.MessagingStyle.Message> messages = messagingStyle.getMessages();
                                                                            if (!messages.isEmpty()) {
                                                                                File pathToMessage2 = notificationsController.getFileLoader().getPathToMessage(messageObject10.messageOwner);
                                                                                if (pathToMessage2.exists()) {
                                                                                    try {
                                                                                        uriForFile = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", pathToMessage2);
                                                                                    } catch (Exception unused2) {
                                                                                        uriForFile = null;
                                                                                    }
                                                                                    if (uriForFile != null) {
                                                                                        messages.get(messages.size() - 1).setData("audio/ogg", uriForFile);
                                                                                    }
                                                                                } else if (messageObject10.getDocument() != null) {
                                                                                    String attachFileName = FileLoader.getAttachFileName(messageObject10.getDocument());
                                                                                    if (!notificationsController.pendingVoiceLoads.contains(attachFileName)) {
                                                                                        notificationsController.pendingVoiceLoads.add(attachFileName);
                                                                                        notificationsController.getFileLoader().loadFile(messageObject10.getDocument(), messageObject10, 3, 0);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        messagingStyle = messagingStyle4;
                                                                    }
                                                                } else {
                                                                    uriForFile2 = notificationsController.getFileLoader().isLoadingFile(file3.getName()) ? new Uri.Builder().scheme("content").authority(NotificationImageProvider.getAuthority()).appendPath("msg_media_raw").appendPath(notificationsController.currentAccount + str13).appendPath(file3.getName()).appendQueryParameter("final_path", file3.getAbsolutePath()).build() : null;
                                                                    if (uriForFile2 == null) {
                                                                    }
                                                                }
                                                                size5 = i25 - 1;
                                                                str20 = str13;
                                                                strArr2 = strArr;
                                                                str21 = str12;
                                                                arrayList8 = arrayList25;
                                                                messageObject = messageObject2;
                                                                zArr2 = zArr;
                                                                sb4 = sb2;
                                                                j7 = j11;
                                                            }
                                                            messagingStyle.addMessage(str25, ((long) messageObject10.messageOwner.date) * 1000, personBuild);
                                                            if (!zArr[0]) {
                                                            }
                                                            size5 = i25 - 1;
                                                            str20 = str13;
                                                            strArr2 = strArr;
                                                            str21 = str12;
                                                            arrayList8 = arrayList25;
                                                            messageObject = messageObject2;
                                                            zArr2 = zArr;
                                                            sb4 = sb2;
                                                            j7 = j11;
                                                        } else {
                                                            messagingStyle = messagingStyle2;
                                                            messagingStyle.addMessage(str25, ((long) messageObject10.messageOwner.date) * 1000, personBuild);
                                                        }
                                                        if (j10 != 777000 || (replyMarkup = messageObject10.messageOwner.reply_markup) == null) {
                                                            id2 = i26;
                                                            arrayList23 = arrayList24;
                                                        } else {
                                                            arrayList23 = replyMarkup.rows;
                                                            id2 = messageObject10.getId();
                                                        }
                                                        size5 = i25 - 1;
                                                        str20 = str13;
                                                        strArr2 = strArr;
                                                        str21 = str12;
                                                        arrayList8 = arrayList25;
                                                        messageObject = messageObject2;
                                                        zArr2 = zArr;
                                                        sb4 = sb2;
                                                        j7 = j11;
                                                    }
                                                }
                                                zArr = zArr2;
                                                str13 = str20;
                                                id2 = i26;
                                                arrayList23 = arrayList24;
                                                size5 = i25 - 1;
                                                str20 = str13;
                                                strArr2 = strArr;
                                                str21 = str12;
                                                arrayList8 = arrayList25;
                                                messageObject = messageObject2;
                                                zArr2 = zArr;
                                                sb4 = sb2;
                                                j7 = j11;
                                            }
                                            sb = sb4;
                                            bitmapLoadMultipleAvatars = bitmap3;
                                            str11 = str19;
                                            i12 = id2;
                                            arrayList9 = arrayList23;
                                        } else {
                                            ArrayList<String> arrayList26 = new ArrayList<>();
                                            ArrayList<Object> arrayList27 = new ArrayList<>();
                                            Pair<Integer, Boolean> storyPushes = notificationsController.parseStoryPushes(arrayList26, arrayList27);
                                            int iIntValue = ((Integer) storyPushes.first).intValue();
                                            boolean zBooleanValue = ((Boolean) storyPushes.second).booleanValue();
                                            if (zBooleanValue) {
                                                arrayList14 = arrayList27;
                                                str17 = str10;
                                                sb4.append(LocaleController.formatPluralString("StoryNotificationHidden", iIntValue, new Object[0]));
                                                long j27 = j8;
                                                j9 = j22;
                                                j10 = j27;
                                            } else {
                                                arrayList14 = arrayList27;
                                                str17 = str10;
                                                if (arrayList26.isEmpty()) {
                                                    FileLog.m895d(str3 + j8 + "] continue; story but names is empty");
                                                    j6 = j22;
                                                    notificationsController2 = notificationsController;
                                                    longSparseArray5 = longSparseArray8;
                                                    notification2 = notification4;
                                                    arrayList6 = arrayList18;
                                                    i6 = i20;
                                                    z9 = z6;
                                                    arrayList7 = arrayList4;
                                                } else {
                                                    long j28 = j8;
                                                    j9 = j22;
                                                    j10 = j28;
                                                    if (arrayList26.size() != 1) {
                                                        if (arrayList26.size() == 2) {
                                                            z15 = zBooleanValue;
                                                            sb4.append(LocaleController.formatString(C2573R.string.StoryNotification2, arrayList26.get(0), arrayList26.get(1)));
                                                        } else {
                                                            z15 = zBooleanValue;
                                                            if (arrayList26.size() == 3 && notificationsController.storyPushMessages.size() == 3) {
                                                                sb4.append(LocaleController.formatString(C2573R.string.StoryNotification3, notificationsController.cutLastName(arrayList26.get(0)), notificationsController.cutLastName(arrayList26.get(1)), notificationsController.cutLastName(arrayList26.get(2))));
                                                            } else {
                                                                sb4.append(LocaleController.formatPluralString("StoryNotification4", notificationsController.storyPushMessages.size() - 2, notificationsController.cutLastName(arrayList26.get(0)), notificationsController.cutLastName(arrayList26.get(1))));
                                                            }
                                                        }
                                                        long jMin = Long.MAX_VALUE;
                                                        i14 = 0;
                                                        while (i14 < notificationsController.storyPushMessages.size()) {
                                                            jMin = Math.min(notificationsController.storyPushMessages.get(i14).date, jMin);
                                                            i14++;
                                                            actionBuild = actionBuild;
                                                            dialogKey3 = dialogKey3;
                                                        }
                                                        action = actionBuild;
                                                        dialogKey4 = dialogKey3;
                                                        messagingStyle.setGroupConversation(false);
                                                        String pluralString = (arrayList26.size() == 1 || z15) ? LocaleController.formatPluralString(str17, iIntValue, new Object[0]) : arrayList26.get(0);
                                                        messagingStyle.addMessage(sb4, jMin, new Person.Builder().setName(pluralString).build());
                                                        sb = sb4;
                                                        arrayList9 = null;
                                                        i12 = 0;
                                                        bitmapLoadMultipleAvatars = z15 ? loadMultipleAvatars(arrayList14) : null;
                                                        str11 = pluralString;
                                                    } else if (iIntValue == 1) {
                                                        sb4.append(LocaleController.getString("StoryNotificationSingle"));
                                                    } else {
                                                        sb4.append(LocaleController.formatPluralString("StoryNotification1", iIntValue, arrayList26.get(0)));
                                                    }
                                                }
                                            }
                                            z15 = zBooleanValue;
                                            long jMin2 = Long.MAX_VALUE;
                                            i14 = 0;
                                            while (i14 < notificationsController.storyPushMessages.size()) {
                                            }
                                            action = actionBuild;
                                            dialogKey4 = dialogKey3;
                                            messagingStyle.setGroupConversation(false);
                                            if (arrayList26.size() == 1) {
                                                messagingStyle.addMessage(sb4, jMin2, new Person.Builder().setName(pluralString).build());
                                                sb = sb4;
                                                arrayList9 = null;
                                                i12 = 0;
                                                bitmapLoadMultipleAvatars = z15 ? loadMultipleAvatars(arrayList14) : null;
                                                str11 = pluralString;
                                            }
                                        }
                                        ArrayList<StoryNotification> arrayList28 = arrayList8;
                                        messageObject3 = messageObject;
                                        j12 = j7;
                                        Intent intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                                        intent2.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                                        intent2.setFlags(67108864);
                                        intent2.addCategory("android.intent.category.LAUNCHER");
                                        if (messageObject3 == null && messageObject3.isOauthPush) {
                                            intent2.putExtra("oauth_url", messageObject3.localName);
                                        } else if (messageObject3 == null && messageObject3.isStoryReactionPush) {
                                            intent2.putExtra("storyId", Math.abs(messageObject3.getId()));
                                        } else if (messageObject3 == null && messageObject3.isLiveStoryPush) {
                                            if (j10 < 0) {
                                                str14 = "storyId";
                                                intent2.putExtra("chatId", -j10);
                                            } else {
                                                str14 = "storyId";
                                                if (j10 > 0) {
                                                    intent2.putExtra("userId", j10);
                                                }
                                            }
                                            intent2.putExtra(str14, Math.abs(messageObject3.getId()));
                                        } else {
                                            dialogKey5 = dialogKey4;
                                            if (!dialogKey5.story) {
                                                long[] jArr2 = new long[notificationsController.storyPushMessages.size()];
                                                for (int i27 = 0; i27 < notificationsController.storyPushMessages.size(); i27++) {
                                                    jArr2[i27] = notificationsController.storyPushMessages.get(i27).dialogId;
                                                }
                                                intent2.putExtra("storyDialogIds", jArr2);
                                            } else if (DialogObject.isEncryptedDialog(j10)) {
                                                intent2.putExtra("encId", DialogObject.getEncryptedChatId(j10));
                                            } else if (DialogObject.isUserDialog(j10)) {
                                                intent2.putExtra("userId", j10);
                                            } else {
                                                intent2.putExtra("chatId", -j10);
                                            }
                                            FileLog.m895d("show extra notifications chatId " + j10 + " topicId " + j12);
                                            if (j12 != 0) {
                                                intent2.putExtra("topicId", j12);
                                            }
                                            intent2.putExtra("currentAccount", notificationsController.currentAccount);
                                            LongSparseArray longSparseArray9 = longSparseArray8;
                                            PendingIntent activity = PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent2, 1140850688);
                                            NotificationCompat.WearableExtender wearableExtender = new NotificationCompat.WearableExtender();
                                            action2 = action;
                                            if (action != null) {
                                                wearableExtender.addAction(action2);
                                            }
                                            long j29 = j12;
                                            Intent intent3 = new Intent(ApplicationLoader.applicationContext, (Class<?>) AutoMessageHeardReceiver.class);
                                            intent3.addFlags(32);
                                            intent3.setAction("org.telegram.messenger.ACTION_MESSAGE_HEARD");
                                            intent3.putExtra(str7, j10);
                                            int i28 = i12;
                                            int i29 = i9;
                                            intent3.putExtra(str6, i29);
                                            intent3.putExtra("currentAccount", notificationsController.currentAccount);
                                            arrayList10 = arrayList9;
                                            bitmap4 = bitmapLoadMultipleAvatars;
                                            NotificationCompat.Action actionBuild2 = new NotificationCompat.Action.Builder(C2573R.drawable.msg_markread, LocaleController.getString(C2573R.string.MarkAsRead), PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num2.intValue(), intent3, 201326592)).setSemanticAction(2).setShowsUserInterface(false).build();
                                            if (DialogObject.isEncryptedDialog(j10)) {
                                                action3 = actionBuild2;
                                                messageObject4 = messageObject3;
                                                string3 = j10 != globalSecretChatId ? "tgenc" + DialogObject.getEncryptedChatId(j10) + "_" + i29 : null;
                                            } else if (DialogObject.isUserDialog(j10)) {
                                                string3 = "tguser" + j10 + "_" + i29;
                                                action3 = actionBuild2;
                                                messageObject4 = messageObject3;
                                            } else {
                                                StringBuilder sb6 = new StringBuilder("tgchat");
                                                action3 = actionBuild2;
                                                messageObject4 = messageObject3;
                                                sb6.append(-j10);
                                                sb6.append("_");
                                                sb6.append(i29);
                                                string3 = sb6.toString();
                                            }
                                            if (string3 != null) {
                                                wearableExtender.setDismissalId(string3);
                                                NotificationCompat.WearableExtender wearableExtender2 = new NotificationCompat.WearableExtender();
                                                wearableExtender2.setDismissalId("summary_".concat(string3));
                                                builder.extend(wearableExtender2);
                                            }
                                            StringBuilder sb7 = new StringBuilder("tgaccount");
                                            long j30 = j9;
                                            sb7.append(j30);
                                            wearableExtender.setBridgeTag(sb7.toString());
                                            if (dialogKey5.story) {
                                                j6 = j30;
                                                long jMin3 = Long.MAX_VALUE;
                                                int i30 = 0;
                                                while (i30 < notificationsController.storyPushMessages.size()) {
                                                    jMin3 = Math.min(notificationsController.storyPushMessages.get(i30).date, jMin3);
                                                    i30++;
                                                    action3 = action3;
                                                }
                                                action4 = action3;
                                                j13 = jMin3;
                                                arrayList11 = arrayList28;
                                            } else {
                                                j6 = j30;
                                                action4 = action3;
                                                arrayList11 = arrayList28;
                                                j13 = ((long) ((MessageObject) arrayList11.get(0)).messageOwner.date) * 1000;
                                            }
                                            NotificationCompat.Builder autoCancel = new NotificationCompat.Builder(ApplicationLoader.applicationContext).setContentTitle(str11).setSmallIcon(IconManager.getNotificationIcon()).setContentText(sb.toString()).setAutoCancel(true);
                                            if (dialogKey5.story) {
                                                arrayList11 = notificationsController.storyPushMessages;
                                            }
                                            category = autoCancel.setNumber(arrayList11.size()).setGroupSummary(false).setWhen(j13).setShowWhen(true).setStyle(messagingStyle).setContentIntent(activity).extend(wearableExtender).setSortKey(String.valueOf(LongCompanionObject.MAX_VALUE - j13)).setCategory("msg");
                                            if (Build.VERSION.SDK_INT < 31) {
                                                category.setColor(notificationsController.getNotificationColor());
                                            }
                                            Intent intent4 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                            intent4.putExtra("messageDate", i5);
                                            intent4.putExtra("dialogId", j10);
                                            intent4.putExtra("currentAccount", notificationsController.currentAccount);
                                            if (dialogKey5.story) {
                                                intent4.putExtra("story", true);
                                            }
                                            if (messageObject4 != null) {
                                                messageObject5 = messageObject4;
                                                try {
                                                    if (messageObject5.isStoryReactionPush) {
                                                        intent4.putExtra("storyReaction", true);
                                                    }
                                                } catch (Exception e5) {
                                                    e = e5;
                                                    FileLog.m898e(e);
                                                }
                                            } else {
                                                messageObject5 = messageObject4;
                                            }
                                            category.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num2.intValue(), intent4, 167772160));
                                            if (z6) {
                                                category.setGroup(notificationsController.notificationGroup);
                                                category.setGroupAlertBehavior(1);
                                            }
                                            if (messageObject5 == null || (message = messageObject5.messageOwner) == null || (replyMarkup2 = message.reply_markup) == null) {
                                                tL_keyboardButtonCopy = null;
                                            } else {
                                                TLRPC.TL_keyboardButtonCopy tL_keyboardButtonCopy2 = null;
                                                for (int i31 = 0; i31 < replyMarkup2.rows.size(); i31++) {
                                                    int i32 = 0;
                                                    while (true) {
                                                        if (i32 >= replyMarkup2.rows.get(i31).buttons.size()) {
                                                            break;
                                                        }
                                                        if (replyMarkup2.rows.get(i31).buttons.get(i32) instanceof TLRPC.TL_keyboardButtonCopy) {
                                                            tL_keyboardButtonCopy2 = (TLRPC.TL_keyboardButtonCopy) replyMarkup2.rows.get(i31).buttons.get(i32);
                                                            break;
                                                        }
                                                        i32++;
                                                    }
                                                    if (tL_keyboardButtonCopy2 != null) {
                                                        break;
                                                    }
                                                }
                                                tL_keyboardButtonCopy = tL_keyboardButtonCopy2;
                                            }
                                            if (tL_keyboardButtonCopy != null) {
                                                Intent intent5 = new Intent(ApplicationLoader.applicationContext, (Class<?>) CopyCodeReceiver.class);
                                                intent5.addFlags(32);
                                                intent5.setAction("org.telegram.messenger.ACTION_COPY_CODE");
                                                intent5.putExtra("text", tL_keyboardButtonCopy.copy_text);
                                                category.addAction(new NotificationCompat.Action.Builder(C2573R.drawable.msg_copy, tL_keyboardButtonCopy.text, PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num2.intValue(), intent5, 167772160)).setShowsUserInterface(false).build());
                                            }
                                            j14 = dialogKey5.dialogId;
                                            if (j14 != UserObject.VERIFY && j14 != UserObject.OAUTH) {
                                                if (action2 != null) {
                                                    category.addAction(action2);
                                                }
                                                if (!z5 && !dialogKey5.story && (messageObject5 == null || !messageObject5.isStoryReactionPush)) {
                                                    category.addAction(action4);
                                                }
                                            }
                                            if (arrayList18.size() != 1 && !TextUtils.isEmpty(str) && !dialogKey5.story) {
                                                category.setSubText(str);
                                            }
                                            if (DialogObject.isEncryptedDialog(j10)) {
                                                category.setLocalOnly(true);
                                            }
                                            if (bitmap4 != null) {
                                                category.setLargeIcon(bitmap4);
                                            }
                                            if (!AndroidUtilities.needShowPasscode(false) && !SharedConfig.isWaitingForPasscodeEnter && arrayList10 != null) {
                                                size = arrayList10.size();
                                                i13 = 0;
                                                while (i13 < size) {
                                                    ArrayList<TLRPC.TL_keyboardButtonRow> arrayList29 = arrayList10;
                                                    TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow = arrayList29.get(i13);
                                                    int size6 = tL_keyboardButtonRow.buttons.size();
                                                    int i33 = 0;
                                                    while (i33 < size6) {
                                                        TLRPC.KeyboardButton keyboardButton = tL_keyboardButtonRow.buttons.get(i33);
                                                        int i34 = size;
                                                        if (keyboardButton instanceof TLRPC.TL_keyboardButtonCallback) {
                                                            str16 = str11;
                                                            arrayList13 = arrayList29;
                                                            Intent intent6 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationCallbackReceiver.class);
                                                            intent6.putExtra("currentAccount", notificationsController.currentAccount);
                                                            intent6.putExtra("did", j10);
                                                            byte[] bArr = keyboardButton.data;
                                                            if (bArr != null) {
                                                                intent6.putExtra("data", bArr);
                                                            }
                                                            intent6.putExtra("mid", i28);
                                                            String str27 = keyboardButton.text;
                                                            Context context = ApplicationLoader.applicationContext;
                                                            int i35 = notificationsController.lastButtonId;
                                                            messageObject7 = messageObject5;
                                                            notificationsController.lastButtonId = i35 + 1;
                                                            category.addAction(0, str27, PendingIntent.getBroadcast(context, i35, intent6, 201326592));
                                                        } else {
                                                            str16 = str11;
                                                            arrayList13 = arrayList29;
                                                            messageObject7 = messageObject5;
                                                        }
                                                        i33++;
                                                        size = i34;
                                                        str11 = str16;
                                                        arrayList29 = arrayList13;
                                                        messageObject5 = messageObject7;
                                                    }
                                                    i13++;
                                                    arrayList10 = arrayList29;
                                                    messageObject5 = messageObject5;
                                                }
                                            }
                                            String str28 = str11;
                                            MessageObject messageObject11 = messageObject5;
                                            if (chat4 == null || user4 == null) {
                                                user5 = user4;
                                            } else {
                                                user5 = user4;
                                                String str29 = user5.phone;
                                                if (str29 != null && str29.length() > 0) {
                                                    category.addPerson("tel:+" + user5.phone);
                                                }
                                            }
                                            if (Build.VERSION.SDK_INT >= 26) {
                                                j15 = j10;
                                                notificationsController2 = notificationsController;
                                                user6 = user5;
                                                dialogKey6 = dialogKey5;
                                                notification3 = notification4;
                                                arrayList6 = arrayList18;
                                                i6 = i20;
                                                z12 = z6;
                                                longSparseArray5 = longSparseArray9;
                                                arrayList12 = arrayList4;
                                            } else if (z6) {
                                                boolean z22 = !z3 && (!dialogKey5.story ? !(i3 != 3 && j10 == j && j29 == j2) : i3 != 3);
                                                category.setGroupAlertBehavior(z22 ? 2 : 1);
                                                category.setOnlyAlertOnce(!z22);
                                                long j31 = j10;
                                                boolean z23 = dialogKey5.story;
                                                TLRPC.Chat chat6 = chat4;
                                                long j32 = chat4 != null ? chat6.id : 0L;
                                                user6 = user5;
                                                chat4 = chat6;
                                                dialogKey6 = dialogKey5;
                                                if (chat6 == null) {
                                                    j16 = j31;
                                                    j17 = j32;
                                                    j18 = j16;
                                                    notificationsController2 = notificationsController;
                                                    notification3 = notification4;
                                                    arrayList6 = arrayList18;
                                                    i6 = i20;
                                                    z13 = z6;
                                                    longSparseArray5 = longSparseArray9;
                                                    str15 = str28;
                                                    arrayList12 = arrayList4;
                                                    z14 = z8;
                                                    j19 = j29;
                                                    messageObject6 = messageObject11;
                                                } else {
                                                    j16 = 0;
                                                    j17 = j32;
                                                    j18 = j31;
                                                    notificationsController2 = notificationsController;
                                                    notification3 = notification4;
                                                    z13 = z6;
                                                    longSparseArray5 = longSparseArray9;
                                                    str15 = str28;
                                                    arrayList12 = arrayList4;
                                                    z14 = z8;
                                                    j19 = j29;
                                                    messageObject6 = messageObject11;
                                                    arrayList6 = arrayList18;
                                                    i6 = i20;
                                                }
                                                j29 = j19;
                                                str28 = str15;
                                                j15 = j18;
                                                category.setChannelId(notificationsController2.validateChannelIdForDialog(j18, j19, z23, messageObject6, j17, j16, z14, str15));
                                                z12 = z13;
                                            } else {
                                                j15 = j10;
                                                notificationsController2 = notificationsController;
                                                user6 = user5;
                                                dialogKey6 = dialogKey5;
                                                notification3 = notification4;
                                                arrayList6 = arrayList18;
                                                i6 = i20;
                                                z12 = z6;
                                                longSparseArray5 = longSparseArray9;
                                                arrayList12 = arrayList4;
                                                notificationsController2.setNotificationChannel(notification3, category, z12);
                                            }
                                            FileLog.m895d("showExtraNotifications: holders.add " + j15);
                                            z9 = z12;
                                            notification2 = notification3;
                                            arrayList7 = arrayList12;
                                            arrayList7.add(notificationsController2.new C1NotificationHolder(num2.intValue(), j15, dialogKey6.story, j29, str28, user6, chat4, category, j2, str2, jArr, i, uri, i2, z, z2, z3, i3));
                                            notificationsController2.wearNotificationsIds.put(j15, num2);
                                        }
                                        dialogKey5 = dialogKey4;
                                        FileLog.m895d("show extra notifications chatId " + j10 + " topicId " + j12);
                                        if (j12 != 0) {
                                        }
                                        intent2.putExtra("currentAccount", notificationsController.currentAccount);
                                        LongSparseArray longSparseArray92 = longSparseArray8;
                                        PendingIntent activity2 = PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent2, 1140850688);
                                        NotificationCompat.WearableExtender wearableExtender3 = new NotificationCompat.WearableExtender();
                                        action2 = action;
                                        if (action != null) {
                                        }
                                        long j292 = j12;
                                        Intent intent32 = new Intent(ApplicationLoader.applicationContext, (Class<?>) AutoMessageHeardReceiver.class);
                                        intent32.addFlags(32);
                                        intent32.setAction("org.telegram.messenger.ACTION_MESSAGE_HEARD");
                                        intent32.putExtra(str7, j10);
                                        int i282 = i12;
                                        int i292 = i9;
                                        intent32.putExtra(str6, i292);
                                        intent32.putExtra("currentAccount", notificationsController.currentAccount);
                                        arrayList10 = arrayList9;
                                        bitmap4 = bitmapLoadMultipleAvatars;
                                        NotificationCompat.Action actionBuild22 = new NotificationCompat.Action.Builder(C2573R.drawable.msg_markread, LocaleController.getString(C2573R.string.MarkAsRead), PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num2.intValue(), intent32, 201326592)).setSemanticAction(2).setShowsUserInterface(false).build();
                                        if (DialogObject.isEncryptedDialog(j10)) {
                                        }
                                        if (string3 != null) {
                                        }
                                        StringBuilder sb72 = new StringBuilder("tgaccount");
                                        long j302 = j9;
                                        sb72.append(j302);
                                        wearableExtender3.setBridgeTag(sb72.toString());
                                        if (dialogKey5.story) {
                                        }
                                        NotificationCompat.Builder autoCancel2 = new NotificationCompat.Builder(ApplicationLoader.applicationContext).setContentTitle(str11).setSmallIcon(IconManager.getNotificationIcon()).setContentText(sb.toString()).setAutoCancel(true);
                                        if (dialogKey5.story) {
                                        }
                                        category = autoCancel2.setNumber(arrayList11.size()).setGroupSummary(false).setWhen(j13).setShowWhen(true).setStyle(messagingStyle).setContentIntent(activity2).extend(wearableExtender3).setSortKey(String.valueOf(LongCompanionObject.MAX_VALUE - j13)).setCategory("msg");
                                        if (Build.VERSION.SDK_INT < 31) {
                                        }
                                        Intent intent42 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                        intent42.putExtra("messageDate", i5);
                                        intent42.putExtra("dialogId", j10);
                                        intent42.putExtra("currentAccount", notificationsController.currentAccount);
                                        if (dialogKey5.story) {
                                        }
                                        if (messageObject4 != null) {
                                        }
                                        category.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num2.intValue(), intent42, 167772160));
                                        if (z6) {
                                        }
                                        if (messageObject5 == null) {
                                            tL_keyboardButtonCopy = null;
                                            if (tL_keyboardButtonCopy != null) {
                                            }
                                            j14 = dialogKey5.dialogId;
                                            if (j14 != UserObject.VERIFY) {
                                                if (action2 != null) {
                                                }
                                                if (!z5) {
                                                    category.addAction(action4);
                                                }
                                            }
                                            if (arrayList18.size() != 1) {
                                                if (DialogObject.isEncryptedDialog(j10)) {
                                                }
                                                if (bitmap4 != null) {
                                                }
                                                if (!AndroidUtilities.needShowPasscode(false)) {
                                                    size = arrayList10.size();
                                                    i13 = 0;
                                                    while (i13 < size) {
                                                    }
                                                }
                                                String str282 = str11;
                                                MessageObject messageObject112 = messageObject5;
                                                if (chat4 == null) {
                                                    user5 = user4;
                                                    if (Build.VERSION.SDK_INT >= 26) {
                                                    }
                                                    FileLog.m895d("showExtraNotifications: holders.add " + j15);
                                                    z9 = z12;
                                                    notification2 = notification3;
                                                    arrayList7 = arrayList12;
                                                    arrayList7.add(notificationsController2.new C1NotificationHolder(num2.intValue(), j15, dialogKey6.story, j292, str282, user6, chat4, category, j2, str2, jArr, i, uri, i2, z, z2, z3, i3));
                                                    notificationsController2.wearNotificationsIds.put(j15, num2);
                                                }
                                            }
                                        }
                                    }
                                }
                                i15 = i6 + 1;
                                arrayList17 = arrayList7;
                                arrayList15 = arrayList6;
                                z16 = z5;
                                size3 = i4;
                                longSparseArray6 = longSparseArray3;
                                notificationBuild2 = notification2;
                                longSparseArray7 = longSparseArray4;
                                notificationsSettings = sharedPreferences;
                                clientUserId = j6;
                                z4 = z9;
                                longSparseArray8 = longSparseArray5;
                            }
                            str10 = "Stories";
                            j8 = j5;
                            person = person3;
                            if (messageObject == null) {
                                String str202 = _UrlKt.FRAGMENT_ENCODE_SET;
                                if (person == null) {
                                    messagingStyle = new NotificationCompat.MessagingStyle(_UrlKt.FRAGMENT_ENCODE_SET);
                                    i11 = Build.VERSION.SDK_INT;
                                    if (i11 >= 28) {
                                        messagingStyle.setConversationTitle(str8);
                                        if (i11 >= 28) {
                                            messagingStyle.setGroupConversation(i11 >= 28 || (!z8 && DialogObject.isChatDialog(j8)) || UserObject.isReplyUser(j8));
                                            StringBuilder sb42 = new StringBuilder();
                                            String[] strArr22 = new String[1];
                                            boolean[] zArr22 = new boolean[1];
                                            if (dialogKey3.story) {
                                            }
                                            ArrayList<StoryNotification> arrayList282 = arrayList8;
                                            messageObject3 = messageObject;
                                            j12 = j7;
                                            Intent intent22 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                                            intent22.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                                            intent22.setFlags(67108864);
                                            intent22.addCategory("android.intent.category.LAUNCHER");
                                            if (messageObject3 == null) {
                                                if (messageObject3 == null) {
                                                    if (messageObject3 == null) {
                                                    }
                                                    dialogKey5 = dialogKey4;
                                                    if (!dialogKey5.story) {
                                                    }
                                                    FileLog.m895d("show extra notifications chatId " + j10 + " topicId " + j12);
                                                    if (j12 != 0) {
                                                    }
                                                    intent22.putExtra("currentAccount", notificationsController.currentAccount);
                                                    LongSparseArray longSparseArray922 = longSparseArray8;
                                                    PendingIntent activity22 = PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent22, 1140850688);
                                                    NotificationCompat.WearableExtender wearableExtender32 = new NotificationCompat.WearableExtender();
                                                    action2 = action;
                                                    if (action != null) {
                                                    }
                                                    long j2922 = j12;
                                                    Intent intent322 = new Intent(ApplicationLoader.applicationContext, (Class<?>) AutoMessageHeardReceiver.class);
                                                    intent322.addFlags(32);
                                                    intent322.setAction("org.telegram.messenger.ACTION_MESSAGE_HEARD");
                                                    intent322.putExtra(str7, j10);
                                                    int i2822 = i12;
                                                    int i2922 = i9;
                                                    intent322.putExtra(str6, i2922);
                                                    intent322.putExtra("currentAccount", notificationsController.currentAccount);
                                                    arrayList10 = arrayList9;
                                                    bitmap4 = bitmapLoadMultipleAvatars;
                                                    NotificationCompat.Action actionBuild222 = new NotificationCompat.Action.Builder(C2573R.drawable.msg_markread, LocaleController.getString(C2573R.string.MarkAsRead), PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num2.intValue(), intent322, 201326592)).setSemanticAction(2).setShowsUserInterface(false).build();
                                                    if (DialogObject.isEncryptedDialog(j10)) {
                                                    }
                                                    if (string3 != null) {
                                                    }
                                                    StringBuilder sb722 = new StringBuilder("tgaccount");
                                                    long j3022 = j9;
                                                    sb722.append(j3022);
                                                    wearableExtender32.setBridgeTag(sb722.toString());
                                                    if (dialogKey5.story) {
                                                    }
                                                    NotificationCompat.Builder autoCancel22 = new NotificationCompat.Builder(ApplicationLoader.applicationContext).setContentTitle(str11).setSmallIcon(IconManager.getNotificationIcon()).setContentText(sb.toString()).setAutoCancel(true);
                                                    if (dialogKey5.story) {
                                                    }
                                                    category = autoCancel22.setNumber(arrayList11.size()).setGroupSummary(false).setWhen(j13).setShowWhen(true).setStyle(messagingStyle).setContentIntent(activity22).extend(wearableExtender32).setSortKey(String.valueOf(LongCompanionObject.MAX_VALUE - j13)).setCategory("msg");
                                                    if (Build.VERSION.SDK_INT < 31) {
                                                    }
                                                    Intent intent422 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                    intent422.putExtra("messageDate", i5);
                                                    intent422.putExtra("dialogId", j10);
                                                    intent422.putExtra("currentAccount", notificationsController.currentAccount);
                                                    if (dialogKey5.story) {
                                                    }
                                                    if (messageObject4 != null) {
                                                    }
                                                    category.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num2.intValue(), intent422, 167772160));
                                                    if (z6) {
                                                    }
                                                    if (messageObject5 == null) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            i15 = i6 + 1;
                            arrayList17 = arrayList7;
                            arrayList15 = arrayList6;
                            z16 = z5;
                            size3 = i4;
                            longSparseArray6 = longSparseArray3;
                            notificationBuild2 = notification2;
                            longSparseArray7 = longSparseArray4;
                            notificationsSettings = sharedPreferences;
                            clientUserId = j6;
                            z4 = z9;
                            longSparseArray8 = longSparseArray5;
                        }
                    }
                    i9 = id;
                    PendingIntent broadcast2 = PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num2.intValue(), intent, 167772160);
                    RemoteInput remoteInputBuild2 = new RemoteInput.Builder(EXTRA_VOICE_REPLY).setLabel(LocaleController.getString(C2573R.string.Reply)).build();
                    if (!DialogObject.isChatDialog(j5)) {
                    }
                    actionBuild = new NotificationCompat.Action.Builder(C2573R.drawable.ic_reply_icon, string2, broadcast2).setAllowGeneratedReplies(true).setSemanticAction(1).addRemoteInput(remoteInputBuild2).setShowsUserInterface(false).build();
                    num3 = notificationsController.pushDialogs.get(j5);
                    if (num3 == null) {
                    }
                    dialogKey3 = dialogKey2;
                    if (dialogKey3.story) {
                    }
                    if (iMax <= 1) {
                        str8 = string;
                        str9 = str8;
                        Person person32 = (Person) longSparseArray8.get(j22);
                        String str192 = str9;
                        if (Build.VERSION.SDK_INT >= 28) {
                            j7 = j3;
                            str10 = "Stories";
                            j8 = j5;
                            person = person32;
                            if (messageObject == null) {
                            }
                        }
                    }
                    i15 = i6 + 1;
                    arrayList17 = arrayList7;
                    arrayList15 = arrayList6;
                    z16 = z5;
                    size3 = i4;
                    longSparseArray6 = longSparseArray3;
                    notificationBuild2 = notification2;
                    longSparseArray7 = longSparseArray4;
                    notificationsSettings = sharedPreferences;
                    clientUserId = j6;
                    z4 = z9;
                    longSparseArray8 = longSparseArray5;
                }
            }
            i9 = id;
            actionBuild = null;
            num3 = notificationsController.pushDialogs.get(j5);
            if (num3 == null) {
            }
            dialogKey3 = dialogKey2;
            if (dialogKey3.story) {
            }
            if (iMax <= 1) {
            }
            i15 = i6 + 1;
            arrayList17 = arrayList7;
            arrayList15 = arrayList6;
            z16 = z5;
            size3 = i4;
            longSparseArray6 = longSparseArray3;
            notificationBuild2 = notification2;
            longSparseArray7 = longSparseArray4;
            notificationsSettings = sharedPreferences;
            clientUserId = j6;
            z4 = z9;
            longSparseArray8 = longSparseArray5;
        }
        LongSparseArray longSparseArray10 = longSparseArray7;
        ArrayList arrayList30 = arrayList17;
        LongSparseArray longSparseArray11 = longSparseArray8;
        if (z4) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("show summary with id " + notificationsController2.notificationId);
            }
            if (Build.VERSION.SDK_INT >= 26) {
                builder2 = builder;
                builder2.setChannelId(OTHER_NOTIFICATIONS_CHANNEL);
                builder2.setGroupAlertBehavior(2);
                notificationBuild = builder2.build();
            } else {
                builder2 = builder;
                notificationBuild = notification;
            }
            try {
                notificationManager.notify(notificationsController2.notificationId, notificationBuild);
                arrayList = arrayList30;
            } catch (SecurityException e6) {
                FileLog.m898e(e6);
                arrayList = arrayList30;
                notificationsController2.resetNotificationSound(builder2, j, j2, str2, jArr, i, uri, i2, z, z2, z3, i3);
            }
        } else {
            arrayList = arrayList30;
            if (notificationsController2.openedInBubbleDialogs.isEmpty()) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("cancel summary with id " + notificationsController2.notificationId);
                }
                notificationManager.cancel(notificationsController2.notificationId);
            }
        }
        int i36 = 0;
        while (i36 < longSparseArray10.size()) {
            LongSparseArray longSparseArray12 = longSparseArray10;
            if (!notificationsController2.openedInBubbleDialogs.contains(Long.valueOf(longSparseArray12.keyAt(i36)))) {
                Integer num4 = (Integer) longSparseArray12.valueAt(i36);
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("cancel notification id " + num4);
                }
                notificationManager.cancel(num4.intValue());
            }
            i36++;
            longSparseArray10 = longSparseArray12;
        }
        ArrayList arrayList31 = new ArrayList(arrayList.size());
        FileLog.m895d("showExtraNotifications: holders.size()=" + arrayList.size());
        int size7 = arrayList.size();
        int i37 = 0;
        while (i37 < size7) {
            ArrayList arrayList32 = arrayList;
            C1NotificationHolder c1NotificationHolder = (C1NotificationHolder) arrayList32.get(i37);
            arrayList31.clear();
            if (Build.VERSION.SDK_INT < 29 || DialogObject.isEncryptedDialog(c1NotificationHolder.dialogId)) {
                longSparseArray2 = longSparseArray11;
            } else {
                NotificationCompat.Builder builder3 = c1NotificationHolder.notification;
                long j33 = c1NotificationHolder.dialogId;
                longSparseArray2 = longSparseArray11;
                String strCreateNotificationShortcut = notificationsController2.createNotificationShortcut(builder3, j33, c1NotificationHolder.name, c1NotificationHolder.user, c1NotificationHolder.chat, (Person) longSparseArray2.get(j33), !c1NotificationHolder.story);
                if (strCreateNotificationShortcut != null) {
                    arrayList31.add(strCreateNotificationShortcut);
                }
            }
            FileLog.m895d("showExtraNotifications: holders[" + i37 + "].call()");
            c1NotificationHolder.call();
            if (!unsupportedNotificationShortcut() && !arrayList31.isEmpty()) {
                ShortcutManagerCompat.removeDynamicShortcuts(ApplicationLoader.applicationContext, arrayList31);
            }
            i37++;
            notificationsController2 = this;
            arrayList = arrayList32;
            longSparseArray11 = longSparseArray2;
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.NotificationsController$1NotificationHolder, reason: invalid class name */
    public class C1NotificationHolder {
        TLRPC.Chat chat;
        long dialogId;
        int id;
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

        public C1NotificationHolder(int i, long j, boolean z, long j2, String str, TLRPC.User user, TLRPC.Chat chat, NotificationCompat.Builder builder, long j3, String str2, long[] jArr, int i2, Uri uri, int i3, boolean z2, boolean z3, boolean z4, int i4) {
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
            this.id = i;
            this.name = str;
            this.user = user;
            this.chat = chat;
            this.notification = builder;
            this.dialogId = j;
            this.story = z;
            this.topicId = j2;
        }

        public void call() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m899w("show dialog notification with id " + this.id + " " + this.dialogId + " user=" + this.user + " chat=" + this.chat);
            }
            try {
                NotificationsController.notificationManager.notify(this.id, this.notification.build());
            } catch (SecurityException e) {
                FileLog.m898e(e);
                NotificationsController.this.resetNotificationSound(this.notification, this.dialogId, this.val$lastTopicId, this.val$chatName, this.val$vibrationPattern, this.val$ledColor, this.val$sound, this.val$importance, this.val$isDefault, this.val$isInApp, this.val$isSilent, this.val$chatType);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$gQghIUHs5ZKeIK8dHwFQ_2pzquE(Uri uri, File file) {
        try {
            ApplicationLoader.applicationContext.revokeUriPermission(uri, 1);
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        if (file != null) {
            try {
                file.delete();
            } catch (Exception e2) {
                FileLog.m898e(e2);
            }
        }
    }

    private String cutLastName(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(32);
        if (iIndexOf >= 0) {
            return str.substring(0, iIndexOf).concat(str.endsWith("…") ? "…" : _UrlKt.FRAGMENT_ENCODE_SET);
        }
        return str;
    }

    private Pair<Integer, Boolean> parseStoryPushes(ArrayList<String> arrayList, ArrayList<Object> arrayList2) {
        String strConcat;
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
                strConcat = UserObject.getUserName(user);
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
                strConcat = storyNotification.localName;
                if (strConcat != null) {
                }
            }
            if (strConcat.length() > 50) {
                strConcat = strConcat.substring(0, 25).concat("…");
            }
            arrayList.add(strConcat);
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
            builder.setIcon(IconCompat.createWithResource(ApplicationLoader.applicationContext, C2573R.drawable.ic_launcher_dr));
            return builder;
        }
        if (file != null && Build.VERSION.SDK_INT >= 28) {
            try {
                builder.setIcon(IconCompat.createWithBitmap(ImageDecoder.decodeBitmap(ImageDecoder.createSource(file), new ImageDecoder.OnHeaderDecodedListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda20
                    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                        imageDecoder.setPostProcessor(new PostProcessor() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda43
                            @Override // android.graphics.PostProcessor
                            public final int onPostProcess(Canvas canvas) {
                                return NotificationsController.$r8$lambda$Z_KcXEDiTLz__0aNAPod1LbZsYY(canvas);
                            }
                        });
                    }
                })));
            } catch (Throwable unused) {
            }
        }
        return builder;
    }

    public static /* synthetic */ int $r8$lambda$Z_KcXEDiTLz__0aNAPod1LbZsYY(Canvas canvas) {
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
        char c2;
        Object obj;
        int[] iArr;
        ArrayList<Object> arrayList2 = arrayList;
        if (Build.VERSION.SDK_INT < 28 || arrayList2 == null || arrayList2.size() == 0) {
            return null;
        }
        int iDp = AndroidUtilities.dp(64.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iDp, iDp, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        Paint paint2 = new Paint(3);
        boolean z2 = true;
        Paint paint3 = new Paint(1);
        Rect rect = new Rect();
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        char c3 = 2;
        float f2 = arrayList2.size() == 1 ? 1.0f : arrayList2.size() == 2 ? 0.65f : 0.5f;
        int i2 = 0;
        TextPaint textPaint = null;
        while (i2 < arrayList2.size()) {
            float f3 = iDp;
            float f4 = (1.0f - f2) * f3;
            try {
                float size = (f4 / arrayList2.size()) * ((arrayList2.size() - 1) - i2);
                try {
                    float size2 = i2 * (f4 / arrayList2.size());
                    float f5 = f3 * f2;
                    float f6 = f5 / 2.0f;
                    i = iDp;
                    float f7 = size + f6;
                    bitmap = bitmapCreateBitmap;
                    float f8 = size2 + f6;
                    f = f2;
                    try {
                        canvas.drawCircle(f7, f8, AndroidUtilities.dp(2.0f) + f6, paint3);
                        obj = arrayList2.get(i2);
                        paint = paint3;
                    } catch (Throwable unused) {
                        paint = paint3;
                    }
                    if (obj instanceof File) {
                        String absolutePath = ((File) arrayList2.get(i2)).getAbsolutePath();
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        z = true;
                        try {
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeFile(absolutePath, options);
                            int i3 = (int) f5;
                            options.inSampleSize = StoryEntry.calculateInSampleSize(options, i3, i3);
                            try {
                                options.inJustDecodeBounds = false;
                                options.inDither = true;
                                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(absolutePath, options);
                                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                                BitmapShader bitmapShader = new BitmapShader(bitmapDecodeFile, tileMode, tileMode);
                                matrix.reset();
                                matrix.postScale(f5 / bitmapDecodeFile.getWidth(), f5 / bitmapDecodeFile.getHeight());
                                matrix.postTranslate(size, size2);
                                bitmapShader.setLocalMatrix(matrix);
                                paint2.setShader(bitmapShader);
                                canvas.drawCircle(f7, f8, f6, paint2);
                                bitmapDecodeFile.recycle();
                                c2 = 2;
                            } catch (Throwable unused2) {
                                c2 = 2;
                            }
                            z = true;
                        } catch (Throwable unused3) {
                            c2 = 2;
                        }
                    } else {
                        if (obj instanceof TLRPC.User) {
                            TLRPC.User user = (TLRPC.User) obj;
                            c2 = 2;
                            try {
                                iArr = new int[2];
                            } catch (Throwable unused4) {
                                z = true;
                            }
                            try {
                                iArr[0] = Theme.getColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(user.id)]);
                                try {
                                    iArr[1] = Theme.getColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(user.id)]);
                                    float f9 = size2 + f5;
                                    c2 = 2;
                                    try {
                                        float[] fArr = new float[2];
                                        try {
                                            fArr[0] = 0.0f;
                                            fArr[1] = 1.0f;
                                            paint2.setShader(new LinearGradient(size, size2, size, f9, iArr, fArr, Shader.TileMode.CLAMP));
                                            canvas.drawCircle(f7, f8, f6, paint2);
                                            if (textPaint == null) {
                                                try {
                                                    z = true;
                                                    try {
                                                        TextPaint textPaint2 = new TextPaint(1);
                                                        try {
                                                            textPaint2.setTypeface(AndroidUtilities.bold());
                                                            textPaint2.setTextSize(0.25f * f3);
                                                            textPaint2.setColor(-1);
                                                            textPaint = textPaint2;
                                                        } catch (Throwable unused5) {
                                                            textPaint = textPaint2;
                                                        }
                                                    } catch (Throwable unused6) {
                                                    }
                                                } catch (Throwable unused7) {
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
                                                canvas.drawText(string, (f7 - (rect.width() / 2.0f)) - rect.left, (f8 - (rect.height() / 2.0f)) - rect.top, textPaint);
                                            } catch (Throwable unused8) {
                                            }
                                        } catch (Throwable unused9) {
                                            z = true;
                                        }
                                    } catch (Throwable unused10) {
                                        z = true;
                                    }
                                } catch (Throwable unused11) {
                                    z = true;
                                    c2 = 2;
                                    i2++;
                                    c3 = c2;
                                    z2 = z;
                                    iDp = i;
                                    bitmapCreateBitmap = bitmap;
                                    f2 = f;
                                    paint3 = paint;
                                    arrayList2 = arrayList;
                                }
                            } catch (Throwable unused12) {
                                c2 = 2;
                                z = true;
                            }
                        } else {
                            c2 = 2;
                        }
                        z = true;
                    }
                } catch (Throwable unused13) {
                    i = iDp;
                    bitmap = bitmapCreateBitmap;
                    paint = paint3;
                    z = z2;
                    f = f2;
                }
            } catch (Throwable unused14) {
                i = iDp;
                bitmap = bitmapCreateBitmap;
                paint = paint3;
                z = z2;
                f = f2;
                c2 = c3;
            }
            i2++;
            c3 = c2;
            z2 = z;
            iDp = i;
            bitmapCreateBitmap = bitmap;
            f2 = f;
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
            FileLog.m898e(e);
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$playOutChatSound$49();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playOutChatSound$49() {
        try {
            if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundOutPlay) <= 100) {
                return;
            }
            this.lastSoundOutPlay = SystemClock.elapsedRealtime();
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda22
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                        NotificationsController.$r8$lambda$el0xJHhpeENCEpDJ0w96gt65p0Q(soundPool2, i, i2);
                    }
                });
            }
            if (this.soundOut == 0 && !this.soundOutLoaded) {
                this.soundOutLoaded = true;
                this.soundOut = this.soundPool.load(ApplicationLoader.applicationContext, C2573R.raw.sound_out, 1);
            }
            int i = this.soundOut;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m898e(e2);
        }
    }

    public static /* synthetic */ void $r8$lambda$el0xJHhpeENCEpDJ0w96gt65p0Q(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
    }

    public void clearDialogNotificationsSettings(long j, long j2) {
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        String sharedPrefKey = getSharedPrefKey(j, j2);
        editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey).remove(NotificationsSettingsFacade.PROPERTY_CUSTOM + sharedPrefKey);
        getMessagesStorage().setDialogFlags(j, 0L);
        TLRPC.Dialog dialog = getMessagesController().dialogs_dict.get(j);
        if (dialog != null) {
            dialog.notify_settings = new TLRPC.TL_peerNotifySettings();
        }
        editorEdit.apply();
        getNotificationsController().updateServerNotificationsSettings(j, j2, true);
    }

    public void setDialogNotificationsSettings(long j, long j2, int i) {
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        TLRPC.Dialog dialog = MessagesController.getInstance(UserConfig.selectedAccount).dialogs_dict.get(j);
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
            tL_notificationSoundRingtone.id = j3;
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
        } else if (ChatObject.isCommunity(this.currentAccount, j)) {
            TLRPC.TL_inputNotifyCommunity tL_inputNotifyCommunity = new TLRPC.TL_inputNotifyCommunity();
            tL_inputNotifyCommunity.community = getMessagesController().getInputChannel(-j);
            updatenotifysettings.peer = tL_inputNotifyCommunity;
        } else {
            TLRPC.TL_inputNotifyPeer tL_inputNotifyPeer = new TLRPC.TL_inputNotifyPeer();
            tL_inputNotifyPeer.peer = getMessagesController().getInputPeer(j);
            updatenotifysettings.peer = tL_inputNotifyPeer;
        }
        getConnectionsManager().sendRequest(updatenotifysettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda55
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                NotificationsController.m5964$r8$lambda$1t1axbSYGQIU_GMVkHnzrj3Llc(tLObject, tL_error);
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
                boolean z = notificationsSettings.getBoolean("EnableReactionsMessagesContacts", false);
                TL_account.TL_reactionsNotifySettings tL_reactionsNotifySettings = setreactionsnotifysettings.settings;
                if (z) {
                    tL_reactionsNotifySettings.messages_notify_from = new TL_account.TL_reactionNotificationsFromContacts();
                } else {
                    tL_reactionsNotifySettings.messages_notify_from = new TL_account.TL_reactionNotificationsFromAll();
                }
            }
            if (notificationsSettings.getBoolean("EnableReactionsStories", true)) {
                setreactionsnotifysettings.settings.flags |= 2;
                boolean z2 = notificationsSettings.getBoolean("EnableReactionsStoriesContacts", false);
                TL_account.TL_reactionsNotifySettings tL_reactionsNotifySettings2 = setreactionsnotifysettings.settings;
                if (z2) {
                    tL_reactionsNotifySettings2.stories_notify_from = new TL_account.TL_reactionNotificationsFromContacts();
                } else {
                    tL_reactionsNotifySettings2.stories_notify_from = new TL_account.TL_reactionNotificationsFromAll();
                }
            }
            setreactionsnotifysettings.settings.show_previews = notificationsSettings.getBoolean("EnableReactionsPreview", true);
            setreactionsnotifysettings.settings.sound = getInputSound(notificationsSettings, "ReactionSound", "ReactionSoundDocId", "ReactionSoundPath");
            getConnectionsManager().sendRequest(setreactionsnotifysettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda30
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    NotificationsController.m5969$r8$lambda$H_bZLJEQVx9OdWW6ZrpVB2xjp0(tLObject, tL_error);
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
        getConnectionsManager().sendRequest(updatenotifysettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda31
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                NotificationsController.$r8$lambda$TMEsjTkj9lYdR59uaNuAf1n8IoU(tLObject, tL_error);
            }
        });
    }

    private TLRPC.NotificationSound getInputSound(SharedPreferences sharedPreferences, String str, String str2, String str3) {
        long j = sharedPreferences.getLong(str2, 0L);
        String string = sharedPreferences.getString(str3, "NoSound");
        if (j != 0) {
            TLRPC.TL_notificationSoundRingtone tL_notificationSoundRingtone = new TLRPC.TL_notificationSoundRingtone();
            tL_notificationSoundRingtone.id = j;
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
        int i = this.currentAccount;
        if (z) {
            getInstance(i).muteUntil(j, j2, Integer.MAX_VALUE);
            return;
        }
        boolean zIsGlobalNotificationsEnabled = getInstance(i).isGlobalNotificationsEnabled(j, false, false);
        boolean z2 = j2 != 0;
        SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
        if (zIsGlobalNotificationsEnabled && !z2) {
            editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2));
        } else {
            editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), 0);
        }
        if (j2 == 0) {
            getMessagesStorage().setDialogFlags(j, 0L);
            TLRPC.Dialog dialog = getMessagesController().dialogs_dict.get(j);
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
                this.f$0.lambda$loadTopicsNotificationsExceptions$54(j, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadTopicsNotificationsExceptions$54(long j, final Consumer consumer) {
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.$r8$lambda$LakEptqhCv9OhMJsIqb7LZKKyO8(consumer, hashSet);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$LakEptqhCv9OhMJsIqb7LZKKyO8(Consumer consumer, HashSet hashSet) {
        if (consumer != null) {
            consumer.accept(hashSet);
        }
    }

    public static class DialogKey {
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
            this(j, str, i, j2, j2 + DurationKt.MILLIS_IN_DAY);
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
        if (jMin != LongCompanionObject.MAX_VALUE) {
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
