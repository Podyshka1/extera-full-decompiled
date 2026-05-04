package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationChannelCompat {
    String mConversationId;
    String mDescription;
    String mGroupId;
    final String mId;
    int mImportance;
    boolean mLights;
    CharSequence mName;
    String mParentId;
    boolean mVibrationEnabled;
    long[] mVibrationPattern;
    boolean mShowBadge = true;
    Uri mSound = Settings.System.DEFAULT_NOTIFICATION_URI;
    int mLightColor = 0;
    AudioAttributes mAudioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;

    public static class Builder {
        private final NotificationChannelCompat mChannel;

        public Builder(String str, int i) {
            this.mChannel = new NotificationChannelCompat(str, i);
        }

        public Builder setName(CharSequence charSequence) {
            this.mChannel.mName = charSequence;
            return this;
        }

        public Builder setSound(Uri uri, AudioAttributes audioAttributes) {
            NotificationChannelCompat notificationChannelCompat = this.mChannel;
            notificationChannelCompat.mSound = uri;
            notificationChannelCompat.mAudioAttributes = audioAttributes;
            return this;
        }

        public Builder setLightsEnabled(boolean z) {
            this.mChannel.mLights = z;
            return this;
        }

        public Builder setVibrationEnabled(boolean z) {
            this.mChannel.mVibrationEnabled = z;
            return this;
        }

        public NotificationChannelCompat build() {
            return this.mChannel;
        }
    }

    NotificationChannelCompat(String str, int i) {
        this.mId = (String) Preconditions.checkNotNull(str);
        this.mImportance = i;
    }

    NotificationChannel getNotificationChannel() {
        String str;
        String str2;
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            return null;
        }
        NotificationChannel notificationChannelCreateNotificationChannel = Api26Impl.createNotificationChannel(this.mId, this.mName, this.mImportance);
        Api26Impl.setDescription(notificationChannelCreateNotificationChannel, this.mDescription);
        Api26Impl.setGroup(notificationChannelCreateNotificationChannel, this.mGroupId);
        Api26Impl.setShowBadge(notificationChannelCreateNotificationChannel, this.mShowBadge);
        Api26Impl.setSound(notificationChannelCreateNotificationChannel, this.mSound, this.mAudioAttributes);
        Api26Impl.enableLights(notificationChannelCreateNotificationChannel, this.mLights);
        Api26Impl.setLightColor(notificationChannelCreateNotificationChannel, this.mLightColor);
        Api26Impl.setVibrationPattern(notificationChannelCreateNotificationChannel, this.mVibrationPattern);
        Api26Impl.enableVibration(notificationChannelCreateNotificationChannel, this.mVibrationEnabled);
        if (i >= 30 && (str = this.mParentId) != null && (str2 = this.mConversationId) != null) {
            Api30Impl.setConversationId(notificationChannelCreateNotificationChannel, str, str2);
        }
        return notificationChannelCreateNotificationChannel;
    }

    static class Api26Impl {
        static NotificationChannel createNotificationChannel(String str, CharSequence charSequence, int i) {
            return new NotificationChannel(str, charSequence, i);
        }

        static void setDescription(NotificationChannel notificationChannel, String str) {
            notificationChannel.setDescription(str);
        }

        static void setGroup(NotificationChannel notificationChannel, String str) {
            notificationChannel.setGroup(str);
        }

        static void setShowBadge(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.setShowBadge(z);
        }

        static void setSound(NotificationChannel notificationChannel, Uri uri, AudioAttributes audioAttributes) {
            notificationChannel.setSound(uri, audioAttributes);
        }

        static void enableLights(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.enableLights(z);
        }

        static void setLightColor(NotificationChannel notificationChannel, int i) {
            notificationChannel.setLightColor(i);
        }

        static void enableVibration(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.enableVibration(z);
        }

        static void setVibrationPattern(NotificationChannel notificationChannel, long[] jArr) {
            notificationChannel.setVibrationPattern(jArr);
        }
    }

    static class Api30Impl {
        static void setConversationId(NotificationChannel notificationChannel, String str, String str2) {
            notificationChannel.setConversationId(str, str2);
        }
    }
}
