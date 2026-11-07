package com.google.android.play.integrity.internal;

import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public abstract class as extends ao implements Set {

    /* JADX INFO: renamed from: a */
    private transient ar f395a;

    /* JADX INFO: renamed from: h */
    public static as m429h() {
        return au.f398a;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof as) {
            ((as) obj).mo432i();
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
    public final ar m430f() {
        ar arVar = this.f395a;
        if (arVar != null) {
            return arVar;
        }
        ar arVarMo431g = mo431g();
        this.f395a = arVarMo431g;
        return arVarMo431g;
    }

    /* JADX INFO: renamed from: g */
    public abstract ar mo431g();

    /* JADX INFO: renamed from: i */
    public abstract boolean mo432i();
}
