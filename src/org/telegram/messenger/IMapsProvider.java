package org.telegram.messenger;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.location.Location;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Keep;
import androidx.core.util.Consumer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Keep
public interface IMapsProvider {
    public static final int MAP_TYPE_HYBRID = 2;
    public static final int MAP_TYPE_NORMAL = 0;
    public static final int MAP_TYPE_SATELLITE = 1;

    /* JADX INFO: loaded from: classes5.dex */
    public interface ICallableMethod<R, A> {
        R call(A a2);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface ICameraUpdate {
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface ICancelableCallback {
        void onCancel();

        void onFinish();
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface ICircle {
        double getRadius();

        void remove();

        void setCenter(LatLng latLng);

        void setFillColor(int i);

        void setRadius(double d);

        void setStrokeColor(int i);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface ICircleOptions {
        ICircleOptions center(LatLng latLng);

        ICircleOptions fillColor(int i);

        ICircleOptions radius(double d);

        ICircleOptions strokeColor(int i);

        ICircleOptions strokePattern(List<PatternItem> list);

        ICircleOptions strokeWidth(int i);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface ILatLngBounds {
        LatLng getCenter();
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface ILatLngBoundsBuilder {
        ILatLngBounds build();

        ILatLngBoundsBuilder include(LatLng latLng);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface IMapStyleOptions {
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface IMapView {
        default GLSurfaceView getGlSurfaceView() {
            return null;
        }

        void getMapAsync(Consumer<IMap> consumer);

        View getView();

        void onCreate(Bundle bundle);

        void onDestroy();

        void onLowMemory();

        void onPause();

        void onResume();

        void setOnDispatchTouchEventInterceptor(ITouchInterceptor iTouchInterceptor);

        void setOnInterceptTouchEventInterceptor(ITouchInterceptor iTouchInterceptor);

        void setOnLayoutListener(Runnable runnable);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface IMarker {
        LatLng getPosition();

        Object getTag();

        void remove();

        void setIcon(int i);

        void setIcon(Bitmap bitmap);

        void setPosition(LatLng latLng);

        void setRotation(int i);

        void setTag(Object obj);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface IMarkerOptions {
        IMarkerOptions anchor(float f, float f2);

        IMarkerOptions flat(boolean z);

        IMarkerOptions icon(int i);

        IMarkerOptions icon(Bitmap bitmap);

        IMarkerOptions position(LatLng latLng);

        IMarkerOptions snippet(String str);

        IMarkerOptions title(String str);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface IProjection {
        Point toScreenLocation(LatLng latLng);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface ITouchInterceptor {
        boolean onInterceptTouchEvent(MotionEvent motionEvent, ICallableMethod<Boolean, MotionEvent> iCallableMethod);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface IUISettings {
        void setCompassEnabled(boolean z);

        void setMyLocationButtonEnabled(boolean z);

        void setZoomControlsEnabled(boolean z);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface OnCameraMoveStartedListener {
        public static final int REASON_API_ANIMATION = 2;
        public static final int REASON_DEVELOPER_ANIMATION = 3;
        public static final int REASON_GESTURE = 1;

        void onCameraMoveStarted(int i);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface OnMarkerClickListener {
        boolean onClick(IMarker iMarker);
    }

    int getInstallMapsString();

    String getMapsAppPackageName();

    void initializeMaps(Context context);

    boolean isApplicationRequired();

    IMapStyleOptions loadRawResourceStyle(Context context, int i);

    ICameraUpdate newCameraUpdateLatLng(LatLng latLng);

    ICameraUpdate newCameraUpdateLatLngBounds(ILatLngBounds iLatLngBounds, int i);

    ICameraUpdate newCameraUpdateLatLngZoom(LatLng latLng, float f);

    ICircleOptions onCreateCircleOptions();

    ILatLngBoundsBuilder onCreateLatLngBoundsBuilder();

    IMapView onCreateMapView(Context context);

    IMarkerOptions onCreateMarkerOptions();

    boolean supportsOtherMapTypes();

    /* JADX INFO: loaded from: classes5.dex */
    public interface IMap {
        ICircle addCircle(ICircleOptions iCircleOptions);

        IMarker addMarker(IMarkerOptions iMarkerOptions);

        void animateCamera(ICameraUpdate iCameraUpdate);

        void animateCamera(ICameraUpdate iCameraUpdate, int i, ICancelableCallback iCancelableCallback);

        void animateCamera(ICameraUpdate iCameraUpdate, ICancelableCallback iCancelableCallback);

        CameraPosition getCameraPosition();

        Padding getFragmentPadding(int i);

        float getMaxZoomLevel();

        float getMinZoomLevel();

        IProjection getProjection();

        IUISettings getUiSettings();

        void moveCamera(ICameraUpdate iCameraUpdate);

        default void setLogoPadding(int i, int i2) {
        }

        void setMapStyle(IMapStyleOptions iMapStyleOptions);

        void setMapType(int i);

        void setMyLocationEnabled(boolean z);

        void setOnCameraIdleListener(Runnable runnable);

        void setOnCameraMoveListener(Runnable runnable);

        void setOnCameraMoveStartedListener(OnCameraMoveStartedListener onCameraMoveStartedListener);

        void setOnMapLoadedCallback(Runnable runnable);

        void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener);

        void setOnMyLocationChangeListener(Consumer<Location> consumer);

        void setPadding(int i, int i2, int i3, int i4);

        public static class Padding {
            public final int bottom;
            public final int left;
            public final int right;
            public final int top;

            public Padding(int i, int i2, int i3, int i4) {
                this.left = i;
                this.top = i2;
                this.right = i3;
                this.bottom = i4;
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class PatternItem {

        public static final class Gap extends PatternItem {
            public final int length;

            public Gap(int i) {
                this.length = i;
            }
        }

        public static final class Dash extends PatternItem {
            public final int length;

            public Dash(int i) {
                this.length = i;
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class CameraPosition {
        public final LatLng target;
        public final float zoom;

        public CameraPosition(LatLng latLng, float f) {
            this.target = latLng;
            this.zoom = f;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class LatLng {
        public final double latitude;
        public final double longitude;

        public LatLng(double d, double d2) {
            this.latitude = d;
            this.longitude = d2;
        }
    }
}
