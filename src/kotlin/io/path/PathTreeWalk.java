package kotlin.io.path;

import com.android.dx.io.Opcodes;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import java.nio.file.FileSystemLoopException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\b\b\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJD\u0010\u0012\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000f\u0012\u0004\u0012\u00020\u00100\u000eH\u0082H¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0016J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u0014H\u0096\u0002¢\u0006\u0004\b\u0018\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0019R\u001c\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010$\u001a\u00020\u001b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u001dR\u0014\u0010%\u001a\u00020\u001b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\u001d¨\u0006&"}, d2 = {"Lkotlin/io/path/PathTreeWalk;", "Lkotlin/sequences/Sequence;", "j$/nio/file/Path", "start", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/io/path/PathWalkOption;", "options", "<init>", "(Lj$/nio/file/Path;[Lkotlin/io/path/PathWalkOption;)V", "Lkotlin/sequences/SequenceScope;", "Lkotlin/io/path/PathNode;", "node", "Lkotlin/io/path/DirectoryEntriesReader;", "entriesReader", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "entriesAction", "yieldIfNeeded", "(Lkotlin/sequences/SequenceScope;Lkotlin/io/path/PathNode;Lkotlin/io/path/DirectoryEntriesReader;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "dfsIterator", "()Ljava/util/Iterator;", "bfsIterator", "iterator", "Lj$/nio/file/Path;", "[Lkotlin/io/path/PathWalkOption;", _UrlKt.FRAGMENT_ENCODE_SET, "getFollowLinks", "()Z", "followLinks", "j$/nio/file/LinkOption", "getLinkOptions", "()[Lj$/nio/file/LinkOption;", "linkOptions", "getIncludeDirectories", "includeDirectories", "isBFS", "kotlin-stdlib-jdk7"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public final class PathTreeWalk implements Sequence<Path> {
    private final PathWalkOption[] options;
    private final Path start;

    public PathTreeWalk(Path path, PathWalkOption[] pathWalkOptionArr) {
        this.start = path;
        this.options = pathWalkOptionArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getFollowLinks() {
        return ArraysKt.contains(this.options, PathWalkOption.FOLLOW_LINKS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinkOption[] getLinkOptions() {
        return LinkFollowing.INSTANCE.toLinkOptions(getFollowLinks());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getIncludeDirectories() {
        return ArraysKt.contains(this.options, PathWalkOption.INCLUDE_DIRECTORIES);
    }

    private final boolean isBFS() {
        return ArraysKt.contains(this.options, PathWalkOption.BREADTH_FIRST);
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<Path> iterator() {
        return isBFS() ? bfsIterator() : dfsIterator();
    }

    private final Object yieldIfNeeded(SequenceScope<? super Path> sequenceScope, PathNode pathNode, DirectoryEntriesReader directoryEntriesReader, Function1<? super List<PathNode>, Unit> function1, Continuation<? super Unit> continuation) throws FileSystemLoopException {
        Path path = pathNode.getPath();
        if (pathNode.getParent() != null) {
            PathsKt__PathRecursiveFunctionsKt.checkFileName(path);
        }
        LinkOption[] linkOptions = getLinkOptions();
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
            if (!PathTreeWalkKt.createsCycle(pathNode)) {
                if (getIncludeDirectories()) {
                    InlineMarker.mark(0);
                    sequenceScope.yield(path, continuation);
                    InlineMarker.mark(1);
                }
                LinkOption[] linkOptions2 = getLinkOptions();
                LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptions2, linkOptions2.length);
                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                    function1.invoke(directoryEntriesReader.readEntries(pathNode));
                }
            } else {
                throw new FileSystemLoopException(path.toString());
            }
        } else if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            InlineMarker.mark(0);
            sequenceScope.yield(path, continuation);
            InlineMarker.mark(1);
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: kotlin.io.path.PathTreeWalk$dfsIterator$1 */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/sequences/SequenceScope;", "j$/nio/file/Path", _UrlKt.FRAGMENT_ENCODE_SET, "<anonymous>", "(Lkotlin/sequences/SequenceScope;)V"}, m862k = 3, mv = {2, 3, 0})
    @DebugMetadata(m872c = "kotlin.io.path.PathTreeWalk$dfsIterator$1", m873f = "PathTreeWalk.kt", m874i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}, m875l = {191, 197, Opcodes.MUL_INT_LIT16, Opcodes.ADD_INT_LIT8}, m876m = "invokeSuspend", m877n = {"$this$iterator", "stack", "entriesReader", "startNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "stack", "entriesReader", "startNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "stack", "entriesReader", "startNode", "topNode", "topIterator", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "stack", "entriesReader", "startNode", "topNode", "topIterator", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded"}, nl = {193, 199, Opcodes.REM_INT_LIT16, Opcodes.MUL_INT_LIT8}, m878s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "L$10", "L$11", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "L$10", "L$11", "I$0"}, m879v = 2)
    @SourceDebugExtension({"SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n44#2,19:200\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n*L\n70#1:181,19\n81#1:200,19\n*E\n"})
    public static final class C23301 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$10;
        Object L$11;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        int label;

        public C23301(Continuation<? super C23301> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C23301 c23301 = PathTreeWalk.this.new C23301(continuation);
            c23301.L$0 = obj;
            return c23301;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
            return ((C23301) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x01d3, code lost:
        
            if (r1.yield(r12, r17) == r2) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x01da, code lost:
        
            continue;
         */
        /* JADX WARN: Path cross not found for [B:4:0x0014, B:15:0x00be], limit reached: 84 */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0172  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x01e0  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0287  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws FileSystemLoopException {
            ArrayDeque arrayDeque;
            DirectoryEntriesReader directoryEntriesReader;
            PathNode pathNode;
            PathTreeWalk pathTreeWalk;
            ArrayDeque arrayDeque2;
            DirectoryEntriesReader directoryEntriesReader2;
            PathNode pathNode2;
            PathNode pathNode3;
            Path path;
            DirectoryEntriesReader directoryEntriesReader3;
            ArrayDeque arrayDeque3;
            PathNode pathNode4;
            Path path2;
            PathTreeWalk pathTreeWalk2;
            DirectoryEntriesReader directoryEntriesReader4;
            LinkOption[] linkOptionArr;
            SequenceScope sequenceScope = (SequenceScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                arrayDeque = new ArrayDeque();
                directoryEntriesReader = new DirectoryEntriesReader(PathTreeWalk.this.getFollowLinks());
                pathNode = new PathNode(PathTreeWalk.this.start, PathTreeWalkKt.keyOf(PathTreeWalk.this.start, PathTreeWalk.this.getLinkOptions()), null);
                pathTreeWalk = PathTreeWalk.this;
                Path path3 = pathNode.getPath();
                if (pathNode.getParent() != null) {
                    PathsKt__PathRecursiveFunctionsKt.checkFileName(path3);
                }
                LinkOption[] linkOptions = pathTreeWalk.getLinkOptions();
                LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
                if (Files.isDirectory(path3, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                    if (!PathTreeWalkKt.createsCycle(pathNode)) {
                        if (!pathTreeWalk.getIncludeDirectories()) {
                            pathNode3 = pathNode;
                            path = path3;
                            directoryEntriesReader3 = directoryEntriesReader;
                            LinkOption[] linkOptions2 = pathTreeWalk.getLinkOptions();
                            linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions2, linkOptions2.length);
                            if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                            }
                            PathNode pathNode5 = pathNode3;
                            arrayDeque2 = arrayDeque;
                            pathNode2 = pathNode5;
                            directoryEntriesReader2 = directoryEntriesReader3;
                            while (!arrayDeque2.isEmpty()) {
                            }
                            return Unit.INSTANCE;
                        }
                        this.L$0 = sequenceScope;
                        this.L$1 = arrayDeque;
                        this.L$2 = directoryEntriesReader;
                        this.L$3 = pathNode;
                        this.L$4 = pathTreeWalk;
                        this.L$5 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                        this.L$6 = pathNode;
                        this.L$7 = directoryEntriesReader;
                        this.L$8 = path3;
                        this.I$0 = 0;
                        this.label = 1;
                        if (sequenceScope.yield(path3, this) != coroutine_suspended) {
                            arrayDeque3 = arrayDeque;
                            pathNode4 = pathNode;
                            path2 = path3;
                            directoryEntriesReader3 = directoryEntriesReader;
                            pathTreeWalk2 = pathTreeWalk;
                            directoryEntriesReader4 = directoryEntriesReader3;
                            ArrayDeque arrayDeque4 = arrayDeque3;
                            path = path2;
                            arrayDeque = arrayDeque4;
                            PathTreeWalk pathTreeWalk3 = pathTreeWalk2;
                            directoryEntriesReader = directoryEntriesReader4;
                            pathTreeWalk = pathTreeWalk3;
                            PathNode pathNode6 = pathNode;
                            pathNode = pathNode4;
                            pathNode3 = pathNode6;
                            LinkOption[] linkOptions22 = pathTreeWalk.getLinkOptions();
                            linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions22, linkOptions22.length);
                            if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                            }
                            PathNode pathNode52 = pathNode3;
                            arrayDeque2 = arrayDeque;
                            pathNode2 = pathNode52;
                            directoryEntriesReader2 = directoryEntriesReader3;
                            while (!arrayDeque2.isEmpty()) {
                            }
                            return Unit.INSTANCE;
                        }
                    } else {
                        throw new FileSystemLoopException(path3.toString());
                    }
                } else {
                    if (Files.exists(path3, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
                        this.L$0 = sequenceScope;
                        this.L$1 = arrayDeque;
                        this.L$2 = directoryEntriesReader;
                        this.L$3 = SpillingKt.nullOutSpilledVariable(pathNode);
                        this.L$4 = SpillingKt.nullOutSpilledVariable(pathTreeWalk);
                        this.L$5 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                        this.L$6 = SpillingKt.nullOutSpilledVariable(pathNode);
                        this.L$7 = SpillingKt.nullOutSpilledVariable(directoryEntriesReader);
                        this.L$8 = SpillingKt.nullOutSpilledVariable(path3);
                        this.I$0 = 0;
                        this.label = 2;
                    }
                    arrayDeque2 = arrayDeque;
                    directoryEntriesReader2 = directoryEntriesReader;
                    pathNode2 = pathNode;
                    while (!arrayDeque2.isEmpty()) {
                    }
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                path2 = (Path) this.L$8;
                directoryEntriesReader4 = (DirectoryEntriesReader) this.L$7;
                pathNode4 = (PathNode) this.L$6;
                pathTreeWalk2 = (PathTreeWalk) this.L$4;
                pathNode = (PathNode) this.L$3;
                directoryEntriesReader3 = (DirectoryEntriesReader) this.L$2;
                arrayDeque3 = (ArrayDeque) this.L$1;
                ResultKt.throwOnFailure(obj);
                ArrayDeque arrayDeque42 = arrayDeque3;
                path = path2;
                arrayDeque = arrayDeque42;
                PathTreeWalk pathTreeWalk32 = pathTreeWalk2;
                directoryEntriesReader = directoryEntriesReader4;
                pathTreeWalk = pathTreeWalk32;
                PathNode pathNode62 = pathNode;
                pathNode = pathNode4;
                pathNode3 = pathNode62;
                LinkOption[] linkOptions222 = pathTreeWalk.getLinkOptions();
                linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions222, linkOptions222.length);
                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                    pathNode3.setContentIterator(directoryEntriesReader.readEntries(pathNode).iterator());
                    arrayDeque.addLast(pathNode3);
                }
                PathNode pathNode522 = pathNode3;
                arrayDeque2 = arrayDeque;
                pathNode2 = pathNode522;
                directoryEntriesReader2 = directoryEntriesReader3;
                while (!arrayDeque2.isEmpty()) {
                }
                return Unit.INSTANCE;
            }
            if (i == 2) {
            } else {
                if (i == 3) {
                    Path path4 = (Path) this.L$11;
                    directoryEntriesReader2 = (DirectoryEntriesReader) this.L$10;
                    PathNode pathNode7 = (PathNode) this.L$9;
                    PathTreeWalk pathTreeWalk4 = (PathTreeWalk) this.L$7;
                    PathNode pathNode8 = (PathNode) this.L$6;
                    PathNode pathNode9 = (PathNode) this.L$3;
                    DirectoryEntriesReader directoryEntriesReader5 = (DirectoryEntriesReader) this.L$2;
                    ArrayDeque arrayDeque5 = (ArrayDeque) this.L$1;
                    ResultKt.throwOnFailure(obj);
                    ArrayDeque arrayDeque6 = arrayDeque5;
                    Path path5 = path4;
                    pathNode2 = pathNode9;
                    PathNode next = pathNode7;
                    arrayDeque2 = arrayDeque6;
                    LinkOption[] linkOptions3 = pathTreeWalk4.getLinkOptions();
                    LinkOption[] linkOptionArr3 = (LinkOption[]) Arrays.copyOf(linkOptions3, linkOptions3.length);
                    if (Files.isDirectory(path5, (LinkOption[]) Arrays.copyOf(linkOptionArr3, linkOptionArr3.length))) {
                        pathNode8.setContentIterator(directoryEntriesReader2.readEntries(next).iterator());
                        arrayDeque2.addLast(pathNode8);
                    }
                    directoryEntriesReader2 = directoryEntriesReader5;
                    while (!arrayDeque2.isEmpty()) {
                        PathNode pathNode10 = (PathNode) arrayDeque2.last();
                        Iterator<PathNode> contentIterator = pathNode10.getContentIterator();
                        if (contentIterator.hasNext()) {
                            next = contentIterator.next();
                            PathTreeWalk pathTreeWalk5 = PathTreeWalk.this;
                            path5 = next.getPath();
                            if (next.getParent() != null) {
                                PathsKt__PathRecursiveFunctionsKt.checkFileName(path5);
                            }
                            LinkOption[] linkOptions4 = pathTreeWalk5.getLinkOptions();
                            LinkOption[] linkOptionArr4 = (LinkOption[]) Arrays.copyOf(linkOptions4, linkOptions4.length);
                            if (Files.isDirectory(path5, (LinkOption[]) Arrays.copyOf(linkOptionArr4, linkOptionArr4.length))) {
                                if (!PathTreeWalkKt.createsCycle(next)) {
                                    if (!pathTreeWalk5.getIncludeDirectories()) {
                                        pathNode8 = next;
                                        pathTreeWalk4 = pathTreeWalk5;
                                        directoryEntriesReader5 = directoryEntriesReader2;
                                        LinkOption[] linkOptions32 = pathTreeWalk4.getLinkOptions();
                                        LinkOption[] linkOptionArr32 = (LinkOption[]) Arrays.copyOf(linkOptions32, linkOptions32.length);
                                        if (Files.isDirectory(path5, (LinkOption[]) Arrays.copyOf(linkOptionArr32, linkOptionArr32.length))) {
                                        }
                                        directoryEntriesReader2 = directoryEntriesReader5;
                                        while (!arrayDeque2.isEmpty()) {
                                        }
                                    } else {
                                        this.L$0 = sequenceScope;
                                        this.L$1 = arrayDeque2;
                                        this.L$2 = directoryEntriesReader2;
                                        this.L$3 = SpillingKt.nullOutSpilledVariable(pathNode2);
                                        this.L$4 = SpillingKt.nullOutSpilledVariable(pathNode10);
                                        this.L$5 = SpillingKt.nullOutSpilledVariable(contentIterator);
                                        this.L$6 = next;
                                        this.L$7 = pathTreeWalk5;
                                        this.L$8 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                                        this.L$9 = next;
                                        this.L$10 = directoryEntriesReader2;
                                        this.L$11 = path5;
                                        this.I$0 = 0;
                                        this.label = 3;
                                        if (sequenceScope.yield(path5, this) != coroutine_suspended) {
                                            pathNode8 = next;
                                            pathTreeWalk4 = pathTreeWalk5;
                                            pathNode9 = pathNode2;
                                            directoryEntriesReader5 = directoryEntriesReader2;
                                            path4 = path5;
                                            arrayDeque5 = arrayDeque2;
                                            pathNode7 = pathNode8;
                                            ArrayDeque arrayDeque62 = arrayDeque5;
                                            Path path52 = path4;
                                            pathNode2 = pathNode9;
                                            PathNode next2 = pathNode7;
                                            arrayDeque2 = arrayDeque62;
                                            LinkOption[] linkOptions322 = pathTreeWalk4.getLinkOptions();
                                            LinkOption[] linkOptionArr322 = (LinkOption[]) Arrays.copyOf(linkOptions322, linkOptions322.length);
                                            if (Files.isDirectory(path52, (LinkOption[]) Arrays.copyOf(linkOptionArr322, linkOptionArr322.length))) {
                                            }
                                            directoryEntriesReader2 = directoryEntriesReader5;
                                            while (!arrayDeque2.isEmpty()) {
                                            }
                                        }
                                    }
                                } else {
                                    throw new FileSystemLoopException(path52.toString());
                                }
                            } else {
                                if (Files.exists(path52, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
                                    this.L$0 = sequenceScope;
                                    this.L$1 = arrayDeque2;
                                    this.L$2 = directoryEntriesReader2;
                                    this.L$3 = SpillingKt.nullOutSpilledVariable(pathNode2);
                                    this.L$4 = SpillingKt.nullOutSpilledVariable(pathNode10);
                                    this.L$5 = SpillingKt.nullOutSpilledVariable(contentIterator);
                                    this.L$6 = SpillingKt.nullOutSpilledVariable(next2);
                                    this.L$7 = SpillingKt.nullOutSpilledVariable(pathTreeWalk5);
                                    this.L$8 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                                    this.L$9 = SpillingKt.nullOutSpilledVariable(next2);
                                    this.L$10 = SpillingKt.nullOutSpilledVariable(directoryEntriesReader2);
                                    this.L$11 = SpillingKt.nullOutSpilledVariable(path52);
                                    this.I$0 = 0;
                                    this.label = 4;
                                    if (sequenceScope.yield(path52, this) == coroutine_suspended) {
                                    }
                                }
                                while (!arrayDeque2.isEmpty()) {
                                }
                            }
                            return coroutine_suspended;
                        }
                        arrayDeque2.removeLast();
                    }
                    return Unit.INSTANCE;
                }
                if (i != 4) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            }
            pathNode2 = (PathNode) this.L$3;
            directoryEntriesReader2 = (DirectoryEntriesReader) this.L$2;
            arrayDeque2 = (ArrayDeque) this.L$1;
            ResultKt.throwOnFailure(obj);
            while (!arrayDeque2.isEmpty()) {
            }
            return Unit.INSTANCE;
        }
    }

    private final Iterator<Path> dfsIterator() {
        return SequencesKt.iterator(new C23301(null));
    }

    /* JADX INFO: renamed from: kotlin.io.path.PathTreeWalk$bfsIterator$1 */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/sequences/SequenceScope;", "j$/nio/file/Path", _UrlKt.FRAGMENT_ENCODE_SET, "<anonymous>", "(Lkotlin/sequences/SequenceScope;)V"}, m862k = 3, mv = {2, 3, 0})
    @DebugMetadata(m872c = "kotlin.io.path.PathTreeWalk$bfsIterator$1", m873f = "PathTreeWalk.kt", m874i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, m875l = {191, 197}, m876m = "invokeSuspend", m877n = {"$this$iterator", "queue", "entriesReader", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "queue", "entriesReader", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded"}, nl = {193, 199}, m878s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0"}, m879v = 2)
    @SourceDebugExtension({"SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n*L\n101#1:181,19\n*E\n"})
    public static final class C23291 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;

        public C23291(Continuation<? super C23291> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C23291 c23291 = PathTreeWalk.this.new C23291(continuation);
            c23291.L$0 = obj;
            return c23291;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
            return ((C23291) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x0094, code lost:
        
            r2 = r8;
         */
        /* JADX WARN: Removed duplicated region for block: B:13:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0125  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws FileSystemLoopException {
            DirectoryEntriesReader directoryEntriesReader;
            ArrayDeque arrayDeque;
            Path path;
            DirectoryEntriesReader directoryEntriesReader2;
            PathTreeWalk pathTreeWalk;
            PathNode pathNode;
            LinkOption[] linkOptionArr;
            ArrayDeque arrayDeque2;
            DirectoryEntriesReader directoryEntriesReader3;
            Path path2;
            SequenceScope sequenceScope = (SequenceScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ArrayDeque arrayDeque3 = new ArrayDeque();
                directoryEntriesReader = new DirectoryEntriesReader(PathTreeWalk.this.getFollowLinks());
                arrayDeque3.addLast(new PathNode(PathTreeWalk.this.start, PathTreeWalkKt.keyOf(PathTreeWalk.this.start, PathTreeWalk.this.getLinkOptions()), null));
                arrayDeque = arrayDeque3;
            } else if (i == 1) {
                path2 = (Path) this.L$8;
                directoryEntriesReader3 = (DirectoryEntriesReader) this.L$7;
                pathNode = (PathNode) this.L$6;
                pathTreeWalk = (PathTreeWalk) this.L$4;
                directoryEntriesReader2 = (DirectoryEntriesReader) this.L$2;
                arrayDeque2 = (ArrayDeque) this.L$1;
                ResultKt.throwOnFailure(obj);
                path = path2;
                directoryEntriesReader = directoryEntriesReader3;
                arrayDeque = arrayDeque2;
                LinkOption[] linkOptions = pathTreeWalk.getLinkOptions();
                linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                    arrayDeque.addAll(directoryEntriesReader.readEntries(pathNode));
                    directoryEntriesReader = directoryEntriesReader2;
                } else {
                    directoryEntriesReader = directoryEntriesReader2;
                }
            } else {
                if (i != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                directoryEntriesReader = (DirectoryEntriesReader) this.L$2;
                arrayDeque = (ArrayDeque) this.L$1;
                ResultKt.throwOnFailure(obj);
            }
            while (!arrayDeque.isEmpty()) {
                pathNode = (PathNode) arrayDeque.removeFirst();
                pathTreeWalk = PathTreeWalk.this;
                path = pathNode.getPath();
                if (pathNode.getParent() != null) {
                    PathsKt__PathRecursiveFunctionsKt.checkFileName(path);
                }
                LinkOption[] linkOptions2 = pathTreeWalk.getLinkOptions();
                LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptions2, linkOptions2.length);
                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                    if (!PathTreeWalkKt.createsCycle(pathNode)) {
                        if (!pathTreeWalk.getIncludeDirectories()) {
                            directoryEntriesReader2 = directoryEntriesReader;
                            LinkOption[] linkOptions3 = pathTreeWalk.getLinkOptions();
                            linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions3, linkOptions3.length);
                            if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                            }
                            while (!arrayDeque.isEmpty()) {
                            }
                        } else {
                            this.L$0 = sequenceScope;
                            this.L$1 = arrayDeque;
                            this.L$2 = directoryEntriesReader;
                            this.L$3 = SpillingKt.nullOutSpilledVariable(pathNode);
                            this.L$4 = pathTreeWalk;
                            this.L$5 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                            this.L$6 = pathNode;
                            this.L$7 = directoryEntriesReader;
                            this.L$8 = path;
                            this.I$0 = 0;
                            this.label = 1;
                            if (sequenceScope.yield(path, this) != coroutine_suspended) {
                                directoryEntriesReader2 = directoryEntriesReader;
                                arrayDeque2 = arrayDeque;
                                path2 = path;
                                directoryEntriesReader3 = directoryEntriesReader2;
                                path = path2;
                                directoryEntriesReader = directoryEntriesReader3;
                                arrayDeque = arrayDeque2;
                                LinkOption[] linkOptions32 = pathTreeWalk.getLinkOptions();
                                linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions32, linkOptions32.length);
                                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                                }
                                while (!arrayDeque.isEmpty()) {
                                }
                            }
                        }
                    } else {
                        throw new FileSystemLoopException(path.toString());
                    }
                } else if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
                    this.L$0 = sequenceScope;
                    this.L$1 = arrayDeque;
                    this.L$2 = directoryEntriesReader;
                    this.L$3 = SpillingKt.nullOutSpilledVariable(pathNode);
                    this.L$4 = SpillingKt.nullOutSpilledVariable(pathTreeWalk);
                    this.L$5 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                    this.L$6 = SpillingKt.nullOutSpilledVariable(pathNode);
                    this.L$7 = SpillingKt.nullOutSpilledVariable(directoryEntriesReader);
                    this.L$8 = SpillingKt.nullOutSpilledVariable(path);
                    this.I$0 = 0;
                    this.label = 2;
                    if (sequenceScope.yield(path, this) == coroutine_suspended) {
                    }
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    private final Iterator<Path> bfsIterator() {
        return SequencesKt.iterator(new C23291(null));
    }
}
