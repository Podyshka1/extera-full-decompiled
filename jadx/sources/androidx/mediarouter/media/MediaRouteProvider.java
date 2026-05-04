package androidx.mediarouter.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import androidx.core.util.ObjectsCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaRouteProvider {
    private Callback mCallback;
    private final Context mContext;
    private MediaRouteProviderDescriptor mDescriptor;
    private MediaRouteDiscoveryRequest mDiscoveryRequest;
    private final ProviderHandler mHandler;
    private final ProviderMetadata mMetadata;
    private boolean mPendingDescriptorChange;
    private boolean mPendingDiscoveryRequestChange;

    public static abstract class Callback {
        public abstract void onDescriptorChanged(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor);
    }

    public abstract RouteController onCreateRouteController(String str);

    public abstract void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest);

    public MediaRouteProvider(Context context) {
        this(context, null);
    }

    MediaRouteProvider(Context context, ProviderMetadata providerMetadata) {
        this.mHandler = new ProviderHandler();
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
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

    final void setDiscoveryRequestInternal(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        this.mDiscoveryRequest = mediaRouteDiscoveryRequest;
        if (this.mPendingDiscoveryRequestChange) {
            return;
        }
        this.mPendingDiscoveryRequestChange = true;
        this.mHandler.sendEmptyMessage(2);
    }

    final void deliverDiscoveryRequestChanged() {
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

    final void deliverDescriptorChanged() {
        this.mPendingDescriptorChange = false;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onDescriptorChanged(this, this.mDescriptor);
        }
    }

    public RouteController onCreateRouteController(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("routeGroupId cannot be null");
        }
        return onCreateRouteController(str);
    }

    public DynamicGroupRouteController onCreateDynamicGroupRouteController(String str) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("initialMemberRouteId cannot be null.");
    }

    public static final class ProviderMetadata {
        private final ComponentName mComponentName;

        ProviderMetadata(ComponentName componentName) {
            if (componentName == null) {
                throw new IllegalArgumentException("componentName must not be null");
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
        public void onRelease() {
        }

        public void onSelect() {
        }

        public abstract void onSetVolume(int i);

        public void onUnselect() {
        }

        public abstract void onUpdateVolume(int i);

        public void onUnselect(int i) {
            onUnselect();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class DynamicGroupRouteController extends RouteController {
        Executor mExecutor;
        OnDynamicRoutesChangedListener mListener;
        private final Object mLock = new Object();
        MediaRouteDescriptor mPendingGroupRoute;
        Collection mPendingRoutes;

        interface OnDynamicRoutesChangedListener {
            void onRoutesChanged(DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection collection);
        }

        public String getGroupableSelectionTitle() {
            return null;
        }

        public String getTransferableSectionTitle() {
            return null;
        }

        public abstract void onAddMemberRoute(String str);

        public abstract void onRemoveMemberRoute(String str);

        public abstract void onUpdateMemberRoutes(List list);

        void setOnDynamicRoutesChangedListener(Executor executor, final OnDynamicRoutesChangedListener onDynamicRoutesChangedListener) {
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
                    Collection collection = this.mPendingRoutes;
                    if (collection != null && !collection.isEmpty()) {
                        final MediaRouteDescriptor mediaRouteDescriptor = this.mPendingGroupRoute;
                        final Collection collection2 = this.mPendingRoutes;
                        this.mPendingGroupRoute = null;
                        this.mPendingRoutes = null;
                        this.mExecutor.execute(new Runnable() { // from class: androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.1
                            @Override // java.lang.Runnable
                            public void run() {
                                onDynamicRoutesChangedListener.onRoutesChanged(DynamicGroupRouteController.this, mediaRouteDescriptor, collection2);
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void notifyDynamicRoutesChanged(final MediaRouteDescriptor mediaRouteDescriptor, final Collection collection) {
            if (mediaRouteDescriptor == null) {
                throw new NullPointerException("groupRoute must not be null");
            }
            if (collection == null) {
                throw new NullPointerException("dynamicRoutes must not be null");
            }
            synchronized (this.mLock) {
                try {
                    Executor executor = this.mExecutor;
                    if (executor != null) {
                        final OnDynamicRoutesChangedListener onDynamicRoutesChangedListener = this.mListener;
                        executor.execute(new Runnable() { // from class: androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.3
                            @Override // java.lang.Runnable
                            public void run() {
                                onDynamicRoutesChangedListener.onRoutesChanged(DynamicGroupRouteController.this, mediaRouteDescriptor, collection);
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

        public static final class DynamicRouteDescriptor {
            final boolean mIsGroupable;
            final boolean mIsTransferable;
            final boolean mIsUnselectable;
            final MediaRouteDescriptor mMediaRouteDescriptor;
            final int mSelectionState;

            DynamicRouteDescriptor(MediaRouteDescriptor mediaRouteDescriptor, int i, boolean z, boolean z2, boolean z3) {
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

            static DynamicRouteDescriptor fromBundle(Bundle bundle) {
                if (bundle == null) {
                    return null;
                }
                return new DynamicRouteDescriptor(MediaRouteDescriptor.fromBundle(bundle.getBundle("mrDescriptor")), bundle.getInt("selectionState", 1), bundle.getBoolean("isUnselectable", false), bundle.getBoolean("isGroupable", false), bundle.getBoolean("isTransferable", false));
            }

            public static final class Builder {
                private final MediaRouteDescriptor mRouteDescriptor;
                private int mSelectionState = 1;
                private boolean mIsUnselectable = false;
                private boolean mIsGroupable = false;
                private boolean mIsTransferable = false;

                public Builder(MediaRouteDescriptor mediaRouteDescriptor) {
                    if (mediaRouteDescriptor == null) {
                        throw new NullPointerException("descriptor must not be null");
                    }
                    this.mRouteDescriptor = mediaRouteDescriptor;
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

    private final class ProviderHandler extends Handler {
        ProviderHandler() {
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
