package androidx.media3.session.legacy;

import android.annotation.SuppressLint;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.common.util.Assertions;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"BanParcelableUsage"})
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: androidx.media3.session.legacy.PlaybackStateCompat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };
    final long actions;
    final long activeItemId;
    final long bufferedPosition;
    List<CustomAction> customActions;
    final int errorCode;
    final CharSequence errorMessage;
    final Bundle extras;
    final long position;
    final float speed;
    final int state;
    private PlaybackState stateFwk;
    final long updateTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.state = i;
        this.position = j;
        this.bufferedPosition = j2;
        this.speed = f;
        this.actions = j3;
        this.errorCode = i2;
        this.errorMessage = charSequence;
        this.updateTime = j4;
        this.customActions = list == null ? ImmutableList.of() : new ArrayList<>(list);
        this.activeItemId = j5;
        this.extras = bundle;
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.state = parcel.readInt();
        this.position = parcel.readLong();
        this.speed = parcel.readFloat();
        this.updateTime = parcel.readLong();
        this.bufferedPosition = parcel.readLong();
        this.actions = parcel.readLong();
        this.errorMessage = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        List<CustomAction> listCreateTypedArrayList = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.customActions = listCreateTypedArrayList == null ? ImmutableList.of() : listCreateTypedArrayList;
        this.activeItemId = parcel.readLong();
        this.extras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.errorCode = parcel.readInt();
    }

    public String toString() {
        return "PlaybackState {state=" + this.state + ", position=" + this.position + ", buffered position=" + this.bufferedPosition + ", speed=" + this.speed + ", updated=" + this.updateTime + ", actions=" + this.actions + ", error code=" + this.errorCode + ", error message=" + this.errorMessage + ", custom actions=" + this.customActions + ", active item id=" + this.activeItemId + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.state);
        parcel.writeLong(this.position);
        parcel.writeFloat(this.speed);
        parcel.writeLong(this.updateTime);
        parcel.writeLong(this.bufferedPosition);
        parcel.writeLong(this.actions);
        TextUtils.writeToParcel(this.errorMessage, parcel, i);
        parcel.writeTypedList(this.customActions);
        parcel.writeLong(this.activeItemId);
        parcel.writeBundle(this.extras);
        parcel.writeInt(this.errorCode);
    }

    public int getState() {
        return this.state;
    }

    public long getPosition() {
        return this.position;
    }

    public long getLastPositionUpdateTime() {
        return this.updateTime;
    }

    public float getPlaybackSpeed() {
        return this.speed;
    }

    public long getActions() {
        return this.actions;
    }

    public PlaybackState getPlaybackState() {
        if (this.stateFwk == null) {
            PlaybackState.Builder builder = new PlaybackState.Builder();
            builder.setState(this.state, this.position, this.speed, this.updateTime);
            builder.setBufferedPosition(this.bufferedPosition);
            builder.setActions(this.actions);
            builder.setErrorMessage(this.errorMessage);
            Iterator<CustomAction> it = this.customActions.iterator();
            while (it.hasNext()) {
                PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) it.next().getCustomAction();
                if (customAction != null) {
                    builder.addCustomAction(customAction);
                }
            }
            builder.setActiveQueueItemId(this.activeItemId);
            Api22Impl.setExtras(builder, this.extras);
            this.stateFwk = builder.build();
        }
        return this.stateFwk;
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: androidx.media3.session.legacy.PlaybackStateCompat.CustomAction.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        };
        private final String action;
        private PlaybackState.CustomAction customActionFwk;
        private final Bundle extras;
        private final int icon;
        private final CharSequence name;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public CustomAction(Parcel parcel) {
            this.action = (String) Assertions.checkNotNull(parcel.readString());
            this.name = (CharSequence) Assertions.checkNotNull((CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel));
            this.icon = parcel.readInt();
            this.extras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.action);
            TextUtils.writeToParcel(this.name, parcel, i);
            parcel.writeInt(this.icon);
            parcel.writeBundle(this.extras);
        }

        public Object getCustomAction() {
            PlaybackState.CustomAction customAction = this.customActionFwk;
            if (customAction != null) {
                return customAction;
            }
            PlaybackState.CustomAction.Builder builder = new PlaybackState.CustomAction.Builder(this.action, this.name, this.icon);
            builder.setExtras(this.extras);
            return builder.build();
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.name) + ", mIcon=" + this.icon + ", mExtras=" + this.extras;
        }
    }

    public static final class Builder {
        private long actions;
        private long activeItemId;
        private long bufferedPosition;
        private final List<CustomAction> customActions;
        private int errorCode;
        private CharSequence errorMessage;
        private Bundle extras;
        private long position;
        private float rate;
        private int state;
        private long updateTime;

        public Builder() {
            this.customActions = new ArrayList();
            this.activeItemId = -1L;
        }

        public Builder(PlaybackStateCompat playbackStateCompat) {
            ArrayList arrayList = new ArrayList();
            this.customActions = arrayList;
            this.activeItemId = -1L;
            this.state = playbackStateCompat.state;
            this.position = playbackStateCompat.position;
            this.rate = playbackStateCompat.speed;
            this.updateTime = playbackStateCompat.updateTime;
            this.bufferedPosition = playbackStateCompat.bufferedPosition;
            this.actions = playbackStateCompat.actions;
            this.errorCode = playbackStateCompat.errorCode;
            this.errorMessage = playbackStateCompat.errorMessage;
            List<CustomAction> list = playbackStateCompat.customActions;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.activeItemId = playbackStateCompat.activeItemId;
            this.extras = playbackStateCompat.extras;
        }

        public Builder setState(int i, long j, float f, long j2) {
            this.state = i;
            this.position = j;
            this.updateTime = j2;
            this.rate = f;
            return this;
        }

        public Builder setBufferedPosition(long j) {
            this.bufferedPosition = j;
            return this;
        }

        public Builder setActions(long j) {
            this.actions = j;
            return this;
        }

        public Builder setActiveQueueItemId(long j) {
            this.activeItemId = j;
            return this;
        }

        public Builder setErrorMessage(int i, CharSequence charSequence) {
            this.errorCode = i;
            this.errorMessage = charSequence;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        public PlaybackStateCompat build() {
            return new PlaybackStateCompat(this.state, this.position, this.bufferedPosition, this.rate, this.actions, this.errorCode, this.errorMessage, this.updateTime, this.customActions, this.activeItemId, this.extras);
        }
    }

    public static class Api22Impl {
        public static void setExtras(PlaybackState.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }
    }
}
