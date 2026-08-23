package com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Suppliers {
    public static <T> Supplier<T> memoize(Supplier<T> supplier) {
        if ((supplier instanceof NonSerializableMemoizingSupplier) || (supplier instanceof MemoizingSupplier)) {
            return supplier;
        }
        if (supplier instanceof Serializable) {
            return new MemoizingSupplier(supplier);
        }
        return new NonSerializableMemoizingSupplier(supplier);
    }

    public static final class MemoizingSupplier<T> implements Supplier<T>, Serializable {
        final Supplier<T> delegate;
        volatile transient boolean initialized;
        private transient Object lock = new Object();
        transient T value;

        public MemoizingSupplier(Supplier<T> supplier) {
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            if (!this.initialized) {
                synchronized (this.lock) {
                    try {
                        if (!this.initialized) {
                            T t = this.delegate.get();
                            this.value = t;
                            this.initialized = true;
                            return t;
                        }
                    } finally {
                    }
                }
            }
            return (T) NullnessCasts.uncheckedCastNullableTToT(this.value);
        }

        public String toString() {
            Object obj;
            StringBuilder sb = new StringBuilder("Suppliers.memoize(");
            if (this.initialized) {
                obj = "<supplier that returned " + this.value + ">";
            } else {
                obj = this.delegate;
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class NonSerializableMemoizingSupplier<T> implements Supplier<T> {
        private volatile Supplier<T> delegate;
        private final Object lock = new Object();
        private T value;

        public NonSerializableMemoizingSupplier(Supplier<T> supplier) {
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            if (this.delegate != null) {
                synchronized (this.lock) {
                    try {
                        if (this.delegate != null) {
                            T t = this.delegate.get();
                            this.value = t;
                            this.delegate = null;
                            return t;
                        }
                    } finally {
                    }
                }
            }
            return (T) NullnessCasts.uncheckedCastNullableTToT(this.value);
        }

        public String toString() {
            Object obj = this.delegate;
            StringBuilder sb = new StringBuilder("Suppliers.memoize(");
            if (obj == null) {
                obj = "<supplier that returned " + this.value + ">";
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    public static <T> Supplier<T> ofInstance(T t) {
        return new SupplierOfInstance(t);
    }

    public static final class SupplierOfInstance<T> implements Supplier<T>, Serializable {
        final T instance;

        public SupplierOfInstance(T t) {
            this.instance = t;
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            return this.instance;
        }

        public boolean equals(Object obj) {
            if (obj instanceof SupplierOfInstance) {
                return java.util.Objects.equals(this.instance, ((SupplierOfInstance) obj).instance);
            }
            return false;
        }

        public int hashCode() {
            return java.util.Objects.hash(this.instance);
        }

        public String toString() {
            return "Suppliers.ofInstance(" + this.instance + ")";
        }
    }
}
