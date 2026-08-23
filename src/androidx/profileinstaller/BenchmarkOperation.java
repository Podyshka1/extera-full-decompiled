package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import androidx.profileinstaller.ProfileInstallReceiver;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
abstract class BenchmarkOperation {
    static void dropShaderCache(Context context, ProfileInstallReceiver.ResultDiagnostics resultDiagnostics) {
        File cacheDir;
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            cacheDir = Api24ContextHelper.createDeviceProtectedStorageContext(context).getCacheDir();
        } else if (i >= 24) {
            cacheDir = Api21ContextHelper.getCodeCacheDir(Api24ContextHelper.createDeviceProtectedStorageContext(context));
        } else if (i == 23) {
            cacheDir = Api21ContextHelper.getCodeCacheDir(context);
        } else {
            cacheDir = context.getCacheDir();
        }
        if (deleteFilesRecursively(cacheDir)) {
            resultDiagnostics.onResultReceived(14, null);
        } else {
            resultDiagnostics.onResultReceived(15, null);
        }
    }

    static boolean deleteFilesRecursively(File file) {
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return false;
            }
            boolean z = true;
            for (File file2 : fileArrListFiles) {
                z = deleteFilesRecursively(file2) && z;
            }
            return z;
        }
        file.delete();
        return true;
    }

    private static class Api21ContextHelper {
        static File getCodeCacheDir(Context context) {
            return context.getCodeCacheDir();
        }
    }

    private static class Api24ContextHelper {
        static Context createDeviceProtectedStorageContext(Context context) {
            return context.createDeviceProtectedStorageContext();
        }
    }
}
