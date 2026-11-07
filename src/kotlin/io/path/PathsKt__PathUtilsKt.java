package kotlin.io.path;

import j$.nio.file.CopyOption;
import j$.nio.file.FileStore;
import j$.nio.file.FileVisitOption;
import j$.nio.file.FileVisitor;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.Paths;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.FileAttributeView;
import j$.nio.file.attribute.FileTime;
import j$.nio.file.attribute.PosixFilePermission;
import j$.nio.file.attribute.UserPrincipal;
import java.net.URI;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;
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
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\b\u0010\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\b\u0007\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0000\n\u0002\b\u0005\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\u001a\u0014\u0010\u0001\u001a\u00020\u0000*\u00020\u0000H\u0087\b¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u0000H\u0087\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\u001b\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\t\u0010\b\u001a\u001d\u0010\n\u001a\u0004\u0018\u00010\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\n\u0010\b\u001a&\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\fH\u0087\b¢\u0006\u0004\b\u000e\u0010\u000f\u001a0\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u0010\"\u00020\u0011H\u0087\b¢\u0006\u0004\b\u000e\u0010\u0013\u001a(\u0010\u0015\u001a\u00020\f*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\b\u0015\u0010\u0016\u001a(\u0010\u0017\u001a\u00020\f*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\b\u0017\u0010\u0016\u001a(\u0010\u0018\u001a\u00020\f*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\b\u0018\u0010\u0016\u001a(\u0010\u0019\u001a\u00020\f*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\b\u0019\u0010\u0016\u001a\u0014\u0010\u001a\u001a\u00020\f*\u00020\u0000H\u0087\b¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u0014\u0010\u001c\u001a\u00020\f*\u00020\u0000H\u0087\b¢\u0006\u0004\b\u001c\u0010\u001b\u001a\u0014\u0010\u001d\u001a\u00020\f*\u00020\u0000H\u0087\b¢\u0006\u0004\b\u001d\u0010\u001b\u001a\u0014\u0010\u001e\u001a\u00020\f*\u00020\u0000H\u0087\b¢\u0006\u0004\b\u001e\u0010\u001b\u001a\u0014\u0010\u001f\u001a\u00020\f*\u00020\u0000H\u0087\b¢\u0006\u0004\b\u001f\u0010\u001b\u001a\u001c\u0010!\u001a\u00020\f*\u00020\u00002\u0006\u0010 \u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b!\u0010\"\u001a#\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00000$*\u00020\u00002\b\b\u0002\u0010#\u001a\u00020\u0003H\u0007¢\u0006\u0004\b%\u0010&\u001aA\u0010+\u001a\u00028\u0000\"\u0004\b\u0000\u0010'*\u00020\u00002\b\b\u0002\u0010#\u001a\u00020\u00032\u0018\u0010*\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00000)\u0012\u0004\u0012\u00028\u00000(H\u0087\bø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a5\u0010/\u001a\u00020-*\u00020\u00002\b\b\u0002\u0010#\u001a\u00020\u00032\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020-0(H\u0087\bø\u0001\u0000¢\u0006\u0004\b/\u00100\u001a\u0014\u00102\u001a\u000201*\u00020\u0000H\u0087\b¢\u0006\u0004\b2\u00103\u001a\u0014\u00104\u001a\u00020-*\u00020\u0000H\u0087\b¢\u0006\u0004\b4\u00105\u001a\u0014\u00106\u001a\u00020\f*\u00020\u0000H\u0087\b¢\u0006\u0004\b6\u0010\u001b\u001a0\u00109\u001a\u00020\u0000*\u00020\u00002\u001a\u00108\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u0003070\u0010\"\u0006\u0012\u0002\b\u000307H\u0087\b¢\u0006\u0004\b9\u0010:\u001a0\u0010;\u001a\u00020\u0000*\u00020\u00002\u001a\u00108\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u0003070\u0010\"\u0006\u0012\u0002\b\u000307H\u0087\b¢\u0006\u0004\b;\u0010:\u001a/\u0010<\u001a\u00020\u0000*\u00020\u00002\u001a\u00108\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u0003070\u0010\"\u0006\u0012\u0002\b\u000307H\u0007¢\u0006\u0004\b<\u0010:\u001a0\u0010=\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u0010\"\u00020\u0011H\u0087\b¢\u0006\u0004\b=\u0010\u0013\u001a&\u0010=\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\fH\u0087\b¢\u0006\u0004\b=\u0010\u000f\u001a\u0014\u0010?\u001a\u00020>*\u00020\u0000H\u0087\b¢\u0006\u0004\b?\u0010@\u001a2\u0010C\u001a\u0004\u0018\u00010B*\u00020\u00002\u0006\u0010A\u001a\u00020\u00032\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\bC\u0010D\u001a:\u0010F\u001a\u00020\u0000*\u00020\u00002\u0006\u0010A\u001a\u00020\u00032\b\u0010E\u001a\u0004\u0018\u00010B2\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\bF\u0010G\u001a6\u0010J\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010I\u0018\u0001*\u00020H*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\bJ\u0010K\u001a4\u0010L\u001a\u00028\u0000\"\n\b\u0000\u0010I\u0018\u0001*\u00020H*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\bL\u0010K\u001a#\u0010Q\u001a\u00020P2\u0006\u0010M\u001a\u00020\u00002\n\u0010O\u001a\u0006\u0012\u0002\b\u00030NH\u0001¢\u0006\u0004\bQ\u0010R\u001a4\u0010U\u001a\u00028\u0000\"\n\b\u0000\u0010T\u0018\u0001*\u00020S*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\bU\u0010V\u001a>\u0010U\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010B0W*\u00020\u00002\u0006\u00108\u001a\u00020\u00032\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\bU\u0010X\u001a(\u0010Z\u001a\u00020Y*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\bZ\u0010[\u001a\u001c\u0010\\\u001a\u00020\u0000*\u00020\u00002\u0006\u0010E\u001a\u00020YH\u0087\b¢\u0006\u0004\b\\\u0010]\u001a*\u0010_\u001a\u0004\u0018\u00010^*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\b_\u0010`\u001a\u001c\u0010a\u001a\u00020\u0000*\u00020\u00002\u0006\u0010E\u001a\u00020^H\u0087\b¢\u0006\u0004\ba\u0010b\u001a.\u0010e\u001a\b\u0012\u0004\u0012\u00020d0c*\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0010\"\u00020\u0014H\u0087\b¢\u0006\u0004\be\u0010f\u001a\"\u0010g\u001a\u00020\u0000*\u00020\u00002\f\u0010E\u001a\b\u0012\u0004\u0012\u00020d0cH\u0087\b¢\u0006\u0004\bg\u0010h\u001a\u001c\u0010i\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bi\u0010\b\u001a8\u0010j\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00002\u001a\u00108\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u0003070\u0010\"\u0006\u0012\u0002\b\u000307H\u0087\b¢\u0006\u0004\bj\u0010k\u001a\u0014\u0010l\u001a\u00020\u0000*\u00020\u0000H\u0087\b¢\u0006\u0004\bl\u0010\u0002\u001a0\u0010m\u001a\u00020\u0000*\u00020\u00002\u001a\u00108\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u0003070\u0010\"\u0006\u0012\u0002\b\u000307H\u0087\b¢\u0006\u0004\bm\u0010:\u001aD\u0010p\u001a\u00020\u00002\n\b\u0002\u0010n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010o\u001a\u0004\u0018\u00010\u00032\u001a\u00108\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u0003070\u0010\"\u0006\u0012\u0002\b\u000307H\u0087\b¢\u0006\u0004\bp\u0010q\u001aM\u0010p\u001a\u00020\u00002\b\u0010r\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010o\u001a\u0004\u0018\u00010\u00032\u001a\u00108\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u0003070\u0010\"\u0006\u0012\u0002\b\u000307H\u0007¢\u0006\u0004\bp\u0010s\u001a8\u0010t\u001a\u00020\u00002\n\b\u0002\u0010n\u001a\u0004\u0018\u00010\u00032\u001a\u00108\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u0003070\u0010\"\u0006\u0012\u0002\b\u000307H\u0087\b¢\u0006\u0004\bt\u0010u\u001aA\u0010t\u001a\u00020\u00002\b\u0010r\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010n\u001a\u0004\u0018\u00010\u00032\u001a\u00108\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u0003070\u0010\"\u0006\u0012\u0002\b\u000307H\u0007¢\u0006\u0004\bt\u0010v\u001a\u001c\u0010w\u001a\u00020\u0000*\u00020\u00002\u0006\u0010 \u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bw\u0010\b\u001a\u001c\u0010w\u001a\u00020\u0000*\u00020\u00002\u0006\u0010 \u001a\u00020\u0003H\u0087\n¢\u0006\u0004\bw\u0010x\u001a\u0018\u0010y\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\by\u0010z\u001a,\u0010y\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00032\u0012\u0010{\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0010\"\u00020\u0003H\u0087\b¢\u0006\u0004\by\u0010|\u001a\u0014\u0010~\u001a\u00020\u0000*\u00020}H\u0087\b¢\u0006\u0004\b~\u0010\u007f\u001a2\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020\u00000)*\u00020\u00002\u0014\u0010\u0012\u001a\u000b\u0012\u0007\b\u0001\u0012\u00030\u0080\u00010\u0010\"\u00030\u0080\u0001H\u0007¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001\u001a=\u0010\u0088\u0001\u001a\u00020-*\u00020\u00002\u000e\u0010\u0084\u0001\u001a\t\u0012\u0004\u0012\u00020\u00000\u0083\u00012\n\b\u0002\u0010\u0086\u0001\u001a\u00030\u0085\u00012\t\b\u0002\u0010\u0087\u0001\u001a\u00020\fH\u0007¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001\u001aV\u0010\u0088\u0001\u001a\u00020-*\u00020\u00002\n\b\u0002\u0010\u0086\u0001\u001a\u00030\u0085\u00012\t\b\u0002\u0010\u0087\u0001\u001a\u00020\f2\u001a\u0010\u008c\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0004\u0012\u00020-0(¢\u0006\u0003\b\u008b\u0001H\u0007\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0003 \u0001¢\u0006\u0006\b\u0088\u0001\u0010\u008d\u0001\u001aB\u0010\u008e\u0001\u001a\t\u0012\u0004\u0012\u00020\u00000\u0083\u00012\u001a\u0010\u008c\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0004\u0012\u00020-0(¢\u0006\u0003\b\u008b\u0001H\u0007\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001\"!\u0010\u0092\u0001\u001a\u00020\u0003*\u00020\u00008FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0091\u0001\u00105\u001a\u0005\b\u0090\u0001\u0010\u0005\"!\u0010\u0095\u0001\u001a\u00020\u0003*\u00020\u00008FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0094\u0001\u00105\u001a\u0005\b\u0093\u0001\u0010\u0005\"!\u0010\u0098\u0001\u001a\u00020\u0003*\u00020\u00008FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0097\u0001\u00105\u001a\u0005\b\u0096\u0001\u0010\u0005\"\"\u0010\u009b\u0001\u001a\u00020\u0003*\u00020\u00008Æ\u0002X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u009a\u0001\u00105\u001a\u0005\b\u0099\u0001\u0010\u0005\"!\u0010\u009e\u0001\u001a\u00020\u0003*\u00020\u00008FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u009d\u0001\u00105\u001a\u0005\b\u009c\u0001\u0010\u0005\"\"\u0010¡\u0001\u001a\u00020\u0003*\u00020\u00008Æ\u0002X\u0087\u0004¢\u0006\u000e\u0012\u0005\b \u0001\u00105\u001a\u0005\b\u009f\u0001\u0010\u0005\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006¢\u0001"}, d2 = {"j$/nio/file/Path", "absolute", "(Lj$/nio/file/Path;)Lj$/nio/file/Path;", _UrlKt.FRAGMENT_ENCODE_SET, "absolutePathString", "(Lj$/nio/file/Path;)Ljava/lang/String;", "base", "relativeTo", "(Lj$/nio/file/Path;Lj$/nio/file/Path;)Lj$/nio/file/Path;", "relativeToOrSelf", "relativeToOrNull", "target", _UrlKt.FRAGMENT_ENCODE_SET, "overwrite", "copyTo", "(Lj$/nio/file/Path;Lj$/nio/file/Path;Z)Lj$/nio/file/Path;", _UrlKt.FRAGMENT_ENCODE_SET, "j$/nio/file/CopyOption", "options", "(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)Lj$/nio/file/Path;", "j$/nio/file/LinkOption", "exists", "(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z", "notExists", "isRegularFile", "isDirectory", "isSymbolicLink", "(Lj$/nio/file/Path;)Z", "isExecutable", "isHidden", "isReadable", "isWritable", "other", "isSameFileAs", "(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z", "glob", _UrlKt.FRAGMENT_ENCODE_SET, "listDirectoryEntries", "(Lj$/nio/file/Path;Ljava/lang/String;)Ljava/util/List;", "T", "Lkotlin/Function1;", "Lkotlin/sequences/Sequence;", "block", "useDirectoryEntries", "(Lj$/nio/file/Path;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "action", "forEachDirectoryEntry", "(Lj$/nio/file/Path;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", _UrlKt.FRAGMENT_ENCODE_SET, "fileSize", "(Lj$/nio/file/Path;)J", "deleteExisting", "(Lj$/nio/file/Path;)V", "deleteIfExists", "j$/nio/file/attribute/FileAttribute", "attributes", "createDirectory", "(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;", "createDirectories", "createParentDirectories", "moveTo", "j$/nio/file/FileStore", "fileStore", "(Lj$/nio/file/Path;)Lj$/nio/file/FileStore;", "attribute", _UrlKt.FRAGMENT_ENCODE_SET, "getAttribute", "(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/lang/Object;", "value", "setAttribute", "(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Lj$/nio/file/LinkOption;)Lj$/nio/file/Path;", "j$/nio/file/attribute/FileAttributeView", "V", "fileAttributesViewOrNull", "(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;", "fileAttributesView", "path", "Ljava/lang/Class;", "attributeViewClass", _UrlKt.FRAGMENT_ENCODE_SET, "fileAttributeViewNotAvailable", "(Lj$/nio/file/Path;Ljava/lang/Class;)Ljava/lang/Void;", "j$/nio/file/attribute/BasicFileAttributes", "A", "readAttributes", "(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;", _UrlKt.FRAGMENT_ENCODE_SET, "(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;", "j$/nio/file/attribute/FileTime", "getLastModifiedTime", "(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileTime;", "setLastModifiedTime", "(Lj$/nio/file/Path;Lj$/nio/file/attribute/FileTime;)Lj$/nio/file/Path;", "j$/nio/file/attribute/UserPrincipal", "getOwner", "(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/UserPrincipal;", "setOwner", "(Lj$/nio/file/Path;Lj$/nio/file/attribute/UserPrincipal;)Lj$/nio/file/Path;", _UrlKt.FRAGMENT_ENCODE_SET, "j$/nio/file/attribute/PosixFilePermission", "getPosixFilePermissions", "(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Ljava/util/Set;", "setPosixFilePermissions", "(Lj$/nio/file/Path;Ljava/util/Set;)Lj$/nio/file/Path;", "createLinkPointingTo", "createSymbolicLinkPointingTo", "(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;", "readSymbolicLink", "createFile", "prefix", "suffix", "createTempFile", "(Ljava/lang/String;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;", "directory", "(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;", "createTempDirectory", "(Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;", "(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;", "div", "(Lj$/nio/file/Path;Ljava/lang/String;)Lj$/nio/file/Path;", "Path", "(Ljava/lang/String;)Lj$/nio/file/Path;", "subpaths", "(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;", "Ljava/net/URI;", "toPath", "(Ljava/net/URI;)Lj$/nio/file/Path;", "Lkotlin/io/path/PathWalkOption;", "walk", "(Lj$/nio/file/Path;[Lkotlin/io/path/PathWalkOption;)Lkotlin/sequences/Sequence;", "j$/nio/file/FileVisitor", "visitor", _UrlKt.FRAGMENT_ENCODE_SET, "maxDepth", "followLinks", "visitFileTree", "(Lj$/nio/file/Path;Lj$/nio/file/FileVisitor;IZ)V", "Lkotlin/io/path/FileVisitorBuilder;", "Lkotlin/ExtensionFunctionType;", "builderAction", "(Lj$/nio/file/Path;IZLkotlin/jvm/functions/Function1;)V", "fileVisitor", "(Lkotlin/jvm/functions/Function1;)Lj$/nio/file/FileVisitor;", "getName", "getName$annotations", "name", "getNameWithoutExtension", "getNameWithoutExtension$annotations", "nameWithoutExtension", "getExtension", "getExtension$annotations", "extension", "getPathString", "getPathString$annotations", "pathString", "getInvariantSeparatorsPathString", "getInvariantSeparatorsPathString$annotations", "invariantSeparatorsPathString", "getInvariantSeparatorsPath", "getInvariantSeparatorsPath$annotations", "invariantSeparatorsPath", "kotlin-stdlib-jdk7"}, m910k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/io/path/PathsKt")
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
    public static final List<Path> listDirectoryEntries(Path path, String str) {
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, str);
        try {
            List<Path> list = CollectionsKt.toList(directoryStreamNewDirectoryStream);
            CloseableKt.closeFinally(directoryStreamNewDirectoryStream, null);
            return list;
        } finally {
        }
    }

    public static /* synthetic */ Object useDirectoryEntries$default(Path path, String str, Function1 function1, int i, Object obj) {
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
    private static final <T> T useDirectoryEntries(Path path, String str, Function1<? super Sequence<? extends Path>, ? extends T> function1) {
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

    public static /* synthetic */ void forEachDirectoryEntry$default(Path path, String str, Function1 function1, int i, Object obj) {
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
    private static final void forEachDirectoryEntry(Path path, String str, Function1<? super Path, Unit> function1) {
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
    private static final void deleteExisting(Path path) {
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
    public static final Path createParentDirectories(Path path, FileAttribute<?>... fileAttributeArr) throws FileAlreadyExistsException {
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
        return (V) Files.getFileAttributeView(path, FileAttributeView.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final /* synthetic */ <V extends FileAttributeView> V fileAttributesView(Path path, LinkOption... linkOptionArr) {
        Intrinsics.reifiedOperationMarker(4, "V");
        V v = (V) Files.getFileAttributeView(path, FileAttributeView.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        if (v != null) {
            return v;
        }
        Intrinsics.reifiedOperationMarker(4, "V");
        fileAttributeViewNotAvailable(path, FileAttributeView.class);
        InstantKt$$ExternalSyntheticBUOutline0.m944m();
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
        return (A) Files.readAttributes(path, BasicFileAttributes.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
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

    public static /* synthetic */ void visitFileTree$default(Path path, FileVisitor fileVisitor, int i, boolean z, int i2, Object obj) {
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
    public static final void visitFileTree(Path path, FileVisitor<Path> fileVisitor, int i, boolean z) {
        Files.walkFileTree(path, z ? SetsKt.setOf(FileVisitOption.FOLLOW_LINKS) : SetsKt.emptySet(), i, fileVisitor);
    }

    public static /* synthetic */ void visitFileTree$default(Path path, int i, boolean z, Function1 function1, int i2, Object obj) {
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
    public static final void visitFileTree(Path path, int i, boolean z, Function1<? super FileVisitorBuilder, Unit> function1) {
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
