package com.google.firebase.crashlytics.internal.persistence;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsAppQualitySessionsSubscriber;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsReportPersistence {
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final FileStore fileStore;
    private final CrashlyticsAppQualitySessionsSubscriber sessionsSubscriber;
    private final SettingsProvider settingsProvider;
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final int EVENT_NAME_LENGTH = 15;
    private static final CrashlyticsReportJsonTransform TRANSFORM = new CrashlyticsReportJsonTransform();
    private static final Comparator LATEST_SESSION_ID_FIRST_COMPARATOR = new Comparator() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((File) obj2).getName().compareTo(((File) obj).getName());
        }
    };
    private static final FilenameFilter EVENT_FILE_FILTER = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda1
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return str.startsWith("event");
        }
    };

    private static long convertTimestampFromSecondsToMs(long j) {
        return j * 1000;
    }

    public CrashlyticsReportPersistence(FileStore fileStore, SettingsProvider settingsProvider, CrashlyticsAppQualitySessionsSubscriber crashlyticsAppQualitySessionsSubscriber) {
        this.fileStore = fileStore;
        this.settingsProvider = settingsProvider;
        this.sessionsSubscriber = crashlyticsAppQualitySessionsSubscriber;
    }

    public void persistReport(CrashlyticsReport crashlyticsReport) {
        CrashlyticsReport.Session session = crashlyticsReport.getSession();
        if (session == null) {
            Logger.getLogger().m501d("Could not get session for report");
            return;
        }
        String identifier = session.getIdentifier();
        try {
            writeTextFile(this.fileStore.getSessionFile(identifier, "report"), TRANSFORM.reportToJson(crashlyticsReport));
            writeTextFile(this.fileStore.getSessionFile(identifier, "start-time"), _UrlKt.FRAGMENT_ENCODE_SET, session.getStartedAt());
        } catch (IOException e) {
            Logger.getLogger().m502d("Could not persist report for session " + identifier, e);
        }
    }

    public void persistEvent(CrashlyticsReport.Session.Event event, String str, boolean z) {
        int i = this.settingsProvider.getSettingsSync().sessionData.maxCustomExceptionEvents;
        try {
            writeTextFile(this.fileStore.getSessionFile(str, generateEventFilename(this.eventCounter.getAndIncrement(), z)), TRANSFORM.eventToJson(event));
        } catch (IOException e) {
            Logger.getLogger().m510w("Could not persist event for session " + str, e);
        }
        trimEvents(str, i);
    }

    public SortedSet getOpenSessionIds() {
        return new TreeSet(this.fileStore.getAllOpenSessionIds()).descendingSet();
    }

    public long getStartTimestampMillis(String str) {
        return this.fileStore.getSessionFile(str, "start-time").lastModified();
    }

    public boolean hasFinalizedReports() {
        return (this.fileStore.getReports().isEmpty() && this.fileStore.getPriorityReports().isEmpty() && this.fileStore.getNativeReports().isEmpty()) ? false : true;
    }

    public void deleteAllReports() {
        deleteFiles(this.fileStore.getReports());
        deleteFiles(this.fileStore.getPriorityReports());
        deleteFiles(this.fileStore.getNativeReports());
    }

    private void deleteFiles(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    public void finalizeReports(String str, long j) {
        for (String str2 : capAndGetOpenSessions(str)) {
            Logger.getLogger().m507v("Finalizing report for session " + str2);
            synthesizeReport(str2, j);
            this.fileStore.deleteSessionFiles(str2);
        }
        capFinalizedReports();
    }

    public void finalizeSessionWithNativeEvent(String str, CrashlyticsReport.FilesPayload filesPayload, CrashlyticsReport.ApplicationExitInfo applicationExitInfo) {
        File sessionFile = this.fileStore.getSessionFile(str, "report");
        Logger.getLogger().m501d("Writing native session report for " + str + " to file: " + sessionFile);
        synthesizeNativeReportFile(sessionFile, filesPayload, str, applicationExitInfo);
    }

    public List loadFinalizedReports() {
        List<File> allFinalizedReportFiles = getAllFinalizedReportFiles();
        ArrayList arrayList = new ArrayList();
        for (File file : allFinalizedReportFiles) {
            try {
                arrayList.add(CrashlyticsReportWithSessionId.create(TRANSFORM.reportFromJson(readTextFile(file)), file.getName(), file));
            } catch (IOException e) {
                Logger.getLogger().m510w("Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        return arrayList;
    }

    private SortedSet capAndGetOpenSessions(String str) {
        this.fileStore.cleanupPreviousFileSystems();
        SortedSet openSessionIds = getOpenSessionIds();
        if (str != null) {
            openSessionIds.remove(str);
        }
        if (openSessionIds.size() > 8) {
            while (openSessionIds.size() > 8) {
                String str2 = (String) openSessionIds.last();
                Logger.getLogger().m501d("Removing session over cap: " + str2);
                this.fileStore.deleteSessionFiles(str2);
                openSessionIds.remove(str2);
            }
        }
        return openSessionIds;
    }

    private void capFinalizedReports() {
        int i = this.settingsProvider.getSettingsSync().sessionData.maxCompleteSessionsCount;
        List allFinalizedReportFiles = getAllFinalizedReportFiles();
        int size = allFinalizedReportFiles.size();
        if (size <= i) {
            return;
        }
        Iterator it = allFinalizedReportFiles.subList(i, size).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    private List getAllFinalizedReportFiles() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.fileStore.getPriorityReports());
        arrayList.addAll(this.fileStore.getNativeReports());
        Comparator comparator = LATEST_SESSION_ID_FIRST_COMPARATOR;
        Collections.sort(arrayList, comparator);
        List reports = this.fileStore.getReports();
        Collections.sort(reports, comparator);
        arrayList.addAll(reports);
        return arrayList;
    }

    private void synthesizeReport(String str, long j) {
        boolean z;
        List<File> sessionFiles = this.fileStore.getSessionFiles(str, EVENT_FILE_FILTER);
        if (sessionFiles.isEmpty()) {
            Logger.getLogger().m507v("Session " + str + " has no events.");
            return;
        }
        Collections.sort(sessionFiles);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z = false;
            for (File file : sessionFiles) {
                try {
                    arrayList.add(TRANSFORM.eventFromJson(readTextFile(file)));
                } catch (IOException e) {
                    Logger.getLogger().m510w("Could not add event to report for " + file, e);
                }
                if (z || isHighPriorityEventFile(file.getName())) {
                    z = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            Logger.getLogger().m509w("Could not parse event files for session " + str);
            return;
        }
        synthesizeReportFile(this.fileStore.getSessionFile(str, "report"), arrayList, j, z, UserMetadata.readUserId(str, this.fileStore), this.sessionsSubscriber.getAppQualitySessionId(str));
    }

    private void synthesizeNativeReportFile(File file, CrashlyticsReport.FilesPayload filesPayload, String str, CrashlyticsReport.ApplicationExitInfo applicationExitInfo) {
        String appQualitySessionId = this.sessionsSubscriber.getAppQualitySessionId(str);
        try {
            CrashlyticsReportJsonTransform crashlyticsReportJsonTransform = TRANSFORM;
            writeTextFile(this.fileStore.getNativeReport(str), crashlyticsReportJsonTransform.reportToJson(crashlyticsReportJsonTransform.reportFromJson(readTextFile(file)).withNdkPayload(filesPayload).withApplicationExitInfo(applicationExitInfo).withAppQualitySessionId(appQualitySessionId)));
        } catch (IOException e) {
            Logger.getLogger().m510w("Could not synthesize final native report file for " + file, e);
        }
    }

    private void synthesizeReportFile(File file, List list, long j, boolean z, String str, String str2) {
        File report;
        try {
            CrashlyticsReportJsonTransform crashlyticsReportJsonTransform = TRANSFORM;
            CrashlyticsReport crashlyticsReportWithEvents = crashlyticsReportJsonTransform.reportFromJson(readTextFile(file)).withSessionEndFields(j, z, str).withAppQualitySessionId(str2).withEvents(list);
            CrashlyticsReport.Session session = crashlyticsReportWithEvents.getSession();
            if (session == null) {
                return;
            }
            Logger.getLogger().m501d("appQualitySessionId: " + str2);
            if (z) {
                report = this.fileStore.getPriorityReport(session.getIdentifier());
            } else {
                report = this.fileStore.getReport(session.getIdentifier());
            }
            writeTextFile(report, crashlyticsReportJsonTransform.reportToJson(crashlyticsReportWithEvents));
        } catch (IOException e) {
            Logger.getLogger().m510w("Could not synthesize final report file for " + file, e);
        }
    }

    private static boolean isHighPriorityEventFile(String str) {
        return str.startsWith("event") && str.endsWith("_");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNormalPriorityEventFile(File file, String str) {
        return str.startsWith("event") && !str.endsWith("_");
    }

    private static String generateEventFilename(int i, boolean z) {
        return "event" + String.format(Locale.US, "%010d", Integer.valueOf(i)) + (z ? "_" : _UrlKt.FRAGMENT_ENCODE_SET);
    }

    private int trimEvents(String str, int i) {
        List sessionFiles = this.fileStore.getSessionFiles(str, new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda2
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return CrashlyticsReportPersistence.isNormalPriorityEventFile(file, str2);
            }
        });
        Collections.sort(sessionFiles, new Comparator() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda3
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return CrashlyticsReportPersistence.oldestEventFileFirst((File) obj, (File) obj2);
            }
        });
        return capFilesCount(sessionFiles, i);
    }

    private static String getEventNameWithoutPriority(String str) {
        return str.substring(0, EVENT_NAME_LENGTH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int oldestEventFileFirst(File file, File file2) {
        return getEventNameWithoutPriority(file.getName()).compareTo(getEventNameWithoutPriority(file2.getName()));
    }

    private static void writeTextFile(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), UTF_8);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void writeTextFile(File file, String str, long j) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), UTF_8);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(convertTimestampFromSecondsToMs(j));
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String readTextFile(File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i = fileInputStream.read(bArr);
                if (i > 0) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), UTF_8);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private static int capFilesCount(List list, int i) {
        int size = list.size();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            if (size <= i) {
                break;
            }
            FileStore.recursiveDelete(file);
            size--;
        }
        return size;
    }
}
