package androidx.car.app.model;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.model.IOnItemVisibilityChangedListener;
import androidx.car.app.model.ItemList;
import androidx.car.app.model.OnItemVisibilityChangedDelegateImpl;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public class OnItemVisibilityChangedDelegateImpl implements OnItemVisibilityChangedDelegate {
    private final IOnItemVisibilityChangedListener mStub;

    public void sendItemVisibilityChanged(int i, int i2, OnDoneCallback onDoneCallback) {
        try {
            IOnItemVisibilityChangedListener iOnItemVisibilityChangedListener = this.mStub;
            Objects.requireNonNull(iOnItemVisibilityChangedListener);
            iOnItemVisibilityChangedListener.onItemVisibilityChanged(i, i2, RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    private OnItemVisibilityChangedDelegateImpl(ItemList.OnItemVisibilityChangedListener onItemVisibilityChangedListener) {
        this.mStub = new OnItemVisibilityChangedListenerStub(onItemVisibilityChangedListener);
    }

    private OnItemVisibilityChangedDelegateImpl() {
        this.mStub = null;
    }

    @SuppressLint({"ExecutorRegistration"})
    public static OnItemVisibilityChangedDelegate create(ItemList.OnItemVisibilityChangedListener onItemVisibilityChangedListener) {
        return new OnItemVisibilityChangedDelegateImpl(onItemVisibilityChangedListener);
    }

    public static class OnItemVisibilityChangedListenerStub extends IOnItemVisibilityChangedListener.Stub {
        private final ItemList.OnItemVisibilityChangedListener mListener;

        public OnItemVisibilityChangedListenerStub(ItemList.OnItemVisibilityChangedListener onItemVisibilityChangedListener) {
        }

        @Override // androidx.car.app.model.IOnItemVisibilityChangedListener
        public void onItemVisibilityChanged(final int i, final int i2, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onItemVisibilityChanged", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.OnItemVisibilityChangedDelegateImpl$OnItemVisibilityChangedListenerStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return OnItemVisibilityChangedDelegateImpl.OnItemVisibilityChangedListenerStub.m1617$r8$lambda$DQ2dPNndKRSDvlhWIUdtzTOBak(this.f$0, i, i2);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$DQ2dP-NndKRSDvlhWIUdtzTOBak, reason: not valid java name */
        public static /* synthetic */ Object m1617$r8$lambda$DQ2dPNndKRSDvlhWIUdtzTOBak(OnItemVisibilityChangedListenerStub onItemVisibilityChangedListenerStub, int i, int i2) {
            onItemVisibilityChangedListenerStub.getClass();
            throw null;
        }
    }
}
