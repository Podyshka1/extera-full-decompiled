package androidx.car.app.model;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.model.AlertCallbackDelegateImpl;
import androidx.car.app.model.IAlertCallback;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public class AlertCallbackDelegateImpl implements AlertCallbackDelegate {
    private final IAlertCallback mCallback;

    @SuppressLint({"ExecutorRegistration"})
    public static AlertCallbackDelegate create(AlertCallback alertCallback) {
        return new AlertCallbackDelegateImpl(alertCallback);
    }

    private AlertCallbackDelegateImpl(AlertCallback alertCallback) {
        this.mCallback = new AlertCallbackStub(alertCallback);
    }

    private AlertCallbackDelegateImpl() {
        this.mCallback = null;
    }

    public void sendCancel(int i, OnDoneCallback onDoneCallback) {
        try {
            IAlertCallback iAlertCallback = this.mCallback;
            Objects.requireNonNull(iAlertCallback);
            iAlertCallback.onAlertCancelled(i, RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    public void sendDismiss(OnDoneCallback onDoneCallback) {
        try {
            IAlertCallback iAlertCallback = this.mCallback;
            Objects.requireNonNull(iAlertCallback);
            iAlertCallback.onAlertDismissed(RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    public static class AlertCallbackStub extends IAlertCallback.Stub {
        private final AlertCallback mCallback;

        public AlertCallbackStub(AlertCallback alertCallback) {
        }

        @Override // androidx.car.app.model.IAlertCallback
        public void onAlertCancelled(final int i, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onCancel", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.AlertCallbackDelegateImpl$AlertCallbackStub$$ExternalSyntheticLambda1
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return AlertCallbackDelegateImpl.AlertCallbackStub.m1614$r8$lambda$KnQFnNRyUyR5iddrT6wu_j5U(this.f$0, i);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$KnQ-FnNRyUyR5iddrT6-wu_j5-U, reason: not valid java name */
        public static /* synthetic */ Object m1614$r8$lambda$KnQFnNRyUyR5iddrT6wu_j5U(AlertCallbackStub alertCallbackStub, int i) {
            alertCallbackStub.getClass();
            throw null;
        }

        @Override // androidx.car.app.model.IAlertCallback
        public void onAlertDismissed(IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onDismiss", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.AlertCallbackDelegateImpl$AlertCallbackStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return AlertCallbackDelegateImpl.AlertCallbackStub.$r8$lambda$TaRFdnKZJVRXV72MsEkaaZoD3dg(this.f$0);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$TaRFdnKZJVRXV72MsEkaaZoD3dg(AlertCallbackStub alertCallbackStub) {
            alertCallbackStub.getClass();
            throw null;
        }
    }
}
