package androidx.media3.session.legacy;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.media3.session.legacy.IMediaControllerCallback;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public interface IMediaSession extends IInterface {
    PlaybackStateCompat getPlaybackState();

    int getRepeatMode();

    Bundle getSessionInfo();

    int getShuffleMode();

    boolean isCaptioningEnabled();

    void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback);

    void unregisterCallbackListener(IMediaControllerCallback iMediaControllerCallback);

    public static abstract class Stub extends Binder implements IMediaSession {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "android.support.v4.media.session.IMediaSession");
        }

        public static IMediaSession asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMediaSession)) {
                return (IMediaSession) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 3) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                registerCallbackListener(IMediaControllerCallback.Stub.asInterface(parcel.readStrongBinder()));
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeNoException();
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                unregisterCallbackListener(IMediaControllerCallback.Stub.asInterface(parcel.readStrongBinder()));
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeNoException();
                return true;
            }
            if (i == 28) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                PlaybackStateCompat playbackState = getPlaybackState();
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeNoException();
                if (playbackState != null) {
                    ((Parcel) Preconditions.checkNotNull(parcel2)).writeInt(1);
                    playbackState.writeToParcel(parcel2, 1);
                } else {
                    ((Parcel) Preconditions.checkNotNull(parcel2)).writeInt(0);
                }
                return true;
            }
            if (i == 37) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                int repeatMode = getRepeatMode();
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeNoException();
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeInt(repeatMode);
                return true;
            }
            if (i == 45) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                boolean zIsCaptioningEnabled = isCaptioningEnabled();
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeNoException();
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeInt(zIsCaptioningEnabled ? 1 : 0);
                return true;
            }
            if (i == 47) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                int shuffleMode = getShuffleMode();
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeNoException();
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeInt(shuffleMode);
                return true;
            }
            if (i != 50) {
                if (i == 1598968902) {
                    ((Parcel) Preconditions.checkNotNull(parcel2)).writeString("android.support.v4.media.session.IMediaSession");
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            Bundle sessionInfo = getSessionInfo();
            ((Parcel) Preconditions.checkNotNull(parcel2)).writeNoException();
            if (sessionInfo != null) {
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeInt(1);
                sessionInfo.writeToParcel(parcel2, 1);
            } else {
                ((Parcel) Preconditions.checkNotNull(parcel2)).writeInt(0);
            }
            return true;
        }

        public static class Proxy implements IMediaSession {
            public static IMediaSession defaultImpl;
            private IBinder remote;

            public Proxy(IBinder iBinder) {
                this.remote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.remote;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    parcelObtain.writeStrongBinder(iMediaControllerCallback != null ? iMediaControllerCallback.asBinder() : null);
                    if (!this.remote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        ((IMediaSession) Preconditions.checkNotNull(Stub.getDefaultImpl())).registerCallbackListener(iMediaControllerCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public static IMediaSession getDefaultImpl() {
            return Proxy.defaultImpl;
        }
    }
}
