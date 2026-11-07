package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.e */
/* JADX INFO: loaded from: classes5.dex */
final class C1925e extends AbstractC1926f {

    /* JADX INFO: renamed from: a */
    private final int f407a;

    /* JADX INFO: renamed from: b */
    private final long f408b;

    public C1925e(int i, long j) {
        this.f407a = i;
        this.f408b = j;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1926f
    /* JADX INFO: renamed from: a */
    public final int mo466a() {
        return this.f407a;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1926f
    /* JADX INFO: renamed from: b */
    public final long mo467b() {
        return this.f408b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC1926f) {
            AbstractC1926f abstractC1926f = (AbstractC1926f) obj;
            if (this.f407a == abstractC1926f.mo466a() && this.f408b == abstractC1926f.mo467b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f408b;
        return ((this.f407a ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "EventRecord{eventType=" + this.f407a + ", eventTimestamp=" + this.f408b + "}";
    }
}
