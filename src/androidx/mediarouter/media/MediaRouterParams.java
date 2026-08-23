package androidx.mediarouter.media;

import android.os.Build;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class MediaRouterParams {
    final int mDialogType;
    final Bundle mExtras;
    final boolean mMediaTransferReceiverEnabled;
    final boolean mOutputSwitcherEnabled;
    final boolean mTransferToLocalEnabled;

    MediaRouterParams(Builder builder) {
        this.mDialogType = builder.mDialogType;
        this.mMediaTransferReceiverEnabled = builder.mMediaTransferEnabled;
        this.mOutputSwitcherEnabled = builder.mOutputSwitcherEnabled;
        this.mTransferToLocalEnabled = builder.mTransferToLocalEnabled;
        Bundle bundle = builder.mExtras;
        this.mExtras = bundle == null ? Bundle.EMPTY : new Bundle(bundle);
    }

    public int getDialogType() {
        return this.mDialogType;
    }

    public boolean isMediaTransferReceiverEnabled() {
        return this.mMediaTransferReceiverEnabled;
    }

    public boolean isOutputSwitcherEnabled() {
        return this.mOutputSwitcherEnabled;
    }

    public boolean isTransferToLocalEnabled() {
        return this.mTransferToLocalEnabled;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public static final class Builder {
        int mDialogType;
        Bundle mExtras;
        boolean mMediaTransferEnabled;
        boolean mOutputSwitcherEnabled;
        boolean mTransferToLocalEnabled;

        public Builder() {
            this.mDialogType = 1;
            this.mMediaTransferEnabled = Build.VERSION.SDK_INT >= 30;
        }

        public Builder(MediaRouterParams mediaRouterParams) {
            this.mDialogType = 1;
            this.mMediaTransferEnabled = Build.VERSION.SDK_INT >= 30;
            if (mediaRouterParams == null) {
                throw new NullPointerException("params should not be null!");
            }
            this.mDialogType = mediaRouterParams.mDialogType;
            this.mOutputSwitcherEnabled = mediaRouterParams.mOutputSwitcherEnabled;
            this.mTransferToLocalEnabled = mediaRouterParams.mTransferToLocalEnabled;
            this.mMediaTransferEnabled = mediaRouterParams.mMediaTransferReceiverEnabled;
            this.mExtras = mediaRouterParams.mExtras == null ? null : new Bundle(mediaRouterParams.mExtras);
        }

        public Builder setDialogType(int i) {
            this.mDialogType = i;
            return this;
        }

        public Builder setMediaTransferReceiverEnabled(boolean z) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.mMediaTransferEnabled = z;
            }
            return this;
        }

        public Builder setOutputSwitcherEnabled(boolean z) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.mOutputSwitcherEnabled = z;
            }
            return this;
        }

        public Builder setTransferToLocalEnabled(boolean z) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.mTransferToLocalEnabled = z;
            }
            return this;
        }

        public MediaRouterParams build() {
            return new MediaRouterParams(this);
        }
    }
}
