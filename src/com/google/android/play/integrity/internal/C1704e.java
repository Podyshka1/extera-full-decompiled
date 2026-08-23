package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.e */
/* JADX INFO: loaded from: classes5.dex */
final class C1704e extends AbstractC1705f {

    /* JADX INFO: renamed from: a */
    private final int f418a;

    /* JADX INFO: renamed from: b */
    private final long f419b;

    public C1704e(int i, long j) {
        this.f418a = i;
        this.f419b = j;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1705f
    /* JADX INFO: renamed from: a */
    public final int mo426a() {
        return this.f418a;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1705f
    /* JADX INFO: renamed from: b */
    public final long mo427b() {
        return this.f419b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC1705f) {
            AbstractC1705f abstractC1705f = (AbstractC1705f) obj;
            if (this.f418a == abstractC1705f.mo426a() && this.f419b == abstractC1705f.mo427b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f418a ^ 1000003;
        long j = this.f419b;
        return ((int) (j ^ (j >>> 32))) ^ (i * 1000003);
    }

    public final String toString() {
        return "EventRecord{eventType=" + this.f418a + ", eventTimestamp=" + this.f419b + "}";
    }
}
