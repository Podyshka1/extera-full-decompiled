package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.e */
/* JADX INFO: loaded from: classes5.dex */
final class C1765e extends AbstractC1766f {

    /* JADX INFO: renamed from: a */
    private final int f565a;

    /* JADX INFO: renamed from: b */
    private final long f566b;

    C1765e(int i, long j) {
        this.f565a = i;
        this.f566b = j;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1766f
    /* JADX INFO: renamed from: a */
    public final int mo462a() {
        return this.f565a;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1766f
    /* JADX INFO: renamed from: b */
    public final long mo463b() {
        return this.f566b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC1766f) {
            AbstractC1766f abstractC1766f = (AbstractC1766f) obj;
            if (this.f565a == abstractC1766f.mo462a() && this.f566b == abstractC1766f.mo463b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f565a ^ 1000003;
        long j = this.f566b;
        return (i * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "EventRecord{eventType=" + this.f565a + ", eventTimestamp=" + this.f566b + "}";
    }
}
