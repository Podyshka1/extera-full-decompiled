package com.google.android.gms.common.util;

import android.app.Application;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.common.zzab;
import com.google.android.gms.internal.common.zzac;
import com.google.android.gms.internal.common.zzj;
import com.google.android.gms.internal.common.zzl;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ProcessUtils {
    private static String zza;
    private static int zzb;
    private static Boolean zzc;

    public static boolean zza() {
        Boolean boolValueOf = zzc;
        if (boolValueOf == null) {
            if (PlatformVersion.isAtLeastP()) {
                boolValueOf = Boolean.valueOf(Process.isIsolated());
            } else {
                try {
                    Object objZza = zzl.zza(Process.class, "isIsolated", new zzj[0]);
                    Object[] objArr = new Object[0];
                    if (objZza == null) {
                        throw new zzac(zzab.zza("expected a non-null reference", objArr));
                    }
                    boolValueOf = (Boolean) objZza;
                } catch (ReflectiveOperationException unused) {
                    boolValueOf = Boolean.FALSE;
                }
            }
            zzc = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static String getMyProcessName() throws Throwable {
        BufferedReader bufferedReader;
        if (zza == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                zza = Application.getProcessName();
            } else {
                int iMyPid = zzb;
                if (iMyPid == 0) {
                    iMyPid = Process.myPid();
                    zzb = iMyPid;
                }
                String strTrim = null;
                strTrim = null;
                strTrim = null;
                BufferedReader bufferedReader2 = null;
                if (iMyPid > 0) {
                    try {
                        String str = "/proc/" + iMyPid + "/cmdline";
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bufferedReader = new BufferedReader(new FileReader(str));
                            try {
                                String line = bufferedReader.readLine();
                                Preconditions.checkNotNull(line);
                                strTrim = line.trim();
                            } catch (IOException unused) {
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader2 = bufferedReader;
                                IOUtils.closeQuietly(bufferedReader2);
                                throw th;
                            }
                        } finally {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        }
                    } catch (IOException unused2) {
                        bufferedReader = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    IOUtils.closeQuietly(bufferedReader);
                }
                zza = strTrim;
            }
        }
        return zza;
    }
}
