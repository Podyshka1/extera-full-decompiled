package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.List;

/* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread */
/* JADX INFO: loaded from: classes.dex */
final class C1859x7e3e3ebd extends CrashlyticsReport.Session.Event.Application.Execution.Thread {
    private final List frames;
    private final int importance;
    private final String name;

    private C1859x7e3e3ebd(String str, int i, List list) {
        this.name = str;
        this.importance = i;
        this.frames = list;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread
    public String getName() {
        return this.name;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread
    public int getImportance() {
        return this.importance;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread
    public List getFrames() {
        return this.frames;
    }

    public String toString() {
        return "Thread{name=" + this.name + ", importance=" + this.importance + ", frames=" + this.frames + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.Session.Event.Application.Execution.Thread) {
            CrashlyticsReport.Session.Event.Application.Execution.Thread thread = (CrashlyticsReport.Session.Event.Application.Execution.Thread) obj;
            if (this.name.equals(thread.getName()) && this.importance == thread.getImportance() && this.frames.equals(thread.getFrames())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.name.hashCode() ^ 1000003) * 1000003) ^ this.importance) * 1000003) ^ this.frames.hashCode();
    }

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$Builder */
    /* JADX INFO: loaded from: classes5.dex */
    static final class Builder extends CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder {
        private List frames;
        private int importance;
        private String name;
        private byte set$0;

        Builder() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder setName(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.name = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder setImportance(int i) {
            this.importance = i;
            this.set$0 = (byte) (this.set$0 | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder setFrames(List list) {
            if (list == null) {
                throw new NullPointerException("Null frames");
            }
            this.frames = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread build() {
            String str;
            List list;
            if (this.set$0 != 1 || (str = this.name) == null || (list = this.frames) == null) {
                StringBuilder sb = new StringBuilder();
                if (this.name == null) {
                    sb.append(" name");
                }
                if ((1 & this.set$0) == 0) {
                    sb.append(" importance");
                }
                if (this.frames == null) {
                    sb.append(" frames");
                }
                throw new IllegalStateException("Missing required properties:" + ((Object) sb));
            }
            return new C1859x7e3e3ebd(str, this.importance, list);
        }
    }
}
