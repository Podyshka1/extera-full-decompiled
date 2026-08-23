package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
class zzaf extends zzad implements List {
    final /* synthetic */ zzag zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaf(zzag zzagVar, Object obj, @CheckForNull List list, zzad zzadVar) {
        super(zzagVar, obj, list, zzadVar);
        this.zzf = zzagVar;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        zzb();
        boolean zIsEmpty = this.zzb.isEmpty();
        ((List) this.zzb).add(i, obj);
        zzag.zzd(this.zzf);
        if (zIsEmpty) {
            zza();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.zzb).addAll(i, collection);
        if (zAddAll) {
            zzag.zzf(this.zzf, this.zzb.size() - size);
            if (size == 0) {
                zza();
                return true;
            }
        }
        return zAddAll;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzb();
        return ((List) this.zzb).get(i);
    }

    @Override // java.util.List
    public final int indexOf(@CheckForNull Object obj) {
        zzb();
        return ((List) this.zzb).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
        zzb();
        return ((List) this.zzb).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        zzb();
        return new zzae(this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        zzb();
        Object objRemove = ((List) this.zzb).remove(i);
        zzag.zze(this.zzf);
        zzc();
        return objRemove;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        zzb();
        return ((List) this.zzb).set(i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_label.zzag] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.mlkit_vision_label.zzad] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.util.List
    public final List subList(int i, int i2) {
        zzb();
        ?? r0 = this.zzf;
        Object obj = this.zza;
        List listSubList = ((List) this.zzb).subList(i, i2);
        zzad zzadVar = this.zzc;
        ?? r3 = this;
        if (zzadVar != null) {
            r3 = zzadVar;
        }
        return r0.zzi(obj, listSubList, r3);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        zzb();
        return new zzae(this, i);
    }
}
