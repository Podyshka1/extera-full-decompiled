package org.telegram.messenger.voip;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.os.Build;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import com.google.android.gms.cast.framework.media.internal.zzo$$ExternalSyntheticApiModelOutline0;
import java.util.ArrayList;
import java.util.HashSet;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationsController$$ExternalSyntheticApiModelOutline0;
import org.telegram.messenger.voip.VoIPServiceState;
import org.telegram.p029ui.Components.voip.VoIPHelper;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.VoIPFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_phone;

/* JADX INFO: loaded from: classes5.dex */
public class VoIPGroupNotification {
    public static long currentCallId;
    public static State currentState;
    private static HashSet<Integer> ignoreCalls;
    private static Runnable missRunnable;

    public static final class State implements VoIPServiceState {
        public final long call_id;
        private final int currentAccount;
        private boolean destroyed;
        public final long dialogId;
        private final TLRPC.GroupCall groupCall;
        private final TLRPC.InputGroupCall inputGroupCall;
        public final int msg_id;
        private final ArrayList<TLRPC.GroupCallParticipant> participants;
        private final boolean video;

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public /* synthetic */ long getCallDuration() {
            return VoIPServiceState.CC.$default$getCallDuration(this);
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public TL_phone.PhoneCall getPrivateCall() {
            return null;
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public boolean isConference() {
            return true;
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public boolean isOutgoing() {
            return false;
        }

        public State(int i, long j, long j2, int i2, boolean z, TLRPC.GroupCall groupCall, ArrayList<TLRPC.GroupCallParticipant> arrayList) {
            this.currentAccount = i;
            this.dialogId = j;
            this.call_id = j2;
            this.msg_id = i2;
            TLRPC.TL_inputGroupCallInviteMessage tL_inputGroupCallInviteMessage = new TLRPC.TL_inputGroupCallInviteMessage();
            this.inputGroupCall = tL_inputGroupCallInviteMessage;
            tL_inputGroupCallInviteMessage.msg_id = i2;
            this.groupCall = groupCall;
            this.participants = arrayList;
            this.video = z;
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public TLRPC.User getUser() {
            return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId));
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public int getCallState() {
            return this.destroyed ? 11 : 15;
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public boolean isCallingVideo() {
            return this.video;
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public void acceptIncomingCall() {
            VoIPGroupNotification.answer(ApplicationLoader.applicationContext, this.currentAccount, this.msg_id);
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public void declineIncomingCall() {
            VoIPGroupNotification.decline(ApplicationLoader.applicationContext, this.currentAccount, this.msg_id);
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public void stopRinging() {
            VoIPPreNotificationService.stopRinging();
        }

        public void destroy() {
            if (this.destroyed) {
                return;
            }
            this.destroyed = true;
            if (VoIPFragment.getInstance() != null) {
                VoIPFragment.getInstance().onStateChanged(getCallState());
            }
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public TLRPC.GroupCall getGroupCall() {
            return this.groupCall;
        }

        @Override // org.telegram.messenger.voip.VoIPServiceState
        public ArrayList<TLRPC.GroupCallParticipant> getGroupParticipants() {
            return this.participants;
        }
    }

    public static void request(final Context context, final int i, final long j, final String str, final long j2, final int i2, final boolean z) {
        if (Build.VERSION.SDK_INT < 26 || currentCallId == j2) {
            return;
        }
        State state = currentState;
        if (state == null || state.call_id != j2) {
            if (VoIPService.getSharedInstance() != null) {
                if (currentState != null) {
                    hide(context);
                }
            } else {
                if (MessagesController.getInstance(i).callRequestsDisabled) {
                    return;
                }
                HashSet<Integer> hashSet = ignoreCalls;
                if (hashSet == null || !hashSet.contains(Integer.valueOf(i2))) {
                    currentCallId = j2;
                    TL_phone.getGroupCall getgroupcall = new TL_phone.getGroupCall();
                    TLRPC.TL_inputGroupCallInviteMessage tL_inputGroupCallInviteMessage = new TLRPC.TL_inputGroupCallInviteMessage();
                    getgroupcall.call = tL_inputGroupCallInviteMessage;
                    tL_inputGroupCallInviteMessage.msg_id = i2;
                    getgroupcall.limit = 3;
                    ConnectionsManager.getInstance(i).sendRequest(getgroupcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPGroupNotification$$ExternalSyntheticLambda3
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPGroupNotification$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    VoIPGroupNotification.$r8$lambda$GeUrYuer4Jev4M0zkXmaQaIUu6M(tLObject, i, j, j, i, z, context, str);
                                }
                            });
                        }
                    });
                }
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$GeUrYuer4Jev4M0zkXmaQaIUu6M(TLObject tLObject, int i, long j, long j2, int i2, boolean z, Context context, String str) {
        if (tLObject instanceof TL_phone.groupCall) {
            TL_phone.groupCall groupcall = (TL_phone.groupCall) tLObject;
            MessagesController.getInstance(i).putUsers(groupcall.users, false);
            MessagesController.getInstance(i).putChats(groupcall.chats, false);
            currentState = new State(i, j, j2, i2, z, groupcall.call, groupcall.participants);
            showNotification(context, i, j2, i2, j, str);
            return;
        }
        if (ignoreCalls == null) {
            ignoreCalls = new HashSet<>();
        }
        ignoreCalls.add(Integer.valueOf(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v7 */
    private static void showNotification(final Context context, final int i, long j, final int i2, long j2, String str) {
        boolean z;
        Intent intent;
        Notification.Builder builder;
        int i3;
        int i4;
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        Intent intentPutExtra = new Intent(context, (Class<?>) LaunchActivity.class).setAction("voip").putExtra("group_call_invite_msg_id", i2).putExtra("currentAccount", i);
        Notification.Builder contentIntent = new Notification.Builder(context).setContentTitle(LocaleController.getString(C2888R.string.VoipGroupInCallBranding)).setSmallIcon(C2888R.drawable.ic_call).setContentIntent(PendingIntent.getActivity(context, 0, intentPutExtra, 301989888));
        SharedPreferences globalNotificationsSettings = MessagesController.getGlobalNotificationsSettings();
        int i5 = globalNotificationsSettings.getInt("calls_notification_channel", 0);
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel("incoming_calls2" + i5);
        if (notificationChannel != null) {
            notificationManager.deleteNotificationChannel(notificationChannel.getId());
        }
        NotificationChannel notificationChannel2 = notificationManager.getNotificationChannel("incoming_calls3" + i5);
        if (notificationChannel2 != null) {
            notificationManager.deleteNotificationChannel(notificationChannel2.getId());
        }
        NotificationChannel notificationChannel3 = notificationManager.getNotificationChannel("incoming_calls4" + i5);
        if (notificationChannel3 == null) {
            z = true;
        } else if (notificationChannel3.getImportance() < 4 || notificationChannel3.getSound() != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1133d("User messed up the notification channel; deleting it and creating a proper one");
            }
            notificationManager.deleteNotificationChannel("incoming_calls4" + i5);
            i5++;
            globalNotificationsSettings.edit().putInt("calls_notification_channel", i5).commit();
            z = true;
        } else {
            z = false;
        }
        if (z) {
            AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(2).setUsage(2).build();
            NotificationsController$$ExternalSyntheticApiModelOutline0.m1167m();
            intent = intentPutExtra;
            NotificationChannel notificationChannelM335m = zzo$$ExternalSyntheticApiModelOutline0.m335m("incoming_calls4" + i5, LocaleController.getString(C2888R.string.IncomingCallsSystemSetting), 4);
            try {
                notificationChannelM335m.setSound(null, audioAttributesBuild);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            notificationChannelM335m.setDescription(LocaleController.getString(C2888R.string.IncomingCallsSystemSettingDescription));
            notificationChannelM335m.enableVibration(false);
            notificationChannelM335m.enableLights(false);
            notificationChannelM335m.setBypassDnd(true);
            try {
                notificationManager.createNotificationChannel(notificationChannelM335m);
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        } else {
            intent = intentPutExtra;
        }
        contentIntent.setChannelId("incoming_calls4" + i5);
        Intent intent2 = new Intent(context, (Class<?>) VoIPActionsReceiver.class);
        intent2.setAction(context.getPackageName() + ".DECLINE_CALL");
        intent2.putExtra("call_id", j);
        intent2.putExtra("group_call_invite_msg_id", i2);
        intent2.putExtra("currentAccount", i);
        String string = LocaleController.getString(C2888R.string.VoipDeclineCall);
        int i6 = Build.VERSION.SDK_INT;
        if (i6 < 24 || i6 >= 31) {
            builder = contentIntent;
            i3 = 0;
        } else {
            SpannableString spannableString = new SpannableString(string);
            builder = contentIntent;
            i3 = 0;
            spannableString.setSpan(new ForegroundColorSpan(-769226), 0, spannableString.length(), 0);
        }
        PendingIntent broadcast = PendingIntent.getBroadcast(context, i3, intent2, 301989888);
        Intent intent3 = new Intent(context, (Class<?>) VoIPActionsReceiver.class);
        intent3.setAction(context.getPackageName() + ".ANSWER_CALL");
        intent3.putExtra("call_id", j);
        intent3.putExtra("group_call_invite_msg_id", i2);
        intent3.putExtra("currentAccount", i);
        String string2 = LocaleController.getString(C2888R.string.VoipAnswerCall);
        if (i6 < 24 || i6 >= 31) {
            i4 = 0;
        } else {
            SpannableString spannableString2 = new SpannableString(string2);
            i4 = 0;
            spannableString2.setSpan(new ForegroundColorSpan(-16733696), 0, spannableString2.length(), 0);
        }
        PendingIntent activity = PendingIntent.getActivity(context, i4, new Intent(context, (Class<?>) LaunchActivity.class).setAction("voip_answer").putExtra("group_call_invite_msg_id", i2).putExtra("currentAccount", i), 301989888);
        Notification.Builder builder2 = builder;
        builder2.setPriority(2);
        builder2.setShowWhen(i4);
        builder2.setColor(-13851168);
        builder2.setVibrate(new long[i4]);
        builder2.setCategory("call");
        builder2.setFullScreenIntent(PendingIntent.getActivity(context, i4, intent, 33554432), true);
        Intent intent4 = new Intent(ApplicationLoader.applicationContext, (Class<?>) VoIPActionsReceiver.class);
        intent4.setAction(context.getPackageName() + ".HIDE_CALL");
        intent4.putExtra("group_call_invite_msg_id", i2);
        intent4.putExtra("currentAccount", i);
        builder2.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, 0, intent4, 167772160));
        TLObject userOrChat = MessagesController.getInstance(i).getUserOrChat(j2);
        Bitmap roundAvatarBitmap = VoIPService.getRoundAvatarBitmap(context, i, userOrChat);
        String name = !TextUtils.isEmpty(str) ? str : ContactsController.formatName(userOrChat);
        if (TextUtils.isEmpty(name)) {
            name = "___";
        }
        if (i6 >= 31) {
            builder2.setStyle(Notification.CallStyle.forIncomingCall(VoIPGroupNotification$$ExternalSyntheticApiModelOutline0.m1208m().setName(name).setIcon(Icon.createWithAdaptiveBitmap(roundAvatarBitmap)).build(), broadcast, activity));
        }
        notificationManager.notify(203, builder2.build());
        VoIPPreNotificationService.startRinging(context, i, j2);
        Runnable runnable = missRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.voip.VoIPGroupNotification$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                VoIPGroupNotification.decline(context, i, i2);
            }
        };
        missRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, MessagesController.getInstance(i).callRingTimeout);
    }

    public static void open(Context context, int i, int i2) {
        Runnable runnable = missRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        VoIPPreNotificationService.stopRinging();
        State state = currentState;
        if (state == null || state.msg_id != i2) {
            return;
        }
        ((NotificationManager) context.getSystemService("notification")).cancel(203);
        VoIPPreNotificationService.stopRinging();
        Activity activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
        if (activityFindActivity == null) {
            activityFindActivity = LaunchActivity.instance;
        }
        if (activityFindActivity != null) {
            VoIPFragment.show(activityFindActivity, i);
        }
    }

    public static void answer(Context context, int i, int i2) {
        Runnable runnable = missRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        VoIPPreNotificationService.stopRinging();
        State state = currentState;
        if (state == null || state.msg_id != i2) {
            return;
        }
        TLRPC.GroupCall groupCall = state.groupCall;
        boolean zIsCallingVideo = currentState.isCallingVideo();
        currentState = null;
        currentCallId = 0L;
        ((NotificationManager) context.getSystemService("notification")).cancel(203);
        TLRPC.TL_inputGroupCallInviteMessage tL_inputGroupCallInviteMessage = new TLRPC.TL_inputGroupCallInviteMessage();
        tL_inputGroupCallInviteMessage.msg_id = i2;
        VoIPHelper.joinConference(LaunchActivity.instance, i, tL_inputGroupCallInviteMessage, zIsCallingVideo, groupCall);
    }

    public static void decline(Context context, final int i, int i2) {
        Runnable runnable = missRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        currentState = null;
        currentCallId = 0L;
        ((NotificationManager) context.getSystemService("notification")).cancel(203);
        VoIPPreNotificationService.stopRinging();
        TL_phone.declineConferenceCallInvite declineconferencecallinvite = new TL_phone.declineConferenceCallInvite();
        declineconferencecallinvite.msg_id = i2;
        ConnectionsManager.getInstance(i).sendRequest(declineconferencecallinvite, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPGroupNotification$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                VoIPGroupNotification.$r8$lambda$6xjOsDUB65Zk6_tWg6lepZcnZis(i, tLObject, tL_error);
            }
        });
        if (VoIPFragment.getInstance() != null) {
            VoIPFragment.getInstance().finish();
        }
    }

    public static /* synthetic */ void $r8$lambda$6xjOsDUB65Zk6_tWg6lepZcnZis(int i, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            MessagesController.getInstance(i).processUpdates((TLRPC.Updates) tLObject, false);
        }
    }

    public static void hide(Context context) {
        State state = currentState;
        if (state == null) {
            return;
        }
        hide(context, state.currentAccount, currentState.msg_id);
    }

    public static void hide(Context context, int i, int i2) {
        State state = currentState;
        if (state != null && state.currentAccount == i && currentState.msg_id == i2) {
            Runnable runnable = missRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            currentState = null;
            currentCallId = 0L;
            ((NotificationManager) context.getSystemService("notification")).cancel(203);
            VoIPPreNotificationService.stopRinging();
            if (VoIPFragment.getInstance() != null) {
                VoIPFragment.getInstance().finish();
            }
        }
    }

    public static void hideByCallId(Context context, int i, long j) {
        State state = currentState;
        if (state != null && state.currentAccount == i && currentState.call_id == j) {
            Runnable runnable = missRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            currentState = null;
            currentCallId = 0L;
            ((NotificationManager) context.getSystemService("notification")).cancel(203);
            VoIPPreNotificationService.stopRinging();
            if (VoIPFragment.getInstance() != null) {
                VoIPFragment.getInstance().finish();
            }
        }
    }
}
