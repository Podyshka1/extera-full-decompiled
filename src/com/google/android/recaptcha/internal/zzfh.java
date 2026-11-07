package com.google.android.recaptcha.internal;

import com.google.android.play.core.integrity.StandardIntegrityException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzfh extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzfp zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfh(zzfp zzfpVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzfpVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzfh(this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfh) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r9v29, types: [java.lang.Object, kotlin.Unit] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzhe zzheVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Ref.ObjectRef objectRef = this.zzb;
        try {
            if (objectRef != 0) {
                Ref.ObjectRef objectRef2 = (Ref.ObjectRef) this.zza;
                ResultKt.throwOnFailure(obj);
                objectRef = objectRef2;
            } else {
                ResultKt.throwOnFailure(obj);
                Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                zzfg zzfgVar = new zzfg(this.zzc, objectRef3, null);
                this.zza = objectRef3;
                this.zzb = 1;
                objectRef = objectRef3;
                if (TimeoutKt.withTimeout(60000L, zzfgVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            this = Unit.INSTANCE;
            return this;
        } catch (Exception e) {
            zzfp zzfpVar = this.zzc;
            CompletableDeferred completableDeferredZza = zzfpVar.zza();
            Throwable th = (Throwable) objectRef.element;
            if (th == null) {
                th = e;
            }
            completableDeferredZza.completeExceptionally(th);
            zzfpVar.zzc = zzfq.zza;
            zzhf zzhfVar = zzhf.zzb;
            Throwable th2 = (Throwable) objectRef.element;
            if (th2 == null) {
                th2 = e;
            }
            if (th2 instanceof StandardIntegrityException) {
                int errorCode = ((StandardIntegrityException) th2).getErrorCode();
                if (errorCode == -100) {
                    zzheVar = zzhe.zzag;
                } else if (errorCode == -12) {
                    zzheVar = zzhe.zzZ;
                } else if (errorCode == -3) {
                    zzheVar = zzhe.zzT;
                } else if (errorCode == -2) {
                    zzheVar = zzhe.zzS;
                } else if (errorCode != -1) {
                    switch (errorCode) {
                        case -19:
                            zzheVar = zzhe.zzaf;
                            break;
                        case -18:
                            zzheVar = zzhe.zzae;
                            break;
                        case -17:
                            zzheVar = zzhe.zzad;
                            break;
                        case -16:
                            zzheVar = zzhe.zzac;
                            break;
                        case -15:
                            zzheVar = zzhe.zzab;
                            break;
                        case -14:
                            zzheVar = zzhe.zzaa;
                            break;
                        default:
                            switch (errorCode) {
                                case -9:
                                    zzheVar = zzhe.zzY;
                                    break;
                                case -8:
                                    zzheVar = zzhe.zzX;
                                    break;
                                case -7:
                                    zzheVar = zzhe.zzW;
                                    break;
                                case -6:
                                    zzheVar = zzhe.zzV;
                                    break;
                                case -5:
                                    zzheVar = zzhe.zzU;
                                    break;
                                default:
                                    zzheVar = zzhe.zza;
                                    break;
                            }
                            break;
                    }
                } else {
                    zzheVar = zzhe.zzR;
                }
            } else {
                zzheVar = zzhe.zza;
            }
            throw new zzhg(zzhfVar, zzheVar, e.getMessage(), null, 8, null);
        }
    }
}
