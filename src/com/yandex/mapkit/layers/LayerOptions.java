package com.yandex.mapkit.layers;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class LayerOptions implements Serializable {
    private boolean active;
    private boolean animateOnActivation;
    private boolean cacheable;
    private boolean nightModeAvailable;
    private OverzoomMode overzoomMode;
    private long tileAppearingAnimationDuration;
    private boolean transparent;
    private boolean versionSupport;

    public LayerOptions(boolean z, boolean z2, boolean z3, boolean z4, long j, OverzoomMode overzoomMode, boolean z5, boolean z6) {
        this.active = true;
        this.nightModeAvailable = true;
        this.cacheable = false;
        this.animateOnActivation = false;
        this.tileAppearingAnimationDuration = 400L;
        this.overzoomMode = OverzoomMode.DISABLED;
        this.transparent = false;
        this.versionSupport = true;
        if (overzoomMode == null) {
            throw new IllegalArgumentException("Required field \"overzoomMode\" cannot be null");
        }
        this.active = z;
        this.nightModeAvailable = z2;
        this.cacheable = z3;
        this.animateOnActivation = z4;
        this.tileAppearingAnimationDuration = j;
        this.overzoomMode = overzoomMode;
        this.transparent = z5;
        this.versionSupport = z6;
    }

    public LayerOptions() {
        this.active = true;
        this.nightModeAvailable = true;
        this.cacheable = false;
        this.animateOnActivation = false;
        this.tileAppearingAnimationDuration = 400L;
        this.overzoomMode = OverzoomMode.DISABLED;
        this.transparent = false;
        this.versionSupport = true;
    }

    public boolean getActive() {
        return this.active;
    }

    public LayerOptions setActive(boolean z) {
        this.active = z;
        return this;
    }

    public boolean getNightModeAvailable() {
        return this.nightModeAvailable;
    }

    public LayerOptions setNightModeAvailable(boolean z) {
        this.nightModeAvailable = z;
        return this;
    }

    public boolean getCacheable() {
        return this.cacheable;
    }

    public LayerOptions setCacheable(boolean z) {
        this.cacheable = z;
        return this;
    }

    public boolean getAnimateOnActivation() {
        return this.animateOnActivation;
    }

    public LayerOptions setAnimateOnActivation(boolean z) {
        this.animateOnActivation = z;
        return this;
    }

    public long getTileAppearingAnimationDuration() {
        return this.tileAppearingAnimationDuration;
    }

    public LayerOptions setTileAppearingAnimationDuration(long j) {
        this.tileAppearingAnimationDuration = j;
        return this;
    }

    public OverzoomMode getOverzoomMode() {
        return this.overzoomMode;
    }

    public LayerOptions setOverzoomMode(OverzoomMode overzoomMode) {
        if (overzoomMode == null) {
            throw new IllegalArgumentException("Required field \"overzoomMode\" cannot be null");
        }
        this.overzoomMode = overzoomMode;
        return this;
    }

    public boolean getTransparent() {
        return this.transparent;
    }

    public LayerOptions setTransparent(boolean z) {
        this.transparent = z;
        return this;
    }

    public boolean getVersionSupport() {
        return this.versionSupport;
    }

    public LayerOptions setVersionSupport(boolean z) {
        this.versionSupport = z;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.active = archive.add(this.active);
        this.nightModeAvailable = archive.add(this.nightModeAvailable);
        this.cacheable = archive.add(this.cacheable);
        this.animateOnActivation = archive.add(this.animateOnActivation);
        this.tileAppearingAnimationDuration = archive.add(this.tileAppearingAnimationDuration);
        this.overzoomMode = (OverzoomMode) archive.add(this.overzoomMode, false, (Class<OverzoomMode>) OverzoomMode.class);
        this.transparent = archive.add(this.transparent);
        this.versionSupport = archive.add(this.versionSupport);
    }
}
