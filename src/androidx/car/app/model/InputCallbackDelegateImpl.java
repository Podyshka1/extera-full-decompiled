package androidx.car.app.model;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.model.IInputCallback;
import androidx.car.app.model.InputCallbackDelegateImpl;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public class InputCallbackDelegateImpl implements InputCallbackDelegate {
    private final IInputCallback mCallback;

    public void sendInputSubmitted(String str, OnDoneCallback onDoneCallback) {
        try {
            IInputCallback iInputCallback = this.mCallback;
            Objects.requireNonNull(iInputCallback);
            iInputCallback.onInputSubmitted(str, RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
        }
    }

    public void sendInputTextChanged(String str, OnDoneCallback onDoneCallback) {
        try {
            IInputCallback iInputCallback = this.mCallback;
            Objects.requireNonNull(iInputCallback);
            iInputCallback.onInputTextChanged(str, RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
        }
    }

    @SuppressLint({"ExecutorRegistration"})
    public static InputCallbackDelegate create(InputCallback inputCallback) {
        Objects.requireNonNull(inputCallback);
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(inputCallback);
        return new InputCallbackDelegateImpl(null);
    }

    private InputCallbackDelegateImpl(InputCallback inputCallback) {
        this.mCallback = new OnInputCallbackStub(inputCallback);
    }

    private InputCallbackDelegateImpl() {
        this.mCallback = null;
    }

    public static class OnInputCallbackStub extends IInputCallback.Stub {
        private final InputCallback mCallback;

        public OnInputCallbackStub(InputCallback inputCallback) {
        }

        @Override // androidx.car.app.model.IInputCallback
        public void onInputSubmitted(final String str, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onInputSubmitted", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda1
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return InputCallbackDelegateImpl.OnInputCallbackStub.$r8$lambda$N58f7Tz5aHCUixbEqJYdd2mIpbI(this.f$0, str);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$N58f7Tz5aHCUixbEqJYdd2mIpbI(OnInputCallbackStub onInputCallbackStub, String str) {
            onInputCallbackStub.getClass();
            throw null;
        }

        @Override // androidx.car.app.model.IInputCallback
        public void onInputTextChanged(final String str, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onInputTextChanged", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return InputCallbackDelegateImpl.OnInputCallbackStub.$r8$lambda$g_2c3vvJ8FsmK7acrkLVEWJpcwE(this.f$0, str);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$g_2c3vvJ8FsmK7acrkLVEWJpcwE(OnInputCallbackStub onInputCallbackStub, String str) {
            onInputCallbackStub.getClass();
            throw null;
        }
    }
}
