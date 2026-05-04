package com.google.common.base;

/* JADX INFO: loaded from: classes5.dex */
final class Absent extends Optional {
    static final Absent INSTANCE = new Absent();

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int hashCode() {
        return 2040732332;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return false;
    }

    static Optional withType() {
        return INSTANCE;
    }

    private Absent() {
    }

    @Override // com.google.common.base.Optional
    public Object get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    public String toString() {
        return "Optional.absent()";
    }
}
