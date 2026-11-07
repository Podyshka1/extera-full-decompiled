package androidx.media3.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.Surface;
import androidx.media3.session.IMediaController;

/* JADX INFO: loaded from: classes4.dex */
public interface IMediaSession extends IInterface {
    void addMediaItem(IMediaController iMediaController, int i, Bundle bundle);

    void addMediaItemWithIndex(IMediaController iMediaController, int i, int i2, Bundle bundle);

    void addMediaItems(IMediaController iMediaController, int i, IBinder iBinder);

    void addMediaItemsWithIndex(IMediaController iMediaController, int i, int i2, IBinder iBinder);

    void clearMediaItems(IMediaController iMediaController, int i);

    void connect(IMediaController iMediaController, int i, Bundle bundle);

    void decreaseDeviceVolume(IMediaController iMediaController, int i);

    void decreaseDeviceVolumeWithFlags(IMediaController iMediaController, int i, int i2);

    void flushCommandQueue(IMediaController iMediaController);

    void getChildren(IMediaController iMediaController, int i, String str, int i2, int i3, Bundle bundle);

    void getItem(IMediaController iMediaController, int i, String str);

    void getLibraryRoot(IMediaController iMediaController, int i, Bundle bundle);

    void getSearchResult(IMediaController iMediaController, int i, String str, int i2, int i3, Bundle bundle);

    void increaseDeviceVolume(IMediaController iMediaController, int i);

    void increaseDeviceVolumeWithFlags(IMediaController iMediaController, int i, int i2);

    void moveMediaItem(IMediaController iMediaController, int i, int i2, int i3);

    void moveMediaItems(IMediaController iMediaController, int i, int i2, int i3, int i4);

    void mute(IMediaController iMediaController, int i);

    void onControllerResult(IMediaController iMediaController, int i, Bundle bundle);

    void onCustomCommand(IMediaController iMediaController, int i, Bundle bundle, Bundle bundle2);

    void onCustomCommandWithProgressUpdate(IMediaController iMediaController, int i, Bundle bundle, Bundle bundle2, boolean z);

    void onSurfaceSizeChanged(IMediaController iMediaController, int i, int i2, int i3);

    void pause(IMediaController iMediaController, int i);

    void play(IMediaController iMediaController, int i);

    void prepare(IMediaController iMediaController, int i);

    void release(IMediaController iMediaController, int i);

    void removeMediaItem(IMediaController iMediaController, int i, int i2);

    void removeMediaItems(IMediaController iMediaController, int i, int i2, int i3);

    void replaceMediaItem(IMediaController iMediaController, int i, int i2, Bundle bundle);

    void replaceMediaItems(IMediaController iMediaController, int i, int i2, int i3, IBinder iBinder);

    void search(IMediaController iMediaController, int i, String str, Bundle bundle);

    void seekBack(IMediaController iMediaController, int i);

    void seekForward(IMediaController iMediaController, int i);

    void seekTo(IMediaController iMediaController, int i, long j);

    void seekToDefaultPosition(IMediaController iMediaController, int i);

    void seekToDefaultPositionWithMediaItemIndex(IMediaController iMediaController, int i, int i2);

    void seekToNext(IMediaController iMediaController, int i);

    void seekToNextMediaItem(IMediaController iMediaController, int i);

    void seekToPrevious(IMediaController iMediaController, int i);

    void seekToPreviousMediaItem(IMediaController iMediaController, int i);

    void seekToWithMediaItemIndex(IMediaController iMediaController, int i, int i2, long j);

    void setAudioAttributes(IMediaController iMediaController, int i, Bundle bundle, boolean z);

    void setDeviceMuted(IMediaController iMediaController, int i, boolean z);

    void setDeviceMutedWithFlags(IMediaController iMediaController, int i, boolean z, int i2);

    void setDeviceVolume(IMediaController iMediaController, int i, int i2);

    void setDeviceVolumeWithFlags(IMediaController iMediaController, int i, int i2, int i3);

    void setMediaItem(IMediaController iMediaController, int i, Bundle bundle);

    void setMediaItemWithResetPosition(IMediaController iMediaController, int i, Bundle bundle, boolean z);

    void setMediaItemWithStartPosition(IMediaController iMediaController, int i, Bundle bundle, long j);

    void setMediaItems(IMediaController iMediaController, int i, IBinder iBinder);

    void setMediaItemsWithResetPosition(IMediaController iMediaController, int i, IBinder iBinder, boolean z);

    void setMediaItemsWithStartIndex(IMediaController iMediaController, int i, IBinder iBinder, int i2, long j);

    void setPlayWhenReady(IMediaController iMediaController, int i, boolean z);

    void setPlaybackParameters(IMediaController iMediaController, int i, Bundle bundle);

    void setPlaybackSpeed(IMediaController iMediaController, int i, float f);

    void setPlaylistMetadata(IMediaController iMediaController, int i, Bundle bundle);

    void setRating(IMediaController iMediaController, int i, Bundle bundle);

    void setRatingWithMediaId(IMediaController iMediaController, int i, String str, Bundle bundle);

    void setRepeatMode(IMediaController iMediaController, int i, int i2);

    void setShuffleModeEnabled(IMediaController iMediaController, int i, boolean z);

    void setTrackSelectionParameters(IMediaController iMediaController, int i, Bundle bundle);

    void setVideoSurface(IMediaController iMediaController, int i, Surface surface);

    void setVideoSurfaceWithSize(IMediaController iMediaController, int i, Surface surface, int i2, int i3);

    void setVolume(IMediaController iMediaController, int i, float f);

    void stop(IMediaController iMediaController, int i);

    void subscribe(IMediaController iMediaController, int i, String str, Bundle bundle);

    void unmute(IMediaController iMediaController, int i);

    void unsubscribe(IMediaController iMediaController, int i, String str);

    public static abstract class Stub extends Binder implements IMediaSession {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "androidx.media3.session.IMediaSession");
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("androidx.media3.session.IMediaSession");
            }
            if (i == 1598968902) {
                parcel2.writeString("androidx.media3.session.IMediaSession");
                return true;
            }
            switch (i) {
                case 3002:
                    setVolume(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readFloat());
                    return true;
                case 3003:
                    setDeviceVolume(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3004:
                    increaseDeviceVolume(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3005:
                    decreaseDeviceVolume(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3006:
                    setDeviceMuted(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 3007:
                    setMediaItem(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3008:
                    setMediaItemWithStartPosition(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR), parcel.readLong());
                    return true;
                case 3009:
                    setMediaItemWithResetPosition(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR), parcel.readInt() != 0);
                    return true;
                case 3010:
                    setMediaItems(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 3011:
                    setMediaItemsWithResetPosition(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readStrongBinder(), parcel.readInt() != 0);
                    return true;
                case 3012:
                    setMediaItemsWithStartIndex(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readStrongBinder(), parcel.readInt(), parcel.readLong());
                    return true;
                case 3013:
                    setPlayWhenReady(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 3014:
                    onControllerResult(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3015:
                    connect(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3016:
                    IMediaController iMediaControllerAsInterface = IMediaController.Stub.asInterface(parcel.readStrongBinder());
                    int i3 = parcel.readInt();
                    Parcelable.Creator creator = Bundle.CREATOR;
                    onCustomCommand(iMediaControllerAsInterface, i3, (Bundle) _Parcel.readTypedObject(parcel, creator), (Bundle) _Parcel.readTypedObject(parcel, creator));
                    return true;
                case 3017:
                    setRepeatMode(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3018:
                    setShuffleModeEnabled(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 3019:
                    removeMediaItem(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3020:
                    removeMediaItems(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3021:
                    clearMediaItems(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3022:
                    moveMediaItem(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3023:
                    moveMediaItems(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3024:
                    play(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3025:
                    pause(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3026:
                    prepare(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3027:
                    setPlaybackParameters(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3028:
                    setPlaybackSpeed(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readFloat());
                    return true;
                case 3029:
                    addMediaItem(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3030:
                    addMediaItemWithIndex(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3031:
                    addMediaItems(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 3032:
                    addMediaItemsWithIndex(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 3033:
                    setPlaylistMetadata(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3034:
                    stop(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3035:
                    release(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3036:
                    seekToDefaultPosition(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3037:
                    seekToDefaultPositionWithMediaItemIndex(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3038:
                    seekTo(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readLong());
                    return true;
                case 3039:
                    seekToWithMediaItemIndex(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    return true;
                case 3040:
                    seekBack(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3041:
                    seekForward(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3042:
                    seekToPreviousMediaItem(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3043:
                    seekToNextMediaItem(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3044:
                    setVideoSurface(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Surface) _Parcel.readTypedObject(parcel, Surface.CREATOR));
                    return true;
                case 3045:
                    flushCommandQueue(IMediaController.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3046:
                    seekToPrevious(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3047:
                    seekToNext(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3048:
                    setTrackSelectionParameters(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3049:
                    setRatingWithMediaId(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3050:
                    setRating(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3051:
                    setDeviceVolumeWithFlags(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3052:
                    increaseDeviceVolumeWithFlags(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3053:
                    decreaseDeviceVolumeWithFlags(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3054:
                    setDeviceMutedWithFlags(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0, parcel.readInt());
                    return true;
                case 3055:
                    replaceMediaItem(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    return true;
                case 3056:
                    replaceMediaItems(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 3057:
                    setAudioAttributes(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR), parcel.readInt() != 0);
                    return true;
                case 3058:
                    mute(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3059:
                    unmute(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3060:
                    IMediaController iMediaControllerAsInterface2 = IMediaController.Stub.asInterface(parcel.readStrongBinder());
                    int i4 = parcel.readInt();
                    Parcelable.Creator creator2 = Bundle.CREATOR;
                    onCustomCommandWithProgressUpdate(iMediaControllerAsInterface2, i4, (Bundle) _Parcel.readTypedObject(parcel, creator2), (Bundle) _Parcel.readTypedObject(parcel, creator2), parcel.readInt() != 0);
                    return true;
                case 3061:
                    setVideoSurfaceWithSize(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Surface) _Parcel.readTypedObject(parcel, Surface.CREATOR), parcel.readInt(), parcel.readInt());
                    return true;
                case 3062:
                    onSurfaceSizeChanged(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                default:
                    switch (i) {
                        case 4001:
                            getLibraryRoot(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                            return true;
                        case 4002:
                            getItem(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                            return true;
                        case 4003:
                            getChildren(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                            return true;
                        case 4004:
                            search(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                            return true;
                        case 4005:
                            getSearchResult(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                            return true;
                        case 4006:
                            subscribe(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                            return true;
                        case 4007:
                            unsubscribe(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                            return true;
                        default:
                            return super.onTransact(i, parcel, parcel2, i2);
                    }
            }
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }
}
