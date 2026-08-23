package okio.internal;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import okio.BufferedSink;
import okio.FileMetadata;
import okio.Okio;
import okio.Path;
import okio.Source;

/* JADX INFO: renamed from: okio.internal.-FileSystem, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
public abstract class FileSystem {

    /* JADX INFO: renamed from: okio.internal.-FileSystem$collectRecursively$1 */
    static final class C26771 extends ContinuationImpl {
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

        C26771(Continuation continuation) {
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
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        FileMetadata fileMetadataMetadataOrNull = fileSystem.metadataOrNull(path);
        if (fileMetadataMetadataOrNull != null) {
            return fileMetadataMetadataOrNull;
        }
        throw new FileNotFoundException("no such file: " + path);
    }

    public static final boolean commonExists(okio.FileSystem fileSystem, Path path) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        return fileSystem.metadataOrNull(path) != null;
    }

    public static final void commonCreateDirectories(okio.FileSystem fileSystem, Path dir, boolean z) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        ArrayDeque arrayDeque = new ArrayDeque();
        for (Path pathParent = dir; pathParent != null && !fileSystem.exists(pathParent); pathParent = pathParent.parent()) {
            arrayDeque.addFirst(pathParent);
        }
        if (z && arrayDeque.isEmpty()) {
            throw new IOException(dir + " already exists.");
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            okio.FileSystem.createDirectory$default(fileSystem, (Path) it.next(), false, 2, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0042 A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #5 {all -> 0x003c, blocks: (B:3:0x0016, B:21:0x0042, B:27:0x004d, B:16:0x0038, B:4:0x001e, B:13:0x0033), top: B:47:0x0016, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004d A[Catch: all -> 0x003c, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x003c, blocks: (B:3:0x0016, B:21:0x0042, B:27:0x004d, B:16:0x0038, B:4:0x001e, B:13:0x0033), top: B:47:0x0016, inners: #0, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void commonCopy(okio.FileSystem fileSystem, Path source, Path target) {
        Throwable th;
        Long lValueOf;
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        Source source2 = fileSystem.source(source);
        Throwable th2 = null;
        try {
            BufferedSink bufferedSinkBuffer = Okio.buffer(okio.FileSystem.sink$default(fileSystem, target, false, 2, null));
            try {
                lValueOf = Long.valueOf(bufferedSinkBuffer.writeAll(source2));
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
                if (source2 != null) {
                    try {
                        source2.close();
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
            if (source2 != null) {
                try {
                    source2.close();
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

    public static final void commonDeleteRecursively(okio.FileSystem fileSystem, Path fileOrDirectory, boolean z) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        Iterator it = SequencesKt.sequence(new FileSystem$commonDeleteRecursively$sequence$1(fileSystem, fileOrDirectory, null)).iterator();
        while (it.hasNext()) {
            fileSystem.delete((Path) it.next(), z && !it.hasNext());
        }
    }

    /* JADX INFO: renamed from: okio.internal.-FileSystem$commonListRecursively$1 */
    static final class C26781 extends RestrictedSuspendLambda implements Function2 {
        final /* synthetic */ Path $dir;
        final /* synthetic */ boolean $followSymlinks;
        final /* synthetic */ okio.FileSystem $this_commonListRecursively;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C26781(Path path, okio.FileSystem fileSystem, boolean z, Continuation continuation) {
            super(2, continuation);
            this.$dir = path;
            this.$this_commonListRecursively = fileSystem;
            this.$followSymlinks = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C26781 c26781 = new C26781(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, continuation);
            c26781.L$0 = obj;
            return c26781;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope sequenceScope, Continuation continuation) {
            return ((C26781) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Iterator it;
            ArrayDeque arrayDeque;
            SequenceScope sequenceScope = (SequenceScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ArrayDeque arrayDeque2 = new ArrayDeque();
                arrayDeque2.addLast(this.$dir);
                it = this.$this_commonListRecursively.list(this.$dir).iterator();
                arrayDeque = arrayDeque2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$2;
                arrayDeque = (ArrayDeque) this.L$1;
                ResultKt.throwOnFailure(obj);
            }
            Iterator it2 = it;
            while (it2.hasNext()) {
                Path path = (Path) it2.next();
                okio.FileSystem fileSystem = this.$this_commonListRecursively;
                boolean z = this.$followSymlinks;
                this.L$0 = sequenceScope;
                this.L$1 = arrayDeque;
                this.L$2 = it2;
                this.L$3 = SpillingKt.nullOutSpilledVariable(path);
                this.label = 1;
                if (FileSystem.collectRecursively(sequenceScope, fileSystem, arrayDeque, path, z, false, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    public static final Sequence commonListRecursively(okio.FileSystem fileSystem, Path dir, boolean z) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        return SequencesKt.sequence(new C26781(dir, fileSystem, z, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c7, code lost:
    
        if (r17.yield(r1, r4) == r5) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0110, code lost:
    
        if (r0 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0112, code lost:
    
        if (r11 != 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0114, code lost:
    
        r6.addLast(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x011b, code lost:
    
        r13 = r1;
        r1 = r6;
        r6 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x018f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0190, code lost:
    
        r12 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01cb, code lost:
    
        if (r10.yield(r1, r4) == r5) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0127 A[Catch: all -> 0x017e, TRY_LEAVE, TryCatch #2 {all -> 0x017e, blocks: (B:49:0x0121, B:51:0x0127), top: B:81:0x0121 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0173 -> B:19:0x0086). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object collectRecursively(SequenceScope sequenceScope, okio.FileSystem fileSystem, ArrayDeque arrayDeque, Path path, boolean z, boolean z2, Continuation continuation) throws Throwable {
        C26771 c26771;
        okio.FileSystem fileSystem2;
        ArrayDeque arrayDeque2;
        boolean z3;
        SequenceScope sequenceScope2;
        boolean z4;
        okio.FileSystem fileSystem3;
        List listListOrNull;
        int i;
        Path path2;
        ArrayDeque arrayDeque3;
        boolean z5;
        ArrayDeque arrayDeque4;
        boolean z6;
        C26771 c267712;
        okio.FileSystem fileSystem4;
        SequenceScope sequenceScope3;
        Path path3 = path;
        boolean z7 = z2;
        if (continuation instanceof C26771) {
            c26771 = (C26771) continuation;
            int i2 = c26771.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c26771.label = i2 - Integer.MIN_VALUE;
            } else {
                c26771 = new C26771(continuation);
            }
        }
        Object obj = c26771.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c26771.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            if (z7) {
                fileSystem2 = fileSystem;
                arrayDeque2 = arrayDeque;
                z3 = z;
            } else {
                c26771.L$0 = sequenceScope;
                fileSystem2 = fileSystem;
                c26771.L$1 = fileSystem2;
                arrayDeque2 = arrayDeque;
                c26771.L$2 = arrayDeque2;
                c26771.L$3 = path3;
                z3 = z;
                c26771.Z$0 = z3;
                c26771.Z$1 = z7;
                c26771.label = 1;
            }
            boolean z8 = z3;
            sequenceScope2 = sequenceScope;
            z4 = z8;
            fileSystem3 = fileSystem2;
        } else if (i3 == 1) {
            boolean z9 = c26771.Z$1;
            boolean z10 = c26771.Z$0;
            Path path4 = (Path) c26771.L$3;
            arrayDeque2 = (ArrayDeque) c26771.L$2;
            fileSystem3 = (okio.FileSystem) c26771.L$1;
            sequenceScope2 = (SequenceScope) c26771.L$0;
            ResultKt.throwOnFailure(obj);
            z7 = z9;
            z4 = z10;
            path3 = path4;
        } else {
            if (i3 != 2) {
                if (i3 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            int i4 = c26771.I$0;
            boolean z11 = c26771.Z$1;
            boolean z12 = c26771.Z$0;
            Iterator it = (Iterator) c26771.L$6;
            Path path5 = (Path) c26771.L$5;
            List list = (List) c26771.L$4;
            Path path6 = (Path) c26771.L$3;
            ArrayDeque arrayDeque5 = (ArrayDeque) c26771.L$2;
            okio.FileSystem fileSystem5 = (okio.FileSystem) c26771.L$1;
            SequenceScope sequenceScope4 = (SequenceScope) c26771.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                i = i4;
                z4 = z12;
                z7 = z11;
                ArrayDeque arrayDeque6 = arrayDeque5;
                path2 = path5;
                fileSystem3 = fileSystem5;
                Path path7 = path6;
                listListOrNull = list;
                sequenceScope2 = sequenceScope4;
                try {
                    if (!it.hasNext()) {
                        try {
                            Path path8 = (Path) it.next();
                            c26771.L$0 = sequenceScope2;
                            c26771.L$1 = fileSystem3;
                            c26771.L$2 = arrayDeque6;
                            c26771.L$3 = path7;
                            c26771.L$4 = SpillingKt.nullOutSpilledVariable(listListOrNull);
                            c26771.L$5 = SpillingKt.nullOutSpilledVariable(path2);
                            c26771.L$6 = it;
                            c26771.L$7 = SpillingKt.nullOutSpilledVariable(path8);
                            c26771.Z$0 = z4;
                            c26771.Z$1 = z7;
                            c26771.I$0 = i;
                            c26771.label = 2;
                            Object objCollectRecursively = collectRecursively(sequenceScope3, fileSystem4, arrayDeque4, path8, z5, z6, c267712);
                            sequenceScope4 = sequenceScope3;
                            c26771 = c267712;
                            if (objCollectRecursively != coroutine_suspended) {
                                z4 = z5;
                                z7 = z6;
                                arrayDeque6 = arrayDeque4;
                                fileSystem3 = fileSystem4;
                                sequenceScope2 = sequenceScope4;
                                if (!it.hasNext()) {
                                    SequenceScope sequenceScope5 = sequenceScope2;
                                    okio.FileSystem fileSystem6 = fileSystem3;
                                    ArrayDeque arrayDeque7 = arrayDeque6;
                                    arrayDeque7.removeLast();
                                    arrayDeque2 = arrayDeque7;
                                    fileSystem3 = fileSystem6;
                                    sequenceScope2 = sequenceScope5;
                                    z7 = z7;
                                    path3 = path7;
                                    if (z7) {
                                        return Unit.INSTANCE;
                                    }
                                    c26771.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope2);
                                    c26771.L$1 = SpillingKt.nullOutSpilledVariable(fileSystem3);
                                    c26771.L$2 = SpillingKt.nullOutSpilledVariable(arrayDeque2);
                                    c26771.L$3 = SpillingKt.nullOutSpilledVariable(path3);
                                    c26771.L$4 = SpillingKt.nullOutSpilledVariable(listListOrNull);
                                    c26771.L$5 = null;
                                    c26771.L$6 = null;
                                    c26771.L$7 = null;
                                    c26771.Z$0 = z4;
                                    c26771.Z$1 = z7;
                                    c26771.label = 3;
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
                        c267712 = c26771;
                        fileSystem4 = fileSystem3;
                        sequenceScope3 = sequenceScope2;
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
                    throw new IOException("symlink cycle at " + path3);
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
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        Path symlinkTarget = fileSystem.metadata(path).getSymlinkTarget();
        if (symlinkTarget == null) {
            return null;
        }
        Path pathParent = path.parent();
        Intrinsics.checkNotNull(pathParent);
        return pathParent.resolve(symlinkTarget);
    }
}
