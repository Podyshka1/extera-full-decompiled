package com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Functions {
    public static <E> Function<Object, E> constant(E e) {
        return new ConstantFunction(e);
    }

    public static final class ConstantFunction<E> implements Function<Object, E>, Serializable {
        private final E value;

        public ConstantFunction(E e) {
            this.value = e;
        }

        @Override // com.google.common.base.Function
        public E apply(Object obj) {
            return this.value;
        }

        @Override // com.google.common.base.Function
        public boolean equals(Object obj) {
            if (obj instanceof ConstantFunction) {
                return java.util.Objects.equals(this.value, ((ConstantFunction) obj).value);
            }
            return false;
        }

        public int hashCode() {
            E e = this.value;
            if (e == null) {
                return 0;
            }
            return e.hashCode();
        }

        public String toString() {
            return "Functions.constant(" + this.value + ")";
        }
    }
}
