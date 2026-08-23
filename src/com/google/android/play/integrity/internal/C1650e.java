package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.e */
/* JADX INFO: loaded from: classes5.dex */
final class C1650e extends AbstractC1651f {

    /* JADX INFO: renamed from: a */
    private final int f359a;

    /* JADX INFO: renamed from: b */
    private final long f360b;

    C1650e(int i, long j) {
        this.f359a = i;
        this.f360b = j;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1651f
    /* JADX INFO: renamed from: a */
    public final int mo367a() {
        return this.f359a;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1651f
    /* JADX INFO: renamed from: b */
    public final long mo368b() {
        return this.f360b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC1651f) {
            AbstractC1651f abstractC1651f = (AbstractC1651f) obj;
            if (this.f359a == abstractC1651f.mo367a() && this.f360b == abstractC1651f.mo368b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f359a ^ 1000003;
        long j = this.f360b;
        return (i * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "EventRecord{eventType=" + this.f359a + ", eventTimestamp=" + this.f360b + "}";
    }
}
