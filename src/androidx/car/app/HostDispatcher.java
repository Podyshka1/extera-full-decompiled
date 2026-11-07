package androidx.car.app;

import android.os.IInterface;
import android.util.Log;
import androidx.car.app.IAppHost;
import androidx.car.app.constraints.IConstraintHost;
import androidx.car.app.media.IMediaPlaybackHost;
import androidx.car.app.navigation.INavigationHost;
import androidx.car.app.suggestion.ISuggestionHost;
import androidx.car.app.utils.RemoteUtils;
import androidx.car.app.utils.ThreadUtils;
import com.chaquo.python.internal.Common;
import java.security.InvalidParameterException;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class HostDispatcher {
    private IAppHost mAppHost;
    private ICarHost mCarHost;
    private IConstraintHost mConstraintHost;
    private INavigationHost mNavigationHost;
    private IMediaPlaybackHost mPlaybackMediaHost;
    private ISuggestionHost mSuggestionHost;

    public <ServiceT, ReturnT> ReturnT dispatchForResult(final String str, final String str2, final HostCall<ServiceT, ReturnT> hostCall) {
        return (ReturnT) RemoteUtils.dispatchCallToHostForResult(str2, new RemoteUtils.RemoteCall() { // from class: androidx.car.app.HostDispatcher$$ExternalSyntheticLambda1
            @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
            public final Object call() {
                return HostDispatcher.m1758$r8$lambda$xLnTW9SXkfbULQApW6HLJtW2U(this.f$0, str, str2, hostCall);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$x-LnTW9-SXkfbULQApW6HLJtW2U, reason: not valid java name */
    public static /* synthetic */ Object m1758$r8$lambda$xLnTW9SXkfbULQApW6HLJtW2U(HostDispatcher hostDispatcher, String str, String str2, HostCall hostCall) {
        IInterface host = hostDispatcher.getHost(str);
        if (host == null) {
            Log.e("CarApp.Dispatch", "Could not retrieve host while dispatching call " + str2);
            return null;
        }
        return hostCall.dispatch(host);
    }

    public <ServiceT, ReturnT> void dispatch(final String str, final String str2, final HostCall<ServiceT, ReturnT> hostCall) {
        RemoteUtils.dispatchCallToHost(str2, new RemoteUtils.RemoteCall() { // from class: androidx.car.app.HostDispatcher$$ExternalSyntheticLambda0
            @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
            public final Object call() {
                return HostDispatcher.$r8$lambda$s4xJ5LW05J7W13ehpZbJ4VKDjTE(this.f$0, str, str2, hostCall);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$s4xJ5LW05J7W13ehpZbJ4VKDjTE(HostDispatcher hostDispatcher, String str, String str2, HostCall hostCall) {
        IInterface host = hostDispatcher.getHost(str);
        if (host == null) {
            Log.e("CarApp.Dispatch", "Could not retrieve host while dispatching call " + str2);
            return null;
        }
        hostCall.dispatch(host);
        return null;
    }

    public void setCarHost(ICarHost iCarHost) {
        ThreadUtils.checkMainThread();
        resetHosts();
        this.mCarHost = iCarHost;
    }

    public void resetHosts() {
        ThreadUtils.checkMainThread();
        this.mCarHost = null;
        this.mAppHost = null;
        this.mNavigationHost = null;
    }

    public IInterface getHost(String str) {
        if (this.mCarHost == null) {
            Log.e("CarApp.Dispatch", "Host is not bound when attempting to retrieve host service");
            return null;
        }
        str.getClass();
        switch (str) {
            case "constraints":
                if (this.mConstraintHost == null) {
                    this.mConstraintHost = (IConstraintHost) RemoteUtils.dispatchCallToHostForResult("getHost(Constraints)", new RemoteUtils.RemoteCall() { // from class: androidx.car.app.HostDispatcher$$ExternalSyntheticLambda3
                        @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
                        public final Object call() {
                            return HostDispatcher.$r8$lambda$hTonFC9rqQH4rH5typAaZw3qlJU(this.f$0);
                        }
                    });
                }
                return this.mConstraintHost;
            case "app":
                if (this.mAppHost == null) {
                    this.mAppHost = (IAppHost) RemoteUtils.dispatchCallToHostForResult("getHost(App)", new RemoteUtils.RemoteCall() { // from class: androidx.car.app.HostDispatcher$$ExternalSyntheticLambda2
                        @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
                        public final Object call() {
                            return HostDispatcher.m1757$r8$lambda$qGjqOY3HWLrXXhCaw0gszQD800(this.f$0);
                        }
                    });
                }
                return this.mAppHost;
            case "car":
                return this.mCarHost;
            case "suggestion":
                if (this.mSuggestionHost == null) {
                    this.mSuggestionHost = (ISuggestionHost) RemoteUtils.dispatchCallToHostForResult("getHost(Suggestion)", new RemoteUtils.RemoteCall() { // from class: androidx.car.app.HostDispatcher$$ExternalSyntheticLambda4
                        @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
                        public final Object call() {
                            return HostDispatcher.$r8$lambda$j8DL6KSzD_S_fWmiSleKmSJ8GSQ(this.f$0);
                        }
                    });
                }
                return this.mSuggestionHost;
            case "media_playback":
                if (this.mPlaybackMediaHost == null) {
                    this.mPlaybackMediaHost = (IMediaPlaybackHost) RemoteUtils.dispatchCallToHostForResult("getHost(Media)", new RemoteUtils.RemoteCall() { // from class: androidx.car.app.HostDispatcher$$ExternalSyntheticLambda5
                        @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
                        public final Object call() {
                            return HostDispatcher.$r8$lambda$8w5CDveJSdeBcrRSDyC0QplFTHg(this.f$0);
                        }
                    });
                }
                return this.mPlaybackMediaHost;
            case "navigation":
                if (this.mNavigationHost == null) {
                    this.mNavigationHost = (INavigationHost) RemoteUtils.dispatchCallToHostForResult("getHost(Navigation)", new RemoteUtils.RemoteCall() { // from class: androidx.car.app.HostDispatcher$$ExternalSyntheticLambda6
                        @Override // androidx.car.app.utils.RemoteUtils.RemoteCall
                        public final Object call() {
                            return HostDispatcher.$r8$lambda$JbnOiXNnUGgRwrRQRy5aIgSrvN0(this.f$0);
                        }
                    });
                }
                return this.mNavigationHost;
            default:
                throw new InvalidParameterException("Invalid host type: ".concat(str));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$qGjqOY3HWLrXXhC-aw0gszQD800, reason: not valid java name */
    public static /* synthetic */ IAppHost m1757$r8$lambda$qGjqOY3HWLrXXhCaw0gszQD800(HostDispatcher hostDispatcher) {
        ICarHost iCarHost = hostDispatcher.mCarHost;
        Objects.requireNonNull(iCarHost);
        return IAppHost.Stub.asInterface(iCarHost.getHost(Common.ASSET_APP));
    }

    public static /* synthetic */ IConstraintHost $r8$lambda$hTonFC9rqQH4rH5typAaZw3qlJU(HostDispatcher hostDispatcher) {
        ICarHost iCarHost = hostDispatcher.mCarHost;
        Objects.requireNonNull(iCarHost);
        return IConstraintHost.Stub.asInterface(iCarHost.getHost("constraints"));
    }

    public static /* synthetic */ ISuggestionHost $r8$lambda$j8DL6KSzD_S_fWmiSleKmSJ8GSQ(HostDispatcher hostDispatcher) {
        ICarHost iCarHost = hostDispatcher.mCarHost;
        Objects.requireNonNull(iCarHost);
        return ISuggestionHost.Stub.asInterface(iCarHost.getHost("suggestion"));
    }

    public static /* synthetic */ IMediaPlaybackHost $r8$lambda$8w5CDveJSdeBcrRSDyC0QplFTHg(HostDispatcher hostDispatcher) {
        ICarHost iCarHost = hostDispatcher.mCarHost;
        Objects.requireNonNull(iCarHost);
        return IMediaPlaybackHost.Stub.asInterface(iCarHost.getHost("media_playback"));
    }

    public static /* synthetic */ INavigationHost $r8$lambda$JbnOiXNnUGgRwrRQRy5aIgSrvN0(HostDispatcher hostDispatcher) {
        ICarHost iCarHost = hostDispatcher.mCarHost;
        Objects.requireNonNull(iCarHost);
        return INavigationHost.Stub.asInterface(iCarHost.getHost("navigation"));
    }
}
