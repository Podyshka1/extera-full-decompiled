package com.android.p003dx.rop.annotation;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.util.MutabilityControl;
import com.android.p003dx.util.ToHuman;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class Annotation extends MutabilityControl implements Comparable<Annotation>, ToHuman {
    private final TreeMap<CstString, NameValuePair> elements;
    private final CstType type;
    private final AnnotationVisibility visibility;

    public Annotation(CstType cstType, AnnotationVisibility annotationVisibility) {
        if (cstType == null) {
            throw new NullPointerException("type == null");
        }
        if (annotationVisibility == null) {
            throw new NullPointerException("visibility == null");
        }
        this.type = cstType;
        this.visibility = annotationVisibility;
        this.elements = new TreeMap<>();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Annotation)) {
            return false;
        }
        Annotation annotation = (Annotation) obj;
        if (this.type.equals(annotation.type) && this.visibility == annotation.visibility) {
            return this.elements.equals(annotation.elements);
        }
        return false;
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + this.elements.hashCode()) * 31) + this.visibility.hashCode();
    }

    @Override // java.lang.Comparable
    public int compareTo(Annotation annotation) {
        int iCompareTo = this.type.compareTo((Constant) annotation.type);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int iCompareTo2 = this.visibility.compareTo(annotation.visibility);
        if (iCompareTo2 != 0) {
            return iCompareTo2;
        }
        Iterator<NameValuePair> it = this.elements.values().iterator();
        Iterator<NameValuePair> it2 = annotation.elements.values().iterator();
        while (it.hasNext() && it2.hasNext()) {
            int iCompareTo3 = it.next().compareTo(it2.next());
            if (iCompareTo3 != 0) {
                return iCompareTo3;
            }
        }
        if (it.hasNext()) {
            return 1;
        }
        return it2.hasNext() ? -1 : 0;
    }

    public String toString() {
        return toHuman();
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.visibility.toHuman());
        sb.append("-annotation ");
        sb.append(this.type.toHuman());
        sb.append(" {");
        boolean z = true;
        for (NameValuePair nameValuePair : this.elements.values()) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(nameValuePair.getName().toHuman());
            sb.append(": ");
            sb.append(nameValuePair.getValue().toHuman());
        }
        sb.append("}");
        return sb.toString();
    }

    public CstType getType() {
        return this.type;
    }

    public AnnotationVisibility getVisibility() {
        return this.visibility;
    }

    public void put(NameValuePair nameValuePair) {
        throwIfImmutable();
        if (nameValuePair == null) {
            throw new NullPointerException("pair == null");
        }
        this.elements.put(nameValuePair.getName(), nameValuePair);
    }

    public void add(NameValuePair nameValuePair) {
        throwIfImmutable();
        if (nameValuePair == null) {
            throw new NullPointerException("pair == null");
        }
        CstString name = nameValuePair.getName();
        if (this.elements.get(name) != null) {
            throw new IllegalArgumentException("name already added: " + name);
        }
        this.elements.put(name, nameValuePair);
    }

    public Collection<NameValuePair> getNameValuePairs() {
        return DesugarCollections.unmodifiableCollection(this.elements.values());
    }
}
