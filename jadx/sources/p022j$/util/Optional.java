package p022j$.util;

import java.util.NoSuchElementException;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public final class Optional<T> {

    /* JADX INFO: renamed from: b */
    public static final Optional f911b = new Optional();

    /* JADX INFO: renamed from: a */
    public final Object f912a;

    public Optional() {
        this.f912a = null;
    }

    public static <T> Optional<T> empty() {
        return f911b;
    }

    public Optional(Object obj) {
        this.f912a = Objects.requireNonNull(obj);
    }

    /* JADX INFO: renamed from: of */
    public static <T> Optional<T> m814of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : m814of(t);
    }

    public T get() {
        T t = (T) this.f912a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public boolean isPresent() {
        return this.f912a != null;
    }

    public <U> Optional<U> map(Function<? super T, ? extends U> function) {
        Objects.requireNonNull(function);
        if (!isPresent()) {
            return empty();
        }
        return ofNullable(function.apply((Object) this.f912a));
    }

    public T orElse(T t) {
        T t2 = (T) this.f912a;
        return t2 != null ? t2 : t;
    }

    public T orElseGet(Supplier<? extends T> supplier) {
        T t = (T) this.f912a;
        return t != null ? t : supplier.get();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public <X extends Throwable> T orElseThrow(Supplier<? extends X> supplier) throws X {
        T t = (T) this.f912a;
        if (t != null) {
            return t;
        }
        throw supplier.get();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return Objects.equals(this.f912a, ((Optional) obj).f912a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f912a);
    }

    public final String toString() {
        Object obj = this.f912a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
