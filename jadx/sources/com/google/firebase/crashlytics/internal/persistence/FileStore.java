package com.google.firebase.crashlytics.internal.persistence;

import android.content.Context;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.ProcessDetailsProvider;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FileStore {
    private final File crashlyticsDir;
    private final File filesDir;
    private final File nativeReportsDir;
    private final File priorityReportsDir;
    final String processName;
    private final File reportsDir;
    private final File sessionsDir;

    public FileStore(Context context) {
        String str;
        String processName = ProcessDetailsProvider.INSTANCE.getCurrentProcessDetails(context).getProcessName();
        this.processName = processName;
        File filesDir = context.getFilesDir();
        this.filesDir = filesDir;
        if (useV3FileSystem()) {
            str = ".crashlytics.v3" + File.separator + sanitizeName(processName);
        } else {
            str = ".com.google.firebase.crashlytics.files.v1";
        }
        File filePrepareBaseDir = prepareBaseDir(new File(filesDir, str));
        this.crashlyticsDir = filePrepareBaseDir;
        this.sessionsDir = prepareBaseDir(new File(filePrepareBaseDir, "open-sessions"));
        this.reportsDir = prepareBaseDir(new File(filePrepareBaseDir, "reports"));
        this.priorityReportsDir = prepareBaseDir(new File(filePrepareBaseDir, "priority-reports"));
        this.nativeReportsDir = prepareBaseDir(new File(filePrepareBaseDir, "native-reports"));
    }

    public void cleanupPreviousFileSystems() {
        cleanupFileSystemDir(".com.google.firebase.crashlytics");
        cleanupFileSystemDir(".com.google.firebase.crashlytics-ndk");
        if (useV3FileSystem()) {
            cleanupFileSystemDir(".com.google.firebase.crashlytics.files.v1");
            cleanupFileSystemDirs(".com.google.firebase.crashlytics.files.v2" + File.pathSeparator);
        }
    }

    private void cleanupFileSystemDir(String str) {
        File file = new File(this.filesDir, str);
        if (file.exists() && recursiveDelete(file)) {
            Logger.getLogger().m501d("Deleted previous Crashlytics file system: " + file.getPath());
        }
    }

    private void cleanupFileSystemDirs(final String str) {
        String[] list;
        if (!this.filesDir.exists() || (list = this.filesDir.list(new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.persistence.FileStore$$ExternalSyntheticLambda0
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return str2.startsWith(str);
            }
        })) == null) {
            return;
        }
        for (String str2 : list) {
            cleanupFileSystemDir(str2);
        }
    }

    static boolean recursiveDelete(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                recursiveDelete(file2);
            }
        }
        return file.delete();
    }

    public File getCommonFile(String str) {
        return new File(this.crashlyticsDir, str);
    }

    public List getCommonFiles(FilenameFilter filenameFilter) {
        return safeArrayToList(this.crashlyticsDir.listFiles(filenameFilter));
    }

    private File getSessionDir(String str) {
        return prepareDir(new File(this.sessionsDir, str));
    }

    public File getSessionFile(String str, String str2) {
        return new File(getSessionDir(str), str2);
    }

    public List getSessionFiles(String str, FilenameFilter filenameFilter) {
        return safeArrayToList(getSessionDir(str).listFiles(filenameFilter));
    }

    public File getNativeSessionDir(String str) {
        return prepareDir(new File(getSessionDir(str), "native"));
    }

    public boolean deleteSessionFiles(String str) {
        return recursiveDelete(new File(this.sessionsDir, str));
    }

    public List getAllOpenSessionIds() {
        return safeArrayToList(this.sessionsDir.list());
    }

    public File getReport(String str) {
        return new File(this.reportsDir, str);
    }

    public List getReports() {
        return safeArrayToList(this.reportsDir.listFiles());
    }

    public File getPriorityReport(String str) {
        return new File(this.priorityReportsDir, str);
    }

    public List getPriorityReports() {
        return safeArrayToList(this.priorityReportsDir.listFiles());
    }

    public File getNativeReport(String str) {
        return new File(this.nativeReportsDir, str);
    }

    public List getNativeReports() {
        return safeArrayToList(this.nativeReportsDir.listFiles());
    }

    private static File prepareDir(File file) {
        file.mkdirs();
        return file;
    }

    private static synchronized File prepareBaseDir(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return file;
                }
                Logger.getLogger().m501d("Unexpected non-directory file: " + file + "; deleting file and creating new directory.");
                file.delete();
            }
            if (!file.mkdirs()) {
                Logger.getLogger().m503e("Could not create Crashlytics-specific directory: " + file);
            }
            return file;
        } catch (Throwable th) {
            throw th;
        }
    }

    private static List safeArrayToList(Object[] objArr) {
        return objArr == null ? Collections.EMPTY_LIST : Arrays.asList(objArr);
    }

    private boolean useV3FileSystem() {
        return !this.processName.isEmpty();
    }

    static String sanitizeName(String str) {
        if (str.length() > 40) {
            return CommonUtils.sha1(str);
        }
        return str.replaceAll("[^a-zA-Z0-9.]", "_");
    }
}
