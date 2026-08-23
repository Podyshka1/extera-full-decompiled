package androidx.mediarouter.media;

import android.media.MediaRouter;

/* JADX INFO: loaded from: classes3.dex */
class MediaRouterUtils {

    public interface Callback {
        void onRouteAdded(MediaRouter.RouteInfo routeInfo);

        void onRouteChanged(MediaRouter.RouteInfo routeInfo);

        void onRouteGrouped(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i);

        void onRoutePresentationDisplayChanged(MediaRouter.RouteInfo routeInfo);

        void onRouteRemoved(MediaRouter.RouteInfo routeInfo);

        void onRouteSelected(int i, MediaRouter.RouteInfo routeInfo);

        void onRouteUngrouped(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup);

        void onRouteUnselected(int i, MediaRouter.RouteInfo routeInfo);

        void onRouteVolumeChanged(MediaRouter.RouteInfo routeInfo);
    }

    public interface VolumeCallback {
        void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i);

        void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i);
    }

    private MediaRouterUtils() {
    }

    public static MediaRouter.Callback createCallback(Callback callback) {
        return new CallbackProxy(callback);
    }

    public static MediaRouter.VolumeCallback createVolumeCallback(VolumeCallback volumeCallback) {
        return new VolumeCallbackProxy(volumeCallback);
    }

    public static class CallbackProxy<T extends Callback> extends MediaRouter.Callback {
        protected final T mCallback;

        public CallbackProxy(T t) {
            this.mCallback = t;
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteSelected(android.media.MediaRouter mediaRouter, int i, MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteSelected(i, routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteUnselected(android.media.MediaRouter mediaRouter, int i, MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteUnselected(i, routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteAdded(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteAdded(routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteRemoved(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteRemoved(routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteChanged(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteChanged(routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteGrouped(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i) {
            this.mCallback.onRouteGrouped(routeInfo, routeGroup, i);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteUngrouped(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
            this.mCallback.onRouteUngrouped(routeInfo, routeGroup);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteVolumeChanged(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteVolumeChanged(routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRoutePresentationDisplayChanged(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRoutePresentationDisplayChanged(routeInfo);
        }
    }

    public static class VolumeCallbackProxy<T extends VolumeCallback> extends MediaRouter.VolumeCallback {
        protected final T mCallback;

        public VolumeCallbackProxy(T t) {
            this.mCallback = t;
        }

        @Override // android.media.MediaRouter.VolumeCallback
        public void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i) {
            this.mCallback.onVolumeSetRequest(routeInfo, i);
        }

        @Override // android.media.MediaRouter.VolumeCallback
        public void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i) {
            this.mCallback.onVolumeUpdateRequest(routeInfo, i);
        }
    }
}
