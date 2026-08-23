package androidx.car.app.model;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.model.IOnContentRefreshListener;
import androidx.car.app.model.OnContentRefreshDelegateImpl;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public class OnContentRefreshDelegateImpl implements OnContentRefreshDelegate {
    private final IOnContentRefreshListener mListener;

    public void sendContentRefreshRequested(OnDoneCallback onDoneCallback) {
        try {
            IOnContentRefreshListener iOnContentRefreshListener = this.mListener;
            Objects.requireNonNull(iOnContentRefreshListener);
            iOnContentRefreshListener.onContentRefreshRequested(RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    @SuppressLint({"ExecutorRegistration"})
    public static OnContentRefreshDelegate create(OnContentRefreshListener onContentRefreshListener) {
        return new OnContentRefreshDelegateImpl(onContentRefreshListener);
    }

    private OnContentRefreshDelegateImpl(OnContentRefreshListener onContentRefreshListener) {
        this.mListener = new OnContentRefreshListenerStub(onContentRefreshListener);
    }

    private OnContentRefreshDelegateImpl() {
        this.mListener = null;
    }

    public static class OnContentRefreshListenerStub extends IOnContentRefreshListener.Stub {
        private final OnContentRefreshListener mOnContentRefreshListener;

        public OnContentRefreshListenerStub(OnContentRefreshListener onContentRefreshListener) {
        }

        @Override // androidx.car.app.model.IOnContentRefreshListener
        public void onContentRefreshRequested(IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onClick", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.OnContentRefreshDelegateImpl$OnContentRefreshListenerStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return OnContentRefreshDelegateImpl.OnContentRefreshListenerStub.m1616$r8$lambda$HDd2U4FE66IM1uZFtMhRKdnpR8(this.f$0);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$HDd2U4FE66IM1uZFtMhRK-dnpR8, reason: not valid java name */
        public static /* synthetic */ Object m1616$r8$lambda$HDd2U4FE66IM1uZFtMhRKdnpR8(OnContentRefreshListenerStub onContentRefreshListenerStub) {
            onContentRefreshListenerStub.getClass();
            throw null;
        }
    }
}
