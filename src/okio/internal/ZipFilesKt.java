package okio.internal;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a5\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0000¢\u0006\u0004\b\t\u0010\n\u001a)\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00050\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0013\u0010\u0011\u001a\u00020\u0005*\u00020\u0010H\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0013\u0010\u0014\u001a\u00020\u0013*\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001b\u0010\u0017\u001a\u00020\u0013*\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0017\u0010\u0018\u001a5\u0010\u001f\u001a\u00020\u001d*\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00192\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0002¢\u0006\u0004\b\u001f\u0010 \u001a\u0013\u0010!\u001a\u00020\u001d*\u00020\u0010H\u0000¢\u0006\u0004\b!\u0010\"\u001a\u001b\u0010$\u001a\u00020\u0005*\u00020\u00102\u0006\u0010#\u001a\u00020\u0005H\u0000¢\u0006\u0004\b$\u0010%\u001a\u001f\u0010&\u001a\u0004\u0018\u00010\u0005*\u00020\u00102\b\u0010#\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b&\u0010%\u001a\u0017\u0010(\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020\u001cH\u0000¢\u0006\u0004\b(\u0010)\u001a!\u0010,\u001a\u0004\u0018\u00010\u001c2\u0006\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u0019H\u0000¢\u0006\u0004\b,\u0010-\"\u0018\u00101\u001a\u00020.*\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b/\u00100¨\u00062"}, d2 = {"Lokio/Path;", "zipPath", "Lokio/FileSystem;", "fileSystem", "Lkotlin/Function1;", "Lokio/internal/ZipEntry;", _UrlKt.FRAGMENT_ENCODE_SET, "predicate", "Lokio/ZipFileSystem;", "openZip", "(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;", _UrlKt.FRAGMENT_ENCODE_SET, "entries", _UrlKt.FRAGMENT_ENCODE_SET, "buildIndex", "(Ljava/util/List;)Ljava/util/Map;", "Lokio/BufferedSource;", "readCentralDirectoryZipEntry", "(Lokio/BufferedSource;)Lokio/internal/ZipEntry;", "Lokio/internal/EocdRecord;", "readEocdRecord", "(Lokio/BufferedSource;)Lokio/internal/EocdRecord;", "regularRecord", "readZip64EocdRecord", "(Lokio/BufferedSource;Lokio/internal/EocdRecord;)Lokio/internal/EocdRecord;", _UrlKt.FRAGMENT_ENCODE_SET, "extraSize", "Lkotlin/Function2;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "block", "readExtra", "(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V", "skipLocalHeader", "(Lokio/BufferedSource;)V", "centralDirectoryZipEntry", "readLocalHeader", "(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;", "readOrSkipLocalHeader", "filetime", "filetimeToEpochMillis", "(J)J", "date", "time", "dosDateTimeToEpochMillis", "(II)Ljava/lang/Long;", _UrlKt.FRAGMENT_ENCODE_SET, "getHex", "(I)Ljava/lang/String;", "hex", "okio"}, m910k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipFiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n+ 2 Okio.kt\nokio/Okio__OkioKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,503:1\n58#2,4:504\n58#2,4:508\n58#2,22:512\n66#2,10:534\n62#2,3:544\n77#2,3:547\n58#2,22:550\n66#2,10:572\n62#2,3:582\n77#2,3:585\n1056#3:588\n*S KotlinDebug\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n*L\n66#1:504,4\n101#1:508,4\n109#1:512,22\n101#1:534,10\n101#1:544,3\n101#1:547,3\n125#1:550,22\n66#1:572,10\n66#1:582,3\n66#1:585,3\n155#1:588\n*E\n"})
public abstract class ZipFilesKt {
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cc A[Catch: all -> 0x00cd, TRY_ENTER, TryCatch #7 {all -> 0x00cd, blocks: (B:13:0x0051, B:15:0x005a, B:18:0x006b, B:43:0x00cc, B:46:0x00d0, B:47:0x00d7, B:48:0x00d8), top: B:129:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00fa A[Catch: all -> 0x00f1, TryCatch #10 {all -> 0x00f1, blocks: (B:3:0x000a, B:5:0x0018, B:6:0x0020, B:10:0x003e, B:12:0x0049, B:65:0x00fa, B:59:0x00ed, B:66:0x00fb, B:93:0x015f, B:97:0x0170, B:90:0x0159, B:100:0x0173, B:103:0x0181, B:104:0x0188, B:105:0x0189, B:106:0x018c, B:107:0x018d, B:108:0x01a2, B:56:0x00e6, B:7:0x0028, B:9:0x0031, B:67:0x010c, B:70:0x0114, B:72:0x0124, B:74:0x0132, B:77:0x0139, B:78:0x013d, B:79:0x0144, B:80:0x0145, B:87:0x0152), top: B:134:0x000a, inners: #4, #9, #11, #12 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ZipFileSystem openZip(Path path, FileSystem fileSystem, Function1<? super ZipEntry, Boolean> function1) {
        EocdRecord eocdRecord;
        Throwable th;
        Throwable th2;
        int intLe;
        FileHandle fileHandleOpenReadOnly = fileSystem.openReadOnly(path);
        try {
            long size = fileHandleOpenReadOnly.size();
            long j = size - 22;
            if (j < 0) {
                throw new IOException("not a zip: size=" + fileHandleOpenReadOnly.size());
            }
            long jMax = Math.max(size - 65558, 0L);
            do {
                BufferedSource bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(j));
                try {
                    if (bufferedSourceBuffer.readIntLe() == 101010256) {
                        EocdRecord eocdRecord2 = readEocdRecord(bufferedSourceBuffer);
                        String utf8 = bufferedSourceBuffer.readUtf8(eocdRecord2.getCommentByteCount());
                        bufferedSourceBuffer.close();
                        long j2 = j - 20;
                        Throwable th3 = null;
                        if (j2 > 0) {
                            BufferedSource bufferedSourceBuffer2 = Okio.buffer(fileHandleOpenReadOnly.source(j2));
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
                                    } catch (Throwable th4) {
                                        eocdRecord = eocdRecord2;
                                        if (bufferedSourceBuffer3 != null) {
                                            try {
                                                bufferedSourceBuffer3.close();
                                                Unit unit = Unit.INSTANCE;
                                            } catch (Throwable th5) {
                                                try {
                                                    ExceptionsKt.addSuppressed(th4, th5);
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                    Throwable th7 = th;
                                                    if (bufferedSourceBuffer2 != null) {
                                                        try {
                                                            bufferedSourceBuffer2.close();
                                                            Unit unit2 = Unit.INSTANCE;
                                                        } catch (Throwable th8) {
                                                            ExceptionsKt.addSuppressed(th7, th8);
                                                        }
                                                    }
                                                    th = th7;
                                                    eocdRecord2 = eocdRecord;
                                                }
                                            }
                                        }
                                        th2 = th4;
                                        eocdRecord2 = eocdRecord;
                                    }
                                    if (intLe != 101075792) {
                                        throw new IOException("bad zip: expected " + getHex(101075792) + " but was " + getHex(intLe));
                                    }
                                    eocdRecord2 = readZip64EocdRecord(bufferedSourceBuffer3, eocdRecord2);
                                    Unit unit3 = Unit.INSTANCE;
                                    if (bufferedSourceBuffer3 != null) {
                                        try {
                                            bufferedSourceBuffer3.close();
                                            th2 = null;
                                        } catch (Throwable th9) {
                                            th2 = th9;
                                        }
                                        if (th2 != null) {
                                            throw th2;
                                        }
                                    } else {
                                        th2 = null;
                                        if (th2 != null) {
                                        }
                                    }
                                }
                                Unit unit4 = Unit.INSTANCE;
                            } catch (Throwable th10) {
                                th = th10;
                                eocdRecord = eocdRecord2;
                            }
                            if (bufferedSourceBuffer2 != null) {
                                try {
                                    bufferedSourceBuffer2.close();
                                    th = null;
                                } catch (Throwable th11) {
                                    th = th11;
                                }
                                if (th == null) {
                                    throw th;
                                }
                            } else {
                                th = null;
                                if (th == null) {
                                }
                            }
                        }
                        ArrayList arrayList = new ArrayList();
                        BufferedSource bufferedSourceBuffer4 = Okio.buffer(fileHandleOpenReadOnly.source(eocdRecord2.getCentralDirectoryOffset()));
                        try {
                            long entryCount = eocdRecord2.getEntryCount();
                            for (long j3 = 0; j3 < entryCount; j3++) {
                                ZipEntry centralDirectoryZipEntry = readCentralDirectoryZipEntry(bufferedSourceBuffer4);
                                if (centralDirectoryZipEntry.getOffset() >= eocdRecord2.getCentralDirectoryOffset()) {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                                if (function1.invoke(centralDirectoryZipEntry).booleanValue()) {
                                    arrayList.add(centralDirectoryZipEntry);
                                }
                            }
                            Unit unit5 = Unit.INSTANCE;
                            if (bufferedSourceBuffer4 != null) {
                                try {
                                    bufferedSourceBuffer4.close();
                                } catch (Throwable th12) {
                                    th3 = th12;
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
                            th3 = th13;
                        }
                        if (th3 != null) {
                            throw th3;
                        }
                        ZipFileSystem zipFileSystem = new ZipFileSystem(path, fileSystem, buildIndex(arrayList), utf8);
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
                    j--;
                } finally {
                    bufferedSourceBuffer.close();
                }
            } while (j >= jMax);
            throw new IOException("not a zip: end of central directory signature not found");
        } finally {
        }
    }

    private static final Map<Path, ZipEntry> buildIndex(List<ZipEntry> list) {
        Path path = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);
        Map<Path, ZipEntry> mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, null, null, null, 65532, null)));
        for (ZipEntry zipEntry : CollectionsKt.sortedWith(list, new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((ZipEntry) t).getCanonicalPath(), ((ZipEntry) t2).getCanonicalPath());
            }
        })) {
            if (mapMutableMapOf.put(zipEntry.getCanonicalPath(), zipEntry) == null) {
                while (true) {
                    Path pathParent = zipEntry.getCanonicalPath().parent();
                    if (pathParent != null) {
                        ZipEntry zipEntry2 = mapMutableMapOf.get(pathParent);
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

    /* JADX WARN: Multi-variable type inference failed */
    public static final ZipEntry readCentralDirectoryZipEntry(final BufferedSource bufferedSource) throws IOException {
        int intLe = bufferedSource.readIntLe();
        if (intLe != 33639248) {
            ZipFilesKt$$ExternalSyntheticBUOutline2.m981m("bad zip: expected ", getHex(33639248), " but was ", getHex(intLe));
            return null;
        }
        bufferedSource.skip(4L);
        short shortLe = bufferedSource.readShortLe();
        int i = shortLe & UShort.MAX_VALUE;
        if ((shortLe & 1) != 0) {
            ZipFilesKt$$ExternalSyntheticBUOutline1.m980m("unsupported zip: general purpose bit flag=", getHex(i));
            return null;
        }
        int shortLe2 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        int shortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        int shortLe4 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        long intLe2 = ((long) bufferedSource.readIntLe()) & 4294967295L;
        final Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = ((long) bufferedSource.readIntLe()) & 4294967295L;
        final Ref.LongRef longRef2 = new Ref.LongRef();
        longRef2.element = ((long) bufferedSource.readIntLe()) & 4294967295L;
        int shortLe5 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        int shortLe6 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        int shortLe7 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        bufferedSource.skip(8L);
        final Ref.LongRef longRef3 = new Ref.LongRef();
        longRef3.element = ((long) bufferedSource.readIntLe()) & 4294967295L;
        String utf8 = bufferedSource.readUtf8(shortLe5);
        if (StringsKt.contains$default((CharSequence) utf8, (char) 0, false, 2, (Object) null)) {
            Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: filename contains 0x00");
            return null;
        }
        long j = longRef2.element == 4294967295L ? 8L : 0L;
        if (longRef.element == 4294967295L) {
            j += 8;
        }
        if (longRef3.element == 4294967295L) {
            j += 8;
        }
        final long j2 = j;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        readExtra(bufferedSource, shortLe6, new Function2() { // from class: okio.internal.ZipFilesKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ZipFilesKt.m5354$r8$lambda$fzsduIAsuDmDx09oQZvsh85aRw(booleanRef, j2, longRef2, bufferedSource, longRef, longRef3, objectRef, objectRef2, objectRef3, ((Integer) obj).intValue(), ((Long) obj2).longValue());
            }
        });
        if (j2 > 0 && !booleanRef.element) {
            Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: zip64 extra required but absent");
            return null;
        }
        return new ZipEntry(Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null).resolve(utf8), StringsKt.endsWith$default(utf8, "/", false, 2, (Object) null), bufferedSource.readUtf8(shortLe7), intLe2, longRef.element, longRef2.element, shortLe2, longRef3.element, shortLe4, shortLe3, (Long) objectRef.element, (Long) objectRef2.element, (Long) objectRef3.element, null, null, null, 57344, null);
    }

    /* JADX INFO: renamed from: $r8$lambda$fzsduIAs-uDmDx09oQZvsh85aRw, reason: not valid java name */
    public static Unit m5354$r8$lambda$fzsduIAsuDmDx09oQZvsh85aRw(Ref.BooleanRef booleanRef, long j, Ref.LongRef longRef, final BufferedSource bufferedSource, Ref.LongRef longRef2, Ref.LongRef longRef3, final Ref.ObjectRef objectRef, final Ref.ObjectRef objectRef2, final Ref.ObjectRef objectRef3, int i, long j2) throws IOException {
        if (i != 1) {
            if (i == 10) {
                if (j2 < 4) {
                    Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: NTFS extra too short");
                    return null;
                }
                bufferedSource.skip(4L);
                readExtra(bufferedSource, (int) (j2 - 4), new Function2() { // from class: okio.internal.ZipFilesKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ZipFilesKt.readCentralDirectoryZipEntry$lambda$1$0(objectRef, bufferedSource, objectRef2, objectRef3, ((Integer) obj).intValue(), ((Long) obj2).longValue());
                    }
                });
            }
        } else {
            if (booleanRef.element) {
                Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: zip64 extra repeated");
                return null;
            }
            booleanRef.element = true;
            if (j2 < j) {
                Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: zip64 extra too short");
                return null;
            }
            long longLe = longRef.element;
            if (longLe == 4294967295L) {
                longLe = bufferedSource.readLongLe();
            }
            longRef.element = longLe;
            longRef2.element = longRef2.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
            longRef3.element = longRef3.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v4, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r3v6, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r7v4, types: [T, java.lang.Long] */
    public static final Unit readCentralDirectoryZipEntry$lambda$1$0(Ref.ObjectRef objectRef, BufferedSource bufferedSource, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, int i, long j) throws IOException {
        if (i == 1) {
            if (objectRef.element != 0) {
                Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: NTFS extra attribute tag 0x0001 repeated");
                return null;
            }
            if (j != 24) {
                Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: NTFS extra attribute tag 0x0001 size != 24");
                return null;
            }
            objectRef.element = Long.valueOf(bufferedSource.readLongLe());
            objectRef2.element = Long.valueOf(bufferedSource.readLongLe());
            objectRef3.element = Long.valueOf(bufferedSource.readLongLe());
        }
        return Unit.INSTANCE;
    }

    private static final EocdRecord readEocdRecord(BufferedSource bufferedSource) throws IOException {
        int shortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        int shortLe2 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        long shortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        if (shortLe3 != (bufferedSource.readShortLe() & UShort.MAX_VALUE) || shortLe != 0 || shortLe2 != 0) {
            Model$$ExternalSyntheticBUOutline0.m1107m("unsupported zip: spanned");
            return null;
        }
        bufferedSource.skip(4L);
        return new EocdRecord(shortLe3, 4294967295L & ((long) bufferedSource.readIntLe()), bufferedSource.readShortLe() & UShort.MAX_VALUE);
    }

    private static final EocdRecord readZip64EocdRecord(BufferedSource bufferedSource, EocdRecord eocdRecord) throws IOException {
        bufferedSource.skip(12L);
        int intLe = bufferedSource.readIntLe();
        int intLe2 = bufferedSource.readIntLe();
        long longLe = bufferedSource.readLongLe();
        if (longLe != bufferedSource.readLongLe() || intLe != 0 || intLe2 != 0) {
            Model$$ExternalSyntheticBUOutline0.m1107m("unsupported zip: spanned");
            return null;
        }
        bufferedSource.skip(8L);
        return new EocdRecord(longLe, bufferedSource.readLongLe(), eocdRecord.getCommentByteCount());
    }

    private static final void readExtra(BufferedSource bufferedSource, int i, Function2<? super Integer, ? super Long, Unit> function2) throws IOException {
        long j = i;
        while (j != 0) {
            if (j < 4) {
                Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: truncated header in extra field");
                return;
            }
            int shortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
            long shortLe2 = ((long) bufferedSource.readShortLe()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            long j2 = j - 4;
            if (j2 < shortLe2) {
                Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: truncated value in extra field");
                return;
            }
            bufferedSource.require(shortLe2);
            long size = bufferedSource.getBufferField().getSize();
            function2.invoke(Integer.valueOf(shortLe), Long.valueOf(shortLe2));
            long size2 = (bufferedSource.getBufferField().getSize() + shortLe2) - size;
            if (size2 < 0) {
                ZipFilesKt$$ExternalSyntheticBUOutline0.m979m("unsupported zip: too many bytes processed for ", shortLe);
                return;
            } else {
                if (size2 > 0) {
                    bufferedSource.getBufferField().skip(size2);
                }
                j = j2 - shortLe2;
            }
        }
    }

    public static final void skipLocalHeader(BufferedSource bufferedSource) {
        readOrSkipLocalHeader(bufferedSource, null);
    }

    public static final ZipEntry readLocalHeader(BufferedSource bufferedSource, ZipEntry zipEntry) {
        return readOrSkipLocalHeader(bufferedSource, zipEntry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final ZipEntry readOrSkipLocalHeader(final BufferedSource bufferedSource, ZipEntry zipEntry) throws IOException {
        int intLe = bufferedSource.readIntLe();
        if (intLe != 67324752) {
            ZipFilesKt$$ExternalSyntheticBUOutline2.m981m("bad zip: expected ", getHex(67324752), " but was ", getHex(intLe));
            return null;
        }
        bufferedSource.skip(2L);
        short shortLe = bufferedSource.readShortLe();
        int i = shortLe & UShort.MAX_VALUE;
        if ((shortLe & 1) != 0) {
            ZipFilesKt$$ExternalSyntheticBUOutline1.m980m("unsupported zip: general purpose bit flag=", getHex(i));
            return null;
        }
        bufferedSource.skip(18L);
        long shortLe2 = ((long) bufferedSource.readShortLe()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        int shortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        bufferedSource.skip(shortLe2);
        if (zipEntry == null) {
            bufferedSource.skip(shortLe3);
            return null;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        readExtra(bufferedSource, shortLe3, new Function2() { // from class: okio.internal.ZipFilesKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ZipFilesKt.m5353$r8$lambda$00L8DWbjy5sZTSutntgRZsY7ng(bufferedSource, objectRef, objectRef2, objectRef3, ((Integer) obj).intValue(), ((Long) obj2).longValue());
            }
        });
        return zipEntry.copy$okio((Integer) objectRef.element, (Integer) objectRef2.element, (Integer) objectRef3.element);
    }

    /* JADX WARN: Type inference failed for: r10v3, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r11v2, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r14v6, types: [T, java.lang.Integer] */
    /* JADX INFO: renamed from: $r8$lambda$00L8-DWbjy5sZTSutntgRZsY7ng, reason: not valid java name */
    public static Unit m5353$r8$lambda$00L8DWbjy5sZTSutntgRZsY7ng(BufferedSource bufferedSource, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, int i, long j) throws IOException {
        if (i == 21589) {
            if (j < 1) {
                Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: extended timestamp extra too short");
                return null;
            }
            byte b2 = bufferedSource.readByte();
            boolean z = (b2 & 1) == 1;
            boolean z2 = (b2 & 2) == 2;
            boolean z3 = (b2 & 4) == 4;
            long j2 = z ? 5L : 1L;
            if (z2) {
                j2 += 4;
            }
            if (z3) {
                j2 += 4;
            }
            if (j < j2) {
                Model$$ExternalSyntheticBUOutline0.m1107m("bad zip: extended timestamp extra too short");
                return null;
            }
            if (z) {
                objectRef.element = Integer.valueOf(bufferedSource.readIntLe());
            }
            if (z2) {
                objectRef2.element = Integer.valueOf(bufferedSource.readIntLe());
            }
            if (z3) {
                objectRef3.element = Integer.valueOf(bufferedSource.readIntLe());
            }
        }
        return Unit.INSTANCE;
    }

    public static final long filetimeToEpochMillis(long j) {
        return (j / NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) - 11644473600000L;
    }

    public static final Long dosDateTimeToEpochMillis(int i, int i2) {
        if (i2 == -1) {
            return null;
        }
        return Long.valueOf(_ZlibJvmKt.datePartsToEpochMillis(((i >> 9) & 127) + 1980, (i >> 5) & 15, i & 31, (i2 >> 11) & 31, (i2 >> 5) & 63, (i2 & 31) << 1));
    }

    private static final String getHex(int i) {
        return "0x" + Integer.toString(i, CharsKt.checkRadix(16));
    }
}
