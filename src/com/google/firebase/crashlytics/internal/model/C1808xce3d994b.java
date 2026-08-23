package com.google.firebase.crashlytics.internal.model;

import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame */
/* JADX INFO: loaded from: classes.dex */
final class C1808xce3d994b extends CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame {
    private final String file;
    private final int importance;
    private final long offset;
    private final long pc;
    private final String symbol;

    private C1808xce3d994b(long j, String str, String str2, long j2, int i) {
        this.pc = j;
        this.symbol = str;
        this.file = str2;
        this.offset = j2;
        this.importance = i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public long getPc() {
        return this.pc;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public String getSymbol() {
        return this.symbol;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public String getFile() {
        return this.file;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public long getOffset() {
        return this.offset;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public int getImportance() {
        return this.importance;
    }

    public String toString() {
        return "Frame{pc=" + this.pc + ", symbol=" + this.symbol + ", file=" + this.file + ", offset=" + this.offset + ", importance=" + this.importance + "}";
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame) {
            CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame frame = (CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame) obj;
            if (this.pc == frame.getPc() && this.symbol.equals(frame.getSymbol()) && ((str = this.file) != null ? str.equals(frame.getFile()) : frame.getFile() == null) && this.offset == frame.getOffset() && this.importance == frame.getImportance()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.pc;
        int iHashCode = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.symbol.hashCode()) * 1000003;
        String str = this.file;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j2 = this.offset;
        return this.importance ^ ((iHashCode2 ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame$Builder */
    /* JADX INFO: loaded from: classes5.dex */
    public static final class Builder extends CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder {
        private String file;
        private int importance;
        private long offset;
        private long pc;
        private byte set$0;
        private String symbol;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder setPc(long j) {
            this.pc = j;
            this.set$0 = (byte) (this.set$0 | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder setSymbol(String str) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline2.m179m("Null symbol");
                return null;
            }
            this.symbol = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder setFile(String str) {
            this.file = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder setOffset(long j) {
            this.offset = j;
            this.set$0 = (byte) (this.set$0 | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder setImportance(int i) {
            this.importance = i;
            this.set$0 = (byte) (this.set$0 | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame build() {
            String str;
            if (this.set$0 != 7 || (str = this.symbol) == null) {
                StringBuilder sb = new StringBuilder();
                if ((this.set$0 & 1) == 0) {
                    sb.append(" pc");
                }
                if (this.symbol == null) {
                    sb.append(" symbol");
                }
                if ((this.set$0 & 2) == 0) {
                    sb.append(" offset");
                }
                if ((this.set$0 & 4) == 0) {
                    sb.append(" importance");
                }
                DexMaker$$ExternalSyntheticBUOutline0.m186m("Missing required properties:", sb);
                return null;
            }
            return new C1808xce3d994b(this.pc, str, this.file, this.offset, this.importance);
        }
    }
}
