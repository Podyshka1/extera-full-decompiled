package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment_RolloutVariant */
/* JADX INFO: loaded from: classes.dex */
final class C1865x87204092 extends CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant {
    private final String rolloutId;
    private final String variantId;

    private C1865x87204092(String str, String str2) {
        this.rolloutId = str;
        this.variantId = str2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant
    public String getRolloutId() {
        return this.rolloutId;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant
    public String getVariantId() {
        return this.variantId;
    }

    public String toString() {
        return "RolloutVariant{rolloutId=" + this.rolloutId + ", variantId=" + this.variantId + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant) {
            CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant rolloutVariant = (CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant) obj;
            if (this.rolloutId.equals(rolloutVariant.getRolloutId()) && this.variantId.equals(rolloutVariant.getVariantId())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.rolloutId.hashCode() ^ 1000003) * 1000003) ^ this.variantId.hashCode();
    }

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment_RolloutVariant$Builder */
    /* JADX INFO: loaded from: classes5.dex */
    static final class Builder extends CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant.Builder {
        private String rolloutId;
        private String variantId;

        Builder() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant.Builder
        public CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant.Builder setRolloutId(String str) {
            if (str == null) {
                throw new NullPointerException("Null rolloutId");
            }
            this.rolloutId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant.Builder
        public CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant.Builder setVariantId(String str) {
            if (str == null) {
                throw new NullPointerException("Null variantId");
            }
            this.variantId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant.Builder
        public CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant build() {
            String str;
            String str2 = this.rolloutId;
            if (str2 == null || (str = this.variantId) == null) {
                StringBuilder sb = new StringBuilder();
                if (this.rolloutId == null) {
                    sb.append(" rolloutId");
                }
                if (this.variantId == null) {
                    sb.append(" variantId");
                }
                throw new IllegalStateException("Missing required properties:" + ((Object) sb));
            }
            return new C1865x87204092(str2, str);
        }
    }
}
