package okhttp3.internal.cache;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import okhttp3.HttpUrl$Builder$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticBUOutline1;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.FileSystem;
import okio.ForwardingFileSystem;
import okio.ForwardingSource;
import okio.Okio;
import okio.Path;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.Sink;
import okio.Source;
import okio.ZipFileSystem$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010)\n\u0002\b\u0005*\u00019\u0018\u0000 a2\u00020\u00012\u00020\u00022\u00020\u0003:\u0004^_`aB7\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010;\u001a\u00020<J\b\u0010=\u001a\u00020<H\u0002J\b\u0010>\u001a\u00020!H\u0002J\u0010\u0010?\u001a\u00020<2\u0006\u0010@\u001a\u00020$H\u0002J\b\u0010A\u001a\u00020<H\u0002J\r\u0010B\u001a\u00020<H\u0000¢\u0006\u0002\bCJ\u0017\u0010D\u001a\b\u0018\u00010ER\u00020\u00002\u0006\u0010F\u001a\u00020$H\u0086\u0002J \u0010G\u001a\b\u0018\u00010HR\u00020\u00002\u0006\u0010F\u001a\u00020$2\b\b\u0002\u0010I\u001a\u00020\fH\u0007J\u0006\u0010\u001f\u001a\u00020\fJ!\u0010J\u001a\u00020<2\n\u0010K\u001a\u00060HR\u00020\u00002\u0006\u0010L\u001a\u00020+H\u0000¢\u0006\u0002\bMJ\b\u0010N\u001a\u00020+H\u0002J\u000e\u0010O\u001a\u00020+2\u0006\u0010F\u001a\u00020$J\u0019\u0010P\u001a\u00020+2\n\u0010Q\u001a\u00060%R\u00020\u0000H\u0000¢\u0006\u0002\bRJ\b\u0010S\u001a\u00020<H\u0002J\b\u0010T\u001a\u00020<H\u0016J\u0006\u0010U\u001a\u00020+J\b\u0010V\u001a\u00020<H\u0016J\u0006\u0010W\u001a\u00020<J\b\u0010X\u001a\u00020+H\u0002J\u0006\u0010Y\u001a\u00020<J\u0006\u0010Z\u001a\u00020<J\u0010\u0010[\u001a\u00020<2\u0006\u0010F\u001a\u00020$H\u0002J\u0010\u0010\\\u001a\f\u0012\b\u0012\u00060ER\u00020\u00000]R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R8\u0010\"\u001a&\u0012\u0004\u0012\u00020$\u0012\b\u0012\u00060%R\u00020\u00000#j\u0012\u0012\u0004\u0012\u00020$\u0012\b\u0012\u00060%R\u00020\u0000`&X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u000e\u0010)\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u00020+X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u000e\u00103\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00108\u001a\u000209X\u0082\u0004¢\u0006\u0004\n\u0002\u0010:¨\u0006b"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "Lokhttp3/internal/concurrent/Lockable;", "fileSystem", "Lokio/FileSystem;", "directory", "Lokio/Path;", "appVersion", _UrlKt.FRAGMENT_ENCODE_SET, "valueCount", "maxSize", _UrlKt.FRAGMENT_ENCODE_SET, "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "<init>", "(Lokio/FileSystem;Lokio/Path;IIJLokhttp3/internal/concurrent/TaskRunner;)V", "getDirectory", "()Lokio/Path;", "getValueCount$okhttp", "()I", "getFileSystem$okhttp", "()Lokio/FileSystem;", "value", "getMaxSize", "()J", "setMaxSize", "(J)V", "journalFile", "journalFileTmp", "journalFileBackup", "size", "journalWriter", "Lokio/BufferedSink;", "lruEntries", "Ljava/util/LinkedHashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Lkotlin/collections/LinkedHashMap;", "getLruEntries$okhttp", "()Ljava/util/LinkedHashMap;", "redundantOpCount", "hasJournalErrors", _UrlKt.FRAGMENT_ENCODE_SET, "civilizedFileSystem", "initialized", "closed", "getClosed$okhttp", "()Z", "setClosed$okhttp", "(Z)V", "mostRecentTrimFailed", "mostRecentRebuildFailed", "nextSequenceNumber", "cleanupQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "cleanupTask", "okhttp3/internal/cache/DiskLruCache$cleanupTask$1", "Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;", "initialize", _UrlKt.FRAGMENT_ENCODE_SET, "readJournal", "newJournalWriter", "readJournalLine", "line", "processJournal", "rebuildJournal", "rebuildJournal$okhttp", "get", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", PluginsConstants.Settings.KEY, "edit", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "expectedSequenceNumber", "completeEdit", "editor", "success", "completeEdit$okhttp", "journalRebuildRequired", "remove", "removeEntry", "entry", "removeEntry$okhttp", "checkNotClosed", "flush", "isClosed", "close", "trimToSize", "removeOldestEntry", "delete", "evictAll", "validateKey", "snapshots", _UrlKt.FRAGMENT_ENCODE_SET, "Snapshot", "Editor", "Entry", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 4 Okio.kt\nokio/Okio__OkioKt\n+ 5 FileSystem.kt\nokio/FileSystem\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1120:1\n1#2:1121\n55#3,4:1122\n55#3,4:1189\n72#4:1126\n58#4,4:1128\n66#4,10:1133\n62#4,3:1143\n77#4,3:1146\n58#4,4:1152\n66#4,10:1157\n62#4,18:1167\n73#5:1127\n74#5:1132\n86#5:1149\n191#5:1150\n95#5:1151\n96#5:1156\n37#6,2:1185\n37#6,2:1187\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n*L\n230#1:1122,4\n324#1:1189,4\n279#1:1126\n279#1:1128,4\n279#1:1133,10\n279#1:1143,3\n279#1:1146,3\n411#1:1152,4\n411#1:1157,10\n411#1:1167,18\n279#1:1127\n279#1:1132\n411#1:1149\n411#1:1150\n411#1:1151\n411#1:1156\n715#1:1185,2\n765#1:1187,2\n*E\n"})
public final class DiskLruCache implements Closeable, Flushable, Lockable {
    private final int appVersion;
    private boolean civilizedFileSystem;
    private final TaskQueue cleanupQueue;
    private final DiskLruCache$cleanupTask$1 cleanupTask;
    private boolean closed;
    private final Path directory;
    private final FileSystem fileSystem;
    private boolean hasJournalErrors;
    private boolean initialized;
    private final Path journalFile;
    private final Path journalFileBackup;
    private final Path journalFileTmp;
    private BufferedSink journalWriter;
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private long maxSize;
    private boolean mostRecentRebuildFailed;
    private boolean mostRecentTrimFailed;
    private long nextSequenceNumber;
    private int redundantOpCount;
    private long size;
    private final int valueCount;

    @JvmField
    public static final String JOURNAL_FILE = "journal";

    @JvmField
    public static final String JOURNAL_FILE_TEMP = "journal.tmp";

    @JvmField
    public static final String JOURNAL_FILE_BACKUP = "journal.bkp";

    @JvmField
    public static final String MAGIC = "libcore.io.DiskLruCache";

    @JvmField
    public static final String VERSION_1 = "1";

    @JvmField
    public static final long ANY_SEQUENCE_NUMBER = -1;

    @JvmField
    public static final Regex LEGAL_KEY_PATTERN = new Regex("[a-z0-9_-]{1,120}");

    @JvmField
    public static final String CLEAN = "CLEAN";

    @JvmField
    public static final String DIRTY = "DIRTY";

    @JvmField
    public static final String REMOVE = "REMOVE";

    @JvmField
    public static final String READ = "READ";

    @JvmOverloads
    public final Editor edit(String str) {
        return edit$default(this, str, 0L, 2, null);
    }

    public static Unit $r8$lambda$VuSpHTv0MA2f3ewEQIlkNS7IWTk(DiskLruCache diskLruCache, IOException iOException) {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(diskLruCache)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m909m(Thread.currentThread().getName(), " MUST hold lock on ", diskLruCache);
            return null;
        }
        diskLruCache.hasJournalErrors = true;
        return Unit.INSTANCE;
    }

    public final synchronized void initialize() {
        try {
            if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
            }
            if (this.initialized) {
                return;
            }
            if (this.fileSystem.exists(this.journalFileBackup)) {
                boolean zExists = this.fileSystem.exists(this.journalFile);
                FileSystem fileSystem = this.fileSystem;
                if (zExists) {
                    fileSystem.delete(this.journalFileBackup);
                } else {
                    fileSystem.atomicMove(this.journalFileBackup, this.journalFile);
                }
            }
            this.civilizedFileSystem = _UtilCommonKt.isCivilized(this.fileSystem, this.journalFileBackup);
            if (this.fileSystem.exists(this.journalFile)) {
                try {
                    readJournal();
                    processJournal();
                    this.initialized = true;
                    return;
                } catch (IOException e) {
                    Platform.INSTANCE.get().log("DiskLruCache " + this.directory + " is corrupt: " + e.getMessage() + ", removing", 5, e);
                    try {
                        delete();
                        this.closed = false;
                        rebuildJournal$okhttp();
                        this.initialized = true;
                    } catch (Throwable th) {
                        this.closed = false;
                        throw th;
                    }
                }
            }
            rebuildJournal$okhttp();
            this.initialized = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [okhttp3.internal.cache.DiskLruCache$cleanupTask$1] */
    public DiskLruCache(final FileSystem fileSystem, Path path, int i, int i2, long j, TaskRunner taskRunner) {
        this.directory = path;
        this.appVersion = i;
        this.valueCount = i2;
        this.fileSystem = new ForwardingFileSystem(fileSystem) { // from class: okhttp3.internal.cache.DiskLruCache$fileSystem$1
            @Override // okio.ForwardingFileSystem, okio.FileSystem
            public Sink sink(Path file, boolean mustCreate) {
                Path pathParent = file.parent();
                if (pathParent != null) {
                    createDirectories(pathParent);
                }
                return super.sink(file, mustCreate);
            }
        };
        this.maxSize = j;
        this.cleanupQueue = taskRunner.newQueue();
        final String str = _UtilJvmKt.okHttpName + " Cache";
        this.cleanupTask = new Task(str) { // from class: okhttp3.internal.cache.DiskLruCache$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                DiskLruCache diskLruCache = this.this$0;
                synchronized (diskLruCache) {
                    if (!diskLruCache.initialized || diskLruCache.getClosed()) {
                        return -1L;
                    }
                    try {
                        diskLruCache.trimToSize();
                    } catch (IOException unused) {
                        diskLruCache.mostRecentTrimFailed = true;
                    }
                    try {
                        if (diskLruCache.journalRebuildRequired()) {
                            diskLruCache.rebuildJournal$okhttp();
                            diskLruCache.redundantOpCount = 0;
                        }
                    } catch (IOException unused2) {
                        diskLruCache.mostRecentRebuildFailed = true;
                        BufferedSink bufferedSink = diskLruCache.journalWriter;
                        if (bufferedSink != null) {
                            _UtilCommonKt.closeQuietly(bufferedSink);
                        }
                        diskLruCache.journalWriter = Okio.buffer(Okio.blackhole());
                    }
                    return -1L;
                }
            }
        };
        if (j <= 0) {
            f$$ExternalSyntheticBUOutline1.m212m("maxSize <= 0");
            throw null;
        }
        if (i2 <= 0) {
            f$$ExternalSyntheticBUOutline1.m212m("valueCount <= 0");
            throw null;
        }
        this.journalFile = path.resolve(JOURNAL_FILE);
        this.journalFileTmp = path.resolve(JOURNAL_FILE_TEMP);
        this.journalFileBackup = path.resolve(JOURNAL_FILE_BACKUP);
    }

    public final Path getDirectory() {
        return this.directory;
    }

    /* JADX INFO: renamed from: getValueCount$okhttp, reason: from getter */
    public final int getValueCount() {
        return this.valueCount;
    }

    /* JADX INFO: renamed from: getFileSystem$okhttp, reason: from getter */
    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    public final synchronized long getMaxSize() {
        return this.maxSize;
    }

    public final synchronized void setMaxSize(long j) {
        this.maxSize = j;
        if (this.initialized) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
    }

    public final LinkedHashMap<String, Entry> getLruEntries$okhttp() {
        return this.lruEntries;
    }

    /* JADX INFO: renamed from: getClosed$okhttp, reason: from getter */
    public final boolean getClosed() {
        return this.closed;
    }

    public final void setClosed$okhttp(boolean z) {
        this.closed = z;
    }

    private final void readJournal() throws Throwable {
        BufferedSource bufferedSourceBuffer = Okio.buffer(this.fileSystem.source(this.journalFile));
        try {
            String utf8LineStrict = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict2 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict3 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict4 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict5 = bufferedSourceBuffer.readUtf8LineStrict();
            if (!Intrinsics.areEqual(MAGIC, utf8LineStrict) || !Intrinsics.areEqual(VERSION_1, utf8LineStrict2) || !Intrinsics.areEqual(String.valueOf(this.appVersion), utf8LineStrict3) || !Intrinsics.areEqual(String.valueOf(this.valueCount), utf8LineStrict4) || utf8LineStrict5.length() > 0) {
                throw new IOException("unexpected journal header: [" + utf8LineStrict + ", " + utf8LineStrict2 + ", " + utf8LineStrict4 + ", " + utf8LineStrict5 + ']');
            }
            int i = 0;
            while (true) {
                try {
                    readJournalLine(bufferedSourceBuffer.readUtf8LineStrict());
                    i++;
                } catch (EOFException unused) {
                    this.redundantOpCount = i - this.lruEntries.size();
                    if (!bufferedSourceBuffer.exhausted()) {
                        rebuildJournal$okhttp();
                    } else {
                        BufferedSink bufferedSink = this.journalWriter;
                        if (bufferedSink != null) {
                            _UtilCommonKt.closeQuietly(bufferedSink);
                        }
                        this.journalWriter = newJournalWriter();
                    }
                    Unit unit = Unit.INSTANCE;
                    if (bufferedSourceBuffer != null) {
                        try {
                            bufferedSourceBuffer.close();
                            th = null;
                        } catch (Throwable th) {
                            th = th;
                        }
                    } else {
                        th = null;
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (bufferedSourceBuffer != null) {
                try {
                    bufferedSourceBuffer.close();
                } catch (Throwable th3) {
                    ExceptionsKt.addSuppressed(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
    }

    private final BufferedSink newJournalWriter() {
        return Okio.buffer(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile), new Function1() { // from class: okhttp3.internal.cache.DiskLruCache$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DiskLruCache.$r8$lambda$VuSpHTv0MA2f3ewEQIlkNS7IWTk(this.f$0, (IOException) obj);
            }
        }));
    }

    private final void readJournalLine(String line) throws IOException {
        String strSubstring;
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) line, ' ', 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            ZipFileSystem$$ExternalSyntheticBUOutline0.m929m("unexpected journal line: ", line);
            return;
        }
        int i = iIndexOf$default + 1;
        int iIndexOf$default2 = StringsKt.indexOf$default((CharSequence) line, ' ', i, false, 4, (Object) null);
        if (iIndexOf$default2 == -1) {
            strSubstring = line.substring(i);
            String str = REMOVE;
            if (iIndexOf$default == str.length() && StringsKt.startsWith$default(line, str, false, 2, (Object) null)) {
                this.lruEntries.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = line.substring(i, iIndexOf$default2);
        }
        Entry entry = this.lruEntries.get(strSubstring);
        if (entry == null) {
            entry = new Entry(strSubstring);
            this.lruEntries.put(strSubstring, entry);
        }
        if (iIndexOf$default2 != -1) {
            String str2 = CLEAN;
            if (iIndexOf$default == str2.length() && StringsKt.startsWith$default(line, str2, false, 2, (Object) null)) {
                List<String> listSplit$default = StringsKt.split$default((CharSequence) line.substring(iIndexOf$default2 + 1), new char[]{' '}, false, 0, 6, (Object) null);
                entry.setReadable$okhttp(true);
                entry.setCurrentEditor$okhttp(null);
                entry.setLengths$okhttp(listSplit$default);
                return;
            }
        }
        if (iIndexOf$default2 == -1) {
            String str3 = DIRTY;
            if (iIndexOf$default == str3.length() && StringsKt.startsWith$default(line, str3, false, 2, (Object) null)) {
                entry.setCurrentEditor$okhttp(new Editor(entry));
                return;
            }
        }
        if (iIndexOf$default2 == -1) {
            String str4 = READ;
            if (iIndexOf$default == str4.length() && StringsKt.startsWith$default(line, str4, false, 2, (Object) null)) {
                return;
            }
        }
        ZipFileSystem$$ExternalSyntheticBUOutline0.m929m("unexpected journal line: ", line);
    }

    private final void processJournal() {
        _UtilCommonKt.deleteIfExists(this.fileSystem, this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int i = 0;
            if (next.getCurrentEditor() == null) {
                int i2 = this.valueCount;
                while (i < i2) {
                    this.size += next.getLengths()[i];
                    i++;
                }
            } else {
                next.setCurrentEditor$okhttp(null);
                int i3 = this.valueCount;
                while (i < i3) {
                    _UtilCommonKt.deleteIfExists(this.fileSystem, next.getCleanFiles$okhttp().get(i));
                    _UtilCommonKt.deleteIfExists(this.fileSystem, next.getDirtyFiles$okhttp().get(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    public final synchronized void rebuildJournal$okhttp() {
        Throwable th;
        try {
            BufferedSink bufferedSink = this.journalWriter;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink bufferedSinkBuffer = Okio.buffer(this.fileSystem.sink(this.journalFileTmp, false));
            try {
                bufferedSinkBuffer.writeUtf8(MAGIC).writeByte(10);
                bufferedSinkBuffer.writeUtf8(VERSION_1).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.appVersion).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.valueCount).writeByte(10);
                bufferedSinkBuffer.writeByte(10);
                for (Entry entry : this.lruEntries.values()) {
                    if (entry.getCurrentEditor() != null) {
                        bufferedSinkBuffer.writeUtf8(DIRTY).writeByte(32);
                        bufferedSinkBuffer.writeUtf8(entry.getKey());
                        bufferedSinkBuffer.writeByte(10);
                    } else {
                        bufferedSinkBuffer.writeUtf8(CLEAN).writeByte(32);
                        bufferedSinkBuffer.writeUtf8(entry.getKey());
                        entry.writeLengths$okhttp(bufferedSinkBuffer);
                        bufferedSinkBuffer.writeByte(10);
                    }
                }
                Unit unit = Unit.INSTANCE;
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                        th = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } else {
                    th = null;
                }
            } catch (Throwable th3) {
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                    } catch (Throwable th4) {
                        ExceptionsKt.addSuppressed(th3, th4);
                    }
                }
                th = th3;
            }
            if (th != null) {
                throw th;
            }
            boolean zExists = this.fileSystem.exists(this.journalFile);
            FileSystem fileSystem = this.fileSystem;
            if (zExists) {
                fileSystem.atomicMove(this.journalFile, this.journalFileBackup);
                this.fileSystem.atomicMove(this.journalFileTmp, this.journalFile);
                _UtilCommonKt.deleteIfExists(this.fileSystem, this.journalFileBackup);
            } else {
                fileSystem.atomicMove(this.journalFileTmp, this.journalFile);
            }
            BufferedSink bufferedSink2 = this.journalWriter;
            if (bufferedSink2 != null) {
                _UtilCommonKt.closeQuietly(bufferedSink2);
            }
            this.journalWriter = newJournalWriter();
            this.hasJournalErrors = false;
            this.mostRecentRebuildFailed = false;
        } catch (Throwable th5) {
            throw th5;
        }
    }

    public final synchronized Snapshot get(String key) {
        initialize();
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (entry == null) {
            return null;
        }
        Snapshot snapshotSnapshot$okhttp = entry.snapshot$okhttp();
        if (snapshotSnapshot$okhttp == null) {
            return null;
        }
        this.redundantOpCount++;
        this.journalWriter.writeUtf8(READ).writeByte(32).writeUtf8(key).writeByte(10);
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return snapshotSnapshot$okhttp;
    }

    public static /* synthetic */ Editor edit$default(DiskLruCache diskLruCache, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = ANY_SEQUENCE_NUMBER;
        }
        return diskLruCache.edit(str, j);
    }

    @JvmOverloads
    public final synchronized Editor edit(String key, long expectedSequenceNumber) {
        initialize();
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (expectedSequenceNumber != ANY_SEQUENCE_NUMBER && (entry == null || entry.getSequenceNumber() != expectedSequenceNumber)) {
            return null;
        }
        if ((entry != null ? entry.getCurrentEditor() : null) != null) {
            return null;
        }
        if (entry != null && entry.getLockingSourceCount() != 0) {
            return null;
        }
        if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
            BufferedSink bufferedSink = this.journalWriter;
            bufferedSink.writeUtf8(DIRTY).writeByte(32).writeUtf8(key).writeByte(10);
            bufferedSink.flush();
            if (this.hasJournalErrors) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(key);
                this.lruEntries.put(key, entry);
            }
            Editor editor = new Editor(entry);
            entry.setCurrentEditor$okhttp(editor);
            return editor;
        }
        TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        return null;
    }

    public final synchronized long size() {
        initialize();
        return this.size;
    }

    public final synchronized void completeEdit$okhttp(Editor editor, boolean success) {
        Entry entry = editor.getEntry();
        if (!Intrinsics.areEqual(entry.getCurrentEditor(), editor)) {
            throw new IllegalStateException("Check failed.");
        }
        if (success && !entry.getReadable()) {
            int i = this.valueCount;
            for (int i2 = 0; i2 < i; i2++) {
                if (!editor.getWritten()[i2]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                }
                if (!this.fileSystem.exists(entry.getDirtyFiles$okhttp().get(i2))) {
                    editor.abort();
                    return;
                }
            }
        }
        int i3 = this.valueCount;
        for (int i4 = 0; i4 < i3; i4++) {
            Path path = entry.getDirtyFiles$okhttp().get(i4);
            if (success && !entry.getZombie()) {
                if (this.fileSystem.exists(path)) {
                    Path path2 = entry.getCleanFiles$okhttp().get(i4);
                    this.fileSystem.atomicMove(path, path2);
                    long j = entry.getLengths()[i4];
                    Long size = this.fileSystem.metadata(path2).getSize();
                    long jLongValue = size != null ? size.longValue() : 0L;
                    entry.getLengths()[i4] = jLongValue;
                    this.size = (this.size - j) + jLongValue;
                }
            } else {
                _UtilCommonKt.deleteIfExists(this.fileSystem, path);
            }
        }
        entry.setCurrentEditor$okhttp(null);
        if (entry.getZombie()) {
            removeEntry$okhttp(entry);
            return;
        }
        this.redundantOpCount++;
        BufferedSink bufferedSink = this.journalWriter;
        if (entry.getReadable() || success) {
            entry.setReadable$okhttp(true);
            bufferedSink.writeUtf8(CLEAN).writeByte(32);
            bufferedSink.writeUtf8(entry.getKey());
            entry.writeLengths$okhttp(bufferedSink);
            bufferedSink.writeByte(10);
            if (success) {
                long j2 = this.nextSequenceNumber;
                this.nextSequenceNumber = 1 + j2;
                entry.setSequenceNumber$okhttp(j2);
            }
        } else {
            this.lruEntries.remove(entry.getKey());
            bufferedSink.writeUtf8(REMOVE).writeByte(32);
            bufferedSink.writeUtf8(entry.getKey());
            bufferedSink.writeByte(10);
        }
        bufferedSink.flush();
        if (this.size > this.maxSize || journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean journalRebuildRequired() {
        int i = this.redundantOpCount;
        return i >= 2000 && i >= this.lruEntries.size();
    }

    public final synchronized boolean remove(String key) {
        initialize();
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (entry == null) {
            return false;
        }
        boolean zRemoveEntry$okhttp = removeEntry$okhttp(entry);
        if (zRemoveEntry$okhttp && this.size <= this.maxSize) {
            this.mostRecentTrimFailed = false;
        }
        return zRemoveEntry$okhttp;
    }

    public final boolean removeEntry$okhttp(Entry entry) {
        BufferedSink bufferedSink;
        if (!this.civilizedFileSystem) {
            if (entry.getLockingSourceCount() > 0 && (bufferedSink = this.journalWriter) != null) {
                bufferedSink.writeUtf8(DIRTY);
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(entry.getKey());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
            }
            if (entry.getLockingSourceCount() > 0 || entry.getCurrentEditor() != null) {
                entry.setZombie$okhttp(true);
                return true;
            }
        }
        Editor currentEditor = entry.getCurrentEditor();
        if (currentEditor != null) {
            currentEditor.detach$okhttp();
        }
        int i = this.valueCount;
        for (int i2 = 0; i2 < i; i2++) {
            _UtilCommonKt.deleteIfExists(this.fileSystem, entry.getCleanFiles$okhttp().get(i2));
            this.size -= entry.getLengths()[i2];
            entry.getLengths()[i2] = 0;
        }
        this.redundantOpCount++;
        BufferedSink bufferedSink2 = this.journalWriter;
        if (bufferedSink2 != null) {
            bufferedSink2.writeUtf8(REMOVE);
            bufferedSink2.writeByte(32);
            bufferedSink2.writeUtf8(entry.getKey());
            bufferedSink2.writeByte(10);
        }
        this.lruEntries.remove(entry.getKey());
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return true;
    }

    private final synchronized void checkNotClosed() {
        if (this.closed) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Flushable
    public synchronized void flush() {
        if (this.initialized) {
            checkNotClosed();
            trimToSize();
            this.journalWriter.flush();
        }
    }

    public final synchronized boolean isClosed() {
        return this.closed;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        Editor currentEditor;
        try {
            if (this.initialized && !this.closed) {
                for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[0])) {
                    if (entry.getCurrentEditor() != null && (currentEditor = entry.getCurrentEditor()) != null) {
                        currentEditor.detach$okhttp();
                    }
                }
                trimToSize();
                BufferedSink bufferedSink = this.journalWriter;
                if (bufferedSink != null) {
                    _UtilCommonKt.closeQuietly(bufferedSink);
                }
                this.journalWriter = null;
                this.closed = true;
                return;
            }
            this.closed = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void trimToSize() {
        while (this.size > this.maxSize) {
            if (!removeOldestEntry()) {
                return;
            }
        }
        this.mostRecentTrimFailed = false;
    }

    private final boolean removeOldestEntry() {
        for (Entry entry : this.lruEntries.values()) {
            if (!entry.getZombie()) {
                removeEntry$okhttp(entry);
                return true;
            }
        }
        return false;
    }

    public final void delete() throws IOException {
        close();
        _UtilCommonKt.deleteContents(this.fileSystem, this.directory);
    }

    public final synchronized void evictAll() {
        try {
            initialize();
            for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[0])) {
                removeEntry$okhttp(entry);
            }
            this.mostRecentTrimFailed = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final void validateKey(String key) {
        if (LEGAL_KEY_PATTERN.matches(key)) {
            return;
        }
        HttpUrl$Builder$$ExternalSyntheticBUOutline0.m900m("keys must match regex [a-z0-9_-]{1,120}: \"", key, 34);
    }

    /* JADX INFO: renamed from: okhttp3.internal.cache.DiskLruCache$snapshots$1 */
    @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001J\t\u0010\n\u001a\u00020\u000bH\u0096\u0002J\r\u0010\f\u001a\u00060\u0002R\u00020\u0003H\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016R.\u0010\u0004\u001a\"\u0012\u001e\u0012\u001c \u0007*\r\u0018\u00010\u0005R\u00020\u0003¢\u0006\u0002\b\u00060\u0005R\u00020\u0003¢\u0006\u0002\b\u00060\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0018\u00010\u0002R\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0018\u00010\u0002R\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"okhttp3/internal/cache/DiskLruCache$snapshots$1", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "delegate", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Lkotlin/jvm/internal/EnhancedNullability;", "kotlin.jvm.PlatformType", "nextSnapshot", "removeSnapshot", "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "remove", _UrlKt.FRAGMENT_ENCODE_SET, "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$snapshots$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1120:1\n1#2:1121\n*E\n"})
    public static final class C24211 implements Iterator<Snapshot>, KMutableIterator {
        private final Iterator<Entry> delegate;
        private Snapshot nextSnapshot;
        private Snapshot removeSnapshot;

        public C24211() {
            this.delegate = new ArrayList(DiskLruCache.this.getLruEntries$okhttp().values()).iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Snapshot snapshotSnapshot$okhttp;
            if (this.nextSnapshot != null) {
                return true;
            }
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                if (diskLruCache.getClosed()) {
                    return false;
                }
                while (this.delegate.hasNext()) {
                    Entry next = this.delegate.next();
                    if (next != null && (snapshotSnapshot$okhttp = next.snapshot$okhttp()) != null) {
                        this.nextSnapshot = snapshotSnapshot$okhttp;
                        return true;
                    }
                }
                Unit unit = Unit.INSTANCE;
                return false;
            }
        }

        @Override // java.util.Iterator
        public Snapshot next() {
            if (!hasNext()) {
                Utils$$ExternalSyntheticBUOutline0.m1068m();
                return null;
            }
            Snapshot snapshot = this.nextSnapshot;
            this.removeSnapshot = snapshot;
            this.nextSnapshot = null;
            return snapshot;
        }

        @Override // java.util.Iterator
        public void remove() {
            Snapshot snapshot = this.removeSnapshot;
            if (snapshot == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("remove() before next()");
                return;
            }
            try {
                DiskLruCache.this.remove(snapshot.getKey());
            } catch (IOException unused) {
            } finally {
                this.removeSnapshot = null;
            }
        }
    }

    public final synchronized Iterator<Snapshot> snapshots() {
        initialize();
        return new C24211();
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B/\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010\u0002\u001a\u00020\u0003J\f\u0010\r\u001a\b\u0018\u00010\u000eR\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Ljava/io/Closeable;", PluginsConstants.Settings.KEY, _UrlKt.FRAGMENT_ENCODE_SET, "sequenceNumber", _UrlKt.FRAGMENT_ENCODE_SET, "sources", _UrlKt.FRAGMENT_ENCODE_SET, "Lokio/Source;", "lengths", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JLjava/util/List;[J)V", "edit", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "getSource", "index", _UrlKt.FRAGMENT_ENCODE_SET, "getLength", "close", _UrlKt.FRAGMENT_ENCODE_SET, "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public final class Snapshot implements Closeable {
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;
        private final List<Source> sources;

        /* JADX WARN: Multi-variable type inference failed */
        public Snapshot(String str, long j, List<? extends Source> list, long[] jArr) {
            this.key = str;
            this.sequenceNumber = j;
            this.sources = list;
            this.lengths = jArr;
        }

        /* JADX INFO: renamed from: key, reason: from getter */
        public final String getKey() {
            return this.key;
        }

        public final Editor edit() {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public final Source getSource(int index) {
            return this.sources.get(index);
        }

        public final long getLength(int index) {
            return this.lengths[index];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Iterator<Source> it = this.sources.iterator();
            while (it.hasNext()) {
                _UtilCommonKt.closeQuietly(it.next());
            }
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0018\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\b\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u000f\u001a\u00020\u0010H\u0000¢\u0006\u0002\b\u0011J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0018\u001a\u00020\u0010J\u0006\u0010\u0019\u001a\u00020\u0010R\u0018\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Editor;", _UrlKt.FRAGMENT_ENCODE_SET, "entry", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Lokhttp3/internal/cache/DiskLruCache;", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V", "getEntry$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Entry;", "written", _UrlKt.FRAGMENT_ENCODE_SET, "getWritten$okhttp", "()[Z", "done", _UrlKt.FRAGMENT_ENCODE_SET, "detach", _UrlKt.FRAGMENT_ENCODE_SET, "detach$okhttp", "newSource", "Lokio/Source;", "index", _UrlKt.FRAGMENT_ENCODE_SET, "newSink", "Lokio/Sink;", "commit", "abort", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public final class Editor {
        private boolean done;
        private final Entry entry;
        private final boolean[] written;

        public Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.getReadable() ? null : new boolean[DiskLruCache.this.getValueCount()];
        }

        /* JADX INFO: renamed from: getEntry$okhttp, reason: from getter */
        public final Entry getEntry() {
            return this.entry;
        }

        /* JADX INFO: renamed from: getWritten$okhttp, reason: from getter */
        public final boolean[] getWritten() {
            return this.written;
        }

        public final void detach$okhttp() {
            if (Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                if (DiskLruCache.this.civilizedFileSystem) {
                    DiskLruCache.this.completeEdit$okhttp(this, false);
                } else {
                    this.entry.setZombie$okhttp(true);
                }
            }
        }

        public final Source newSource(int index) {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                if (this.done) {
                    throw new IllegalStateException("Check failed.");
                }
                Source source = null;
                if (!this.entry.getReadable() || !Intrinsics.areEqual(this.entry.getCurrentEditor(), this) || this.entry.getZombie()) {
                    return null;
                }
                try {
                    source = diskLruCache.getFileSystem().source(this.entry.getCleanFiles$okhttp().get(index));
                } catch (FileNotFoundException unused) {
                }
                return source;
            }
        }

        public final Sink newSink(int index) {
            final DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                if (this.done) {
                    throw new IllegalStateException("Check failed.");
                }
                if (!Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                    return Okio.blackhole();
                }
                if (!this.entry.getReadable()) {
                    this.written[index] = true;
                }
                try {
                    return new FaultHidingSink(diskLruCache.getFileSystem().sink(this.entry.getDirtyFiles$okhttp().get(index)), new Function1() { // from class: okhttp3.internal.cache.DiskLruCache$Editor$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return DiskLruCache.Editor.newSink$lambda$0$0(diskLruCache, this, (IOException) obj);
                        }
                    });
                } catch (FileNotFoundException unused) {
                    return Okio.blackhole();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit newSink$lambda$0$0(DiskLruCache diskLruCache, Editor editor, IOException iOException) {
            synchronized (diskLruCache) {
                editor.detach$okhttp();
            }
            return Unit.INSTANCE;
        }

        public final void commit() {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                try {
                    if (this.done) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                        diskLruCache.completeEdit$okhttp(this, true);
                    }
                    this.done = true;
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void abort() {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                try {
                    if (this.done) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                        diskLruCache.completeEdit$okhttp(this, false);
                    }
                    this.done = true;
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0016\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010/\u001a\u0002002\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000302H\u0000¢\u0006\u0002\b3J\u0015\u00104\u001a\u0002002\u0006\u00105\u001a\u000206H\u0000¢\u0006\u0002\b7J\u0016\u00108\u001a\u0002092\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000302H\u0002J\u0013\u0010:\u001a\b\u0018\u00010;R\u00020\u001eH\u0000¢\u0006\u0002\b<J\u0010\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020$H\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0013\u001a\u00020\u0014X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R \u0010\u001c\u001a\b\u0018\u00010\u001dR\u00020\u001eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020*X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u0006@"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Entry;", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.KEY, _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V", "getKey$okhttp", "()Ljava/lang/String;", "lengths", _UrlKt.FRAGMENT_ENCODE_SET, "getLengths$okhttp", "()[J", "cleanFiles", _UrlKt.FRAGMENT_ENCODE_SET, "Lokio/Path;", "getCleanFiles$okhttp", "()Ljava/util/List;", "dirtyFiles", "getDirtyFiles$okhttp", "readable", _UrlKt.FRAGMENT_ENCODE_SET, "getReadable$okhttp", "()Z", "setReadable$okhttp", "(Z)V", "zombie", "getZombie$okhttp", "setZombie$okhttp", "currentEditor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "getCurrentEditor$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Editor;", "setCurrentEditor$okhttp", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "lockingSourceCount", _UrlKt.FRAGMENT_ENCODE_SET, "getLockingSourceCount$okhttp", "()I", "setLockingSourceCount$okhttp", "(I)V", "sequenceNumber", _UrlKt.FRAGMENT_ENCODE_SET, "getSequenceNumber$okhttp", "()J", "setSequenceNumber$okhttp", "(J)V", "setLengths", _UrlKt.FRAGMENT_ENCODE_SET, "strings", _UrlKt.FRAGMENT_ENCODE_SET, "setLengths$okhttp", "writeLengths", "writer", "Lokio/BufferedSink;", "writeLengths$okhttp", "invalidLengths", _UrlKt.FRAGMENT_ENCODE_SET, "snapshot", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "snapshot$okhttp", "newSource", "Lokio/Source;", "index", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$Entry\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,1120:1\n55#2,4:1121\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$Entry\n*L\n1045#1:1121,4\n*E\n"})
    public final class Entry {
        private Editor currentEditor;
        private final String key;
        private final long[] lengths;
        private int lockingSourceCount;
        private boolean readable;
        private long sequenceNumber;
        private boolean zombie;
        private final List<Path> cleanFiles = new ArrayList();
        private final List<Path> dirtyFiles = new ArrayList();

        public Entry(String str) {
            this.key = str;
            this.lengths = new long[DiskLruCache.this.getValueCount()];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            int valueCount = DiskLruCache.this.getValueCount();
            for (int i = 0; i < valueCount; i++) {
                sb.append(i);
                this.cleanFiles.add(DiskLruCache.this.getDirectory().resolve(sb.toString()));
                sb.append(".tmp");
                this.dirtyFiles.add(DiskLruCache.this.getDirectory().resolve(sb.toString()));
                sb.setLength(length);
            }
        }

        /* JADX INFO: renamed from: getKey$okhttp, reason: from getter */
        public final String getKey() {
            return this.key;
        }

        /* JADX INFO: renamed from: getLengths$okhttp, reason: from getter */
        public final long[] getLengths() {
            return this.lengths;
        }

        public final List<Path> getCleanFiles$okhttp() {
            return this.cleanFiles;
        }

        public final List<Path> getDirtyFiles$okhttp() {
            return this.dirtyFiles;
        }

        /* JADX INFO: renamed from: getReadable$okhttp, reason: from getter */
        public final boolean getReadable() {
            return this.readable;
        }

        public final void setReadable$okhttp(boolean z) {
            this.readable = z;
        }

        /* JADX INFO: renamed from: getZombie$okhttp, reason: from getter */
        public final boolean getZombie() {
            return this.zombie;
        }

        public final void setZombie$okhttp(boolean z) {
            this.zombie = z;
        }

        /* JADX INFO: renamed from: getCurrentEditor$okhttp, reason: from getter */
        public final Editor getCurrentEditor() {
            return this.currentEditor;
        }

        public final void setCurrentEditor$okhttp(Editor editor) {
            this.currentEditor = editor;
        }

        /* JADX INFO: renamed from: getLockingSourceCount$okhttp, reason: from getter */
        public final int getLockingSourceCount() {
            return this.lockingSourceCount;
        }

        public final void setLockingSourceCount$okhttp(int i) {
            this.lockingSourceCount = i;
        }

        /* JADX INFO: renamed from: getSequenceNumber$okhttp, reason: from getter */
        public final long getSequenceNumber() {
            return this.sequenceNumber;
        }

        public final void setSequenceNumber$okhttp(long j) {
            this.sequenceNumber = j;
        }

        public final void setLengths$okhttp(List<String> strings) throws IOException {
            if (strings.size() != DiskLruCache.this.getValueCount()) {
                invalidLengths(strings);
                InstantKt$$ExternalSyntheticBUOutline0.m896m();
                return;
            }
            try {
                int size = strings.size();
                for (int i = 0; i < size; i++) {
                    this.lengths[i] = Long.parseLong(strings.get(i));
                }
            } catch (NumberFormatException unused) {
                invalidLengths(strings);
                InstantKt$$ExternalSyntheticBUOutline0.m896m();
            }
        }

        public final void writeLengths$okhttp(BufferedSink writer) {
            for (long j : this.lengths) {
                writer.writeByte(32).writeDecimalLong(j);
            }
        }

        private final Void invalidLengths(List<String> strings) throws IOException {
            throw new IOException("unexpected journal line: " + strings);
        }

        public final Snapshot snapshot$okhttp() {
            DiskLruCache diskLruCache = DiskLruCache.this;
            if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(diskLruCache)) {
                _UtilJvmKt$$ExternalSyntheticBUOutline1.m909m(Thread.currentThread().getName(), " MUST hold lock on ", diskLruCache);
                return null;
            }
            if (!this.readable) {
                return null;
            }
            if (!DiskLruCache.this.civilizedFileSystem && (this.currentEditor != null || this.zombie)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            long[] jArr = (long[]) this.lengths.clone();
            int i = 0;
            try {
                int valueCount = DiskLruCache.this.getValueCount();
                for (int i2 = 0; i2 < valueCount; i2++) {
                    arrayList.add(newSource(i2));
                }
                return DiskLruCache.this.new Snapshot(this.key, this.sequenceNumber, arrayList, jArr);
            } catch (FileNotFoundException unused) {
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    _UtilCommonKt.closeQuietly((Source) obj);
                }
                try {
                    DiskLruCache.this.removeEntry$okhttp(this);
                } catch (IOException unused2) {
                }
                return null;
            }
        }

        private final Source newSource(int index) {
            final Source source = DiskLruCache.this.getFileSystem().source(this.cleanFiles.get(index));
            if (DiskLruCache.this.civilizedFileSystem) {
                return source;
            }
            this.lockingSourceCount++;
            final DiskLruCache diskLruCache = DiskLruCache.this;
            return new ForwardingSource(source) { // from class: okhttp3.internal.cache.DiskLruCache$Entry$newSource$1
                private boolean closed;

                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    super.close();
                    if (this.closed) {
                        return;
                    }
                    this.closed = true;
                    DiskLruCache diskLruCache2 = diskLruCache;
                    DiskLruCache.Entry entry = this;
                    synchronized (diskLruCache2) {
                        try {
                            entry.setLockingSourceCount$okhttp(entry.getLockingSourceCount() - 1);
                            if (entry.getLockingSourceCount() == 0 && entry.getZombie()) {
                                diskLruCache2.removeEntry$okhttp(entry);
                            }
                            Unit unit = Unit.INSTANCE;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            };
        }
    }
}
