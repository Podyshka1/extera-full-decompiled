package com.exteragram.messenger.plugins.hooks;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class EventHookRecord implements HookRecord {
    private final String hookName;
    private final boolean matchSubstring;
    private final String pluginId;
    private final int priority;

    @Override // com.exteragram.messenger.plugins.hooks.HookRecord
    public void cleanup() {
    }

    public EventHookRecord(String str, String str2, boolean z, int i) {
        this.pluginId = str;
        this.hookName = str2;
        this.matchSubstring = z;
        this.priority = i;
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public String getHookName() {
        return this.hookName;
    }

    public int getPriority() {
        return this.priority;
    }

    public boolean isMatchSubstring() {
        return this.matchSubstring;
    }

    @Override // com.exteragram.messenger.plugins.hooks.HookRecord
    public boolean matches(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            String str2 = this.hookName;
            if (str2 != null) {
                if (this.matchSubstring) {
                    return !str2.isEmpty() && str.contains(this.hookName);
                }
                return str2.equals(str);
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            EventHookRecord eventHookRecord = (EventHookRecord) obj;
            if (this.matchSubstring == eventHookRecord.matchSubstring && Objects.equals(this.pluginId, eventHookRecord.pluginId) && Objects.equals(this.hookName, eventHookRecord.hookName)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.pluginId, this.hookName, Boolean.valueOf(this.matchSubstring));
    }
}
