package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzon extends zzoo {
    zzon(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final void zza(Object obj, long j, byte b) {
        if (zzop.zzb) {
            zzop.zzD(obj, j, b);
        } else {
            zzop.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final boolean zzb(Object obj, long j) {
        return zzop.zzb ? zzop.zzu(obj, j) : zzop.zzv(obj, j);
    }

    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.measurement.zzop.zzw(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.measurement.zzop.zzx(java.lang.Object, long, boolean):void */
    /* JADX WARN: Method inline failed with exception
    java.lang.ArrayIndexOutOfBoundsException: arraycopy: length -1 is negative
    	at java.base/java.lang.System.arraycopy(Native Method)
    	at java.base/java.util.ArrayList.shiftTailOverGap(ArrayList.java:828)
    	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1774)
    	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1743)
    	at jadx.core.dex.instructions.args.SSAVar.removeUse(SSAVar.java:139)
    	at jadx.core.utils.InsnRemover.unbindArgUsage(InsnRemover.java:170)
    	at jadx.core.dex.nodes.InsnNode.replaceArg(InsnNode.java:137)
    	at jadx.core.dex.regions.conditions.IfCondition.replaceArg(IfCondition.java:270)
    	at jadx.core.dex.instructions.mods.TernaryInsn.replaceArg(TernaryInsn.java:67)
    	at jadx.core.dex.nodes.InsnNode.replaceArg(InsnNode.java:141)
    	at jadx.core.dex.visitors.InlineMethods.replaceRegs(InlineMethods.java:127)
    	at jadx.core.dex.visitors.InlineMethods.inlineMethod(InlineMethods.java:86)
    	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:78)
    	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:50)
     */
    /* JADX WARN: Unknown register number '(r5v0 'z' boolean)' in method call: com.google.android.gms.internal.measurement.zzop.zzx(java.lang.Object, long, boolean):void */
    @Override // com.google.android.gms.internal.measurement.zzoo
    public final void zzc(Object obj, long j, boolean z) {
        if (zzop.zzb) {
            zzop.zzw(obj, j, z);
        } else {
            zzop.zzx(obj, j, z);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final float zzd(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final void zze(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final double zzf(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final void zzg(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }
}
