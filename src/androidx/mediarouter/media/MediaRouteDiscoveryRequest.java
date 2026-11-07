package androidx.mediarouter.media;

import android.os.Bundle;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaRouteDiscoveryRequest {
    private static final String KEY_ACTIVE_SCAN = "activeScan";
    private static final String KEY_SELECTOR = "selector";
    private final Bundle mBundle;
    private MediaRouteSelector mSelector;

    public MediaRouteDiscoveryRequest(MediaRouteSelector mediaRouteSelector, boolean z) {
        if (mediaRouteSelector == null) {
            f$$ExternalSyntheticBUOutline1.m212m("selector must not be null");
            throw null;
        }
        Bundle bundle = new Bundle();
        this.mBundle = bundle;
        this.mSelector = mediaRouteSelector;
        bundle.putBundle("selector", mediaRouteSelector.asBundle());
        bundle.putBoolean(KEY_ACTIVE_SCAN, z);
    }

    private MediaRouteDiscoveryRequest(Bundle bundle) {
        this.mBundle = bundle;
    }

    public MediaRouteSelector getSelector() {
        ensureSelector();
        return this.mSelector;
    }

    private void ensureSelector() {
        if (this.mSelector == null) {
            MediaRouteSelector mediaRouteSelectorFromBundle = MediaRouteSelector.fromBundle(this.mBundle.getBundle("selector"));
            this.mSelector = mediaRouteSelectorFromBundle;
            if (mediaRouteSelectorFromBundle == null) {
                this.mSelector = MediaRouteSelector.EMPTY;
            }
        }
    }

    public boolean isActiveScan() {
        return this.mBundle.getBoolean(KEY_ACTIVE_SCAN);
    }

    public boolean isValid() {
        ensureSelector();
        return this.mSelector.isValid();
    }

    public boolean equals(Object obj) {
        if (obj instanceof MediaRouteDiscoveryRequest) {
            MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest = (MediaRouteDiscoveryRequest) obj;
            if (getSelector().equals(mediaRouteDiscoveryRequest.getSelector()) && isActiveScan() == mediaRouteDiscoveryRequest.isActiveScan()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return isActiveScan() ^ getSelector().hashCode();
    }

    public String toString() {
        return "DiscoveryRequest{ selector=" + getSelector() + ", activeScan=" + isActiveScan() + ", isValid=" + isValid() + " }";
    }

    public Bundle asBundle() {
        return this.mBundle;
    }

    public static MediaRouteDiscoveryRequest fromBundle(Bundle bundle) {
        if (bundle != null) {
            return new MediaRouteDiscoveryRequest(bundle);
        }
        return null;
    }
}
