package org.telegram.messenger;

import android.util.SparseArray;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.LongCompanionObject;
import org.telegram.messenger.AutoDeleteMediaTask;
import org.telegram.messenger.CacheByChatsController;

/* JADX INFO: loaded from: classes.dex */
public class AutoDeleteMediaTask {
    public static Set<String> usingFilePaths = Collections.newSetFromMap(new ConcurrentHashMap());

    public static void run() {
        final int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (Math.abs(iCurrentTimeMillis - SharedConfig.lastKeepMediaCheckTime) < 86400) {
            return;
        }
        SharedConfig.lastKeepMediaCheckTime = iCurrentTimeMillis;
        final File fileCheckDirectory = FileLoader.checkDirectory(4);
        Utilities.cacheClearQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.AutoDeleteMediaTask$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AutoDeleteMediaTask.$r8$lambda$ap5ZJdebehBgIX4zKtBVK_9N3_k(iCurrentTimeMillis, fileCheckDirectory);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x02a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$ap5ZJdebehBgIX4zKtBVK_9N3_k(int i, File file) {
        int i2;
        long j;
        int i3;
        int i4;
        long j2;
        long daysInSeconds;
        long daysInSeconds2;
        int i5;
        ArrayList<? extends CacheByChatsController.KeepMediaFile> arrayList;
        long j3;
        int i6 = i;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("checkKeepMedia start task");
        }
        ArrayList arrayList2 = new ArrayList();
        int i7 = 0;
        boolean z = false;
        while (true) {
            i2 = 1;
            if (i7 >= 16) {
                break;
            }
            if (UserConfig.getInstance(i7).isClientActivated()) {
                CacheByChatsController cacheByChatsController = UserConfig.getInstance(i7).getMessagesController().getCacheByChatsController();
                arrayList2.add(cacheByChatsController);
                if (cacheByChatsController.getKeepMediaExceptionsByDialogs().size() > 0) {
                    z = true;
                }
            }
            i7++;
        }
        int i8 = 4;
        int[] iArr = new int[4];
        boolean z2 = true;
        long j4 = LongCompanionObject.MAX_VALUE;
        for (int i9 = 0; i9 < 4; i9++) {
            int i10 = SharedConfig.getPreferences().getInt("keep_media_type_" + i9, CacheByChatsController.getDefault(i9));
            iArr[i9] = i10;
            if (i10 != CacheByChatsController.KEEP_MEDIA_FOREVER) {
                z2 = false;
            }
            long daysInSeconds3 = CacheByChatsController.getDaysInSeconds(i10);
            if (daysInSeconds3 < j4) {
                j4 = daysInSeconds3;
            }
        }
        if (z) {
            z2 = false;
        }
        SparseArray<File> sparseArrayCreateMediaPaths = ImageLoader.getInstance().createMediaPaths();
        int i11 = 0;
        int i12 = 0;
        long length = 0;
        while (i12 < sparseArrayCreateMediaPaths.size()) {
            if (z2 && (sparseArrayCreateMediaPaths.keyAt(i12) == i2 || sparseArrayCreateMediaPaths.keyAt(i12) == 3)) {
                j2 = jCurrentTimeMillis;
            } else {
                int i13 = sparseArrayCreateMediaPaths.keyAt(i12) == i8 ? i2 : 0;
                try {
                    File[] fileArrListFiles = sparseArrayCreateMediaPaths.valueAt(i12).listFiles();
                    ArrayList<? extends CacheByChatsController.KeepMediaFile> arrayList3 = new ArrayList<>();
                    if (fileArrListFiles != null) {
                        for (int i14 = 0; i14 < fileArrListFiles.length; i14++) {
                            if (!fileArrListFiles[i14].isDirectory() && !usingFilePaths.contains(fileArrListFiles[i14].getAbsolutePath())) {
                                arrayList3.add(new CacheByChatsController.KeepMediaFile(fileArrListFiles[i14]));
                            }
                        }
                    }
                    for (int i15 = 0; i15 < arrayList2.size(); i15++) {
                        ((CacheByChatsController) arrayList2.get(i15)).lookupFiles(arrayList3);
                    }
                    int i16 = 0;
                    while (i16 < arrayList3.size()) {
                        CacheByChatsController.KeepMediaFile keepMediaFile = (CacheByChatsController.KeepMediaFile) arrayList3.get(i16);
                        try {
                            if (keepMediaFile.isStory) {
                                daysInSeconds2 = CacheByChatsController.getDaysInSeconds(iArr[3]);
                                j2 = jCurrentTimeMillis;
                            } else {
                                j2 = jCurrentTimeMillis;
                                int i17 = keepMediaFile.keepMedia;
                                if (i17 != CacheByChatsController.KEEP_MEDIA_FOREVER) {
                                    if (i17 >= 0) {
                                        daysInSeconds = CacheByChatsController.getDaysInSeconds(i17);
                                    } else {
                                        int i18 = keepMediaFile.dialogType;
                                        if (i18 >= 0) {
                                            daysInSeconds = CacheByChatsController.getDaysInSeconds(iArr[i18]);
                                        } else if (i13 == 0) {
                                            daysInSeconds = j4;
                                        }
                                    }
                                    if (daysInSeconds != LongCompanionObject.MAX_VALUE) {
                                        daysInSeconds2 = daysInSeconds;
                                    }
                                }
                                i5 = i16;
                                arrayList = arrayList3;
                                i16 = i5 + 1;
                                i6 = i;
                                arrayList3 = arrayList;
                                jCurrentTimeMillis = j2;
                            }
                            arrayList = arrayList3;
                            long lastUsageFileTime = Utilities.getLastUsageFileTime(keepMediaFile.file.getAbsolutePath());
                            if (lastUsageFileTime <= 316000000 || lastUsageFileTime >= j3) {
                                i5 = i16;
                            } else {
                                i5 = i16;
                                if (!usingFilePaths.contains(keepMediaFile.file.getPath())) {
                                    try {
                                        if (BuildVars.LOGS_ENABLED) {
                                            i11++;
                                            length += keepMediaFile.file.length();
                                        }
                                        if (BuildVars.DEBUG_PRIVATE_VERSION) {
                                            FileLog.m989d("delete file " + keepMediaFile.file.getPath() + " last_usage_time=" + lastUsageFileTime + " time_local=" + j3 + " story=" + keepMediaFile.isStory);
                                        }
                                        keepMediaFile.file.delete();
                                    } catch (Exception e) {
                                        FileLog.m992e(e);
                                    }
                                }
                            }
                            i16 = i5 + 1;
                            i6 = i;
                            arrayList3 = arrayList;
                            jCurrentTimeMillis = j2;
                        } catch (Throwable th) {
                            th = th;
                            FileLog.m992e(th);
                            i12++;
                            i6 = i;
                            jCurrentTimeMillis = j2;
                            i8 = 4;
                            i2 = 1;
                        }
                        j3 = ((long) i6) - daysInSeconds2;
                    }
                    j2 = jCurrentTimeMillis;
                } catch (Throwable th2) {
                    th = th2;
                    j2 = jCurrentTimeMillis;
                }
            }
            i12++;
            i6 = i;
            jCurrentTimeMillis = j2;
            i8 = 4;
            i2 = 1;
        }
        long j5 = jCurrentTimeMillis;
        int i19 = SharedConfig.getPreferences().getInt("cache_limit", Integer.MAX_VALUE);
        if (i19 == Integer.MAX_VALUE) {
            j = 0;
            i3 = 0;
            i4 = 0;
        } else {
            long j6 = i19 == 1 ? 314572800L : ((long) i19) * 1048576000;
            long dirSize = 0;
            for (int i20 = 0; i20 < sparseArrayCreateMediaPaths.size(); i20++) {
                dirSize += Utilities.getDirSize(sparseArrayCreateMediaPaths.valueAt(i20).getAbsolutePath(), 0, true);
            }
            if (dirSize > j6) {
                ArrayList<? extends CacheByChatsController.KeepMediaFile> arrayList4 = new ArrayList<>();
                for (int i21 = 0; i21 < sparseArrayCreateMediaPaths.size(); i21++) {
                    fillFilesRecursive(sparseArrayCreateMediaPaths.valueAt(i21), arrayList4);
                }
                for (int i22 = 0; i22 < arrayList2.size(); i22++) {
                    ((CacheByChatsController) arrayList2.get(i22)).lookupFiles(arrayList4);
                }
                Collections.sort(arrayList4, new Comparator() { // from class: org.telegram.messenger.AutoDeleteMediaTask$$ExternalSyntheticLambda1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return AutoDeleteMediaTask.$r8$lambda$8dg4GbivFh1IfgXiPENigECyG2w((AutoDeleteMediaTask.FileInfoInternal) obj, (AutoDeleteMediaTask.FileInfoInternal) obj2);
                    }
                });
                j = 0;
                int i23 = 0;
                i3 = 0;
                for (int i24 = 0; i24 < arrayList4.size(); i24++) {
                    if (((FileInfoInternal) arrayList4.get(i24)).keepMedia != CacheByChatsController.KEEP_MEDIA_FOREVER) {
                        if (((FileInfoInternal) arrayList4.get(i24)).lastUsageDate > 0) {
                            long length2 = ((FileInfoInternal) arrayList4.get(i24)).file.length();
                            dirSize -= length2;
                            i3++;
                            j += length2;
                            try {
                                ((FileInfoInternal) arrayList4.get(i24)).file.delete();
                            } catch (Exception unused) {
                            }
                            if (dirSize < j6) {
                                break;
                            }
                        } else {
                            i23++;
                        }
                    }
                }
                i4 = i23;
            }
        }
        File file2 = new File(file, "acache");
        if (file2.exists()) {
            try {
                Utilities.clearDir(file2.getAbsolutePath(), 0, i - 86400, false);
            } catch (Throwable th3) {
                FileLog.m992e(th3);
            }
        }
        MessagesController.getGlobalMainSettings().edit().putInt("lastKeepMediaCheckTime", SharedConfig.lastKeepMediaCheckTime).apply();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("checkKeepMedia task end time " + (System.currentTimeMillis() - j5) + " auto deleted info: files " + i11 + " size " + AndroidUtilities.formatFileSize(length) + "   deleted by size limit info: files " + i3 + " size " + AndroidUtilities.formatFileSize(j) + " unknownTimeFiles " + i4);
        }
    }

    public static /* synthetic */ int $r8$lambda$8dg4GbivFh1IfgXiPENigECyG2w(FileInfoInternal fileInfoInternal, FileInfoInternal fileInfoInternal2) {
        long j = fileInfoInternal2.lastUsageDate;
        long j2 = fileInfoInternal.lastUsageDate;
        if (j > j2) {
            return -1;
        }
        return j < j2 ? 1 : 0;
    }

    private static void fillFilesRecursive(File file, ArrayList<FileInfoInternal> arrayList) {
        File[] fileArrListFiles;
        if (file == null || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                fillFilesRecursive(file2, arrayList);
            } else if (!file2.getName().equals(".nomedia") && !usingFilePaths.contains(file2.getAbsolutePath())) {
                arrayList.add(new FileInfoInternal(file2));
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class FileInfoInternal extends CacheByChatsController.KeepMediaFile {
        final long lastUsageDate;

        private FileInfoInternal(File file) {
            super(file);
            this.lastUsageDate = Utilities.getLastUsageFileTime(file.getAbsolutePath());
        }
    }

    public static void lockFile(File file) {
        if (file == null) {
            return;
        }
        lockFile(file.getAbsolutePath());
    }

    public static void unlockFile(File file) {
        if (file == null) {
            return;
        }
        unlockFile(file.getAbsolutePath());
    }

    public static void lockFile(String str) {
        if (str == null) {
            return;
        }
        usingFilePaths.add(str);
    }

    public static void unlockFile(String str) {
        if (str == null) {
            return;
        }
        usingFilePaths.remove(str);
    }
}
