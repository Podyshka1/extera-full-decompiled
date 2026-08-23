package com.google.firebase.crashlytics.internal.model;

import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception */
/* JADX INFO: loaded from: classes.dex */
final class C1805xc2f5febc extends CrashlyticsReport.Session.Event.Application.Execution.Exception {
    private final CrashlyticsReport.Session.Event.Application.Execution.Exception causedBy;
    private final List<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> frames;
    private final int overflowCount;
    private final String reason;
    private final String type;

    private C1805xc2f5febc(String str, String str2, List<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> list, CrashlyticsReport.Session.Event.Application.Execution.Exception exception, int i) {
        this.type = str;
        this.reason = str2;
        this.frames = list;
        this.causedBy = exception;
        this.overflowCount = i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception
    public String getType() {
        return this.type;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception
    public String getReason() {
        return this.reason;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception
    public List<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> getFrames() {
        return this.frames;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception
    public CrashlyticsReport.Session.Event.Application.Execution.Exception getCausedBy() {
        return this.causedBy;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception
    public int getOverflowCount() {
        return this.overflowCount;
    }

    public String toString() {
        return "Exception{type=" + this.type + ", reason=" + this.reason + ", frames=" + this.frames + ", causedBy=" + this.causedBy + ", overflowCount=" + this.overflowCount + "}";
    }

    public boolean equals(Object obj) {
        String str;
        CrashlyticsReport.Session.Event.Application.Execution.Exception exception;
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.Session.Event.Application.Execution.Exception) {
            CrashlyticsReport.Session.Event.Application.Execution.Exception exception2 = (CrashlyticsReport.Session.Event.Application.Execution.Exception) obj;
            if (this.type.equals(exception2.getType()) && ((str = this.reason) != null ? str.equals(exception2.getReason()) : exception2.getReason() == null) && this.frames.equals(exception2.getFrames()) && ((exception = this.causedBy) != null ? exception.equals(exception2.getCausedBy()) : exception2.getCausedBy() == null) && this.overflowCount == exception2.getOverflowCount()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        String str = this.reason;
        int iHashCode2 = (((iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.frames.hashCode()) * 1000003;
        CrashlyticsReport.Session.Event.Application.Execution.Exception exception = this.causedBy;
        return this.overflowCount ^ ((iHashCode2 ^ (exception != null ? exception.hashCode() : 0)) * 1000003);
    }

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception$Builder */
    /* JADX INFO: loaded from: classes5.dex */
    public static final class Builder extends CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder {
        private CrashlyticsReport.Session.Event.Application.Execution.Exception causedBy;
        private List<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> frames;
        private int overflowCount;
        private String reason;
        private byte set$0;
        private String type;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder setType(String str) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline2.m179m("Null type");
                return null;
            }
            this.type = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder setReason(String str) {
            this.reason = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder setFrames(List<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> list) {
            if (list == null) {
                f$$ExternalSyntheticBUOutline2.m179m("Null frames");
                return null;
            }
            this.frames = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder setCausedBy(CrashlyticsReport.Session.Event.Application.Execution.Exception exception) {
            this.causedBy = exception;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder setOverflowCount(int i) {
            this.overflowCount = i;
            this.set$0 = (byte) (this.set$0 | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Exception build() {
            String str;
            List<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> list;
            if (this.set$0 != 1 || (str = this.type) == null || (list = this.frames) == null) {
                StringBuilder sb = new StringBuilder();
                if (this.type == null) {
                    sb.append(" type");
                }
                if (this.frames == null) {
                    sb.append(" frames");
                }
                if ((this.set$0 & 1) == 0) {
                    sb.append(" overflowCount");
                }
                DexMaker$$ExternalSyntheticBUOutline0.m186m("Missing required properties:", sb);
                return null;
            }
            return new C1805xc2f5febc(str, this.reason, list, this.causedBy, this.overflowCount);
        }
    }
}
