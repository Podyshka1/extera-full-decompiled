package com.google.common.base;

/* JADX INFO: loaded from: classes5.dex */
final class Present extends Optional {
    private final Object reference;

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return true;
    }

    Present(Object obj) {
        this.reference = obj;
    }

    @Override // com.google.common.base.Optional
    public Object get() {
        return this.reference;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Present) {
            return this.reference.equals(((Present) obj).reference);
        }
        return false;
    }

    public int hashCode() {
        return this.reference.hashCode() + 1502476572;
    }

    public String toString() {
        return "Optional.of(" + this.reference + ")";
    }
}
