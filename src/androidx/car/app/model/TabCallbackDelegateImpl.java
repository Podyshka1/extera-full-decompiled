package androidx.car.app.model;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.model.ITabCallback;
import androidx.car.app.model.TabCallbackDelegateImpl;
import androidx.car.app.model.TabTemplate;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public class TabCallbackDelegateImpl implements TabCallbackDelegate {
    private final ITabCallback mStubCallback;

    public void sendTabSelected(String str, OnDoneCallback onDoneCallback) {
        try {
            ITabCallback iTabCallback = this.mStubCallback;
            Objects.requireNonNull(iTabCallback);
            iTabCallback.onTabSelected(str, RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    private TabCallbackDelegateImpl(TabTemplate.TabCallback tabCallback) {
        this.mStubCallback = new TabCallbackStub(tabCallback);
    }

    private TabCallbackDelegateImpl() {
        this.mStubCallback = null;
    }

    @SuppressLint({"ExecutorRegistration"})
    public static TabCallbackDelegate create(TabTemplate.TabCallback tabCallback) {
        return new TabCallbackDelegateImpl(tabCallback);
    }

    public static class TabCallbackStub extends ITabCallback.Stub {
        private final TabTemplate.TabCallback mCallback;

        public TabCallbackStub(TabTemplate.TabCallback tabCallback) {
        }

        @Override // androidx.car.app.model.ITabCallback
        public void onTabSelected(final String str, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onTabSelected", new RemoteUtils.HostCall() { // from class: androidx.car.app.model.TabCallbackDelegateImpl$TabCallbackStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return TabCallbackDelegateImpl.TabCallbackStub.m1618$r8$lambda$yKaF6NpaWih2DzbYbQfKX2X_A(this.f$0, str);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$yKaF6NpaWih2D-zb-YbQfKX2X_A, reason: not valid java name */
        public static /* synthetic */ Object m1618$r8$lambda$yKaF6NpaWih2DzbYbQfKX2X_A(TabCallbackStub tabCallbackStub, String str) {
            tabCallbackStub.getClass();
            throw null;
        }
    }
}
