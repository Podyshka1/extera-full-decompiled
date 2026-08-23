package com.google.android.gms.internal.measurement;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import android.util.Log;
import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzch {
    private static final Method zza;
    private static final Method zzb;

    static {
        Method declaredMethod;
        Method declaredMethod2 = null;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                declaredMethod = JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
            } catch (NoSuchMethodException unused) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "No scheduleAsPackage method available, falling back to schedule");
                }
                declaredMethod = null;
            }
        } else {
            declaredMethod = null;
        }
        zza = declaredMethod;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                declaredMethod2 = UserHandle.class.getDeclaredMethod("myUserId", null);
            } catch (NoSuchMethodException unused2) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "No myUserId method available");
                }
            }
        }
        zzb = declaredMethod2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(Context context, JobInfo jobInfo, String str, String str2) {
        Integer num;
        int iIntValue;
        JobScheduler jobScheduler = (JobScheduler) Preconditions.checkNotNull((JobScheduler) context.getSystemService("jobscheduler"));
        if (zza == null || context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS") != 0) {
            return jobScheduler.schedule(jobInfo);
        }
        Method method = zzb;
        if (method != null) {
            try {
                num = (Integer) method.invoke(UserHandle.class, null);
            } catch (IllegalAccessException | InvocationTargetException e) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "myUserId invocation illegal", e);
                }
            }
            iIntValue = num != null ? num.intValue() : 0;
        }
        Method method2 = zza;
        if (method2 != null) {
            try {
                Integer num2 = (Integer) method2.invoke(jobScheduler, jobInfo, "com.google.android.gms", Integer.valueOf(iIntValue), "UploadAlarm");
                if (num2 != null) {
                    return num2.intValue();
                }
                return 0;
            } catch (IllegalAccessException | InvocationTargetException e2) {
                Log.e("UploadAlarm", "error calling scheduleAsPackage", e2);
            }
        }
        return jobScheduler.schedule(jobInfo);
    }
}
