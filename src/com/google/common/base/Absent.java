package com.google.common.base;

/* JADX INFO: loaded from: classes5.dex */
final class Absent<T> extends Optional<T> {
    static final Absent<Object> INSTANCE = new Absent<>();

    @Override // com.google.common.base.Optional
    public boolean equals(Object obj) {
        return this == obj;
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return 2040732332;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return false;
    }

    @Override // com.google.common.base.Optional
    public T orNull() {
        return null;
    }

    public static <T> Optional<T> withType() {
        return INSTANCE;
    }

    private Absent() {
    }

    @Override // com.google.common.base.Optional
    public T get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.common.base.Optional
    public T or(Supplier<? extends T> supplier) {
        return (T) Preconditions.checkNotNull(supplier.get(), "use Optional.orNull() instead of a Supplier that returns null");
    }

    public String toString() {
        return "Optional.absent()";
    }
}
