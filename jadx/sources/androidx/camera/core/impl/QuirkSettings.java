package androidx.camera.core.impl;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class QuirkSettings {
    private final boolean mEnabledWhenDeviceHasQuirk;
    private final Set mForceDisabledQuirks;
    private final Set mForceEnabledQuirks;

    private QuirkSettings(boolean z, Set set, Set set2) {
        this.mEnabledWhenDeviceHasQuirk = z;
        this.mForceEnabledQuirks = set == null ? Collections.EMPTY_SET : new HashSet(set);
        this.mForceDisabledQuirks = set2 == null ? Collections.EMPTY_SET : new HashSet(set2);
    }

    public static QuirkSettings withDefaultBehavior() {
        return new Builder().setEnabledWhenDeviceHasQuirk(true).build();
    }

    public boolean shouldEnableQuirk(Class cls, boolean z) {
        if (this.mForceEnabledQuirks.contains(cls)) {
            return true;
        }
        return !this.mForceDisabledQuirks.contains(cls) && this.mEnabledWhenDeviceHasQuirk && z;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof QuirkSettings)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        QuirkSettings quirkSettings = (QuirkSettings) obj;
        return this.mEnabledWhenDeviceHasQuirk == quirkSettings.mEnabledWhenDeviceHasQuirk && Objects.equals(this.mForceEnabledQuirks, quirkSettings.mForceEnabledQuirks) && Objects.equals(this.mForceDisabledQuirks, quirkSettings.mForceDisabledQuirks);
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mEnabledWhenDeviceHasQuirk), this.mForceEnabledQuirks, this.mForceDisabledQuirks);
    }

    public String toString() {
        return "QuirkSettings{enabledWhenDeviceHasQuirk=" + this.mEnabledWhenDeviceHasQuirk + ", forceEnabledQuirks=" + this.mForceEnabledQuirks + ", forceDisabledQuirks=" + this.mForceDisabledQuirks + '}';
    }

    public static class Builder {
        private boolean mEnabledWhenDeviceHasQuirk = true;
        private Set mForceDisabledQuirks;
        private Set mForceEnabledQuirks;

        public Builder setEnabledWhenDeviceHasQuirk(boolean z) {
            this.mEnabledWhenDeviceHasQuirk = z;
            return this;
        }

        public Builder forceEnableQuirks(Set set) {
            this.mForceEnabledQuirks = new HashSet(set);
            return this;
        }

        public Builder forceDisableQuirks(Set set) {
            this.mForceDisabledQuirks = new HashSet(set);
            return this;
        }

        public QuirkSettings build() {
            return new QuirkSettings(this.mEnabledWhenDeviceHasQuirk, this.mForceEnabledQuirks, this.mForceDisabledQuirks);
        }
    }
}
