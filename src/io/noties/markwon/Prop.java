package io.noties.markwon;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public class Prop<T> {
    private final String name;

    public static <T> Prop<T> of(String str) {
        return new Prop<>(str);
    }

    public Prop(String str) {
        this.name = str;
    }

    public T get(RenderProps renderProps) {
        return (T) renderProps.get(this);
    }

    public T require(RenderProps renderProps) {
        T t = get(renderProps);
        if (t != null) {
            return t;
        }
        f$$ExternalSyntheticBUOutline2.m179m(this.name);
        return null;
    }

    public void set(RenderProps renderProps, T t) {
        renderProps.set(this, t);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.name.equals(((Prop) obj).name);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        return "Prop{name='" + this.name + "'}";
    }
}
