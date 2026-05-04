package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.widget.RemoteViews;
import androidx.core.R$dimen;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.content.p001pm.ShortcutInfoCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.text.BidiFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class NotificationCompat {

    public interface Extender {
        Builder extend(Builder builder);
    }

    public static class Builder {
        public ArrayList mActions;
        boolean mAllowSystemGeneratedContextualActions;
        int mBadgeIcon;
        RemoteViews mBigContentView;
        BubbleMetadata mBubbleMetadata;
        String mCategory;
        String mChannelId;
        int mColor;
        boolean mColorized;
        boolean mColorizedSet;
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        RemoteViews mContentView;
        public Context mContext;
        Bundle mExtras;
        int mFgsDeferBehavior;
        PendingIntent mFullScreenIntent;
        int mGroupAlertBehavior;
        String mGroupKey;
        boolean mGroupSummary;
        RemoteViews mHeadsUpContentView;
        ArrayList mInvisibleActions;
        IconCompat mLargeIcon;
        boolean mLocalOnly;
        LocusIdCompat mLocusId;
        Notification mNotification;
        int mNumber;
        public ArrayList mPeople;
        public ArrayList mPersonList;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        Notification mPublicVersion;
        CharSequence[] mRemoteInputHistory;
        CharSequence mSettingsText;
        String mShortCriticalText;
        String mShortcutId;
        boolean mShowWhen;
        boolean mSilent;
        Object mSmallIcon;
        String mSortKey;
        Style mStyle;
        CharSequence mSubText;
        RemoteViews mTickerView;
        long mTimeout;
        boolean mUseChronometer;
        int mVisibility;

        public Builder(Context context, String str) {
            this.mActions = new ArrayList();
            this.mPersonList = new ArrayList();
            this.mInvisibleActions = new ArrayList();
            this.mShowWhen = true;
            this.mLocalOnly = false;
            this.mColor = 0;
            this.mVisibility = 0;
            this.mBadgeIcon = 0;
            this.mGroupAlertBehavior = 0;
            this.mFgsDeferBehavior = 0;
            Notification notification = new Notification();
            this.mNotification = notification;
            this.mContext = context;
            this.mChannelId = str;
            notification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.mPriority = 0;
            this.mPeople = new ArrayList();
            this.mAllowSystemGeneratedContextualActions = true;
        }

        public Builder(Context context) {
            this(context, null);
        }

        public Builder setWhen(long j) {
            this.mNotification.when = j;
            return this;
        }

        public Builder setShowWhen(boolean z) {
            this.mShowWhen = z;
            return this;
        }

        public Builder setSmallIcon(int i) {
            this.mNotification.icon = i;
            return this;
        }

        public Builder setContentTitle(CharSequence charSequence) {
            this.mContentTitle = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mContentText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setSubText(CharSequence charSequence) {
            this.mSubText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setNumber(int i) {
            this.mNumber = i;
            return this;
        }

        public Builder setProgress(int i, int i2, boolean z) {
            this.mProgressMax = i;
            this.mProgress = i2;
            this.mProgressIndeterminate = z;
            return this;
        }

        public Builder setContentIntent(PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        public Builder setDeleteIntent(PendingIntent pendingIntent) {
            this.mNotification.deleteIntent = pendingIntent;
            return this;
        }

        public Builder setTicker(CharSequence charSequence) {
            this.mNotification.tickerText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = bitmap == null ? null : IconCompat.createWithBitmap(NotificationCompat.reduceLargeIconSize(this.mContext, bitmap));
            return this;
        }

        public Builder setSound(Uri uri) {
            Notification notification = this.mNotification;
            notification.sound = uri;
            notification.audioStreamType = -1;
            AudioAttributes.Builder usage = Api21Impl.setUsage(Api21Impl.setContentType(Api21Impl.createBuilder(), 4), 5);
            this.mNotification.audioAttributes = Api21Impl.build(usage);
            return this;
        }

        public Builder setSound(Uri uri, int i) {
            Notification notification = this.mNotification;
            notification.sound = uri;
            notification.audioStreamType = i;
            AudioAttributes.Builder legacyStreamType = Api21Impl.setLegacyStreamType(Api21Impl.setContentType(Api21Impl.createBuilder(), 4), i);
            this.mNotification.audioAttributes = Api21Impl.build(legacyStreamType);
            return this;
        }

        public Builder setVibrate(long[] jArr) {
            this.mNotification.vibrate = jArr;
            return this;
        }

        public Builder setLights(int i, int i2, int i3) {
            Notification notification = this.mNotification;
            notification.ledARGB = i;
            notification.ledOnMS = i2;
            notification.ledOffMS = i3;
            notification.flags = ((i2 == 0 || i3 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        public Builder setOngoing(boolean z) {
            setFlag(2, z);
            return this;
        }

        public Builder setAutoCancel(boolean z) {
            setFlag(16, z);
            return this;
        }

        public Builder setLocalOnly(boolean z) {
            this.mLocalOnly = z;
            return this;
        }

        public Builder setCategory(String str) {
            this.mCategory = str;
            return this;
        }

        public Builder setDefaults(int i) {
            Notification notification = this.mNotification;
            notification.defaults = i;
            if ((i & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        private void setFlag(int i, boolean z) {
            if (z) {
                Notification notification = this.mNotification;
                notification.flags = i | notification.flags;
            } else {
                Notification notification2 = this.mNotification;
                notification2.flags = (~i) & notification2.flags;
            }
        }

        public Builder setPriority(int i) {
            this.mPriority = i;
            return this;
        }

        public Builder addPerson(String str) {
            if (str != null && !str.isEmpty()) {
                this.mPeople.add(str);
            }
            return this;
        }

        public Builder setGroup(String str) {
            this.mGroupKey = str;
            return this;
        }

        public Builder setGroupSummary(boolean z) {
            this.mGroupSummary = z;
            return this;
        }

        public Builder setSortKey(String str) {
            this.mSortKey = str;
            return this;
        }

        public Bundle getExtras() {
            if (this.mExtras == null) {
                this.mExtras = new Bundle();
            }
            return this.mExtras;
        }

        public Builder addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mActions.add(new Action(i, charSequence, pendingIntent));
            return this;
        }

        public Builder addAction(Action action) {
            if (action != null) {
                this.mActions.add(action);
            }
            return this;
        }

        public Builder setStyle(Style style) {
            if (this.mStyle != style) {
                this.mStyle = style;
                if (style != null) {
                    style.setBuilder(this);
                }
            }
            return this;
        }

        public Builder setColor(int i) {
            this.mColor = i;
            return this;
        }

        public Builder setVisibility(int i) {
            this.mVisibility = i;
            return this;
        }

        public Builder setChannelId(String str) {
            this.mChannelId = str;
            return this;
        }

        public Builder setShortcutInfo(ShortcutInfoCompat shortcutInfoCompat) {
            if (shortcutInfoCompat != null) {
                this.mShortcutId = shortcutInfoCompat.getId();
                if (this.mLocusId == null) {
                    if (shortcutInfoCompat.getLocusId() != null) {
                        this.mLocusId = shortcutInfoCompat.getLocusId();
                    } else if (shortcutInfoCompat.getId() != null) {
                        this.mLocusId = new LocusIdCompat(shortcutInfoCompat.getId());
                    }
                }
                if (this.mContentTitle == null) {
                    setContentTitle(shortcutInfoCompat.getShortLabel());
                }
            }
            return this;
        }

        public Builder setGroupAlertBehavior(int i) {
            this.mGroupAlertBehavior = i;
            return this;
        }

        public Builder setBubbleMetadata(BubbleMetadata bubbleMetadata) {
            this.mBubbleMetadata = bubbleMetadata;
            return this;
        }

        public Builder extend(Extender extender) {
            extender.extend(this);
            return this;
        }

        public Notification build() {
            return new NotificationCompatBuilder(this).build();
        }

        protected static CharSequence limitCharSequenceLength(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }

        public int getColor() {
            return this.mColor;
        }

        /* JADX INFO: loaded from: classes4.dex */
        static class Api21Impl {
            static AudioAttributes.Builder createBuilder() {
                return new AudioAttributes.Builder();
            }

            static AudioAttributes.Builder setContentType(AudioAttributes.Builder builder, int i) {
                return builder.setContentType(i);
            }

            static AudioAttributes.Builder setUsage(AudioAttributes.Builder builder, int i) {
                return builder.setUsage(i);
            }

            static AudioAttributes.Builder setLegacyStreamType(AudioAttributes.Builder builder, int i) {
                return builder.setLegacyStreamType(i);
            }

            static AudioAttributes build(AudioAttributes.Builder builder) {
                return builder.build();
            }
        }
    }

    public static abstract class Style {
        CharSequence mBigContentTitle;
        protected Builder mBuilder;
        CharSequence mSummaryText;
        boolean mSummaryTextSet = false;

        public abstract void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor);

        protected String getClassName() {
            return null;
        }

        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        public void setBuilder(Builder builder) {
            if (this.mBuilder != builder) {
                this.mBuilder = builder;
                if (builder != null) {
                    builder.setStyle(this);
                }
            }
        }

        public void addCompatExtras(Bundle bundle) {
            if (this.mSummaryTextSet) {
                bundle.putCharSequence("android.summaryText", this.mSummaryText);
            }
            CharSequence charSequence = this.mBigContentTitle;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            String className = getClassName();
            if (className != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", className);
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class BigPictureStyle extends Style {
        private IconCompat mBigLargeIcon;
        private boolean mBigLargeIconSet;
        private CharSequence mPictureContentDescription;
        private IconCompat mPictureIcon;
        private boolean mShowBigPictureWhenCollapsed;

        public BigPictureStyle bigPicture(Bitmap bitmap) {
            this.mPictureIcon = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
            return this;
        }

        public BigPictureStyle bigLargeIcon(Bitmap bitmap) {
            this.mBigLargeIcon = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
            this.mBigLargeIconSet = true;
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected String getClassName() {
            return "androidx.core.app.NotificationCompat$BigPictureStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle);
            IconCompat iconCompat = this.mPictureIcon;
            if (iconCompat != null) {
                if (Build.VERSION.SDK_INT >= 31) {
                    Api31Impl.setBigPicture(bigContentTitle, this.mPictureIcon.toIcon(notificationBuilderWithBuilderAccessor instanceof NotificationCompatBuilder ? ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).getContext() : null));
                } else if (iconCompat.getType() == 1) {
                    bigContentTitle = bigContentTitle.bigPicture(this.mPictureIcon.getBitmap());
                }
            }
            if (this.mBigLargeIconSet) {
                if (this.mBigLargeIcon == null) {
                    bigContentTitle.bigLargeIcon((Bitmap) null);
                } else {
                    Api23Impl.setBigLargeIcon(bigContentTitle, this.mBigLargeIcon.toIcon(notificationBuilderWithBuilderAccessor instanceof NotificationCompatBuilder ? ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).getContext() : null));
                }
            }
            if (this.mSummaryTextSet) {
                bigContentTitle.setSummaryText(this.mSummaryText);
            }
            if (Build.VERSION.SDK_INT >= 31) {
                Api31Impl.showBigPictureWhenCollapsed(bigContentTitle, this.mShowBigPictureWhenCollapsed);
                Api31Impl.setContentDescription(bigContentTitle, this.mPictureContentDescription);
            }
        }

        private static class Api23Impl {
            static void setBigLargeIcon(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        private static class Api31Impl {
            static void showBigPictureWhenCollapsed(Notification.BigPictureStyle bigPictureStyle, boolean z) {
                bigPictureStyle.showBigPictureWhenCollapsed(z);
            }

            static void setContentDescription(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setContentDescription(charSequence);
            }

            static void setBigPicture(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigPicture(icon);
            }
        }
    }

    public static class BigTextStyle extends Style {
        private CharSequence mBigText;

        public BigTextStyle bigText(CharSequence charSequence) {
            this.mBigText = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected String getClassName() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle).bigText(this.mBigText);
            if (this.mSummaryTextSet) {
                bigTextStyleBigText.setSummaryText(this.mSummaryText);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void addCompatExtras(Bundle bundle) {
            super.addCompatExtras(bundle);
        }
    }

    public static class MessagingStyle extends Style {
        private CharSequence mConversationTitle;
        private Boolean mIsGroupConversation;
        private Person mUser;
        private final List mMessages = new ArrayList();
        private final List mHistoricMessages = new ArrayList();

        public MessagingStyle(CharSequence charSequence) {
            this.mUser = new Person.Builder().setName(charSequence).build();
        }

        public MessagingStyle(Person person) {
            if (TextUtils.isEmpty(person.getName())) {
                throw new IllegalArgumentException("User's name must not be empty.");
            }
            this.mUser = person;
        }

        public MessagingStyle setConversationTitle(CharSequence charSequence) {
            this.mConversationTitle = charSequence;
            return this;
        }

        public MessagingStyle addMessage(CharSequence charSequence, long j, Person person) {
            addMessage(new Message(charSequence, j, person));
            return this;
        }

        public MessagingStyle addMessage(Message message) {
            if (message != null) {
                this.mMessages.add(message);
                if (this.mMessages.size() > 25) {
                    this.mMessages.remove(0);
                }
            }
            return this;
        }

        public List getMessages() {
            return this.mMessages;
        }

        public MessagingStyle setGroupConversation(boolean z) {
            this.mIsGroupConversation = Boolean.valueOf(z);
            return this;
        }

        public boolean isGroupConversation() {
            Builder builder = this.mBuilder;
            if (builder != null && builder.mContext.getApplicationInfo().targetSdkVersion < 28 && this.mIsGroupConversation == null) {
                return this.mConversationTitle != null;
            }
            Boolean bool = this.mIsGroupConversation;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected String getClassName() {
            return "androidx.core.app.NotificationCompat$MessagingStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            CharSequence text;
            Notification.MessagingStyle messagingStyleCreateMessagingStyle;
            setGroupConversation(isGroupConversation());
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                if (i >= 28) {
                    messagingStyleCreateMessagingStyle = Api28Impl.createMessagingStyle(this.mUser.toAndroidPerson());
                } else {
                    messagingStyleCreateMessagingStyle = Api24Impl.createMessagingStyle(this.mUser.getName());
                }
                Iterator it = this.mMessages.iterator();
                while (it.hasNext()) {
                    Api24Impl.addMessage(messagingStyleCreateMessagingStyle, ((Message) it.next()).toAndroidMessage());
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    Iterator it2 = this.mHistoricMessages.iterator();
                    while (it2.hasNext()) {
                        Api26Impl.addHistoricMessage(messagingStyleCreateMessagingStyle, ((Message) it2.next()).toAndroidMessage());
                    }
                }
                if (this.mIsGroupConversation.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    Api24Impl.setConversationTitle(messagingStyleCreateMessagingStyle, this.mConversationTitle);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    Api28Impl.setGroupConversation(messagingStyleCreateMessagingStyle, this.mIsGroupConversation.booleanValue());
                }
                messagingStyleCreateMessagingStyle.setBuilder(notificationBuilderWithBuilderAccessor.getBuilder());
                return;
            }
            Message messageFindLatestIncomingMessage = findLatestIncomingMessage();
            if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(this.mConversationTitle);
            } else if (messageFindLatestIncomingMessage != null) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(_UrlKt.FRAGMENT_ENCODE_SET);
                if (messageFindLatestIncomingMessage.getPerson() != null) {
                    notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(messageFindLatestIncomingMessage.getPerson().getName());
                }
            }
            if (messageFindLatestIncomingMessage != null) {
                Notification.Builder builder = notificationBuilderWithBuilderAccessor.getBuilder();
                if (this.mConversationTitle != null) {
                    text = makeMessageLine(messageFindLatestIncomingMessage);
                } else {
                    text = messageFindLatestIncomingMessage.getText();
                }
                builder.setContentText(text);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z = this.mConversationTitle != null || hasMessagesWithoutSender();
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                Message message = (Message) this.mMessages.get(size);
                CharSequence charSequenceMakeMessageLine = z ? makeMessageLine(message) : message.getText();
                if (size != this.mMessages.size() - 1) {
                    spannableStringBuilder.insert(0, (CharSequence) "\n");
                }
                spannableStringBuilder.insert(0, charSequenceMakeMessageLine);
            }
            new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(null).bigText(spannableStringBuilder);
        }

        private Message findLatestIncomingMessage() {
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                Message message = (Message) this.mMessages.get(size);
                if (message.getPerson() != null && !TextUtils.isEmpty(message.getPerson().getName())) {
                    return message;
                }
            }
            if (this.mMessages.isEmpty()) {
                return null;
            }
            return (Message) this.mMessages.get(r0.size() - 1);
        }

        private boolean hasMessagesWithoutSender() {
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                Message message = (Message) this.mMessages.get(size);
                if (message.getPerson() != null && message.getPerson().getName() == null) {
                    return true;
                }
            }
            return false;
        }

        private CharSequence makeMessageLine(Message message) {
            BidiFormatter bidiFormatter = BidiFormatter.getInstance();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            Person person = message.getPerson();
            CharSequence text = _UrlKt.FRAGMENT_ENCODE_SET;
            CharSequence name = person == null ? _UrlKt.FRAGMENT_ENCODE_SET : message.getPerson().getName();
            int color = -16777216;
            if (TextUtils.isEmpty(name)) {
                name = this.mUser.getName();
                if (this.mBuilder.getColor() != 0) {
                    color = this.mBuilder.getColor();
                }
            }
            CharSequence charSequenceUnicodeWrap = bidiFormatter.unicodeWrap(name);
            spannableStringBuilder.append(charSequenceUnicodeWrap);
            spannableStringBuilder.setSpan(makeFontColorSpan(color), spannableStringBuilder.length() - charSequenceUnicodeWrap.length(), spannableStringBuilder.length(), 33);
            if (message.getText() != null) {
                text = message.getText();
            }
            spannableStringBuilder.append((CharSequence) "  ").append(bidiFormatter.unicodeWrap(text));
            return spannableStringBuilder;
        }

        private TextAppearanceSpan makeFontColorSpan(int i) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i), null);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void addCompatExtras(Bundle bundle) {
            super.addCompatExtras(bundle);
            bundle.putCharSequence("android.selfDisplayName", this.mUser.getName());
            bundle.putBundle("android.messagingStyleUser", this.mUser.toBundle());
            bundle.putCharSequence("android.hiddenConversationTitle", this.mConversationTitle);
            if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
                bundle.putCharSequence("android.conversationTitle", this.mConversationTitle);
            }
            if (!this.mMessages.isEmpty()) {
                bundle.putParcelableArray("android.messages", Message.getBundleArrayForMessages(this.mMessages));
            }
            if (!this.mHistoricMessages.isEmpty()) {
                bundle.putParcelableArray("android.messages.historic", Message.getBundleArrayForMessages(this.mHistoricMessages));
            }
            Boolean bool = this.mIsGroupConversation;
            if (bool != null) {
                bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
            }
        }

        public static final class Message {
            private String mDataMimeType;
            private Uri mDataUri;
            private Bundle mExtras = new Bundle();
            private final Person mPerson;
            private final CharSequence mText;
            private final long mTimestamp;

            public Message(CharSequence charSequence, long j, Person person) {
                this.mText = charSequence;
                this.mTimestamp = j;
                this.mPerson = person;
            }

            public Message setData(String str, Uri uri) {
                this.mDataMimeType = str;
                this.mDataUri = uri;
                return this;
            }

            public CharSequence getText() {
                return this.mText;
            }

            public long getTimestamp() {
                return this.mTimestamp;
            }

            public Person getPerson() {
                return this.mPerson;
            }

            public String getDataMimeType() {
                return this.mDataMimeType;
            }

            public Uri getDataUri() {
                return this.mDataUri;
            }

            private Bundle toBundle() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.mText;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong("time", this.mTimestamp);
                Person person = this.mPerson;
                if (person != null) {
                    bundle.putCharSequence("sender", person.getName());
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable("sender_person", Api28Impl.castToParcelable(this.mPerson.toAndroidPerson()));
                    } else {
                        bundle.putBundle("person", this.mPerson.toBundle());
                    }
                }
                String str = this.mDataMimeType;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = this.mDataUri;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = this.mExtras;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                return bundle;
            }

            static Bundle[] getBundleArrayForMessages(List list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    bundleArr[i] = ((Message) list.get(i)).toBundle();
                }
                return bundleArr;
            }

            Notification.MessagingStyle.Message toAndroidMessage() {
                Notification.MessagingStyle.Message messageCreateMessage;
                Person person = getPerson();
                if (Build.VERSION.SDK_INT >= 28) {
                    messageCreateMessage = Api28Impl.createMessage(getText(), getTimestamp(), person != null ? person.toAndroidPerson() : null);
                } else {
                    messageCreateMessage = Api24Impl.createMessage(getText(), getTimestamp(), person != null ? person.getName() : null);
                }
                if (getDataMimeType() != null) {
                    Api24Impl.setData(messageCreateMessage, getDataMimeType(), getDataUri());
                }
                return messageCreateMessage;
            }

            /* JADX INFO: loaded from: classes4.dex */
            static class Api24Impl {
                static Notification.MessagingStyle.Message createMessage(CharSequence charSequence, long j, CharSequence charSequence2) {
                    return new Notification.MessagingStyle.Message(charSequence, j, charSequence2);
                }

                static Notification.MessagingStyle.Message setData(Notification.MessagingStyle.Message message, String str, Uri uri) {
                    return message.setData(str, uri);
                }
            }

            static class Api28Impl {
                static Parcelable castToParcelable(android.app.Person person) {
                    return person;
                }

                static Notification.MessagingStyle.Message createMessage(CharSequence charSequence, long j, android.app.Person person) {
                    return new Notification.MessagingStyle.Message(charSequence, j, person);
                }
            }
        }

        static class Api24Impl {
            static Notification.MessagingStyle createMessagingStyle(CharSequence charSequence) {
                return new Notification.MessagingStyle(charSequence);
            }

            static Notification.MessagingStyle addMessage(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
                return messagingStyle.addMessage(message);
            }

            static Notification.MessagingStyle setConversationTitle(Notification.MessagingStyle messagingStyle, CharSequence charSequence) {
                return messagingStyle.setConversationTitle(charSequence);
            }
        }

        /* JADX INFO: loaded from: classes4.dex */
        static class Api26Impl {
            static Notification.MessagingStyle addHistoricMessage(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
                return messagingStyle.addHistoricMessage(message);
            }
        }

        static class Api28Impl {
            static Notification.MessagingStyle createMessagingStyle(android.app.Person person) {
                return new Notification.MessagingStyle(person);
            }

            static Notification.MessagingStyle setGroupConversation(Notification.MessagingStyle messagingStyle, boolean z) {
                return messagingStyle.setGroupConversation(z);
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class InboxStyle extends Style {
        private ArrayList mTexts = new ArrayList();

        public InboxStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public InboxStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = Builder.limitCharSequenceLength(charSequence);
            this.mSummaryTextSet = true;
            return this;
        }

        public InboxStyle addLine(CharSequence charSequence) {
            if (charSequence != null) {
                this.mTexts.add(Builder.limitCharSequenceLength(charSequence));
            }
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected String getClassName() {
            return "androidx.core.app.NotificationCompat$InboxStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle);
            if (this.mSummaryTextSet) {
                bigContentTitle.setSummaryText(this.mSummaryText);
            }
            ArrayList arrayList = this.mTexts;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                bigContentTitle.addLine((CharSequence) obj);
            }
        }
    }

    public static class Action {
        public PendingIntent actionIntent;
        public int icon;
        private boolean mAllowGeneratedReplies;
        private boolean mAuthenticationRequired;
        private final RemoteInput[] mDataOnlyRemoteInputs;
        final Bundle mExtras;
        private IconCompat mIcon;
        private final boolean mIsContextual;
        private final RemoteInput[] mRemoteInputs;
        private final int mSemanticAction;
        boolean mShowsUserInterface;
        public CharSequence title;

        public Action(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.createWithResource(null, _UrlKt.FRAGMENT_ENCODE_SET, i) : null, charSequence, pendingIntent);
        }

        public Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false, false);
        }

        Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, RemoteInput[] remoteInputArr2, boolean z, int i, boolean z2, boolean z3, boolean z4) {
            this.mShowsUserInterface = true;
            this.mIcon = iconCompat;
            if (iconCompat != null && iconCompat.getType() == 2) {
                this.icon = iconCompat.getResId();
            }
            this.title = Builder.limitCharSequenceLength(charSequence);
            this.actionIntent = pendingIntent;
            this.mExtras = bundle == null ? new Bundle() : bundle;
            this.mRemoteInputs = remoteInputArr;
            this.mDataOnlyRemoteInputs = remoteInputArr2;
            this.mAllowGeneratedReplies = z;
            this.mSemanticAction = i;
            this.mShowsUserInterface = z2;
            this.mIsContextual = z3;
            this.mAuthenticationRequired = z4;
        }

        public IconCompat getIconCompat() {
            int i;
            if (this.mIcon == null && (i = this.icon) != 0) {
                this.mIcon = IconCompat.createWithResource(null, _UrlKt.FRAGMENT_ENCODE_SET, i);
            }
            return this.mIcon;
        }

        public CharSequence getTitle() {
            return this.title;
        }

        public PendingIntent getActionIntent() {
            return this.actionIntent;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public boolean getAllowGeneratedReplies() {
            return this.mAllowGeneratedReplies;
        }

        public boolean isAuthenticationRequired() {
            return this.mAuthenticationRequired;
        }

        public RemoteInput[] getRemoteInputs() {
            return this.mRemoteInputs;
        }

        public int getSemanticAction() {
            return this.mSemanticAction;
        }

        public boolean isContextual() {
            return this.mIsContextual;
        }

        public boolean getShowsUserInterface() {
            return this.mShowsUserInterface;
        }

        public static final class Builder {
            private boolean mAllowGeneratedReplies;
            private boolean mAuthenticationRequired;
            private final Bundle mExtras;
            private final IconCompat mIcon;
            private final PendingIntent mIntent;
            private boolean mIsContextual;
            private ArrayList mRemoteInputs;
            private int mSemanticAction;
            private boolean mShowsUserInterface;
            private final CharSequence mTitle;

            public Builder(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i != 0 ? IconCompat.createWithResource(null, _UrlKt.FRAGMENT_ENCODE_SET, i) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            private Builder(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z, int i, boolean z2, boolean z3, boolean z4) {
                this.mAllowGeneratedReplies = true;
                this.mShowsUserInterface = true;
                this.mIcon = iconCompat;
                this.mTitle = Builder.limitCharSequenceLength(charSequence);
                this.mIntent = pendingIntent;
                this.mExtras = bundle;
                this.mRemoteInputs = remoteInputArr == null ? null : new ArrayList(Arrays.asList(remoteInputArr));
                this.mAllowGeneratedReplies = z;
                this.mSemanticAction = i;
                this.mShowsUserInterface = z2;
                this.mIsContextual = z3;
                this.mAuthenticationRequired = z4;
            }

            public Builder addRemoteInput(RemoteInput remoteInput) {
                if (this.mRemoteInputs == null) {
                    this.mRemoteInputs = new ArrayList();
                }
                if (remoteInput != null) {
                    this.mRemoteInputs.add(remoteInput);
                }
                return this;
            }

            public Builder setAllowGeneratedReplies(boolean z) {
                this.mAllowGeneratedReplies = z;
                return this;
            }

            public Builder setSemanticAction(int i) {
                this.mSemanticAction = i;
                return this;
            }

            public Builder setShowsUserInterface(boolean z) {
                this.mShowsUserInterface = z;
                return this;
            }

            private void checkContextualActionNullFields() {
                if (this.mIsContextual && this.mIntent == null) {
                    throw new NullPointerException("Contextual Actions must contain a valid PendingIntent");
                }
            }

            public Action build() {
                checkContextualActionNullFields();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = this.mRemoteInputs;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList3.get(i);
                        i++;
                        RemoteInput remoteInput = (RemoteInput) obj;
                        if (remoteInput.isDataOnly()) {
                            arrayList.add(remoteInput);
                        } else {
                            arrayList2.add(remoteInput);
                        }
                    }
                }
                return new Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), arrayList.isEmpty() ? null : (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]), this.mAllowGeneratedReplies, this.mSemanticAction, this.mShowsUserInterface, this.mIsContextual, this.mAuthenticationRequired);
            }
        }
    }

    public static final class WearableExtender implements Extender {
        private Bitmap mBackground;
        private String mBridgeTag;
        private int mContentIcon;
        private int mCustomContentHeight;
        private String mDismissalId;
        private PendingIntent mDisplayIntent;
        private int mHintScreenTimeout;
        private ArrayList mActions = new ArrayList();
        private int mFlags = 1;
        private ArrayList mPages = new ArrayList();
        private int mContentIconGravity = 8388613;
        private int mContentActionIndex = -1;
        private int mCustomSizePreset = 0;
        private int mGravity = 80;

        @Override // androidx.core.app.NotificationCompat.Extender
        public Builder extend(Builder builder) {
            Bundle bundle = new Bundle();
            if (!this.mActions.isEmpty()) {
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.mActions.size());
                ArrayList arrayList2 = this.mActions;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    arrayList.add(getActionFromActionCompat((Action) obj));
                }
                bundle.putParcelableArrayList("actions", arrayList);
            }
            int i2 = this.mFlags;
            if (i2 != 1) {
                bundle.putInt("flags", i2);
            }
            PendingIntent pendingIntent = this.mDisplayIntent;
            if (pendingIntent != null) {
                bundle.putParcelable("displayIntent", pendingIntent);
            }
            if (!this.mPages.isEmpty()) {
                ArrayList arrayList3 = this.mPages;
                bundle.putParcelableArray("pages", (Parcelable[]) arrayList3.toArray(new Notification[arrayList3.size()]));
            }
            Bitmap bitmap = this.mBackground;
            if (bitmap != null) {
                bundle.putParcelable("background", bitmap);
            }
            int i3 = this.mContentIcon;
            if (i3 != 0) {
                bundle.putInt("contentIcon", i3);
            }
            int i4 = this.mContentIconGravity;
            if (i4 != 8388613) {
                bundle.putInt("contentIconGravity", i4);
            }
            int i5 = this.mContentActionIndex;
            if (i5 != -1) {
                bundle.putInt("contentActionIndex", i5);
            }
            int i6 = this.mCustomSizePreset;
            if (i6 != 0) {
                bundle.putInt("customSizePreset", i6);
            }
            int i7 = this.mCustomContentHeight;
            if (i7 != 0) {
                bundle.putInt("customContentHeight", i7);
            }
            int i8 = this.mGravity;
            if (i8 != 80) {
                bundle.putInt("gravity", i8);
            }
            int i9 = this.mHintScreenTimeout;
            if (i9 != 0) {
                bundle.putInt("hintScreenTimeout", i9);
            }
            String str = this.mDismissalId;
            if (str != null) {
                bundle.putString("dismissalId", str);
            }
            String str2 = this.mBridgeTag;
            if (str2 != null) {
                bundle.putString("bridgeTag", str2);
            }
            builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
            return builder;
        }

        private static Notification.Action getActionFromActionCompat(Action action) {
            Bundle bundle;
            int i = Build.VERSION.SDK_INT;
            IconCompat iconCompat = action.getIconCompat();
            Notification.Action.Builder builderCreateBuilder = Api23Impl.createBuilder(iconCompat == null ? null : iconCompat.toIcon(), action.getTitle(), action.getActionIntent());
            if (action.getExtras() != null) {
                bundle = new Bundle(action.getExtras());
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", action.getAllowGeneratedReplies());
            if (i >= 24) {
                Api24Impl.setAllowGeneratedReplies(builderCreateBuilder, action.getAllowGeneratedReplies());
            }
            if (i >= 31) {
                Api31Impl.setAuthenticationRequired(builderCreateBuilder, action.isAuthenticationRequired());
            }
            Api20Impl.addExtras(builderCreateBuilder, bundle);
            RemoteInput[] remoteInputs = action.getRemoteInputs();
            if (remoteInputs != null) {
                for (android.app.RemoteInput remoteInput : RemoteInput.fromCompat(remoteInputs)) {
                    Api20Impl.addRemoteInput(builderCreateBuilder, remoteInput);
                }
            }
            return Api20Impl.build(builderCreateBuilder);
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public WearableExtender m2051clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.mActions = new ArrayList(this.mActions);
            wearableExtender.mFlags = this.mFlags;
            wearableExtender.mDisplayIntent = this.mDisplayIntent;
            wearableExtender.mPages = new ArrayList(this.mPages);
            wearableExtender.mBackground = this.mBackground;
            wearableExtender.mContentIcon = this.mContentIcon;
            wearableExtender.mContentIconGravity = this.mContentIconGravity;
            wearableExtender.mContentActionIndex = this.mContentActionIndex;
            wearableExtender.mCustomSizePreset = this.mCustomSizePreset;
            wearableExtender.mCustomContentHeight = this.mCustomContentHeight;
            wearableExtender.mGravity = this.mGravity;
            wearableExtender.mHintScreenTimeout = this.mHintScreenTimeout;
            wearableExtender.mDismissalId = this.mDismissalId;
            wearableExtender.mBridgeTag = this.mBridgeTag;
            return wearableExtender;
        }

        public WearableExtender addAction(Action action) {
            this.mActions.add(action);
            return this;
        }

        public WearableExtender setDismissalId(String str) {
            this.mDismissalId = str;
            return this;
        }

        public WearableExtender setBridgeTag(String str) {
            this.mBridgeTag = str;
            return this;
        }

        static class Api20Impl {
            static Notification.Action.Builder addExtras(Notification.Action.Builder builder, Bundle bundle) {
                return builder.addExtras(bundle);
            }

            static Notification.Action.Builder addRemoteInput(Notification.Action.Builder builder, android.app.RemoteInput remoteInput) {
                return builder.addRemoteInput(remoteInput);
            }

            static Notification.Action build(Notification.Action.Builder builder) {
                return builder.build();
            }
        }

        static class Api23Impl {
            static Notification.Action.Builder createBuilder(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
                return new Notification.Action.Builder(icon, charSequence, pendingIntent);
            }
        }

        static class Api24Impl {
            static Notification.Action.Builder setAllowGeneratedReplies(Notification.Action.Builder builder, boolean z) {
                return builder.setAllowGeneratedReplies(z);
            }
        }

        static class Api31Impl {
            static Notification.Action.Builder setAuthenticationRequired(Notification.Action.Builder builder, boolean z) {
                return builder.setAuthenticationRequired(z);
            }
        }
    }

    public static final class BubbleMetadata {
        private PendingIntent mDeleteIntent;
        private int mDesiredHeight;
        private int mDesiredHeightResId;
        private int mFlags;
        private IconCompat mIcon;
        private PendingIntent mPendingIntent;
        private String mShortcutId;

        private BubbleMetadata(PendingIntent pendingIntent, PendingIntent pendingIntent2, IconCompat iconCompat, int i, int i2, int i3, String str) {
            this.mPendingIntent = pendingIntent;
            this.mIcon = iconCompat;
            this.mDesiredHeight = i;
            this.mDesiredHeightResId = i2;
            this.mDeleteIntent = pendingIntent2;
            this.mFlags = i3;
            this.mShortcutId = str;
        }

        public PendingIntent getIntent() {
            return this.mPendingIntent;
        }

        public String getShortcutId() {
            return this.mShortcutId;
        }

        public PendingIntent getDeleteIntent() {
            return this.mDeleteIntent;
        }

        public IconCompat getIcon() {
            return this.mIcon;
        }

        public int getDesiredHeight() {
            return this.mDesiredHeight;
        }

        public int getDesiredHeightResId() {
            return this.mDesiredHeightResId;
        }

        public boolean getAutoExpandBubble() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isNotificationSuppressed() {
            return (this.mFlags & 2) != 0;
        }

        public void setFlags(int i) {
            this.mFlags = i;
        }

        public static Notification.BubbleMetadata toPlatform(BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                return Api30Impl.toPlatform(bubbleMetadata);
            }
            if (i == 29) {
                return Api29Impl.toPlatform(bubbleMetadata);
            }
            return null;
        }

        public static final class Builder {
            private PendingIntent mDeleteIntent;
            private int mDesiredHeight;
            private int mDesiredHeightResId;
            private int mFlags;
            private IconCompat mIcon;
            private PendingIntent mPendingIntent;
            private String mShortcutId;

            public Builder(PendingIntent pendingIntent, IconCompat iconCompat) {
                if (pendingIntent == null) {
                    throw new NullPointerException("Bubble requires non-null pending intent");
                }
                if (iconCompat == null) {
                    throw new NullPointerException("Bubbles require non-null icon");
                }
                this.mPendingIntent = pendingIntent;
                this.mIcon = iconCompat;
            }

            public Builder setDesiredHeight(int i) {
                this.mDesiredHeight = Math.max(i, 0);
                this.mDesiredHeightResId = 0;
                return this;
            }

            public Builder setAutoExpandBubble(boolean z) {
                setFlag(1, z);
                return this;
            }

            public Builder setSuppressNotification(boolean z) {
                setFlag(2, z);
                return this;
            }

            public BubbleMetadata build() {
                String str = this.mShortcutId;
                if (str == null && this.mPendingIntent == null) {
                    throw new NullPointerException("Must supply pending intent or shortcut to bubble");
                }
                if (str == null && this.mIcon == null) {
                    throw new NullPointerException("Must supply an icon or shortcut for the bubble");
                }
                BubbleMetadata bubbleMetadata = new BubbleMetadata(this.mPendingIntent, this.mDeleteIntent, this.mIcon, this.mDesiredHeight, this.mDesiredHeightResId, this.mFlags, str);
                bubbleMetadata.setFlags(this.mFlags);
                return bubbleMetadata;
            }

            private Builder setFlag(int i, boolean z) {
                if (z) {
                    this.mFlags = i | this.mFlags;
                    return this;
                }
                this.mFlags = (~i) & this.mFlags;
                return this;
            }
        }

        /* JADX INFO: loaded from: classes4.dex */
        private static class Api29Impl {
            static Notification.BubbleMetadata toPlatform(BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setIcon(bubbleMetadata.getIcon().toIcon()).setIntent(bubbleMetadata.getIntent()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return suppressNotification.build();
            }
        }

        private static class Api30Impl {
            static Notification.BubbleMetadata toPlatform(BubbleMetadata bubbleMetadata) {
                Notification.BubbleMetadata.Builder builder;
                if (bubbleMetadata == null) {
                    return null;
                }
                if (bubbleMetadata.getShortcutId() != null) {
                    builder = new Notification.BubbleMetadata.Builder(bubbleMetadata.getShortcutId());
                } else {
                    builder = new Notification.BubbleMetadata.Builder(bubbleMetadata.getIntent(), bubbleMetadata.getIcon().toIcon());
                }
                builder.setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.build();
            }
        }
    }

    public static Bundle getExtras(Notification notification) {
        return notification.extras;
    }

    public static Bitmap reduceLargeIconSize(Context context, Bitmap bitmap) {
        if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
            return bitmap;
        }
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.compat_notification_large_icon_max_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.compat_notification_large_icon_max_height);
        if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
            return bitmap;
        }
        double dMin = Math.min(((double) dimensionPixelSize) / ((double) Math.max(1, bitmap.getWidth())), ((double) dimensionPixelSize2) / ((double) Math.max(1, bitmap.getHeight())));
        return Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dMin), (int) Math.ceil(((double) bitmap.getHeight()) * dMin), true);
    }
}
