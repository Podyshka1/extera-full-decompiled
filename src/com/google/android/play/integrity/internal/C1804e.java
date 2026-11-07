package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.e */
/* JADX INFO: loaded from: classes5.dex */
final class C1804e extends AbstractC1805f {

    /* JADX INFO: renamed from: a */
    private final int f406a;

    /* JADX INFO: renamed from: b */
    private final long f407b;

    public C1804e(int i, long j) {
        this.f406a = i;
        this.f407b = j;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1805f
    /* JADX INFO: renamed from: a */
    public final int mo442a() {
        return this.f406a;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC1805f
    /* JADX INFO: renamed from: b */
    public final long mo443b() {
        return this.f407b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC1805f) {
            AbstractC1805f abstractC1805f = (AbstractC1805f) obj;
            if (this.f406a == abstractC1805f.mo442a() && this.f407b == abstractC1805f.mo443b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f407b;
        return ((this.f406a ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "EventRecord{eventType=" + this.f406a + ", eventTimestamp=" + this.f407b + "}";
    }
}
