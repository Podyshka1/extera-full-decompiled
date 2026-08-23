package okio.internal;

import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSink;
import okio.FileMetadata;
import okio.JvmSystemFileSystem$$ExternalSyntheticBUOutline0;
import okio.Okio;
import okio.Path;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.Source;
import okio.ZipFileSystem$$ExternalSyntheticBUOutline0;
import okio.ZipFileSystem$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: okio.internal.-FileSystem, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u001c\u0010\u0007\u001a\u00020\b*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0000\u001a\u001c\u0010\u000b\u001a\u00020\b*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0000\u001a\u001c\u0010\u000e\u001a\u00020\b*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006H\u0000\u001a\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0012*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006H\u0000\u001aF\u0010\u0014\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00040\u00152\u0006\u0010\u0016\u001a\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00182\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0080@¢\u0006\u0002\u0010\u001a\u001a\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¨\u0006\u001c"}, d2 = {"commonMetadata", "Lokio/FileMetadata;", "Lokio/FileSystem;", "path", "Lokio/Path;", "commonExists", _UrlKt.FRAGMENT_ENCODE_SET, "commonCreateDirectories", _UrlKt.FRAGMENT_ENCODE_SET, "dir", "mustCreate", "commonCopy", "source", "target", "commonDeleteRecursively", "fileOrDirectory", "mustExist", "commonListRecursively", "Lkotlin/sequences/Sequence;", "followSymlinks", "collectRecursively", "Lkotlin/sequences/SequenceScope;", "fileSystem", "stack", "Lkotlin/collections/ArrayDeque;", "postorder", "(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "symlinkTarget", "okio"}, m754k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "-FileSystem")
@SourceDebugExtension({"SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,155:1\n58#2,4:156\n58#2,22:160\n66#2,10:182\n62#2,3:192\n77#2,3:195\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n*L\n65#1:156,4\n66#1:160,22\n65#1:182,10\n65#1:192,3\n65#1:195,3\n*E\n"})
public abstract class FileSystem {

    /* JADX INFO: renamed from: okio.internal.-FileSystem$collectRecursively$1 */
    @Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "okio.internal.-FileSystem", m766f = "FileSystem.kt", m767i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2}, m768l = {116, 135, 145}, m769m = "collectRecursively", m770n = {"$this$collectRecursively", "fileSystem", "stack", "path", "followSymlinks", "postorder", "$this$collectRecursively", "fileSystem", "stack", "path", "children", "symlinkPath", "child", "followSymlinks", "postorder", "symlinkCount", "$this$collectRecursively", "fileSystem", "stack", "path", "children", "followSymlinks", "postorder"}, m771s = {"L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$7", "Z$0", "Z$1", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "Z$0", "Z$1"}, m772v = 1)
    public static final class C23701 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        public C23701(Continuation<? super C23701> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileSystem.collectRecursively(null, null, null, null, false, false, this);
        }
    }

    public static final FileMetadata commonMetadata(okio.FileSystem fileSystem, Path path) throws FileNotFoundException {
        FileMetadata fileMetadataMetadataOrNull = fileSystem.metadataOrNull(path);
        if (fileMetadataMetadataOrNull != null) {
            return fileMetadataMetadataOrNull;
        }
        ZipFileSystem$$ExternalSyntheticBUOutline1.m853m("no such file: ", path);
        return null;
    }

    public static final boolean commonExists(okio.FileSystem fileSystem, Path path) {
        return fileSystem.metadataOrNull(path) != null;
    }

    public static final void commonCreateDirectories(okio.FileSystem fileSystem, Path path, boolean z) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (Path pathParent = path; pathParent != null && !fileSystem.exists(pathParent); pathParent = pathParent.parent()) {
            arrayDeque.addFirst(pathParent);
        }
        if (z && arrayDeque.isEmpty()) {
            JvmSystemFileSystem$$ExternalSyntheticBUOutline0.m840m(path, " already exists.");
            return;
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            okio.FileSystem.createDirectory$default(fileSystem, (Path) it.next(), false, 2, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0033 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #5 {all -> 0x002d, blocks: (B:3:0x0007, B:21:0x0033, B:27:0x003e, B:16:0x0029, B:4:0x000f, B:13:0x0024), top: B:47:0x0007, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003e A[Catch: all -> 0x002d, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x002d, blocks: (B:3:0x0007, B:21:0x0033, B:27:0x003e, B:16:0x0029, B:4:0x000f, B:13:0x0024), top: B:47:0x0007, inners: #0, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void commonCopy(okio.FileSystem fileSystem, Path path, Path path2) {
        Throwable th;
        Long lValueOf;
        Source source = fileSystem.source(path);
        Throwable th2 = null;
        try {
            BufferedSink bufferedSinkBuffer = Okio.buffer(okio.FileSystem.sink$default(fileSystem, path2, false, 2, null));
            try {
                lValueOf = Long.valueOf(bufferedSinkBuffer.writeAll(source));
            } catch (Throwable th3) {
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                    } catch (Throwable th4) {
                        ExceptionsKt.addSuppressed(th3, th4);
                    }
                }
                th = th3;
                lValueOf = null;
            }
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                    th = null;
                } catch (Throwable th5) {
                    th = th5;
                }
                if (th == null) {
                    throw th;
                }
                lValueOf.longValue();
                if (source != null) {
                    try {
                        source.close();
                    } catch (Throwable th6) {
                        th2 = th6;
                    }
                }
            } else {
                th = null;
                if (th == null) {
                }
            }
        } catch (Throwable th7) {
            if (source != null) {
                try {
                    source.close();
                } catch (Throwable th8) {
                    ExceptionsKt.addSuppressed(th7, th8);
                }
            }
            th2 = th7;
        }
        if (th2 != null) {
            throw th2;
        }
    }

    public static final void commonDeleteRecursively(okio.FileSystem fileSystem, Path path, boolean z) {
        Iterator it = SequencesKt.sequence(new FileSystem$commonDeleteRecursively$sequence$1(fileSystem, path, null)).iterator();
        while (it.hasNext()) {
            fileSystem.delete((Path) it.next(), z && !it.hasNext());
        }
    }

    /* JADX INFO: renamed from: okio.internal.-FileSystem$commonListRecursively$1 */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/sequences/SequenceScope;", "Lokio/Path;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "okio.internal.-FileSystem$commonListRecursively$1", m766f = "FileSystem.kt", m767i = {0, 0, 0}, m768l = {96}, m769m = "invokeSuspend", m770n = {"$this$sequence", "stack", "child"}, m771s = {"L$0", "L$1", "L$3"}, m772v = 1)
    public static final class C23711 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Path $dir;
        final /* synthetic */ boolean $followSymlinks;
        final /* synthetic */ okio.FileSystem $this_commonListRecursively;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23711(Path path, okio.FileSystem fileSystem, boolean z, Continuation<? super C23711> continuation) {
            super(2, continuation);
            this.$dir = path;
            this.$this_commonListRecursively = fileSystem;
            this.$followSymlinks = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C23711 c23711 = new C23711(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, continuation);
            c23711.L$0 = obj;
            return c23711;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
            return ((C23711) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0069 -> B:14:0x006c). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            ArrayDeque arrayDeque;
            Iterator<Path> it;
            SequenceScope sequenceScope = (SequenceScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ArrayDeque arrayDeque2 = new ArrayDeque();
                arrayDeque2.addLast(this.$dir);
                arrayDeque = arrayDeque2;
                it = this.$this_commonListRecursively.list(this.$dir).iterator();
                if (it.hasNext()) {
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                Iterator<Path> it2 = (Iterator) this.L$2;
                arrayDeque = (ArrayDeque) this.L$1;
                ResultKt.throwOnFailure(obj);
                C23711 c23711 = this;
                it = it2;
                this = c23711;
                if (it.hasNext()) {
                    Path next = it.next();
                    okio.FileSystem fileSystem = this.$this_commonListRecursively;
                    boolean z = this.$followSymlinks;
                    this.L$0 = sequenceScope;
                    this.L$1 = arrayDeque;
                    this.L$2 = it;
                    this.L$3 = SpillingKt.nullOutSpilledVariable(next);
                    this.label = 1;
                    c23711 = this;
                    if (FileSystem.collectRecursively(sequenceScope, fileSystem, arrayDeque, next, z, false, c23711) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this = c23711;
                    if (it.hasNext()) {
                        return Unit.INSTANCE;
                    }
                }
            }
        }
    }

    public static final Sequence<Path> commonListRecursively(okio.FileSystem fileSystem, Path path, boolean z) {
        return SequencesKt.sequence(new C23711(path, fileSystem, z, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c6, code lost:
    
        if (r17.yield(r1, r4) == r5) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ff, code lost:
    
        if (r0 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0101, code lost:
    
        if (r12 != 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0103, code lost:
    
        r6.addLast(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x010a, code lost:
    
        r14 = r1;
        r1 = r6;
        r6 = r3.iterator();
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x017c, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x017d, code lost:
    
        r13 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01b9, code lost:
    
        if (r11.yield(r1, r4) == r5) goto L73;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0116 A[Catch: all -> 0x016e, TRY_LEAVE, TryCatch #3 {all -> 0x016e, blocks: (B:49:0x0110, B:51:0x0116), top: B:84:0x0110 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.Object, kotlin.sequences.SequenceScope] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r17v0, types: [java.lang.Object, kotlin.sequences.SequenceScope, kotlin.sequences.SequenceScope<? super okio.Path>] */
    /* JADX WARN: Type inference failed for: r17v1, types: [kotlin.sequences.SequenceScope] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0162 -> B:19:0x0085). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object collectRecursively(SequenceScope<? super Path> sequenceScope, okio.FileSystem fileSystem, ArrayDeque<Path> arrayDeque, Path path, boolean z, boolean z2, Continuation<? super Unit> continuation) throws Throwable {
        C23701 c23701;
        okio.FileSystem fileSystem2;
        ArrayDeque<Path> arrayDeque2;
        boolean z3;
        ?? r11;
        boolean z4;
        okio.FileSystem fileSystem3;
        List<Path> listListOrNull;
        int i;
        Path path2;
        ArrayDeque<Path> arrayDeque3;
        boolean z5;
        ArrayDeque<Path> arrayDeque4;
        boolean z6;
        C23701 c237012;
        okio.FileSystem fileSystem4;
        ?? r17;
        Path path3 = path;
        boolean z7 = z2;
        if (continuation instanceof C23701) {
            c23701 = (C23701) continuation;
            int i2 = c23701.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c23701.label = i2 - Integer.MIN_VALUE;
            } else {
                c23701 = new C23701(continuation);
            }
        }
        Object obj = c23701.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c23701.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            if (z7) {
                fileSystem2 = fileSystem;
                arrayDeque2 = arrayDeque;
                z3 = z;
            } else {
                c23701.L$0 = sequenceScope;
                fileSystem2 = fileSystem;
                c23701.L$1 = fileSystem2;
                arrayDeque2 = arrayDeque;
                c23701.L$2 = arrayDeque2;
                c23701.L$3 = path3;
                z3 = z;
                c23701.Z$0 = z3;
                c23701.Z$1 = z7;
                c23701.label = 1;
            }
            boolean z8 = z3;
            r11 = sequenceScope;
            z4 = z8;
            fileSystem3 = fileSystem2;
        } else if (i3 == 1) {
            boolean z9 = c23701.Z$1;
            boolean z10 = c23701.Z$0;
            Path path4 = (Path) c23701.L$3;
            arrayDeque2 = (ArrayDeque) c23701.L$2;
            fileSystem3 = (okio.FileSystem) c23701.L$1;
            SequenceScope sequenceScope2 = (SequenceScope) c23701.L$0;
            ResultKt.throwOnFailure(obj);
            z7 = z9;
            z4 = z10;
            path3 = path4;
            r11 = sequenceScope2;
        } else {
            if (i3 != 2) {
                if (i3 != 3) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            int i4 = c23701.I$0;
            boolean z11 = c23701.Z$1;
            boolean z12 = c23701.Z$0;
            Iterator<Path> it = (Iterator) c23701.L$6;
            Path path5 = (Path) c23701.L$5;
            List<Path> list = (List) c23701.L$4;
            Path path6 = (Path) c23701.L$3;
            ArrayDeque<Path> arrayDeque5 = (ArrayDeque) c23701.L$2;
            okio.FileSystem fileSystem5 = (okio.FileSystem) c23701.L$1;
            SequenceScope sequenceScope3 = (SequenceScope) c23701.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                i = i4;
                z4 = z12;
                z7 = z11;
                ArrayDeque<Path> arrayDeque6 = arrayDeque5;
                path2 = path5;
                fileSystem3 = fileSystem5;
                Path path7 = path6;
                listListOrNull = list;
                ?? r15 = sequenceScope3;
                try {
                    r11 = r15;
                    if (!it.hasNext()) {
                        try {
                            Path next = it.next();
                            c23701.L$0 = r11;
                            c23701.L$1 = fileSystem3;
                            c23701.L$2 = arrayDeque6;
                            c23701.L$3 = path7;
                            c23701.L$4 = SpillingKt.nullOutSpilledVariable(listListOrNull);
                            c23701.L$5 = SpillingKt.nullOutSpilledVariable(path2);
                            c23701.L$6 = it;
                            c23701.L$7 = SpillingKt.nullOutSpilledVariable(next);
                            c23701.Z$0 = z4;
                            c23701.Z$1 = z7;
                            c23701.I$0 = i;
                            c23701.label = 2;
                            Object objCollectRecursively = collectRecursively(r17, fileSystem4, arrayDeque4, next, z5, z6, c237012);
                            r15 = r17;
                            fileSystem3 = fileSystem4;
                            c23701 = c237012;
                            if (objCollectRecursively != coroutine_suspended) {
                                z4 = z5;
                                z7 = z6;
                                arrayDeque6 = arrayDeque4;
                                r11 = r15;
                                if (!it.hasNext()) {
                                    ArrayDeque<Path> arrayDeque7 = arrayDeque6;
                                    arrayDeque7.removeLast();
                                    arrayDeque2 = arrayDeque7;
                                    z7 = z7;
                                    path3 = path7;
                                    if (z7) {
                                        return Unit.INSTANCE;
                                    }
                                    c23701.L$0 = SpillingKt.nullOutSpilledVariable(r11);
                                    c23701.L$1 = SpillingKt.nullOutSpilledVariable(fileSystem3);
                                    c23701.L$2 = SpillingKt.nullOutSpilledVariable(arrayDeque2);
                                    c23701.L$3 = SpillingKt.nullOutSpilledVariable(path3);
                                    c23701.L$4 = SpillingKt.nullOutSpilledVariable(listListOrNull);
                                    c23701.L$5 = null;
                                    c23701.L$6 = null;
                                    c23701.L$7 = null;
                                    c23701.Z$0 = z4;
                                    c23701.Z$1 = z7;
                                    c23701.label = 3;
                                }
                            }
                            return coroutine_suspended;
                        } catch (Throwable th) {
                            th = th;
                            arrayDeque3 = arrayDeque4;
                            arrayDeque5 = arrayDeque3;
                            arrayDeque5.removeLast();
                            throw th;
                        }
                        z5 = z4;
                        arrayDeque4 = arrayDeque6;
                        z6 = z7;
                        c237012 = c23701;
                        fileSystem4 = fileSystem3;
                        r17 = r11;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    arrayDeque3 = arrayDeque6;
                }
            } catch (Throwable th3) {
                th = th3;
                arrayDeque5.removeLast();
                throw th;
            }
        }
        listListOrNull = fileSystem3.listOrNull(path3);
        if (listListOrNull == null) {
            listListOrNull = CollectionsKt.emptyList();
        }
        if (!listListOrNull.isEmpty()) {
            i = 0;
            path2 = path3;
            while (true) {
                if (z4 && arrayDeque2.contains(path2)) {
                    ZipFileSystem$$ExternalSyntheticBUOutline0.m852m("symlink cycle at ", path3);
                    return null;
                }
                Path pathSymlinkTarget = symlinkTarget(fileSystem3, path2);
                if (pathSymlinkTarget == null) {
                    break;
                }
                i++;
                path2 = pathSymlinkTarget;
            }
        }
        if (z7) {
        }
    }

    public static final Path symlinkTarget(okio.FileSystem fileSystem, Path path) {
        Path symlinkTarget = fileSystem.metadata(path).getSymlinkTarget();
        if (symlinkTarget == null) {
            return null;
        }
        return path.parent().resolve(symlinkTarget);
    }
}
