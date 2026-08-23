package androidx.mediarouter.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import androidx.core.util.ObjectsCompat;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MediaRouteProvider {
    static final int MSG_DELIVER_DESCRIPTOR_CHANGED = 1;
    static final int MSG_DELIVER_DISCOVERY_REQUEST_CHANGED = 2;
    private Callback mCallback;
    private final Context mContext;
    private MediaRouteProviderDescriptor mDescriptor;
    private MediaRouteDiscoveryRequest mDiscoveryRequest;
    private final ProviderHandler mHandler;
    private final ProviderMetadata mMetadata;
    private boolean mPendingDescriptorChange;
    private boolean mPendingDiscoveryRequestChange;

    public static abstract class Callback {
        public void onDescriptorChanged(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        }
    }

    public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
    }

    public MediaRouteProvider(Context context) {
        this(context, null);
    }

    public MediaRouteProvider(Context context, ProviderMetadata providerMetadata) {
        this.mHandler = new ProviderHandler();
        if (context == null) {
            f$$ExternalSyntheticBUOutline1.m178m("context must not be null");
            throw null;
        }
        this.mContext = context;
        if (providerMetadata == null) {
            this.mMetadata = new ProviderMetadata(new ComponentName(context, getClass()));
        } else {
            this.mMetadata = providerMetadata;
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Handler getHandler() {
        return this.mHandler;
    }

    public final ProviderMetadata getMetadata() {
        return this.mMetadata;
    }

    public final void setCallback(Callback callback) {
        MediaRouter.checkCallingThread();
        this.mCallback = callback;
    }

    public final MediaRouteDiscoveryRequest getDiscoveryRequest() {
        return this.mDiscoveryRequest;
    }

    public final void setDiscoveryRequest(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        MediaRouter.checkCallingThread();
        if (ObjectsCompat.equals(this.mDiscoveryRequest, mediaRouteDiscoveryRequest)) {
            return;
        }
        setDiscoveryRequestInternal(mediaRouteDiscoveryRequest);
    }

    public final void setDiscoveryRequestInternal(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        this.mDiscoveryRequest = mediaRouteDiscoveryRequest;
        if (this.mPendingDiscoveryRequestChange) {
            return;
        }
        this.mPendingDiscoveryRequestChange = true;
        this.mHandler.sendEmptyMessage(2);
    }

    public final void deliverDiscoveryRequestChanged() {
        this.mPendingDiscoveryRequestChange = false;
        onDiscoveryRequestChanged(this.mDiscoveryRequest);
    }

    public final MediaRouteProviderDescriptor getDescriptor() {
        return this.mDescriptor;
    }

    public final void setDescriptor(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        MediaRouter.checkCallingThread();
        if (this.mDescriptor != mediaRouteProviderDescriptor) {
            this.mDescriptor = mediaRouteProviderDescriptor;
            if (this.mPendingDescriptorChange) {
                return;
            }
            this.mPendingDescriptorChange = true;
            this.mHandler.sendEmptyMessage(1);
        }
    }

    public final void deliverDescriptorChanged() {
        this.mPendingDescriptorChange = false;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onDescriptorChanged(this, this.mDescriptor);
        }
    }

    public RouteController onCreateRouteController(String str, RouteControllerOptions routeControllerOptions) {
        return onCreateRouteController(str);
    }

    public RouteController onCreateRouteController(String str) {
        if (str != null) {
            return null;
        }
        f$$ExternalSyntheticBUOutline1.m178m("routeId cannot be null");
        return null;
    }

    public RouteController onCreateRouteController(String str, String str2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("routeId cannot be null");
            return null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("routeGroupId cannot be null");
            return null;
        }
        return onCreateRouteController(str, RouteControllerOptions.EMPTY);
    }

    public DynamicGroupRouteController onCreateDynamicGroupRouteController(String str, RouteControllerOptions routeControllerOptions) {
        return onCreateDynamicGroupRouteController(str);
    }

    public DynamicGroupRouteController onCreateDynamicGroupRouteController(String str) {
        if (str != null) {
            return null;
        }
        f$$ExternalSyntheticBUOutline1.m178m("initialMemberRouteId cannot be null.");
        return null;
    }

    public static final class ProviderMetadata {
        private final ComponentName mComponentName;

        public ProviderMetadata(ComponentName componentName) {
            if (componentName == null) {
                f$$ExternalSyntheticBUOutline1.m178m("componentName must not be null");
                throw null;
            }
            this.mComponentName = componentName;
        }

        public String getPackageName() {
            return this.mComponentName.getPackageName();
        }

        public ComponentName getComponentName() {
            return this.mComponentName;
        }

        public String toString() {
            return "ProviderMetadata{ componentName=" + this.mComponentName.flattenToShortString() + " }";
        }
    }

    public static abstract class RouteController {
        public boolean onControlRequest(Intent intent, MediaRouter.ControlRequestCallback controlRequestCallback) {
            return false;
        }

        public void onRelease() {
        }

        public void onSelect() {
        }

        public void onSetVolume(int i) {
        }

        @Deprecated
        public void onUnselect() {
        }

        public void onUpdateVolume(int i) {
        }

        public void onUnselect(int i) {
            onUnselect();
        }
    }

    public static abstract class DynamicGroupRouteController extends RouteController {
        Executor mExecutor;
        OnDynamicRoutesChangedListener mListener;
        private final Object mLock = new Object();
        MediaRouteDescriptor mPendingGroupRoute;
        Collection<DynamicRouteDescriptor> mPendingRoutes;

        public interface OnDynamicRoutesChangedListener {
            void onRoutesChanged(DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection<DynamicRouteDescriptor> collection);
        }

        public String getGroupableSelectionTitle() {
            return null;
        }

        public String getTransferableSectionTitle() {
            return null;
        }

        public abstract void onAddMemberRoute(String str);

        public abstract void onRemoveMemberRoute(String str);

        public abstract void onUpdateMemberRoutes(List<String> list);

        public void setOnDynamicRoutesChangedListener(Executor executor, final OnDynamicRoutesChangedListener onDynamicRoutesChangedListener) {
            synchronized (this.mLock) {
                try {
                    if (executor == null) {
                        throw new NullPointerException("Executor shouldn't be null");
                    }
                    if (onDynamicRoutesChangedListener == null) {
                        throw new NullPointerException("Listener shouldn't be null");
                    }
                    this.mExecutor = executor;
                    this.mListener = onDynamicRoutesChangedListener;
                    Collection<DynamicRouteDescriptor> collection = this.mPendingRoutes;
                    if (collection != null && !collection.isEmpty()) {
                        final MediaRouteDescriptor mediaRouteDescriptor = this.mPendingGroupRoute;
                        final Collection<DynamicRouteDescriptor> collection2 = this.mPendingRoutes;
                        this.mPendingGroupRoute = null;
                        this.mPendingRoutes = null;
                        this.mExecutor.execute(new Runnable() { // from class: androidx.mediarouter.media.MediaRouteProvider$DynamicGroupRouteController$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MediaRouteProvider.DynamicGroupRouteController.$r8$lambda$GkvzHmFi7J0hPJ2hkNMUQ5T3hOI(this.f$0, onDynamicRoutesChangedListener, mediaRouteDescriptor, collection2);
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public static /* synthetic */ void $r8$lambda$GkvzHmFi7J0hPJ2hkNMUQ5T3hOI(DynamicGroupRouteController dynamicGroupRouteController, OnDynamicRoutesChangedListener onDynamicRoutesChangedListener, MediaRouteDescriptor mediaRouteDescriptor, Collection collection) {
            dynamicGroupRouteController.getClass();
            onDynamicRoutesChangedListener.onRoutesChanged(dynamicGroupRouteController, mediaRouteDescriptor, collection);
        }

        @Deprecated
        public final void notifyDynamicRoutesChanged(final Collection<DynamicRouteDescriptor> collection) {
            if (collection == null) {
                f$$ExternalSyntheticBUOutline2.m179m("routes must not be null");
                return;
            }
            synchronized (this.mLock) {
                try {
                    Executor executor = this.mExecutor;
                    if (executor != null) {
                        final OnDynamicRoutesChangedListener onDynamicRoutesChangedListener = this.mListener;
                        executor.execute(new Runnable() { // from class: androidx.mediarouter.media.MediaRouteProvider$DynamicGroupRouteController$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                MediaRouteProvider.DynamicGroupRouteController.$r8$lambda$CXMYDRMDED4ym91bYunTbpwOul8(this.f$0, onDynamicRoutesChangedListener, collection);
                            }
                        });
                    } else {
                        this.mPendingRoutes = new ArrayList(collection);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public static /* synthetic */ void $r8$lambda$CXMYDRMDED4ym91bYunTbpwOul8(DynamicGroupRouteController dynamicGroupRouteController, OnDynamicRoutesChangedListener onDynamicRoutesChangedListener, Collection collection) {
            dynamicGroupRouteController.getClass();
            onDynamicRoutesChangedListener.onRoutesChanged(dynamicGroupRouteController, null, collection);
        }

        public final void notifyDynamicRoutesChanged(final MediaRouteDescriptor mediaRouteDescriptor, final Collection<DynamicRouteDescriptor> collection) {
            if (mediaRouteDescriptor == null) {
                f$$ExternalSyntheticBUOutline2.m179m("groupRoute must not be null");
                return;
            }
            if (collection == null) {
                f$$ExternalSyntheticBUOutline2.m179m("dynamicRoutes must not be null");
                return;
            }
            synchronized (this.mLock) {
                try {
                    Executor executor = this.mExecutor;
                    if (executor != null) {
                        final OnDynamicRoutesChangedListener onDynamicRoutesChangedListener = this.mListener;
                        executor.execute(new Runnable() { // from class: androidx.mediarouter.media.MediaRouteProvider$DynamicGroupRouteController$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                MediaRouteProvider.DynamicGroupRouteController.$r8$lambda$jW55csm3zybsNPVmkVatnJA7rDI(this.f$0, onDynamicRoutesChangedListener, mediaRouteDescriptor, collection);
                            }
                        });
                    } else {
                        this.mPendingGroupRoute = mediaRouteDescriptor;
                        this.mPendingRoutes = new ArrayList(collection);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public static /* synthetic */ void $r8$lambda$jW55csm3zybsNPVmkVatnJA7rDI(DynamicGroupRouteController dynamicGroupRouteController, OnDynamicRoutesChangedListener onDynamicRoutesChangedListener, MediaRouteDescriptor mediaRouteDescriptor, Collection collection) {
            dynamicGroupRouteController.getClass();
            onDynamicRoutesChangedListener.onRoutesChanged(dynamicGroupRouteController, mediaRouteDescriptor, collection);
        }

        public static final class DynamicRouteDescriptor {
            static final String KEY_IS_GROUPABLE = "isGroupable";
            static final String KEY_IS_TRANSFERABLE = "isTransferable";
            static final String KEY_IS_UNSELECTABLE = "isUnselectable";
            static final String KEY_MEDIA_ROUTE_DESCRIPTOR = "mrDescriptor";
            static final String KEY_SELECTION_STATE = "selectionState";
            public static final int NOT_IN_GROUP = 4;
            public static final int SELECTED = 3;
            public static final int SELECTING = 2;
            public static final int UNSELECTED = 1;
            public static final int UNSELECTING = 0;
            Bundle mBundle;
            final boolean mIsGroupable;
            final boolean mIsTransferable;
            final boolean mIsUnselectable;
            final MediaRouteDescriptor mMediaRouteDescriptor;
            final int mSelectionState;

            @Retention(RetentionPolicy.SOURCE)
            public @interface SelectionState {
            }

            public DynamicRouteDescriptor(MediaRouteDescriptor mediaRouteDescriptor, int i, boolean z, boolean z2, boolean z3) {
                this.mMediaRouteDescriptor = mediaRouteDescriptor;
                this.mSelectionState = i;
                this.mIsUnselectable = z;
                this.mIsGroupable = z2;
                this.mIsTransferable = z3;
            }

            public MediaRouteDescriptor getRouteDescriptor() {
                return this.mMediaRouteDescriptor;
            }

            public int getSelectionState() {
                return this.mSelectionState;
            }

            public boolean isUnselectable() {
                return this.mIsUnselectable;
            }

            public boolean isGroupable() {
                return this.mIsGroupable;
            }

            public boolean isTransferable() {
                return this.mIsTransferable;
            }

            public Bundle toBundle() {
                if (this.mBundle == null) {
                    Bundle bundle = new Bundle();
                    this.mBundle = bundle;
                    bundle.putBundle(KEY_MEDIA_ROUTE_DESCRIPTOR, this.mMediaRouteDescriptor.asBundle());
                    this.mBundle.putInt(KEY_SELECTION_STATE, this.mSelectionState);
                    this.mBundle.putBoolean(KEY_IS_UNSELECTABLE, this.mIsUnselectable);
                    this.mBundle.putBoolean(KEY_IS_GROUPABLE, this.mIsGroupable);
                    this.mBundle.putBoolean(KEY_IS_TRANSFERABLE, this.mIsTransferable);
                }
                return this.mBundle;
            }

            public static DynamicRouteDescriptor fromBundle(Bundle bundle) {
                if (bundle == null) {
                    return null;
                }
                return new DynamicRouteDescriptor(MediaRouteDescriptor.fromBundle(bundle.getBundle(KEY_MEDIA_ROUTE_DESCRIPTOR)), bundle.getInt(KEY_SELECTION_STATE, 1), bundle.getBoolean(KEY_IS_UNSELECTABLE, false), bundle.getBoolean(KEY_IS_GROUPABLE, false), bundle.getBoolean(KEY_IS_TRANSFERABLE, false));
            }

            public static final class Builder {
                private boolean mIsGroupable;
                private boolean mIsTransferable;
                private boolean mIsUnselectable;
                private final MediaRouteDescriptor mRouteDescriptor;
                private int mSelectionState;

                public Builder(MediaRouteDescriptor mediaRouteDescriptor) {
                    this.mSelectionState = 1;
                    this.mIsUnselectable = false;
                    this.mIsGroupable = false;
                    this.mIsTransferable = false;
                    if (mediaRouteDescriptor == null) {
                        f$$ExternalSyntheticBUOutline2.m179m("descriptor must not be null");
                        throw null;
                    }
                    this.mRouteDescriptor = mediaRouteDescriptor;
                }

                public Builder(DynamicRouteDescriptor dynamicRouteDescriptor) {
                    this.mSelectionState = 1;
                    this.mIsUnselectable = false;
                    this.mIsGroupable = false;
                    this.mIsTransferable = false;
                    if (dynamicRouteDescriptor == null) {
                        f$$ExternalSyntheticBUOutline2.m179m("dynamicRouteDescriptor must not be null");
                        throw null;
                    }
                    this.mRouteDescriptor = dynamicRouteDescriptor.getRouteDescriptor();
                    this.mSelectionState = dynamicRouteDescriptor.getSelectionState();
                    this.mIsUnselectable = dynamicRouteDescriptor.isUnselectable();
                    this.mIsGroupable = dynamicRouteDescriptor.isGroupable();
                    this.mIsTransferable = dynamicRouteDescriptor.isTransferable();
                }

                public Builder setSelectionState(int i) {
                    this.mSelectionState = i;
                    return this;
                }

                public Builder setIsUnselectable(boolean z) {
                    this.mIsUnselectable = z;
                    return this;
                }

                public Builder setIsGroupable(boolean z) {
                    this.mIsGroupable = z;
                    return this;
                }

                public Builder setIsTransferable(boolean z) {
                    this.mIsTransferable = z;
                    return this;
                }

                public DynamicRouteDescriptor build() {
                    return new DynamicRouteDescriptor(this.mRouteDescriptor, this.mSelectionState, this.mIsUnselectable, this.mIsGroupable, this.mIsTransferable);
                }
            }
        }
    }

    public static final class RouteControllerOptions {
        static final RouteControllerOptions EMPTY = new Builder().build();
        private static final String EMPTY_CLIENT_PACKAGE_NAME = "";
        private static final String KEY_CLIENT_PACKAGE_NAME = "clientPackageName";
        private static final String KEY_CONTROL_HINTS = "controlHints";
        private final Bundle mBundle;

        public RouteControllerOptions(Bundle bundle) {
            this.mBundle = new Bundle(bundle);
        }

        public Bundle asBundle() {
            return this.mBundle;
        }

        public Bundle getControlHints() {
            Bundle bundle = (Bundle) this.mBundle.getParcelable(KEY_CONTROL_HINTS);
            return bundle != null ? bundle : Bundle.EMPTY;
        }

        public String getClientPackageName() {
            return this.mBundle.getString(KEY_CLIENT_PACKAGE_NAME, "");
        }

        public static final class Builder {
            private final Bundle mBundle = new Bundle();

            public Builder() {
            }

            public Builder(RouteControllerOptions routeControllerOptions) {
                setControlHints(routeControllerOptions.getControlHints());
                setClientPackageName(routeControllerOptions.getClientPackageName());
            }

            public Builder setControlHints(Bundle bundle) {
                this.mBundle.putParcelable(RouteControllerOptions.KEY_CONTROL_HINTS, bundle);
                return this;
            }

            public Builder setClientPackageName(String str) {
                this.mBundle.putString(RouteControllerOptions.KEY_CLIENT_PACKAGE_NAME, str);
                return this;
            }

            public RouteControllerOptions build() {
                return new RouteControllerOptions(this.mBundle);
            }
        }
    }

    public final class ProviderHandler extends Handler {
        public ProviderHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                MediaRouteProvider.this.deliverDescriptorChanged();
            } else {
                if (i != 2) {
                    return;
                }
                MediaRouteProvider.this.deliverDiscoveryRequestChanged();
            }
        }
    }
}
