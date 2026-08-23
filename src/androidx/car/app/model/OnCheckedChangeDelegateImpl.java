package androidx.car.app.model;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.model.IOnCheckedChangeListener;
import androidx.car.app.model.OnCheckedChangeDelegateImpl;
import androidx.car.app.model.Toggle;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public class OnCheckedChangeDelegateImpl implements OnCheckedChangeDelegate {
    private final IOnCheckedChangeListener mStub;

    public void sendCheckedChange(boolean z, OnDoneCallback onDoneCallback) {
        try {
            IOnCheckedChangeListener iOnCheckedChangeListener = this.mStub;
            Objects.requireNonNull(iOnCheckedChangeListener);
            iOnCheckedChangeListener.onCheckedChange(z, RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    private OnCheckedChangeDelegateImpl(Toggle.OnCheckedChangeListener onCheckedChangeListener) {
        this.mStub = new OnCheckedChangeListenerStub(onCheckedChangeListener);
    }

    private OnCheckedChangeDelegateImpl() {
        this.mStub = null;
    }

    @SuppressLint({"ExecutorRegistration"})
    public static OnCheckedChangeDelegate create(Toggle.OnCheckedChangeListener onCheckedChangeListener) {
        return new OnCheckedChangeDelegateImpl(onCheckedChangeListener);
    }

    public static class OnCheckedChangeListenerStub extends IOnCheckedChangeListener.Stub {
        private final Toggle.OnCheckedChangeListener mListener;

        public OnCheckedChangeListenerStub(Toggle.OnCheckedChangeListener onCheckedChangeListener) {
        }

        @Override // androidx.car.app.model.IOnCheckedChangeListener
        public void onCheckedChange(final boolean z, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onCheckedChange", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.OnCheckedChangeDelegateImpl$OnCheckedChangeListenerStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return OnCheckedChangeDelegateImpl.OnCheckedChangeListenerStub.$r8$lambda$48webNydW9KdPgFQqULUrGYAipw(this.f$0, z);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$48webNydW9KdPgFQqULUrGYAipw(OnCheckedChangeListenerStub onCheckedChangeListenerStub, boolean z) {
            onCheckedChangeListenerStub.getClass();
            throw null;
        }
    }
}
