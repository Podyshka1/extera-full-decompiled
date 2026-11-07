package com.google.android.play.integrity.internal;

import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public abstract class as extends ao implements Set {

    /* JADX INFO: renamed from: a */
    private transient ar f396a;

    /* JADX INFO: renamed from: h */
    public static as m453h() {
        return au.f399a;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof as) {
            ((as) obj).mo456i();
            if (obj.hashCode() != 0) {
                return false;
            }
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    return containsAll(set);
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public final ar m454f() {
        ar arVar = this.f396a;
        if (arVar != null) {
            return arVar;
        }
        ar arVarMo455g = mo455g();
        this.f396a = arVarMo455g;
        return arVarMo455g;
    }

    /* JADX INFO: renamed from: g */
    public abstract ar mo455g();

    /* JADX INFO: renamed from: i */
    public abstract boolean mo456i();
}
