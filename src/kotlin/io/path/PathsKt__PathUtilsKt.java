package kotlin.io.path;

import java.io.IOException;
import java.net.URI;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.FileStore;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserPrincipal;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.WasExperimental;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.internal.InlineOnly;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Ì\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u000e\u0010\u0016\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0017\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004\u001a\u0016\u0010\u0018\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0002H\u0087\u0080\u0004\u001a\u0016\u0010\u001a\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0002H\u0087\u0080\u0004\u001a\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0002H\u0087\u0080\u0004\u001a \u0010\u001c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00022\b\b\u0002\u0010\u001e\u001a\u00020\u001fH\u0087\u0088\b\u001a/\u0010\u001c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020\"0!\"\u00020\"H\u0087\u0088\b¢\u0006\u0002\u0010#\u001a'\u0010$\u001a\u00020\u001f*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010&\u001a'\u0010'\u001a\u00020\u001f*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010&\u001a'\u0010(\u001a\u00020\u001f*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010&\u001a'\u0010)\u001a\u00020\u001f*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010&\u001a\u000e\u0010*\u001a\u00020\u001f*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010+\u001a\u00020\u001f*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010,\u001a\u00020\u001f*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010-\u001a\u00020\u001f*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010.\u001a\u00020\u001f*\u00020\u0002H\u0087\u0088\u0004\u001a\u0016\u0010/\u001a\u00020\u001f*\u00020\u00022\u0006\u00100\u001a\u00020\u0002H\u0087\u0088\u0004\u001a\u001e\u00101\u001a\b\u0012\u0004\u0012\u00020\u000202*\u00020\u00022\b\b\u0002\u00103\u001a\u00020\u0001H\u0087\u0080\u0004\u001a@\u00104\u001a\u0002H5\"\u0004\b\u0000\u00105*\u00020\u00022\b\b\u0002\u00103\u001a\u00020\u00012\u0018\u00106\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000208\u0012\u0004\u0012\u0002H507H\u0087\u0088\bø\u0001\u0000¢\u0006\u0002\u00109\u001a/\u0010:\u001a\u00020;*\u00020\u00022\b\b\u0002\u00103\u001a\u00020\u00012\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020;07H\u0087\u0088\u0004ø\u0001\u0000\u001a\u000e\u0010=\u001a\u00020>*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010?\u001a\u00020;*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010@\u001a\u00020\u001f*\u00020\u0002H\u0087\u0088\b\u001a/\u0010A\u001a\u00020\u0002*\u00020\u00022\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030C0!\"\u0006\u0012\u0002\b\u00030CH\u0087\u0088\b¢\u0006\u0002\u0010D\u001a/\u0010E\u001a\u00020\u0002*\u00020\u00022\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030C0!\"\u0006\u0012\u0002\b\u00030CH\u0087\u0088\b¢\u0006\u0002\u0010D\u001a/\u0010F\u001a\u00020\u0002*\u00020\u00022\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030C0!\"\u0006\u0012\u0002\b\u00030CH\u0087\u0080\b¢\u0006\u0002\u0010D\u001a/\u0010G\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020\"0!\"\u00020\"H\u0087\u0088\b¢\u0006\u0002\u0010#\u001a \u0010G\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00022\b\b\u0002\u0010\u001e\u001a\u00020\u001fH\u0087\u0088\b\u001a\u000e\u0010H\u001a\u00020I*\u00020\u0002H\u0087\u0088\u0004\u001a1\u0010J\u001a\u0004\u0018\u00010K*\u00020\u00022\u0006\u0010L\u001a\u00020\u00012\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010M\u001a9\u0010N\u001a\u00020\u0002*\u00020\u00022\u0006\u0010L\u001a\u00020\u00012\b\u0010O\u001a\u0004\u0018\u00010K2\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\b¢\u0006\u0002\u0010P\u001a5\u0010Q\u001a\u0004\u0018\u0001HR\"\n\b\u0000\u0010R\u0018\u0001*\u00020S*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010T\u001a3\u0010U\u001a\u0002HR\"\n\b\u0000\u0010R\u0018\u0001*\u00020S*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010T\u001a\u001e\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020\u00022\n\u0010Y\u001a\u0006\u0012\u0002\b\u00030ZH\u0081\u0080\u0004\u001a3\u0010[\u001a\u0002H\\\"\n\b\u0000\u0010\\\u0018\u0001*\u00020]*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010^\u001a=\u0010[\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010K0_*\u00020\u00022\u0006\u0010B\u001a\u00020\u00012\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010`\u001a'\u0010a\u001a\u00020b*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010c\u001a\u0016\u0010d\u001a\u00020\u0002*\u00020\u00022\u0006\u0010O\u001a\u00020bH\u0087\u0088\u0004\u001a)\u0010e\u001a\u0004\u0018\u00010f*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010g\u001a\u0016\u0010h\u001a\u00020\u0002*\u00020\u00022\u0006\u0010O\u001a\u00020fH\u0087\u0088\b\u001a-\u0010i\u001a\b\u0012\u0004\u0012\u00020k0j*\u00020\u00022\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020%0!\"\u00020%H\u0087\u0088\u0004¢\u0006\u0002\u0010l\u001a\u001c\u0010m\u001a\u00020\u0002*\u00020\u00022\f\u0010O\u001a\b\u0012\u0004\u0012\u00020k0jH\u0087\u0088\u0004\u001a\u0016\u0010n\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0087\u0088\b\u001a7\u0010o\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00022\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030C0!\"\u0006\u0012\u0002\b\u00030CH\u0087\u0088\b¢\u0006\u0002\u0010p\u001a\u000e\u0010q\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a/\u0010r\u001a\u00020\u0002*\u00020\u00022\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030C0!\"\u0006\u0012\u0002\b\u00030CH\u0087\u0088\b¢\u0006\u0002\u0010D\u001aC\u0010s\u001a\u00020\u00022\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010u\u001a\u0004\u0018\u00010\u00012\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030C0!\"\u0006\u0012\u0002\b\u00030CH\u0087\u0088\u0004¢\u0006\u0002\u0010v\u001aM\u0010s\u001a\u00020\u00022\b\u0010w\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010u\u001a\u0004\u0018\u00010\u00012\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030C0!\"\u0006\u0012\u0002\b\u00030CH\u0087\u0080\u0004¢\u0006\u0002\u0010x\u001a7\u0010y\u001a\u00020\u00022\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u00012\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030C0!\"\u0006\u0012\u0002\b\u00030CH\u0087\u0088\u0004¢\u0006\u0002\u0010z\u001aA\u0010y\u001a\u00020\u00022\b\u0010w\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u00012\u001a\u0010B\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030C0!\"\u0006\u0012\u0002\b\u00030CH\u0087\u0080\u0004¢\u0006\u0002\u0010{\u001a\u0016\u0010|\u001a\u00020\u0002*\u00020\u00022\u0006\u00100\u001a\u00020\u0002H\u0087\u008a\u0004\u001a\u0016\u0010|\u001a\u00020\u0002*\u00020\u00022\u0006\u00100\u001a\u00020\u0001H\u0087\u008a\u0004\u001a\u0012\u0010}\u001a\u00020\u00022\u0006\u0010X\u001a\u00020\u0001H\u0087\u0088\u0004\u001a+\u0010}\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00012\u0012\u0010~\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010!\"\u00020\u0001H\u0087\u0088\u0004¢\u0006\u0002\u0010\u007f\u001a\u0010\u0010\u0080\u0001\u001a\u00020\u0002*\u00030\u0081\u0001H\u0087\u0088\u0004\u001a1\u0010\u0082\u0001\u001a\b\u0012\u0004\u0012\u00020\u000208*\u00020\u00022\u0014\u0010 \u001a\u000b\u0012\u0007\b\u0001\u0012\u00030\u0083\u00010!\"\u00030\u0083\u0001H\u0087\u0080\u0004¢\u0006\u0003\u0010\u0084\u0001\u001a6\u0010\u0085\u0001\u001a\u00020;*\u00020\u00022\u000e\u0010\u0086\u0001\u001a\t\u0012\u0004\u0012\u00020\u00020\u0087\u00012\n\b\u0002\u0010\u0088\u0001\u001a\u00030\u0089\u00012\t\b\u0002\u0010\u008a\u0001\u001a\u00020\u001fH\u0087\u0080\u0004\u001aO\u0010\u0085\u0001\u001a\u00020;*\u00020\u00022\n\b\u0002\u0010\u0088\u0001\u001a\u00030\u0089\u00012\t\b\u0002\u0010\u008a\u0001\u001a\u00020\u001f2\u001a\u0010\u008b\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0004\u0012\u00020;07¢\u0006\u0003\b\u008d\u0001H\u0087\u0080\u0004\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0003 \u0001\u001a;\u0010\u008e\u0001\u001a\t\u0012\u0004\u0012\u00020\u00020\u0087\u00012\u001a\u0010\u008b\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0004\u0012\u00020;07¢\u0006\u0003\b\u008d\u0001H\u0087\u0080\u0004\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0084\b¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u001f\u0010\u0007\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0084\b¢\u0006\f\u0012\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006\"\u001f\u0010\n\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0084\b¢\u0006\f\u0012\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006\" \u0010\r\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u001f\u0010\u0010\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0084\b¢\u0006\f\u0012\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006\" \u0010\u0013\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b\u0014\u0010\u0004\u001a\u0004\b\u0015\u0010\u0006\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u008f\u0001"}, d2 = {"name", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/nio/file/Path;", "getName$annotations", "(Ljava/nio/file/Path;)V", "getName", "(Ljava/nio/file/Path;)Ljava/lang/String;", "nameWithoutExtension", "getNameWithoutExtension$annotations", "getNameWithoutExtension", "extension", "getExtension$annotations", "getExtension", "pathString", "getPathString$annotations", "getPathString", "invariantSeparatorsPathString", "getInvariantSeparatorsPathString$annotations", "getInvariantSeparatorsPathString", "invariantSeparatorsPath", "getInvariantSeparatorsPath$annotations", "getInvariantSeparatorsPath", "absolute", "absolutePathString", "relativeTo", "base", "relativeToOrSelf", "relativeToOrNull", "copyTo", "target", "overwrite", _UrlKt.FRAGMENT_ENCODE_SET, "options", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/nio/file/CopyOption;", "(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;", "exists", "Ljava/nio/file/LinkOption;", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z", "notExists", "isRegularFile", "isDirectory", "isSymbolicLink", "isExecutable", "isHidden", "isReadable", "isWritable", "isSameFileAs", "other", "listDirectoryEntries", _UrlKt.FRAGMENT_ENCODE_SET, "glob", "useDirectoryEntries", "T", "block", "Lkotlin/Function1;", "Lkotlin/sequences/Sequence;", "(Ljava/nio/file/Path;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "forEachDirectoryEntry", _UrlKt.FRAGMENT_ENCODE_SET, "action", "fileSize", _UrlKt.FRAGMENT_ENCODE_SET, "deleteExisting", "deleteIfExists", "createDirectory", "attributes", "Ljava/nio/file/attribute/FileAttribute;", "(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "createDirectories", "createParentDirectories", "moveTo", "fileStore", "Ljava/nio/file/FileStore;", "getAttribute", _UrlKt.FRAGMENT_ENCODE_SET, "attribute", "(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;", "setAttribute", "value", "(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;", "fileAttributesViewOrNull", "V", "Ljava/nio/file/attribute/FileAttributeView;", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;", "fileAttributesView", "fileAttributeViewNotAvailable", _UrlKt.FRAGMENT_ENCODE_SET, "path", "attributeViewClass", "Ljava/lang/Class;", "readAttributes", "A", "Ljava/nio/file/attribute/BasicFileAttributes;", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;", "getLastModifiedTime", "Ljava/nio/file/attribute/FileTime;", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;", "setLastModifiedTime", "getOwner", "Ljava/nio/file/attribute/UserPrincipal;", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;", "setOwner", "getPosixFilePermissions", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/nio/file/attribute/PosixFilePermission;", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;", "setPosixFilePermissions", "createLinkPointingTo", "createSymbolicLinkPointingTo", "(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "readSymbolicLink", "createFile", "createTempFile", "prefix", "suffix", "(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "directory", "(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "createTempDirectory", "(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "div", "Path", "subpaths", "(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;", "toPath", "Ljava/net/URI;", "walk", "Lkotlin/io/path/PathWalkOption;", "(Ljava/nio/file/Path;[Lkotlin/io/path/PathWalkOption;)Lkotlin/sequences/Sequence;", "visitFileTree", "visitor", "Ljava/nio/file/FileVisitor;", "maxDepth", _UrlKt.FRAGMENT_ENCODE_SET, "followLinks", "builderAction", "Lkotlin/io/path/FileVisitorBuilder;", "Lkotlin/ExtensionFunctionType;", "fileVisitor", "kotlin-stdlib-jdk7"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/io/path/PathsKt")
@SourceDebugExtension({"SMAP\nPathUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathUtils.kt\nkotlin/io/path/PathsKt__PathUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1218:1\n1#2:1219\n1915#3,2:1220\n*S KotlinDebug\n*F\n+ 1 PathUtils.kt\nkotlin/io/path/PathsKt__PathUtilsKt\n*L\n418#1:1220,2\n*E\n"})
public class PathsKt__PathUtilsKt extends PathsKt__PathRecursiveFunctionsKt {
    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getExtension$annotations(Path path) {
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @Deprecated(level = DeprecationLevel.ERROR, message = "Use invariantSeparatorsPathString property instead.", replaceWith = @ReplaceWith(expression = "invariantSeparatorsPathString", imports = {}))
    @ExperimentalPathApi
    public static /* synthetic */ void getInvariantSeparatorsPath$annotations(Path path) {
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getInvariantSeparatorsPathString$annotations(Path path) {
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getName$annotations(Path path) {
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getNameWithoutExtension$annotations(Path path) {
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    public static /* synthetic */ void getPathString$annotations(Path path) {
    }

    public static final String getName(Path path) {
        Path fileName = path.getFileName();
        String string = fileName != null ? fileName.toString() : null;
        return string == null ? _UrlKt.FRAGMENT_ENCODE_SET : string;
    }

    public static final String getNameWithoutExtension(Path path) {
        String string;
        String strSubstringBeforeLast$default;
        Path fileName = path.getFileName();
        return (fileName == null || (string = fileName.toString()) == null || (strSubstringBeforeLast$default = StringsKt.substringBeforeLast$default(string, ".", (String) null, 2, (Object) null)) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : strSubstringBeforeLast$default;
    }

    public static final String getExtension(Path path) {
        String string;
        String strSubstringAfterLast;
        Path fileName = path.getFileName();
        return (fileName == null || (string = fileName.toString()) == null || (strSubstringAfterLast = StringsKt.substringAfterLast(string, '.', _UrlKt.FRAGMENT_ENCODE_SET)) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : strSubstringAfterLast;
    }

    private static final String getPathString(Path path) {
        return path.toString();
    }

    public static final String getInvariantSeparatorsPathString(Path path) {
        String separator = path.getFileSystem().getSeparator();
        return !Intrinsics.areEqual(separator, "/") ? StringsKt.replace$default(path.toString(), separator, "/", false, 4, (Object) null) : path.toString();
    }

    private static final String getInvariantSeparatorsPath(Path path) {
        return getInvariantSeparatorsPathString(path);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path absolute(Path path) {
        return path.toAbsolutePath();
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String absolutePathString(Path path) {
        return path.toAbsolutePath().toString();
    }

    @SinceKotlin(version = "1.5")
    public static final Path relativeTo(Path path, Path path2) {
        try {
            return PathRelativizer.INSTANCE.tryRelativeTo(path, path2);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(e.getMessage() + "\nthis path: " + path + "\nbase path: " + path2, e);
        }
    }

    @SinceKotlin(version = "1.5")
    public static final Path relativeToOrSelf(Path path, Path path2) {
        Path pathRelativeToOrNull = relativeToOrNull(path, path2);
        return pathRelativeToOrNull == null ? path : pathRelativeToOrNull;
    }

    @SinceKotlin(version = "1.5")
    public static final Path relativeToOrNull(Path path, Path path2) {
        try {
            return PathRelativizer.INSTANCE.tryRelativeTo(path, path2);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path copyTo(Path path, Path path2, boolean z) {
        CopyOption[] copyOptionArr = z ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        return Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
    }

    public static /* synthetic */ Path copyTo$default(Path path, Path path2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        CopyOption[] copyOptionArr = z ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        return Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path copyTo(Path path, Path path2, CopyOption... copyOptionArr) {
        return Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean exists(Path path, LinkOption... linkOptionArr) {
        return Files.exists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean notExists(Path path, LinkOption... linkOptionArr) {
        return Files.notExists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean isRegularFile(Path path, LinkOption... linkOptionArr) {
        return Files.isRegularFile(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean isDirectory(Path path, LinkOption... linkOptionArr) {
        return Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean isSymbolicLink(Path path) {
        return Files.isSymbolicLink(path);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean isExecutable(Path path) {
        return Files.isExecutable(path);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean isHidden(Path path) {
        return Files.isHidden(path);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean isReadable(Path path) {
        return Files.isReadable(path);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean isWritable(Path path) {
        return Files.isWritable(path);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final boolean isSameFileAs(Path path, Path path2) {
        return Files.isSameFile(path, path2);
    }

    public static /* synthetic */ List listDirectoryEntries$default(Path path, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "*";
        }
        return listDirectoryEntries(path, str);
    }

    @SinceKotlin(version = "1.5")
    public static final List<Path> listDirectoryEntries(Path path, String str) throws IOException {
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, str);
        try {
            List<Path> list = CollectionsKt.toList(directoryStreamNewDirectoryStream);
            CloseableKt.closeFinally(directoryStreamNewDirectoryStream, null);
            return list;
        } finally {
        }
    }

    public static /* synthetic */ Object useDirectoryEntries$default(Path path, String str, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            str = "*";
        }
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, str);
        try {
            Object objInvoke = function1.invoke(CollectionsKt.asSequence(directoryStreamNewDirectoryStream));
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(directoryStreamNewDirectoryStream, null);
            InlineMarker.finallyEnd(1);
            return objInvoke;
        } finally {
        }
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final <T> T useDirectoryEntries(Path path, String str, Function1<? super Sequence<? extends Path>, ? extends T> function1) throws IOException {
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, str);
        try {
            T tInvoke = function1.invoke(CollectionsKt.asSequence(directoryStreamNewDirectoryStream));
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(directoryStreamNewDirectoryStream, null);
            InlineMarker.finallyEnd(1);
            return tInvoke;
        } finally {
        }
    }

    public static /* synthetic */ void forEachDirectoryEntry$default(Path path, String str, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            str = "*";
        }
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, str);
        try {
            Iterator<Path> it = directoryStreamNewDirectoryStream.iterator();
            while (it.hasNext()) {
                function1.invoke(it.next());
            }
            Unit unit = Unit.INSTANCE;
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(directoryStreamNewDirectoryStream, null);
            InlineMarker.finallyEnd(1);
        } finally {
        }
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final void forEachDirectoryEntry(Path path, String str, Function1<? super Path, Unit> function1) throws IOException {
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, str);
        try {
            Iterator<Path> it = directoryStreamNewDirectoryStream.iterator();
            while (it.hasNext()) {
                function1.invoke(it.next());
            }
            Unit unit = Unit.INSTANCE;
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(directoryStreamNewDirectoryStream, null);
            InlineMarker.finallyEnd(1);
        } finally {
        }
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long fileSize(Path path) {
        return Files.size(path);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final void deleteExisting(Path path) throws IOException {
        Files.delete(path);
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final boolean deleteIfExists(Path path) {
        return Files.deleteIfExists(path);
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path createDirectory(Path path, FileAttribute<?>... fileAttributeArr) {
        return Files.createDirectory(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path createDirectories(Path path, FileAttribute<?>... fileAttributeArr) {
        return Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    @SinceKotlin(version = "1.9")
    @IgnorableReturnValue
    public static final Path createParentDirectories(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path parent = path.getParent();
        if (parent != null && !Files.isDirectory(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            try {
                FileAttribute[] fileAttributeArr2 = (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length);
                Files.createDirectories(parent, (FileAttribute[]) Arrays.copyOf(fileAttributeArr2, fileAttributeArr2.length));
                return path;
            } catch (FileAlreadyExistsException e) {
                if (!Files.isDirectory(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    throw e;
                }
            }
        }
        return path;
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path moveTo(Path path, Path path2, CopyOption... copyOptionArr) {
        return Files.move(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path moveTo(Path path, Path path2, boolean z) {
        CopyOption[] copyOptionArr = z ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        return Files.move(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
    }

    public static /* synthetic */ Path moveTo$default(Path path, Path path2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        CopyOption[] copyOptionArr = z ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        return Files.move(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final FileStore fileStore(Path path) {
        return Files.getFileStore(path);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Object getAttribute(Path path, String str, LinkOption... linkOptionArr) {
        return Files.getAttribute(path, str, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path setAttribute(Path path, String str, Object obj, LinkOption... linkOptionArr) {
        return Files.setAttribute(path, str, obj, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final /* synthetic */ <V extends FileAttributeView> V fileAttributesViewOrNull(Path path, LinkOption... linkOptionArr) {
        Intrinsics.reifiedOperationMarker(4, "V");
        return (V) Files.getFileAttributeView(path, PathsKt__PathUtilsKt$$ExternalSyntheticApiModelOutline0.m798m(), (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final /* synthetic */ <V extends FileAttributeView> V fileAttributesView(Path path, LinkOption... linkOptionArr) {
        Intrinsics.reifiedOperationMarker(4, "V");
        V v = (V) Files.getFileAttributeView(path, PathsKt__PathUtilsKt$$ExternalSyntheticApiModelOutline0.m798m(), (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        if (v != null) {
            return v;
        }
        Intrinsics.reifiedOperationMarker(4, "V");
        fileAttributeViewNotAvailable(path, PathsKt__PathUtilsKt$$ExternalSyntheticApiModelOutline0.m798m());
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return null;
    }

    @PublishedApi
    public static final Void fileAttributeViewNotAvailable(Path path, Class<?> cls) {
        throw new UnsupportedOperationException("The desired attribute view type " + cls + " is not available for the file " + path + '.');
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final /* synthetic */ <A extends BasicFileAttributes> A readAttributes(Path path, LinkOption... linkOptionArr) {
        Intrinsics.reifiedOperationMarker(4, "A");
        return (A) Files.readAttributes(path, PathTreeWalkKt$$ExternalSyntheticApiModelOutline0.m784m(), (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Map<String, Object> readAttributes(Path path, String str, LinkOption... linkOptionArr) {
        return Files.readAttributes(path, str, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final FileTime getLastModifiedTime(Path path, LinkOption... linkOptionArr) {
        return Files.getLastModifiedTime(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path setLastModifiedTime(Path path, FileTime fileTime) {
        return Files.setLastModifiedTime(path, fileTime);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final UserPrincipal getOwner(Path path, LinkOption... linkOptionArr) {
        return Files.getOwner(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path setOwner(Path path, UserPrincipal userPrincipal) {
        return Files.setOwner(path, userPrincipal);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Set<PosixFilePermission> getPosixFilePermissions(Path path, LinkOption... linkOptionArr) {
        return Files.getPosixFilePermissions(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path setPosixFilePermissions(Path path, Set<? extends PosixFilePermission> set) {
        return Files.setPosixFilePermissions(path, set);
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path createLinkPointingTo(Path path, Path path2) {
        return Files.createLink(path, path2);
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path createSymbolicLinkPointingTo(Path path, Path path2, FileAttribute<?>... fileAttributeArr) {
        return Files.createSymbolicLink(path, path2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path readSymbolicLink(Path path) {
        return Files.readSymbolicLink(path);
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path createFile(Path path, FileAttribute<?>... fileAttributeArr) {
        return Files.createFile(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path createTempFile(String str, String str2, FileAttribute<?>... fileAttributeArr) {
        return Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    public static /* synthetic */ Path createTempFile$default(String str, String str2, FileAttribute[] fileAttributeArr, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    public static /* synthetic */ Path createTempFile$default(Path path, String str, String str2, FileAttribute[] fileAttributeArr, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        return createTempFile(path, str, str2, fileAttributeArr);
    }

    @SinceKotlin(version = "1.5")
    public static final Path createTempFile(Path path, String str, String str2, FileAttribute<?>... fileAttributeArr) {
        if (path != null) {
            return Files.createTempFile(path, str, str2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        }
        return Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path createTempDirectory(String str, FileAttribute<?>... fileAttributeArr) {
        return Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    public static /* synthetic */ Path createTempDirectory$default(String str, FileAttribute[] fileAttributeArr, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    public static /* synthetic */ Path createTempDirectory$default(Path path, String str, FileAttribute[] fileAttributeArr, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return createTempDirectory(path, str, fileAttributeArr);
    }

    @SinceKotlin(version = "1.5")
    public static final Path createTempDirectory(Path path, String str, FileAttribute<?>... fileAttributeArr) {
        if (path != null) {
            return Files.createTempDirectory(path, str, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        }
        return Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path div(Path path, Path path2) {
        return path.resolve(path2);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path div(Path path, String str) {
        return path.resolve(str);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path Path(String str) {
        return Paths.get(str, new String[0]);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path Path(String str, String... strArr) {
        return Paths.get(str, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final Path toPath(URI uri) {
        return Paths.get(uri);
    }

    @SinceKotlin(version = "2.1")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static final Sequence<Path> walk(Path path, PathWalkOption... pathWalkOptionArr) {
        return new PathTreeWalk(path, pathWalkOptionArr);
    }

    public static /* synthetic */ void visitFileTree$default(Path path, FileVisitor fileVisitor, int i, boolean z, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            i = Integer.MAX_VALUE;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        visitFileTree(path, (FileVisitor<Path>) fileVisitor, i, z);
    }

    @SinceKotlin(version = "2.1")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static final void visitFileTree(Path path, FileVisitor<Path> fileVisitor, int i, boolean z) throws IOException {
        Files.walkFileTree(path, z ? SetsKt.setOf(FileVisitOption.FOLLOW_LINKS) : SetsKt.emptySet(), i, fileVisitor);
    }

    public static /* synthetic */ void visitFileTree$default(Path path, int i, boolean z, Function1 function1, int i2, Object obj) throws IOException {
        if ((i2 & 1) != 0) {
            i = Integer.MAX_VALUE;
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        visitFileTree(path, i, z, (Function1<? super FileVisitorBuilder, Unit>) function1);
    }

    @SinceKotlin(version = "2.1")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static final void visitFileTree(Path path, int i, boolean z, Function1<? super FileVisitorBuilder, Unit> function1) throws IOException {
        visitFileTree(path, fileVisitor(function1), i, z);
    }

    @SinceKotlin(version = "2.1")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static final FileVisitor<Path> fileVisitor(Function1<? super FileVisitorBuilder, Unit> function1) {
        FileVisitorBuilderImpl fileVisitorBuilderImpl = new FileVisitorBuilderImpl();
        function1.invoke(fileVisitorBuilderImpl);
        return fileVisitorBuilderImpl.build();
    }
}
