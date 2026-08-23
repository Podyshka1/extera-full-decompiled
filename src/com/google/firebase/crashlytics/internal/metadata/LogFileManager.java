package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.persistence.FileStore;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class LogFileManager {
    private static final NoopLogStore NOOP_LOG_STORE = new NoopLogStore();
    private FileLogStore currentLog;
    private final FileStore fileStore;

    public LogFileManager(FileStore fileStore) {
        this.fileStore = fileStore;
        this.currentLog = NOOP_LOG_STORE;
    }

    public LogFileManager(FileStore fileStore, String str) {
        this(fileStore);
        setCurrentSession(str);
    }

    public final void setCurrentSession(String str) {
        this.currentLog.closeLogFile();
        this.currentLog = NOOP_LOG_STORE;
        if (str == null) {
            return;
        }
        setLogFile(getWorkingFileForSession(str), 65536);
    }

    public void writeToLog(long j, String str) {
        this.currentLog.writeToLog(j, str);
    }

    public byte[] getBytesForLog() {
        return this.currentLog.getLogAsBytes();
    }

    public String getLogString() {
        return this.currentLog.getLogAsString();
    }

    public void clearLog() {
        this.currentLog.deleteLogFile();
    }

    public void setLogFile(File file, int i) {
        this.currentLog = new QueueFileLogStore(file, i);
    }

    private File getWorkingFileForSession(String str) {
        return this.fileStore.getSessionFile(str, "userlog");
    }

    public static final class NoopLogStore implements FileLogStore {
        @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
        public void closeLogFile() {
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
        public void deleteLogFile() {
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
        public byte[] getLogAsBytes() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
        public String getLogAsString() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
        public void writeToLog(long j, String str) {
        }

        private NoopLogStore() {
        }
    }
}
