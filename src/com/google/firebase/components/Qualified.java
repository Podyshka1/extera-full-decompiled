package com.google.firebase.components;

/* JADX INFO: loaded from: classes.dex */
public final class Qualified {
    private final Class qualifier;
    private final Class type;

    private @interface Unqualified {
    }

    public Qualified(Class cls, Class cls2) {
        this.qualifier = cls;
        this.type = cls2;
    }

    public static Qualified unqualified(Class cls) {
        return new Qualified(Unqualified.class, cls);
    }

    public static Qualified qualified(Class cls, Class cls2) {
        return new Qualified(cls, cls2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Qualified.class != obj.getClass()) {
            return false;
        }
        Qualified qualified = (Qualified) obj;
        if (this.type.equals(qualified.type)) {
            return this.qualifier.equals(qualified.qualifier);
        }
        return false;
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + this.qualifier.hashCode();
    }

    public String toString() {
        if (this.qualifier == Unqualified.class) {
            return this.type.getName();
        }
        return "@" + this.qualifier.getName() + " " + this.type.getName();
    }
}
