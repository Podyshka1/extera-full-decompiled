package androidx.car.app.model;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.model.IOnSelectedListener;
import androidx.car.app.model.ItemList;
import androidx.car.app.model.OnSelectedDelegateImpl;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public class OnSelectedDelegateImpl implements OnSelectedDelegate {
    private final IOnSelectedListener mStub;

    public void sendSelected(int i, OnDoneCallback onDoneCallback) {
        try {
            IOnSelectedListener iOnSelectedListener = this.mStub;
            Objects.requireNonNull(iOnSelectedListener);
            iOnSelectedListener.onSelected(i, RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    private OnSelectedDelegateImpl(ItemList.OnSelectedListener onSelectedListener) {
        this.mStub = new OnSelectedListenerStub(onSelectedListener);
    }

    private OnSelectedDelegateImpl() {
        this.mStub = null;
    }

    @SuppressLint({"ExecutorRegistration"})
    public static OnSelectedDelegate create(ItemList.OnSelectedListener onSelectedListener) {
        return new OnSelectedDelegateImpl(onSelectedListener);
    }

    public static class OnSelectedListenerStub extends IOnSelectedListener.Stub {
        private final ItemList.OnSelectedListener mListener;

        public OnSelectedListenerStub(ItemList.OnSelectedListener onSelectedListener) {
        }

        @Override // androidx.car.app.model.IOnSelectedListener
        public void onSelected(final int i, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onSelectedListener", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.OnSelectedDelegateImpl$OnSelectedListenerStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return OnSelectedDelegateImpl.OnSelectedListenerStub.$r8$lambda$RU_djcpI4ucKClcsLCOI3qeLGLM(this.f$0, i);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$RU_djcpI4ucKClcsLCOI3qeLGLM(OnSelectedListenerStub onSelectedListenerStub, int i) {
            onSelectedListenerStub.getClass();
            throw null;
        }
    }
}
