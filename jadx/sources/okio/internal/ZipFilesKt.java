package okio.internal;

import de.robv.android.xposed.callbacks.XCallback;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.internal.p025ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ZipFilesKt {
    /* JADX WARN: Removed duplicated region for block: B:43:0x00de A[Catch: all -> 0x00df, TRY_ENTER, TryCatch #13 {all -> 0x00df, blocks: (B:13:0x0062, B:15:0x006b, B:18:0x007c, B:43:0x00de, B:46:0x00e2, B:47:0x00e9, B:48:0x00ea), top: B:139:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x010b A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0019, B:5:0x0027, B:6:0x0030, B:10:0x004e, B:12:0x005a, B:65:0x010b, B:59:0x00ff, B:66:0x010c, B:93:0x016e, B:97:0x017f, B:90:0x0168, B:100:0x0182, B:103:0x018e, B:104:0x0195, B:105:0x0196, B:106:0x0199, B:107:0x019a, B:108:0x01b4, B:7:0x0038, B:9:0x0041, B:67:0x011d, B:70:0x0125, B:72:0x0135, B:74:0x0141, B:77:0x0148, B:78:0x014c, B:79:0x0153, B:80:0x0154, B:87:0x0161, B:56:0x00f8), top: B:118:0x0019, inners: #0, #2, #3, #12 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ZipFileSystem openZip(Path zipPath, FileSystem fileSystem, Function1 predicate) {
        Throwable th;
        Throwable th2;
        Throwable th3;
        int intLe;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        FileHandle fileHandleOpenReadOnly = fileSystem.openReadOnly(zipPath);
        try {
            long size = fileHandleOpenReadOnly.size() - ((long) 22);
            if (size < 0) {
                throw new IOException("not a zip: size=" + fileHandleOpenReadOnly.size());
            }
            long jMax = Math.max(size - 65536, 0L);
            do {
                BufferedSource bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(size));
                try {
                    if (bufferedSourceBuffer.readIntLe() == 101010256) {
                        EocdRecord eocdRecord = readEocdRecord(bufferedSourceBuffer);
                        String utf8 = bufferedSourceBuffer.readUtf8(eocdRecord.getCommentByteCount());
                        bufferedSourceBuffer.close();
                        long j = size - ((long) 20);
                        Throwable th4 = null;
                        if (j > 0) {
                            BufferedSource bufferedSourceBuffer2 = Okio.buffer(fileHandleOpenReadOnly.source(j));
                            try {
                                if (bufferedSourceBuffer2.readIntLe() == 117853008) {
                                    int intLe2 = bufferedSourceBuffer2.readIntLe();
                                    long longLe = bufferedSourceBuffer2.readLongLe();
                                    if (bufferedSourceBuffer2.readIntLe() != 1 || intLe2 != 0) {
                                        throw new IOException("unsupported zip: spanned");
                                    }
                                    BufferedSource bufferedSourceBuffer3 = Okio.buffer(fileHandleOpenReadOnly.source(longLe));
                                    try {
                                        intLe = bufferedSourceBuffer3.readIntLe();
                                    } catch (Throwable th5) {
                                        if (bufferedSourceBuffer3 != null) {
                                            try {
                                                bufferedSourceBuffer3.close();
                                                Unit unit = Unit.INSTANCE;
                                            } catch (Throwable th6) {
                                                try {
                                                    ExceptionsKt.addSuppressed(th5, th6);
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    eocdRecord = eocdRecord;
                                                    if (bufferedSourceBuffer2 != null) {
                                                        try {
                                                            bufferedSourceBuffer2.close();
                                                            Unit unit2 = Unit.INSTANCE;
                                                        } catch (Throwable th8) {
                                                            ExceptionsKt.addSuppressed(th, th8);
                                                        }
                                                    }
                                                    th2 = th;
                                                }
                                            }
                                        }
                                        th3 = th5;
                                        eocdRecord = eocdRecord;
                                    }
                                    if (intLe != 101075792) {
                                        throw new IOException("bad zip: expected " + getHex(101075792) + " but was " + getHex(intLe));
                                    }
                                    eocdRecord = readZip64EocdRecord(bufferedSourceBuffer3, eocdRecord);
                                    Unit unit3 = Unit.INSTANCE;
                                    if (bufferedSourceBuffer3 != null) {
                                        try {
                                            bufferedSourceBuffer3.close();
                                            th3 = null;
                                        } catch (Throwable th9) {
                                            th3 = th9;
                                        }
                                        if (th3 != null) {
                                            throw th3;
                                        }
                                    } else {
                                        th3 = null;
                                        if (th3 != null) {
                                        }
                                    }
                                }
                                Unit unit4 = Unit.INSTANCE;
                            } catch (Throwable th10) {
                                th = th10;
                            }
                            if (bufferedSourceBuffer2 != null) {
                                try {
                                    bufferedSourceBuffer2.close();
                                    th2 = null;
                                } catch (Throwable th11) {
                                    th2 = th11;
                                }
                                if (th2 == null) {
                                    throw th2;
                                }
                            } else {
                                th2 = null;
                                if (th2 == null) {
                                }
                            }
                        }
                        ArrayList arrayList = new ArrayList();
                        BufferedSource bufferedSourceBuffer4 = Okio.buffer(fileHandleOpenReadOnly.source(eocdRecord.getCentralDirectoryOffset()));
                        try {
                            long entryCount = eocdRecord.getEntryCount();
                            for (long j2 = 0; j2 < entryCount; j2++) {
                                ZipEntry centralDirectoryZipEntry = readCentralDirectoryZipEntry(bufferedSourceBuffer4);
                                if (centralDirectoryZipEntry.getOffset() >= eocdRecord.getCentralDirectoryOffset()) {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                                if (((Boolean) predicate.invoke(centralDirectoryZipEntry)).booleanValue()) {
                                    arrayList.add(centralDirectoryZipEntry);
                                }
                            }
                            Unit unit5 = Unit.INSTANCE;
                            if (bufferedSourceBuffer4 != null) {
                                try {
                                    bufferedSourceBuffer4.close();
                                } catch (Throwable th12) {
                                    th4 = th12;
                                }
                            }
                        } catch (Throwable th13) {
                            if (bufferedSourceBuffer4 != null) {
                                try {
                                    bufferedSourceBuffer4.close();
                                    Unit unit6 = Unit.INSTANCE;
                                } catch (Throwable th14) {
                                    ExceptionsKt.addSuppressed(th13, th14);
                                }
                            }
                            th4 = th13;
                        }
                        if (th4 != null) {
                            throw th4;
                        }
                        ZipFileSystem zipFileSystem = new ZipFileSystem(zipPath, fileSystem, buildIndex(arrayList), utf8);
                        if (fileHandleOpenReadOnly != null) {
                            try {
                                fileHandleOpenReadOnly.close();
                                Unit unit7 = Unit.INSTANCE;
                            } catch (Throwable unused) {
                            }
                        }
                        return zipFileSystem;
                    }
                    bufferedSourceBuffer.close();
                    size--;
                } finally {
                    bufferedSourceBuffer.close();
                }
            } while (size >= jMax);
            throw new IOException("not a zip: end of central directory signature not found");
        } finally {
        }
    }

    private static final Map buildIndex(List list) {
        Path path = Path.Companion.get$default(Path.Companion, "/", false, 1, (Object) null);
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m1081to(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, null, null, null, 65532, null)));
        for (ZipEntry zipEntry : CollectionsKt.sortedWith(list, new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComparisonsKt.compareValues(((ZipEntry) obj).getCanonicalPath(), ((ZipEntry) obj2).getCanonicalPath());
            }
        })) {
            if (((ZipEntry) mapMutableMapOf.put(zipEntry.getCanonicalPath(), zipEntry)) == null) {
                while (true) {
                    Path pathParent = zipEntry.getCanonicalPath().parent();
                    if (pathParent != null) {
                        ZipEntry zipEntry2 = (ZipEntry) mapMutableMapOf.get(pathParent);
                        if (zipEntry2 != null) {
                            zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(pathParent, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, null, null, null, 65532, null);
                        mapMutableMapOf.put(pathParent, zipEntry3);
                        zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return mapMutableMapOf;
    }

    public static final ZipEntry readCentralDirectoryZipEntry(final BufferedSource bufferedSource) throws IOException {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        int intLe = bufferedSource.readIntLe();
        if (intLe != 33639248) {
            throw new IOException("bad zip: expected " + getHex(33639248) + " but was " + getHex(intLe));
        }
        bufferedSource.skip(4L);
        short shortLe = bufferedSource.readShortLe();
        int i = shortLe & 65535;
        if ((shortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(i));
        }
        int shortLe2 = bufferedSource.readShortLe() & 65535;
        int shortLe3 = bufferedSource.readShortLe() & 65535;
        int shortLe4 = bufferedSource.readShortLe() & 65535;
        long intLe2 = ((long) bufferedSource.readIntLe()) & 4294967295L;
        final Ref$LongRef ref$LongRef = new Ref$LongRef();
        ref$LongRef.element = ((long) bufferedSource.readIntLe()) & 4294967295L;
        final Ref$LongRef ref$LongRef2 = new Ref$LongRef();
        ref$LongRef2.element = ((long) bufferedSource.readIntLe()) & 4294967295L;
        int shortLe5 = bufferedSource.readShortLe() & 65535;
        int shortLe6 = bufferedSource.readShortLe() & 65535;
        int shortLe7 = bufferedSource.readShortLe() & 65535;
        bufferedSource.skip(8L);
        final Ref$LongRef ref$LongRef3 = new Ref$LongRef();
        ref$LongRef3.element = ((long) bufferedSource.readIntLe()) & 4294967295L;
        String utf8 = bufferedSource.readUtf8(shortLe5);
        if (StringsKt.contains$default((CharSequence) utf8, (char) 0, false, 2, (Object) null)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        long j = ref$LongRef2.element == 4294967295L ? 8 : 0L;
        if (ref$LongRef.element == 4294967295L) {
            j += (long) 8;
        }
        if (ref$LongRef3.element == 4294967295L) {
            j += (long) 8;
        }
        final long j2 = j;
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        final Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        readExtra(bufferedSource, shortLe6, new Function2() { // from class: okio.internal.ZipFilesKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ZipFilesKt.readCentralDirectoryZipEntry$lambda$1(ref$BooleanRef, j2, ref$LongRef2, bufferedSource, ref$LongRef, ref$LongRef3, ref$ObjectRef, ref$ObjectRef2, ref$ObjectRef3, ((Integer) obj).intValue(), ((Long) obj2).longValue());
            }
        });
        if (j2 > 0 && !ref$BooleanRef.element) {
            throw new IOException("bad zip: zip64 extra required but absent");
        }
        return new ZipEntry(Path.Companion.get$default(Path.Companion, "/", false, 1, (Object) null).resolve(utf8), StringsKt.endsWith$default(utf8, "/", false, 2, (Object) null), bufferedSource.readUtf8(shortLe7), intLe2, ref$LongRef.element, ref$LongRef2.element, shortLe2, ref$LongRef3.element, shortLe4, shortLe3, (Long) ref$ObjectRef.element, (Long) ref$ObjectRef2.element, (Long) ref$ObjectRef3.element, null, null, null, 57344, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit readCentralDirectoryZipEntry$lambda$1(Ref$BooleanRef ref$BooleanRef, long j, Ref$LongRef ref$LongRef, final BufferedSource bufferedSource, Ref$LongRef ref$LongRef2, Ref$LongRef ref$LongRef3, final Ref$ObjectRef ref$ObjectRef, final Ref$ObjectRef ref$ObjectRef2, final Ref$ObjectRef ref$ObjectRef3, int i, long j2) throws IOException {
        if (i != 1) {
            if (i == 10) {
                if (j2 < 4) {
                    throw new IOException("bad zip: NTFS extra too short");
                }
                bufferedSource.skip(4L);
                readExtra(bufferedSource, (int) (j2 - 4), new Function2() { // from class: okio.internal.ZipFilesKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ZipFilesKt.readCentralDirectoryZipEntry$lambda$1$0(ref$ObjectRef, bufferedSource, ref$ObjectRef2, ref$ObjectRef3, ((Integer) obj).intValue(), ((Long) obj2).longValue());
                    }
                });
            }
        } else {
            if (ref$BooleanRef.element) {
                throw new IOException("bad zip: zip64 extra repeated");
            }
            ref$BooleanRef.element = true;
            if (j2 < j) {
                throw new IOException("bad zip: zip64 extra too short");
            }
            long longLe = ref$LongRef.element;
            if (longLe == 4294967295L) {
                longLe = bufferedSource.readLongLe();
            }
            ref$LongRef.element = longLe;
            ref$LongRef2.element = ref$LongRef2.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
            ref$LongRef3.element = ref$LongRef3.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit readCentralDirectoryZipEntry$lambda$1$0(Ref$ObjectRef ref$ObjectRef, BufferedSource bufferedSource, Ref$ObjectRef ref$ObjectRef2, Ref$ObjectRef ref$ObjectRef3, int i, long j) throws IOException {
        if (i == 1) {
            if (ref$ObjectRef.element != null) {
                throw new IOException("bad zip: NTFS extra attribute tag 0x0001 repeated");
            }
            if (j != 24) {
                throw new IOException("bad zip: NTFS extra attribute tag 0x0001 size != 24");
            }
            ref$ObjectRef.element = Long.valueOf(bufferedSource.readLongLe());
            ref$ObjectRef2.element = Long.valueOf(bufferedSource.readLongLe());
            ref$ObjectRef3.element = Long.valueOf(bufferedSource.readLongLe());
        }
        return Unit.INSTANCE;
    }

    private static final EocdRecord readEocdRecord(BufferedSource bufferedSource) throws IOException {
        int shortLe = bufferedSource.readShortLe() & 65535;
        int shortLe2 = bufferedSource.readShortLe() & 65535;
        long shortLe3 = bufferedSource.readShortLe() & 65535;
        if (shortLe3 != (bufferedSource.readShortLe() & 65535) || shortLe != 0 || shortLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        bufferedSource.skip(4L);
        return new EocdRecord(shortLe3, 4294967295L & ((long) bufferedSource.readIntLe()), bufferedSource.readShortLe() & 65535);
    }

    private static final EocdRecord readZip64EocdRecord(BufferedSource bufferedSource, EocdRecord eocdRecord) throws IOException {
        bufferedSource.skip(12L);
        int intLe = bufferedSource.readIntLe();
        int intLe2 = bufferedSource.readIntLe();
        long longLe = bufferedSource.readLongLe();
        if (longLe != bufferedSource.readLongLe() || intLe != 0 || intLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        bufferedSource.skip(8L);
        return new EocdRecord(longLe, bufferedSource.readLongLe(), eocdRecord.getCommentByteCount());
    }

    private static final void readExtra(BufferedSource bufferedSource, int i, Function2 function2) throws IOException {
        long j = i;
        while (j != 0) {
            if (j < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int shortLe = bufferedSource.readShortLe() & 65535;
            long shortLe2 = ((long) bufferedSource.readShortLe()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            long j2 = j - ((long) 4);
            if (j2 < shortLe2) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            bufferedSource.require(shortLe2);
            long size = bufferedSource.getBuffer().size();
            function2.invoke(Integer.valueOf(shortLe), Long.valueOf(shortLe2));
            long size2 = (bufferedSource.getBuffer().size() + shortLe2) - size;
            if (size2 < 0) {
                throw new IOException("unsupported zip: too many bytes processed for " + shortLe);
            }
            if (size2 > 0) {
                bufferedSource.getBuffer().skip(size2);
            }
            j = j2 - shortLe2;
        }
    }

    public static final void skipLocalHeader(BufferedSource bufferedSource) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        readOrSkipLocalHeader(bufferedSource, null);
    }

    public static final ZipEntry readLocalHeader(BufferedSource bufferedSource, ZipEntry centralDirectoryZipEntry) throws IOException {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(centralDirectoryZipEntry, "centralDirectoryZipEntry");
        ZipEntry orSkipLocalHeader = readOrSkipLocalHeader(bufferedSource, centralDirectoryZipEntry);
        Intrinsics.checkNotNull(orSkipLocalHeader);
        return orSkipLocalHeader;
    }

    private static final ZipEntry readOrSkipLocalHeader(final BufferedSource bufferedSource, ZipEntry zipEntry) throws IOException {
        int intLe = bufferedSource.readIntLe();
        if (intLe != 67324752) {
            throw new IOException("bad zip: expected " + getHex(67324752) + " but was " + getHex(intLe));
        }
        bufferedSource.skip(2L);
        short shortLe = bufferedSource.readShortLe();
        int i = shortLe & 65535;
        if ((shortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(i));
        }
        bufferedSource.skip(18L);
        long shortLe2 = ((long) bufferedSource.readShortLe()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        int shortLe3 = bufferedSource.readShortLe() & 65535;
        bufferedSource.skip(shortLe2);
        if (zipEntry == null) {
            bufferedSource.skip(shortLe3);
            return null;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        final Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        readExtra(bufferedSource, shortLe3, new Function2() { // from class: okio.internal.ZipFilesKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ZipFilesKt.readOrSkipLocalHeader$lambda$0(bufferedSource, ref$ObjectRef, ref$ObjectRef2, ref$ObjectRef3, ((Integer) obj).intValue(), ((Long) obj2).longValue());
            }
        });
        return zipEntry.copy$okio((Integer) ref$ObjectRef.element, (Integer) ref$ObjectRef2.element, (Integer) ref$ObjectRef3.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit readOrSkipLocalHeader$lambda$0(BufferedSource bufferedSource, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, Ref$ObjectRef ref$ObjectRef3, int i, long j) throws IOException {
        if (i == 21589) {
            if (j < 1) {
                throw new IOException("bad zip: extended timestamp extra too short");
            }
            byte b = bufferedSource.readByte();
            boolean z = (b & 1) == 1;
            boolean z2 = (b & 2) == 2;
            boolean z3 = (b & 4) == 4;
            long j2 = z ? 5L : 1L;
            if (z2) {
                j2 += 4;
            }
            if (z3) {
                j2 += 4;
            }
            if (j < j2) {
                throw new IOException("bad zip: extended timestamp extra too short");
            }
            if (z) {
                ref$ObjectRef.element = Integer.valueOf(bufferedSource.readIntLe());
            }
            if (z2) {
                ref$ObjectRef2.element = Integer.valueOf(bufferedSource.readIntLe());
            }
            if (z3) {
                ref$ObjectRef3.element = Integer.valueOf(bufferedSource.readIntLe());
            }
        }
        return Unit.INSTANCE;
    }

    public static final long filetimeToEpochMillis(long j) {
        return (j / ((long) XCallback.PRIORITY_HIGHEST)) - 11644473600000L;
    }

    public static final Long dosDateTimeToEpochMillis(int i, int i2) {
        if (i2 == -1) {
            return null;
        }
        return Long.valueOf(_ZlibJvmKt.datePartsToEpochMillis(((i >> 9) & 127) + 1980, (i >> 5) & 15, i & 31, (i2 >> 11) & 31, (i2 >> 5) & 63, (i2 & 31) << 1));
    }

    private static final String getHex(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("0x");
        String string = Integer.toString(i, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        sb.append(string);
        return sb.toString();
    }
}
