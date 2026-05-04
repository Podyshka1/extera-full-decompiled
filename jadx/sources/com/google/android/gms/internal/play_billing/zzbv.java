package com.google.android.gms.internal.play_billing;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import p022j$.util.Objects;
import p022j$.util.function.BiConsumer$CC;
import p022j$.util.function.BiFunction$CC;
import p022j$.util.function.Function$CC;
import p022j$.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzbv {
    private static final Collector zza = Collector.CC.m908of(new Supplier() { // from class: com.google.android.gms.internal.play_billing.zzbj
        @Override // java.util.function.Supplier
        public final Object get() {
            return new zzck(4);
        }
    }, new BiConsumer() { // from class: com.google.android.gms.internal.play_billing.zzbm
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((zzck) obj).zzd(obj2);
        }

        public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
            return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }, new BinaryOperator() { // from class: com.google.android.gms.internal.play_billing.zzbn
        public /* synthetic */ BiFunction andThen(Function function) {
            return BiFunction$CC.$default$andThen(this, function);
        }

        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            zzck zzckVar = (zzck) obj;
            zzck zzckVar2 = (zzck) obj2;
            zzckVar.zzb(zzckVar2.zza, zzckVar2.zzb);
            return zzckVar;
        }
    }, new Function() { // from class: com.google.android.gms.internal.play_billing.zzbo
        public /* synthetic */ Function andThen(Function function) {
            return Function$CC.$default$andThen(this, function);
        }

        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((zzck) obj).zze();
        }

        public /* synthetic */ Function compose(Function function) {
            return Function$CC.$default$compose(this, function);
        }
    }, new Collector.Characteristics[0]);

    static {
        Collector.CC.m908of(new Supplier() { // from class: com.google.android.gms.internal.play_billing.zzbp
            @Override // java.util.function.Supplier
            public final Object get() {
                return new zzcu();
            }
        }, new BiConsumer() { // from class: com.google.android.gms.internal.play_billing.zzbq
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((zzcu) obj).zzd(obj2);
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.android.gms.internal.play_billing.zzbr
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                zzcu zzcuVar = (zzcu) obj;
                zzcu zzcuVar2 = (zzcu) obj2;
                zzcuVar.zzb(zzcuVar2.zza, zzcuVar2.zzb);
                return zzcuVar;
            }
        }, new Function() { // from class: com.google.android.gms.internal.play_billing.zzbs
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                zzcu zzcuVar = (zzcu) obj;
                int i = zzcuVar.zzb;
                if (i == 0) {
                    return zzdq.zza;
                }
                if (i == 1) {
                    Object obj2 = zzcuVar.zza[0];
                    Objects.requireNonNull(obj2);
                    return new zzdt(obj2);
                }
                zzcv zzcvVarZzl = zzcv.zzl(i, zzcuVar.zza);
                zzcuVar.zzb = zzcvVarZzl.size();
                zzcuVar.zzc = true;
                return zzcvVarZzl;
            }
        }, new Collector.Characteristics[0]);
        Collector.CC.m908of(new Supplier() { // from class: com.google.android.gms.internal.play_billing.zzbt
            @Override // java.util.function.Supplier
            public final Object get() {
                return new zzcs();
            }
        }, new BiConsumer() { // from class: com.google.android.gms.internal.play_billing.zzbu
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((zzcs) obj).zza((zzdh) obj2);
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.android.gms.internal.play_billing.zzbk
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                zzcs zzcsVar = (zzcs) obj;
                zzcsVar.zzb((zzcs) obj2);
                return zzcsVar;
            }
        }, new Function() { // from class: com.google.android.gms.internal.play_billing.zzbl
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((zzcs) obj).zzc();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Collector.Characteristics[0]);
    }

    static Collector zza() {
        return zza;
    }
}
