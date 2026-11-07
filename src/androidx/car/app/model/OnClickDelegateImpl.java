package androidx.car.app.model;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.model.IOnClickListener;
import androidx.car.app.model.OnClickDelegateImpl;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public class OnClickDelegateImpl implements OnClickDelegate {
    private final boolean mIsParkedOnly;
    private final IOnClickListener mListener;

    @Override // androidx.car.app.model.OnClickDelegate
    public boolean isParkedOnly() {
        return this.mIsParkedOnly;
    }

    public void sendClick(OnDoneCallback onDoneCallback) {
        try {
            IOnClickListener iOnClickListener = this.mListener;
            Objects.requireNonNull(iOnClickListener);
            iOnClickListener.onClick(RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
        }
    }

    @SuppressLint({"ExecutorRegistration"})
    public static OnClickDelegate create(OnClickListener onClickListener) {
        return new OnClickDelegateImpl(onClickListener, onClickListener instanceof ParkedOnlyOnClickListener);
    }

    private OnClickDelegateImpl(OnClickListener onClickListener, boolean z) {
        this.mListener = new OnClickListenerStub(onClickListener);
        this.mIsParkedOnly = z;
    }

    private OnClickDelegateImpl() {
        this.mListener = null;
        this.mIsParkedOnly = false;
    }

    public static class OnClickListenerStub extends IOnClickListener.Stub {
        private final OnClickListener mOnClickListener;

        public OnClickListenerStub(OnClickListener onClickListener) {
            this.mOnClickListener = onClickListener;
        }

        @Override // androidx.car.app.model.IOnClickListener
        public void onClick(IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onClick", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.OnClickDelegateImpl$OnClickListenerStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return OnClickDelegateImpl.OnClickListenerStub.m1765$r8$lambda$XNCP4ktZ0uqZhJZBLJ1aOuuP5k(this.f$0);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$XNCP4ktZ0-uqZhJZBLJ1aOuuP5k, reason: not valid java name */
        public static /* synthetic */ Object m1765$r8$lambda$XNCP4ktZ0uqZhJZBLJ1aOuuP5k(OnClickListenerStub onClickListenerStub) {
            onClickListenerStub.mOnClickListener.onClick();
            return null;
        }
    }
}
