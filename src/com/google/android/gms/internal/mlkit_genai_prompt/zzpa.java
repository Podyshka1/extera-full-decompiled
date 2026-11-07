package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzpa extends AtomicReference implements Runnable {
    private static final Runnable zza = new zzoz(null);
    private static final Runnable zzb = new zzoz(null);

    private final void zzg(Thread thread) {
        Runnable runnable = (Runnable) get();
        zzoy zzoyVar = null;
        boolean z = false;
        int i = 0;
        while (true) {
            if (!(runnable instanceof zzoy)) {
                if (runnable != zzb) {
                    break;
                }
            } else {
                zzoyVar = (zzoy) runnable;
            }
            i++;
            if (i > 1000) {
                Runnable runnable2 = zzb;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    z = Thread.interrupted() || z;
                    LockSupport.park(zzoyVar);
                }
            } else {
                Thread.yield();
            }
            runnable = (Runnable) get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread threadCurrentThread = Thread.currentThread();
        Object objZzb = null;
        if (compareAndSet(null, threadCurrentThread)) {
            boolean zZza = zza();
            if (!zZza) {
                try {
                    objZzb = zzb();
                } catch (Throwable th) {
                    try {
                        zzpj.zza(th);
                        if (!compareAndSet(threadCurrentThread, zza)) {
                            zzg(threadCurrentThread);
                        }
                        zzd(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(threadCurrentThread, zza)) {
                            zzg(threadCurrentThread);
                        }
                        zzc(null);
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(threadCurrentThread, zza)) {
                zzg(threadCurrentThread);
            }
            if (zZza) {
                return;
            }
            zzc(objZzb);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String string;
        Runnable runnable = (Runnable) get();
        if (runnable == zza) {
            string = "running=[DONE]";
        } else if (runnable instanceof zzoy) {
            string = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21);
            sb.append("running=[RUNNING ON ");
            sb.append(name);
            sb.append("]");
            string = sb.toString();
        } else {
            string = "running=[NOT STARTED YET]";
        }
        String strZzf = zzf();
        StringBuilder sb2 = new StringBuilder(string.length() + 2 + String.valueOf(strZzf).length());
        sb2.append(string);
        sb2.append(", ");
        sb2.append(strZzf);
        return sb2.toString();
    }

    public abstract boolean zza();

    public abstract Object zzb();

    public abstract void zzc(Object obj);

    public abstract void zzd(Throwable th);

    public final void zze() {
        Runnable runnable = (Runnable) get();
        if (runnable instanceof Thread) {
            zzoy zzoyVar = new zzoy(this, null);
            zzoyVar.zza(Thread.currentThread());
            if (compareAndSet(runnable, zzoyVar)) {
                try {
                    Thread thread = (Thread) runnable;
                    thread.interrupt();
                    if (((Runnable) getAndSet(zza)) == zzb) {
                        LockSupport.unpark(thread);
                    }
                } catch (Throwable th) {
                    if (((Runnable) getAndSet(zza)) == zzb) {
                        LockSupport.unpark((Thread) runnable);
                    }
                    throw th;
                }
            }
        }
    }

    public abstract String zzf();
}
