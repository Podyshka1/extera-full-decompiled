package com.yandex.mapkit.location;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class SubscriptionSettings implements Serializable {
    private Purpose purpose;
    private UseInBackground useInBackground;

    public SubscriptionSettings(UseInBackground useInBackground, Purpose purpose) {
        if (useInBackground == null) {
            throw new IllegalArgumentException("Required field \"useInBackground\" cannot be null");
        }
        if (purpose == null) {
            throw new IllegalArgumentException("Required field \"purpose\" cannot be null");
        }
        this.useInBackground = useInBackground;
        this.purpose = purpose;
    }

    public SubscriptionSettings() {
    }

    public UseInBackground getUseInBackground() {
        return this.useInBackground;
    }

    public Purpose getPurpose() {
        return this.purpose;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.useInBackground = (UseInBackground) archive.add(this.useInBackground, false, (Class<UseInBackground>) UseInBackground.class);
        this.purpose = (Purpose) archive.add(this.purpose, false, (Class<Purpose>) Purpose.class);
    }
}
