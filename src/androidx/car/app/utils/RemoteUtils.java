package androidx.car.app.utils;

import android.graphics.Rect;
import android.os.RemoteException;
import android.util.Log;
import androidx.car.app.FailureResponse;
import androidx.car.app.HostException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.ISurfaceCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.SurfaceCallback;
import androidx.car.app.serialization.Bundleable;
import androidx.car.app.serialization.BundlerException;
import androidx.car.app.utils.RemoteUtils;
import androidx.view.Lifecycle;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RemoteUtils {

    public interface HostCall {
        Object dispatch();
    }

    public interface RemoteCall<ReturnT> {
        ReturnT call();
    }

    public static <ReturnT> ReturnT dispatchCallToHostForResult(String str, RemoteCall<ReturnT> remoteCall) {
        try {
            if (Log.isLoggable("CarApp", 3)) {
                Log.d("CarApp", "Dispatching call " + str + " to host");
            }
            return remoteCall.call();
        } catch (SecurityException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw new HostException("Remote " + str + " call failed", e2);
        }
    }

    public static void dispatchCallToHost(String str, RemoteCall<?> remoteCall) {
        try {
            dispatchCallToHostForResult(str, remoteCall);
        } catch (RemoteException e) {
            Log.e("CarApp.Dispatch", "Host unresponsive when dispatching call " + str, e);
        }
    }

    public static void dispatchCallFromHost(final IOnDoneCallback iOnDoneCallback, final String str, final HostCall hostCall) {
        ThreadUtils.runOnMain(new Runnable() { // from class: androidx.car.app.utils.RemoteUtils$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.$r8$lambda$kZaNPbfuaKBY2Ftzn027n80YsOA(iOnDoneCallback, str, hostCall);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$kZaNPbfuaKBY2Ftzn027n80YsOA(IOnDoneCallback iOnDoneCallback, String str, HostCall hostCall) {
        try {
            sendSuccessResponseToHost(iOnDoneCallback, str, hostCall.dispatch());
        } catch (BundlerException e) {
            sendFailureResponseToHost(iOnDoneCallback, str, e);
        } catch (RuntimeException e2) {
            sendFailureResponseToHost(iOnDoneCallback, str, e2);
            HttpUrl$$ExternalSyntheticBUOutline0.m899m(e2);
        }
    }

    public static void dispatchCallFromHost(final Lifecycle lifecycle, final IOnDoneCallback iOnDoneCallback, final String str, final HostCall hostCall) {
        ThreadUtils.runOnMain(new Runnable() { // from class: androidx.car.app.utils.RemoteUtils$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.m1717$r8$lambda$1ADQpFpr9d0_tX7AcIVXhvtU7o(lifecycle, iOnDoneCallback, str, hostCall);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$1ADQp-Fpr9d0_tX7AcIVXhvtU7o, reason: not valid java name */
    public static /* synthetic */ void m1717$r8$lambda$1ADQpFpr9d0_tX7AcIVXhvtU7o(Lifecycle lifecycle, IOnDoneCallback iOnDoneCallback, String str, HostCall hostCall) {
        if (lifecycle == null || !lifecycle.getState().isAtLeast(Lifecycle.State.CREATED)) {
            sendFailureResponseToHost(iOnDoneCallback, str, new IllegalStateException("Lifecycle is not at least created when dispatching " + hostCall));
            return;
        }
        dispatchCallFromHost(iOnDoneCallback, str, hostCall);
    }

    public static void dispatchCallFromHost(final Lifecycle lifecycle, final String str, final HostCall hostCall) {
        ThreadUtils.runOnMain(new Runnable() { // from class: androidx.car.app.utils.RemoteUtils$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.m1719$r8$lambda$U6p5YSQvLJKecNuPicYtfyl6Fc(lifecycle, hostCall, str);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$U6p5YSQvLJKecNuPicYtfyl-6Fc, reason: not valid java name */
    public static /* synthetic */ void m1719$r8$lambda$U6p5YSQvLJKecNuPicYtfyl6Fc(Lifecycle lifecycle, HostCall hostCall, String str) {
        if (lifecycle != null) {
            try {
                if (lifecycle.getState().isAtLeast(Lifecycle.State.CREATED)) {
                    hostCall.dispatch();
                    return;
                }
            } catch (BundlerException e) {
                Log.e("CarApp.Dispatch", "Serialization failure in " + str, e);
                return;
            }
        }
        Log.w("CarApp.Dispatch", "Lifecycle is not at least created when dispatching " + hostCall);
    }

    public static void sendSuccessResponseToHost(final IOnDoneCallback iOnDoneCallback, final String str, final Object obj) {
        dispatchCallToHost(str + " onSuccess", new RemoteCall() { // from class: androidx.car.app.utils.RemoteUtils$$ExternalSyntheticLambda0
            @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
            public final Object call() {
                return RemoteUtils.$r8$lambda$z9ri9Ugtm70byNiId8lWSRX4Qco(iOnDoneCallback, obj, str);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$z9ri9Ugtm70byNiId8lWSRX4Qco(IOnDoneCallback iOnDoneCallback, Object obj, String str) {
        Bundleable bundleableCreate;
        if (obj == null) {
            bundleableCreate = null;
        } else {
            try {
                bundleableCreate = Bundleable.create(obj);
            } catch (BundlerException e) {
                sendFailureResponseToHost(iOnDoneCallback, str, e);
                return null;
            }
        }
        iOnDoneCallback.onSuccess(bundleableCreate);
        return null;
    }

    public static void sendFailureResponseToHost(final IOnDoneCallback iOnDoneCallback, final String str, final Throwable th) {
        dispatchCallToHost(str + " onFailure", new RemoteCall() { // from class: androidx.car.app.utils.RemoteUtils$$ExternalSyntheticLambda1
            @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
            public final Object call() {
                return RemoteUtils.m1718$r8$lambda$Nik9_MASBYx4cvWP3LEmxjuGes(iOnDoneCallback, th, str);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Nik9_MASBYx-4cvWP3LEmxjuGes, reason: not valid java name */
    public static /* synthetic */ Object m1718$r8$lambda$Nik9_MASBYx4cvWP3LEmxjuGes(IOnDoneCallback iOnDoneCallback, Throwable th, String str) {
        try {
            iOnDoneCallback.onFailure(Bundleable.create(new FailureResponse(th)));
            return null;
        } catch (BundlerException e) {
            Log.e("CarApp.Dispatch", "Serialization failure in " + str, e);
            return null;
        }
    }

    public static IOnDoneCallback createOnDoneCallbackStub(OnDoneCallback onDoneCallback) {
        return new IOnDoneCallback.Stub(onDoneCallback) { // from class: androidx.car.app.utils.RemoteUtils.1
            final /* synthetic */ OnDoneCallback val$callback;

            @Override // androidx.car.app.IOnDoneCallback
            public void onSuccess(Bundleable bundleable) {
                throw null;
            }

            @Override // androidx.car.app.IOnDoneCallback
            public void onFailure(Bundleable bundleable) {
                throw null;
            }
        };
    }

    public static class SurfaceCallbackStub extends ISurfaceCallback.Stub {
        private final Lifecycle mLifecycle;
        private final SurfaceCallback mSurfaceCallback;

        public SurfaceCallbackStub(Lifecycle lifecycle, SurfaceCallback surfaceCallback) {
            this.mLifecycle = lifecycle;
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onSurfaceAvailable(final Bundleable bundleable, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(this.mLifecycle, iOnDoneCallback, "onSurfaceAvailable", new HostCall() { // from class: androidx.car.app.utils.RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda3
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return RemoteUtils.SurfaceCallbackStub.m1725$r8$lambda$vopP5bi72VxlTE6zvuFxmsgSuw(this.f$0, bundleable);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$vopP5bi72VxlTE6zvu-FxmsgSuw, reason: not valid java name */
        public static /* synthetic */ Object m1725$r8$lambda$vopP5bi72VxlTE6zvuFxmsgSuw(SurfaceCallbackStub surfaceCallbackStub, Bundleable bundleable) {
            surfaceCallbackStub.getClass();
            throw null;
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onVisibleAreaChanged(final Rect rect, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(this.mLifecycle, iOnDoneCallback, "onVisibleAreaChanged", new HostCall() { // from class: androidx.car.app.utils.RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda2
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return RemoteUtils.SurfaceCallbackStub.m1726$r8$lambda$weX9liOQmXme7_5iEcnBgJaQiI(this.f$0, rect);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$weX9liOQmXme7_5iEcnBgJa-QiI, reason: not valid java name */
        public static /* synthetic */ Object m1726$r8$lambda$weX9liOQmXme7_5iEcnBgJaQiI(SurfaceCallbackStub surfaceCallbackStub, Rect rect) {
            surfaceCallbackStub.getClass();
            throw null;
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onStableAreaChanged(final Rect rect, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(this.mLifecycle, iOnDoneCallback, "onStableAreaChanged", new HostCall() { // from class: androidx.car.app.utils.RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda7
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return RemoteUtils.SurfaceCallbackStub.m1720$r8$lambda$6OgX2XQs0QDCABjDrkCGawgkFA(this.f$0, rect);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$6OgX2XQs0-QDCABjDrkCGawgkFA, reason: not valid java name */
        public static /* synthetic */ Object m1720$r8$lambda$6OgX2XQs0QDCABjDrkCGawgkFA(SurfaceCallbackStub surfaceCallbackStub, Rect rect) {
            surfaceCallbackStub.getClass();
            throw null;
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onSurfaceDestroyed(final Bundleable bundleable, IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(this.mLifecycle, iOnDoneCallback, "onSurfaceDestroyed", new HostCall() { // from class: androidx.car.app.utils.RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return RemoteUtils.SurfaceCallbackStub.$r8$lambda$EN7iiik0xJGNxAoKLGOEz1hsg78(this.f$0, bundleable);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$EN7iiik0xJGNxAoKLGOEz1hsg78(SurfaceCallbackStub surfaceCallbackStub, Bundleable bundleable) {
            surfaceCallbackStub.getClass();
            throw null;
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onScroll(final float f, final float f2) {
            RemoteUtils.dispatchCallFromHost(this.mLifecycle, "onScroll", new HostCall() { // from class: androidx.car.app.utils.RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda4
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return RemoteUtils.SurfaceCallbackStub.m1722$r8$lambda$IUFGAu6lp2tlrKusT1H9PKOCac(this.f$0, f, f2);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$IUFGA-u6lp2tlrKusT1H9PKOCac, reason: not valid java name */
        public static /* synthetic */ Object m1722$r8$lambda$IUFGAu6lp2tlrKusT1H9PKOCac(SurfaceCallbackStub surfaceCallbackStub, float f, float f2) {
            surfaceCallbackStub.getClass();
            throw null;
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onFling(final float f, final float f2) {
            RemoteUtils.dispatchCallFromHost(this.mLifecycle, "onFling", new HostCall() { // from class: androidx.car.app.utils.RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda5
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return RemoteUtils.SurfaceCallbackStub.m1723$r8$lambda$MzK6fExmBHGOgqo9TpejdgnwIM(this.f$0, f, f2);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$MzK6fExmBHGOgqo-9TpejdgnwIM, reason: not valid java name */
        public static /* synthetic */ Object m1723$r8$lambda$MzK6fExmBHGOgqo9TpejdgnwIM(SurfaceCallbackStub surfaceCallbackStub, float f, float f2) {
            surfaceCallbackStub.getClass();
            throw null;
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onScale(final float f, final float f2, final float f3) {
            RemoteUtils.dispatchCallFromHost(this.mLifecycle, "onScale", new HostCall() { // from class: androidx.car.app.utils.RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda6
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return RemoteUtils.SurfaceCallbackStub.m1724$r8$lambda$sYTQYPXw0DtzoyltSLR4BcyKuY(this.f$0, f, f2, f3);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$sYTQYPXw0DtzoyltSLR4B-cyKuY, reason: not valid java name */
        public static /* synthetic */ Object m1724$r8$lambda$sYTQYPXw0DtzoyltSLR4BcyKuY(SurfaceCallbackStub surfaceCallbackStub, float f, float f2, float f3) {
            surfaceCallbackStub.getClass();
            throw null;
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onClick(final float f, final float f2) {
            RemoteUtils.dispatchCallFromHost(this.mLifecycle, "onClick", new HostCall() { // from class: androidx.car.app.utils.RemoteUtils$SurfaceCallbackStub$$ExternalSyntheticLambda1
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return RemoteUtils.SurfaceCallbackStub.m1721$r8$lambda$7I2Zivv0E6goRdBlvK60jyTbP8(this.f$0, f, f2);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$7I2Zivv0E-6goRdBlvK60jyTbP8, reason: not valid java name */
        public static /* synthetic */ Object m1721$r8$lambda$7I2Zivv0E6goRdBlvK60jyTbP8(SurfaceCallbackStub surfaceCallbackStub, float f, float f2) {
            surfaceCallbackStub.getClass();
            throw null;
        }
    }
}
