package androidx.car.app.hardware.common;

import android.os.IBinder;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.hardware.ICarHardwareResult;
import androidx.car.app.serialization.Bundleable;
import androidx.car.app.utils.RemoteUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class CarResultStub<T> extends ICarHardwareResult.Stub {
    private final Bundleable mBundle;
    private final CarHardwareHostDispatcher mHostDispatcher;
    private final boolean mIsSingleShot;
    private final Map<OnCarDataAvailableListener<T>, Executor> mListeners = new HashMap();
    private final int mResultType;
    private final T mUnsupportedValue;

    public CarResultStub(int i, Bundleable bundleable, boolean z, T t, CarHardwareHostDispatcher carHardwareHostDispatcher) {
        Objects.requireNonNull(carHardwareHostDispatcher);
        this.mHostDispatcher = carHardwareHostDispatcher;
        this.mResultType = i;
        this.mBundle = bundleable;
        this.mIsSingleShot = z;
        Objects.requireNonNull(t);
        this.mUnsupportedValue = t;
    }

    public void addListener(Executor executor, OnCarDataAvailableListener<T> onCarDataAvailableListener) {
        boolean zIsEmpty = this.mListeners.isEmpty();
        Map<OnCarDataAvailableListener<T>, Executor> map = this.mListeners;
        Objects.requireNonNull(onCarDataAvailableListener);
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(onCarDataAvailableListener);
        map.put(null, executor);
        if (zIsEmpty) {
            boolean z = this.mIsSingleShot;
            CarHardwareHostDispatcher carHardwareHostDispatcher = this.mHostDispatcher;
            if (z) {
                carHardwareHostDispatcher.dispatchGetCarHardwareResult(this.mResultType, this.mBundle, this);
            } else {
                carHardwareHostDispatcher.dispatchSubscribeCarHardwareResult(this.mResultType, this.mBundle, this);
            }
        }
    }

    public boolean removeListener(OnCarDataAvailableListener<T> onCarDataAvailableListener) {
        Map<OnCarDataAvailableListener<T>, Executor> map = this.mListeners;
        Objects.requireNonNull(onCarDataAvailableListener);
        map.remove(onCarDataAvailableListener);
        if (!this.mListeners.isEmpty()) {
            return false;
        }
        if (this.mIsSingleShot) {
            return true;
        }
        this.mHostDispatcher.dispatchUnsubscribeCarHardwareResult(this.mResultType, this.mBundle);
        return true;
    }

    @Override // androidx.car.app.hardware.ICarHardwareResult
    public void onCarHardwareResult(int i, final boolean z, final Bundleable bundleable, IBinder iBinder) {
        RemoteUtils.dispatchCallFromHost(IOnDoneCallback.Stub.asInterface(iBinder), "onCarHardwareResult", new RemoteUtils.HostCall() { // from class: androidx.car.app.hardware.common.CarResultStub$$ExternalSyntheticLambda1
            @Override // androidx.car.app.utils.RemoteUtils.HostCall
            public final Object dispatch() {
                return CarResultStub.$r8$lambda$pqrm3pBqWmiTYzPQnBV2xWWZWww(this.f$0, z, bundleable);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$pqrm3pBqWmiTYzPQnBV2xWWZWww(CarResultStub carResultStub, boolean z, Bundleable bundleable) {
        carResultStub.notifyResults(z, bundleable);
        return null;
    }

    private void notifyResults(boolean z, Bundleable bundleable) {
        final T tConvertAndRecast = z ? convertAndRecast(bundleable) : this.mUnsupportedValue;
        for (final Map.Entry<OnCarDataAvailableListener<T>, Executor> entry : this.mListeners.entrySet()) {
            entry.getValue().execute(new Runnable() { // from class: androidx.car.app.hardware.common.CarResultStub$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CarResultStub.$r8$lambda$vYNy658eO7HEYi1xIs0Tfw1Qm5E(entry, tConvertAndRecast);
                }
            });
        }
        if (this.mIsSingleShot) {
            this.mListeners.clear();
        }
    }

    public static /* synthetic */ void $r8$lambda$vYNy658eO7HEYi1xIs0Tfw1Qm5E(Map.Entry entry, Object obj) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(entry.getKey());
        throw null;
    }

    private T convertAndRecast(Bundleable bundleable) {
        return (T) bundleable.get();
    }
}
