package com.android.p003dx.rop.annotation;

import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.util.MutabilityControl;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class Annotations extends MutabilityControl implements Comparable<Annotations> {
    public static final Annotations EMPTY;
    private final TreeMap<CstType, Annotation> annotations = new TreeMap<>();

    static {
        Annotations annotations = new Annotations();
        EMPTY = annotations;
        annotations.setImmutable();
    }

    public static Annotations combine(Annotations annotations, Annotations annotations2) {
        Annotations annotations3 = new Annotations();
        annotations3.addAll(annotations);
        annotations3.addAll(annotations2);
        annotations3.setImmutable();
        return annotations3;
    }

    public static Annotations combine(Annotations annotations, Annotation annotation) {
        Annotations annotations2 = new Annotations();
        annotations2.addAll(annotations);
        annotations2.add(annotation);
        annotations2.setImmutable();
        return annotations2;
    }

    public int hashCode() {
        return this.annotations.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Annotations) {
            return this.annotations.equals(((Annotations) obj).annotations);
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(Annotations annotations) {
        Iterator<Annotation> it = this.annotations.values().iterator();
        Iterator<Annotation> it2 = annotations.annotations.values().iterator();
        while (it.hasNext() && it2.hasNext()) {
            int iCompareTo2 = it.next().compareTo(it2.next());
            if (iCompareTo2 != 0) {
                return iCompareTo2;
            }
        }
        if (it.hasNext()) {
            return 1;
        }
        return it2.hasNext() ? -1 : 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("annotations{");
        boolean z = true;
        for (Annotation annotation : this.annotations.values()) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(annotation.toHuman());
        }
        sb.append("}");
        return sb.toString();
    }

    public int size() {
        return this.annotations.size();
    }

    public void add(Annotation annotation) {
        throwIfImmutable();
        if (annotation == null) {
            throw new NullPointerException("annotation == null");
        }
        CstType type = annotation.getType();
        if (this.annotations.containsKey(type)) {
            throw new IllegalArgumentException("duplicate type: " + type.toHuman());
        }
        this.annotations.put(type, annotation);
    }

    public void addAll(Annotations annotations) {
        throwIfImmutable();
        if (annotations == null) {
            throw new NullPointerException("toAdd == null");
        }
        Iterator<Annotation> it = annotations.annotations.values().iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public Collection<Annotation> getAnnotations() {
        return DesugarCollections.unmodifiableCollection(this.annotations.values());
    }
}
