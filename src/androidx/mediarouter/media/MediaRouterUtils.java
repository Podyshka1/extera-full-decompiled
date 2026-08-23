package androidx.mediarouter.media;

import android.media.MediaRouter;

/* JADX INFO: loaded from: classes.dex */
abstract class MediaRouterUtils {

    /* JADX INFO: loaded from: classes4.dex */
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

    /* JADX INFO: loaded from: classes4.dex */
    public interface VolumeCallback {
        void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i);

        void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i);
    }

    public static MediaRouter.Callback createCallback(Callback callback) {
        return new CallbackProxy(callback);
    }

    public static MediaRouter.VolumeCallback createVolumeCallback(VolumeCallback volumeCallback) {
        return new VolumeCallbackProxy(volumeCallback);
    }

    static class CallbackProxy extends MediaRouter.Callback {
        protected final Callback mCallback;

        CallbackProxy(Callback callback) {
            this.mCallback = callback;
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

    static class VolumeCallbackProxy extends MediaRouter.VolumeCallback {
        protected final VolumeCallback mCallback;

        VolumeCallbackProxy(VolumeCallback volumeCallback) {
            this.mCallback = volumeCallback;
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
