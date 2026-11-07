package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.room.Transactor;
import androidx.room.concurrent.CloseBarrier;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.support.AutoCloser;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.room.support.AutoClosingRoomOpenHelperFactory;
import androidx.room.support.PrePackagedCopyOpenHelper;
import androidx.room.support.PrePackagedCopyOpenHelperFactory;
import androidx.room.util.DBUtil;
import androidx.room.util.KClassUtil;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import androidx.sqlite.driver.SupportSQLiteConnection;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmSuppressWildcards;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0094\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0013\b&\u0018\u0000 µ\u00012\u00020\u0001:\f¶\u0001·\u0001¸\u0001¹\u0001º\u0001µ\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J#\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u000f\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\b*\u00020\u00012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0017¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u000f\u001a\u00028\u0000\"\b\b\u0000\u0010\b*\u00020\u00012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0007¢\u0006\u0004\b\u000f\u0010\u0012J#\u0010\u0017\u001a\u00020\u00042\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u0014\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u0018H\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ1\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#2\u001a\u0010\"\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020!0\r\u0012\u0004\u0012\u00020!0 H\u0017¢\u0006\u0004\b%\u0010&J1\u0010'\u001a\b\u0012\u0004\u0012\u00020$0#2\u001a\u0010\"\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020!0\u0011\u0012\u0004\u0012\u00020!0 H\u0017¢\u0006\u0004\b'\u0010&J\u0017\u0010*\u001a\u00020)2\u0006\u0010(\u001a\u00020\u0018H\u0015¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020,H\u0015¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H$¢\u0006\u0004\b0\u00101J\u000f\u00103\u001a\u000202H\u0007¢\u0006\u0004\b3\u00104J\u000f\u00106\u001a\u000205H\u0007¢\u0006\u0004\b6\u00107J\u000f\u00109\u001a\u000205H\u0000¢\u0006\u0004\b8\u00107J)\u0010:\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0#0 H\u0015¢\u0006\u0004\b:\u0010;J)\u0010<\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0011\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00110#0 H\u0015¢\u0006\u0004\b<\u0010;J\u001d\u0010>\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020!0\r0=H\u0017¢\u0006\u0004\b>\u0010?J\u001d\u0010@\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020!0\u00110=H\u0017¢\u0006\u0004\b@\u0010?J\u000f\u0010A\u001a\u00020\u0004H'¢\u0006\u0004\bA\u0010\u0003J+\u0010G\u001a\u00020\u00042\u0006\u0010C\u001a\u00020B2\u0012\u0010F\u001a\n\u0012\u0006\b\u0001\u0012\u00020E0D\"\u00020EH\u0005¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\u0004H\u0016¢\u0006\u0004\bI\u0010\u0003J\u000f\u0010J\u001a\u00020\u0004H\u0017¢\u0006\u0004\bJ\u0010\u0003J\u000f\u0010K\u001a\u00020\u0004H\u0017¢\u0006\u0004\bK\u0010\u0003JB\u0010R\u001a\u00028\u0000\"\u0004\b\u0000\u0010L2\u0006\u0010M\u001a\u00020B2\"\u0010Q\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020O\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000P\u0012\u0006\u0012\u0004\u0018\u00010\u00010NH\u0087@¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020BH\u0007¢\u0006\u0004\bT\u0010UJ+\u0010V\u001a\u00020X2\u0006\u0010V\u001a\u00020E2\u0012\u0010W\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010DH\u0016¢\u0006\u0004\bV\u0010YJ#\u0010V\u001a\u00020X2\u0006\u0010V\u001a\u00020Z2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010[H\u0017¢\u0006\u0004\bV\u0010]J\u0017\u0010`\u001a\u00020_2\u0006\u0010^\u001a\u00020EH\u0016¢\u0006\u0004\b`\u0010aJ\u000f\u0010b\u001a\u00020\u0004H\u0017¢\u0006\u0004\bb\u0010\u0003J\u000f\u0010c\u001a\u00020\u0004H\u0017¢\u0006\u0004\bc\u0010\u0003J\u000f\u0010d\u001a\u00020\u0004H\u0017¢\u0006\u0004\bd\u0010\u0003J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020eH\u0016¢\u0006\u0004\b\u000b\u0010fJ#\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010g2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000hH\u0016¢\u0006\u0004\b\u000b\u0010iJ\u0017\u0010l\u001a\u00020\u00042\u0006\u0010k\u001a\u00020jH\u0015¢\u0006\u0004\bl\u0010mJ\u0017\u0010l\u001a\u00020\u00042\u0006\u0010o\u001a\u00020nH\u0005¢\u0006\u0004\bl\u0010pJ\u000f\u0010q\u001a\u00020BH\u0016¢\u0006\u0004\bq\u0010UR\u001e\u0010r\u001a\u0004\u0018\u00010j8\u0004@\u0004X\u0085\u000e¢\u0006\f\n\u0004\br\u0010s\u0012\u0004\bt\u0010\u0003R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010uR\u0016\u0010v\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bv\u0010wR\u0016\u0010x\u001a\u0002058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bx\u0010yR\u0016\u0010{\u001a\u00020z8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b{\u0010|R\u0016\u0010}\u001a\u00020z8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b}\u0010|R\u0016\u0010~\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0019\u0010\u0080\u0001\u001a\u00020/8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R \u0010\u0083\u0001\u001a\u00030\u0082\u00018\u0000X\u0080\u0004¢\u0006\u0010\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u0087\u0001\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R)\u0010\u008a\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0089\u0001\u0018\u00010#8\u0004@\u0004X\u0085\u000e¢\u0006\u000f\n\u0006\b\u008a\u0001\u0010\u008b\u0001\u0012\u0005\b\u008c\u0001\u0010\u0003R\u001c\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R#\u0010\u0091\u0001\u001a\t\u0012\u0004\u0012\u0002050\u0090\u00018G¢\u0006\u0010\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R(\u0010\u0096\u0001\u001a\u0013\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0011\u0012\u0004\u0012\u00020\u00010\u0095\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R(\u0010\u0098\u0001\u001a\u00020B8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0006\b\u0098\u0001\u0010\u0088\u0001\u001a\u0005\b\u0099\u0001\u0010U\"\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0016\u0010\u009c\u0001\u001a\u00020B8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u009c\u0001\u0010UR\u0016\u0010\u009f\u0001\u001a\u0004\u0018\u00010E8G¢\u0006\b\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0017\u0010¢\u0001\u001a\u00020z8VX\u0096\u0004¢\u0006\b\u001a\u0006\b \u0001\u0010¡\u0001R\u0017\u0010¤\u0001\u001a\u00020z8VX\u0096\u0004¢\u0006\b\u001a\u0006\b£\u0001\u0010¡\u0001R\u0017\u0010§\u0001\u001a\u00020)8VX\u0096\u0004¢\u0006\b\u001a\u0006\b¥\u0001\u0010¦\u0001R\u0015\u0010«\u0001\u001a\u00030¨\u00018G¢\u0006\b\u001a\u0006\b©\u0001\u0010ª\u0001R\u0016\u0010\u00ad\u0001\u001a\u00020/8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b¬\u0001\u00101R0\u0010¯\u0001\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0011\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00110#0 8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b®\u0001\u0010;R\u0016\u0010°\u0001\u001a\u00020B8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b°\u0001\u0010UR\u0016\u0010²\u0001\u001a\u00020B8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b±\u0001\u0010UR\u0016\u0010´\u0001\u001a\u00020B8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b³\u0001\u0010U¨\u0006»\u0001"}, d2 = {"Landroidx/room/RoomDatabase;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "onClosed", "internalBeginTransaction", "internalEndTransaction", "T", "Lkotlin/Function0;", "body", "runInTransaction", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Ljava/lang/Class;", "klass", "getTypeConverter", "(Ljava/lang/Class;)Ljava/lang/Object;", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "kclass", "converter", "addTypeConverter$room_runtime", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)V", "addTypeConverter", "Landroidx/room/DatabaseConfiguration;", "configuration", "init", "(Landroidx/room/DatabaseConfiguration;)V", "Landroidx/room/RoomConnectionManager;", "createConnectionManager$room_runtime", "(Landroidx/room/DatabaseConfiguration;)Landroidx/room/RoomConnectionManager;", "createConnectionManager", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/migration/AutoMigrationSpec;", "autoMigrationSpecs", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/migration/Migration;", "getAutoMigrations", "(Ljava/util/Map;)Ljava/util/List;", "createAutoMigrations", "config", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "createOpenHelper", "(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "Landroidx/room/RoomOpenDelegateMarker;", "createOpenDelegate", "()Landroidx/room/RoomOpenDelegateMarker;", "Landroidx/room/InvalidationTracker;", "createInvalidationTracker", "()Landroidx/room/InvalidationTracker;", "Lkotlinx/coroutines/CoroutineScope;", "getCoroutineScope", "()Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/CoroutineContext;", "getQueryContext", "()Lkotlin/coroutines/CoroutineContext;", "getTransactionContext$room_runtime", "getTransactionContext", "getRequiredTypeConverters", "()Ljava/util/Map;", "getRequiredTypeConverterClasses", _UrlKt.FRAGMENT_ENCODE_SET, "getRequiredAutoMigrationSpecs", "()Ljava/util/Set;", "getRequiredAutoMigrationSpecClasses", "clearAllTables", _UrlKt.FRAGMENT_ENCODE_SET, "hasForeignKeys", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "tableNames", "performClear", "(Z[Ljava/lang/String;)V", "close", "assertNotMainThread", "assertNotSuspendingTransaction", "R", "isReadOnly", "Lkotlin/Function2;", "Landroidx/room/Transactor;", "Lkotlin/coroutines/Continuation;", "block", "useConnection", "(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "inCompatibilityMode", "()Z", "query", "args", "Landroid/database/Cursor;", "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "Landroid/os/CancellationSignal;", "signal", "(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;", "sql", "Landroidx/sqlite/db/SupportSQLiteStatement;", "compileStatement", "(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;", "beginTransaction", "endTransaction", "setTransactionSuccessful", "Ljava/lang/Runnable;", "(Ljava/lang/Runnable;)V", "V", "Ljava/util/concurrent/Callable;", "(Ljava/util/concurrent/Callable;)Ljava/lang/Object;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "db", "internalInitInvalidationTracker", "(Landroidx/sqlite/db/SupportSQLiteDatabase;)V", "Landroidx/sqlite/SQLiteConnection;", "connection", "(Landroidx/sqlite/SQLiteConnection;)V", "inTransaction", "mDatabase", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "getMDatabase$annotations", "Landroidx/room/DatabaseConfiguration;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "transactionContext", "Lkotlin/coroutines/CoroutineContext;", "Ljava/util/concurrent/Executor;", "internalQueryExecutor", "Ljava/util/concurrent/Executor;", "internalTransactionExecutor", "connectionManager", "Landroidx/room/RoomConnectionManager;", "internalTracker", "Landroidx/room/InvalidationTracker;", "Landroidx/room/concurrent/CloseBarrier;", "closeBarrier", "Landroidx/room/concurrent/CloseBarrier;", "getCloseBarrier$room_runtime", "()Landroidx/room/concurrent/CloseBarrier;", "allowMainThreadQueries", "Z", "Landroidx/room/RoomDatabase$Callback;", "mCallbacks", "Ljava/util/List;", "getMCallbacks$annotations", "Landroidx/room/support/AutoCloser;", "autoCloser", "Landroidx/room/support/AutoCloser;", "Ljava/lang/ThreadLocal;", "suspendingTransactionContext", "Ljava/lang/ThreadLocal;", "getSuspendingTransactionContext", "()Ljava/lang/ThreadLocal;", _UrlKt.FRAGMENT_ENCODE_SET, "typeConverters", "Ljava/util/Map;", "useTempTrackingTable", "getUseTempTrackingTable$room_runtime", "setUseTempTrackingTable$room_runtime", "(Z)V", "isThreadInSuspendingTransaction", "getPath", "()Ljava/lang/String;", "path", "getQueryExecutor", "()Ljava/util/concurrent/Executor;", "queryExecutor", "getTransactionExecutor", "transactionExecutor", "getOpenHelper", "()Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "openHelper", "Landroidx/sqlite/SQLiteDriver;", "getDriver", "()Landroidx/sqlite/SQLiteDriver;", "driver", "getInvalidationTracker", "invalidationTracker", "getRequiredTypeConverterClassesMap$room_runtime", "requiredTypeConverterClassesMap", "isOpen", "isOpenInternal$room_runtime", "isOpenInternal", "isMainThread$room_runtime", "isMainThread", "Companion", "JournalMode", "Builder", "MigrationContainer", "Callback", "PrepackagedDatabaseCallback", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2191:1\n379#1,15:2193\n379#1,15:2208\n1#2:2192\n480#3:2223\n426#3:2224\n1252#4,4:2225\n1193#4,2:2229\n1267#4,2:2231\n1563#4:2233\n1634#4,3:2234\n1270#4:2237\n1563#4:2238\n1634#4,3:2239\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase\n*L\n287#1:2193,15\n291#1:2208,15\n364#1:2223\n364#1:2224\n364#1:2225,4\n474#1:2229,2\n474#1:2231,2\n475#1:2233\n475#1:2234,3\n474#1:2237\n502#1:2238\n502#1:2239,3\n*E\n"})
public abstract class RoomDatabase {
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    private boolean allowMainThreadQueries;
    private AutoCloser autoCloser;
    private DatabaseConfiguration configuration;
    private RoomConnectionManager connectionManager;
    private CoroutineScope coroutineScope;
    private Executor internalQueryExecutor;
    private InvalidationTracker internalTracker;
    private Executor internalTransactionExecutor;

    @JvmField
    protected List<? extends Callback> mCallbacks;

    @JvmField
    protected volatile SupportSQLiteDatabase mDatabase;
    private CoroutineContext transactionContext;
    private final CloseBarrier closeBarrier = new CloseBarrier(new RoomDatabase$closeBarrier$1(this));
    private final ThreadLocal<CoroutineContext> suspendingTransactionContext = new ThreadLocal<>();
    private final Map<KClass<?>, Object> typeConverters = new LinkedHashMap();
    private boolean useTempTrackingTable = true;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b&\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;", _UrlKt.FRAGMENT_ENCODE_SET, "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class PrepackagedDatabaseCallback {
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "This property is always null and will be removed in a future version.")
    public static /* synthetic */ void getMCallbacks$annotations() {
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "This property is always null and will be removed in a future version.")
    public static /* synthetic */ void getMDatabase$annotations() {
    }

    public abstract void clearAllTables();

    public abstract InvalidationTracker createInvalidationTracker();

    @JvmOverloads
    public final Cursor query(SupportSQLiteQuery supportSQLiteQuery) {
        return query$default(this, supportSQLiteQuery, null, 2, null);
    }

    public final String getPath() {
        DatabaseConfiguration databaseConfiguration = this.configuration;
        String str = (databaseConfiguration == null ? null : databaseConfiguration).name;
        if (str == null) {
            return null;
        }
        if (databaseConfiguration == null) {
            databaseConfiguration = null;
        }
        return databaseConfiguration.context.getDatabasePath(str).getPath();
    }

    public Executor getQueryExecutor() {
        Executor executor = this.internalQueryExecutor;
        if (executor == null) {
            return null;
        }
        return executor;
    }

    public Executor getTransactionExecutor() {
        Executor executor = this.internalTransactionExecutor;
        if (executor == null) {
            return null;
        }
        return executor;
    }

    public SupportSQLiteOpenHelper getOpenHelper() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime = roomConnectionManager.getSupportOpenHelper();
        if (supportOpenHelper$room_runtime != null) {
            return supportOpenHelper$room_runtime;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
        return null;
    }

    public final SQLiteDriver getDriver() {
        DatabaseConfiguration databaseConfiguration = this.configuration;
        if (databaseConfiguration == null) {
            databaseConfiguration = null;
        }
        SQLiteDriver sQLiteDriver = databaseConfiguration.sqliteDriver;
        if (sQLiteDriver != null) {
            return sQLiteDriver;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("No SQLiteDriver was configured with Room.");
        return null;
    }

    public InvalidationTracker getInvalidationTracker() {
        InvalidationTracker invalidationTracker = this.internalTracker;
        if (invalidationTracker == null) {
            return null;
        }
        return invalidationTracker;
    }

    /* JADX INFO: renamed from: getCloseBarrier$room_runtime, reason: from getter */
    public final CloseBarrier getCloseBarrier() {
        return this.closeBarrier;
    }

    public final ThreadLocal<CoroutineContext> getSuspendingTransactionContext() {
        return this.suspendingTransactionContext;
    }

    private final boolean isThreadInSuspendingTransaction() {
        CoroutineContext coroutineContext = this.suspendingTransactionContext.get();
        return (coroutineContext != null ? (TransactionElement) coroutineContext.get(TransactionElement.INSTANCE) : null) != null;
    }

    /* JADX INFO: renamed from: getUseTempTrackingTable$room_runtime, reason: from getter */
    public final boolean getUseTempTrackingTable() {
        return this.useTempTrackingTable;
    }

    public final void setUseTempTrackingTable$room_runtime(boolean z) {
        this.useTempTrackingTable = z;
    }

    @Deprecated(message = "No longer called by generated implementation")
    public <T> T getTypeConverter(Class<T> klass) {
        return (T) this.typeConverters.get(JvmClassMappingKt.getKotlinClass(klass));
    }

    public final <T> T getTypeConverter(KClass<T> klass) {
        return (T) this.typeConverters.get(klass);
    }

    public final void addTypeConverter$room_runtime(KClass<?> kclass, Object converter) {
        this.typeConverters.put(kclass, converter);
    }

    public void init(DatabaseConfiguration configuration) {
        CoroutineContext coroutineContext;
        this.configuration = configuration;
        this.useTempTrackingTable = configuration.getUseTempTrackingTable();
        this.connectionManager = createConnectionManager$room_runtime(configuration);
        this.internalTracker = createInvalidationTracker();
        RoomDatabaseKt.validateAutoMigrations(this, configuration);
        RoomDatabaseKt.validateTypeConverters(this, configuration);
        CoroutineContext coroutineContext2 = configuration.queryCoroutineContext;
        if (coroutineContext2 != null) {
            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) coroutineContext2.get(ContinuationInterceptor.INSTANCE);
            Executor executorAsExecutor = ExecutorsKt.asExecutor(coroutineDispatcher);
            this.internalQueryExecutor = executorAsExecutor;
            if (executorAsExecutor == null) {
                executorAsExecutor = null;
            }
            this.internalTransactionExecutor = new TransactionExecutor(executorAsExecutor);
            this.coroutineScope = CoroutineScopeKt.CoroutineScope(configuration.queryCoroutineContext.plus(SupervisorKt.SupervisorJob((Job) configuration.queryCoroutineContext.get(Job.INSTANCE))));
            boolean zInCompatibilityMode = inCompatibilityMode();
            CoroutineScope coroutineScope = this.coroutineScope;
            if (zInCompatibilityMode) {
                if (coroutineScope == null) {
                    coroutineScope = null;
                }
                coroutineContext = coroutineScope.getCoroutineContext().plus(coroutineDispatcher.limitedParallelism(1));
            } else {
                if (coroutineScope == null) {
                    coroutineScope = null;
                }
                coroutineContext = coroutineScope.getCoroutineContext();
            }
            this.transactionContext = coroutineContext;
        } else {
            this.internalQueryExecutor = configuration.queryExecutor;
            this.internalTransactionExecutor = new TransactionExecutor(configuration.transactionExecutor);
            Executor executor = this.internalQueryExecutor;
            if (executor == null) {
                executor = null;
            }
            CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(executor).plus(SupervisorKt.SupervisorJob$default(null, 1, null)));
            this.coroutineScope = CoroutineScope;
            if (CoroutineScope == null) {
                CoroutineScope = null;
            }
            CoroutineContext coroutineContext3 = CoroutineScope.getCoroutineContext();
            Executor executor2 = this.internalTransactionExecutor;
            if (executor2 == null) {
                executor2 = null;
            }
            this.transactionContext = coroutineContext3.plus(ExecutorsKt.from(executor2));
        }
        this.allowMainThreadQueries = configuration.allowMainThreadQueries;
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime = roomConnectionManager.getSupportOpenHelper();
        if (supportOpenHelper$room_runtime != null) {
            while (!(supportOpenHelper$room_runtime instanceof PrePackagedCopyOpenHelper)) {
                if (!(supportOpenHelper$room_runtime instanceof DelegatingOpenHelper)) {
                    supportOpenHelper$room_runtime = null;
                    break;
                }
                supportOpenHelper$room_runtime = ((DelegatingOpenHelper) supportOpenHelper$room_runtime).getDelegate();
            }
        } else {
            supportOpenHelper$room_runtime = null;
            break;
        }
        PrePackagedCopyOpenHelper prePackagedCopyOpenHelper = (PrePackagedCopyOpenHelper) supportOpenHelper$room_runtime;
        if (prePackagedCopyOpenHelper != null) {
            prePackagedCopyOpenHelper.setDatabaseConfiguration(configuration);
        }
        RoomConnectionManager roomConnectionManager2 = this.connectionManager;
        if (roomConnectionManager2 == null) {
            roomConnectionManager2 = null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime2 = roomConnectionManager2.getSupportOpenHelper();
        if (supportOpenHelper$room_runtime2 != null) {
            while (!(supportOpenHelper$room_runtime2 instanceof AutoClosingRoomOpenHelper)) {
                if (!(supportOpenHelper$room_runtime2 instanceof DelegatingOpenHelper)) {
                    supportOpenHelper$room_runtime2 = null;
                    break;
                }
                supportOpenHelper$room_runtime2 = ((DelegatingOpenHelper) supportOpenHelper$room_runtime2).getDelegate();
            }
        } else {
            supportOpenHelper$room_runtime2 = null;
            break;
        }
        AutoClosingRoomOpenHelper autoClosingRoomOpenHelper = (AutoClosingRoomOpenHelper) supportOpenHelper$room_runtime2;
        if (autoClosingRoomOpenHelper != null) {
            this.autoCloser = autoClosingRoomOpenHelper.getAutoCloser();
            AutoCloser autoCloser$room_runtime = autoClosingRoomOpenHelper.getAutoCloser();
            CoroutineScope coroutineScope2 = this.coroutineScope;
            autoCloser$room_runtime.initCoroutineScope(coroutineScope2 != null ? coroutineScope2 : null);
            getInvalidationTracker().setAutoCloser$room_runtime(autoClosingRoomOpenHelper.getAutoCloser());
        }
        if (configuration.multiInstanceInvalidationServiceIntent != null) {
            if (configuration.name == null) {
                f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
            } else {
                getInvalidationTracker().initMultiInstanceInvalidation$room_runtime(configuration.context, configuration.name, configuration.multiInstanceInvalidationServiceIntent);
            }
        }
    }

    public final RoomConnectionManager createConnectionManager$room_runtime(DatabaseConfiguration configuration) {
        RoomOpenDelegate roomOpenDelegate;
        try {
            roomOpenDelegate = (RoomOpenDelegate) createOpenDelegate();
        } catch (NotImplementedError unused) {
            roomOpenDelegate = null;
        }
        if (roomOpenDelegate == null) {
            return new RoomConnectionManager(configuration, (Function1<? super DatabaseConfiguration, ? extends SupportSQLiteOpenHelper>) new Function1() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f$0.createOpenHelper((DatabaseConfiguration) obj);
                }
            }, new RoomDatabase$createConnectionManager$2(this));
        }
        return new RoomConnectionManager(configuration, roomOpenDelegate, new RoomDatabase$createConnectionManager$3(this));
    }

    @Deprecated(message = "No longer implemented by generated")
    @JvmSuppressWildcards
    public List<Migration> getAutoMigrations(Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
        return CollectionsKt.emptyList();
    }

    @Deprecated(message = "No longer implemented by generated")
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration config) {
        throw new NotImplementedError(null, 1, null);
    }

    public RoomOpenDelegateMarker createOpenDelegate() {
        throw new NotImplementedError(null, 1, null);
    }

    public final CoroutineScope getCoroutineScope() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope == null) {
            return null;
        }
        return coroutineScope;
    }

    public final CoroutineContext getQueryContext() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope == null) {
            coroutineScope = null;
        }
        return coroutineScope.getCoroutineContext();
    }

    public final CoroutineContext getTransactionContext$room_runtime() {
        CoroutineContext coroutineContext = this.transactionContext;
        if (coroutineContext == null) {
            return null;
        }
        return coroutineContext;
    }

    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return MapsKt.emptyMap();
    }

    public Map<KClass<?>, List<KClass<?>>> getRequiredTypeConverterClasses() {
        Set<Map.Entry<Class<?>, List<Class<?>>>> setEntrySet = getRequiredTypeConverters().entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Class cls = (Class) entry.getKey();
            List list = (List) entry.getValue();
            KClass kotlinClass = JvmClassMappingKt.getKotlinClass(cls);
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(JvmClassMappingKt.getKotlinClass((Class) it2.next()));
            }
            Pair pair = TuplesKt.to(kotlinClass, arrayList);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    public List<Migration> createAutoMigrations(Map<KClass<? extends AutoMigrationSpec>, ? extends AutoMigrationSpec> autoMigrationSpecs) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(autoMigrationSpecs.size()));
        Iterator<T> it = autoMigrationSpecs.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(JvmClassMappingKt.getJavaClass((KClass) entry.getKey()), entry.getValue());
        }
        return getAutoMigrations(linkedHashMap);
    }

    public final Map<KClass<?>, List<KClass<?>>> getRequiredTypeConverterClassesMap$room_runtime() {
        return getRequiredTypeConverterClasses();
    }

    @Deprecated(message = "No longer implemented by generated")
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return SetsKt.emptySet();
    }

    public Set<KClass<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecClasses() {
        Set<Class<? extends AutoMigrationSpec>> requiredAutoMigrationSpecs = getRequiredAutoMigrationSpecs();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(requiredAutoMigrationSpecs, 10));
        Iterator<T> it = requiredAutoMigrationSpecs.iterator();
        while (it.hasNext()) {
            arrayList.add(JvmClassMappingKt.getKotlinClass((Class) it.next()));
        }
        return CollectionsKt.toSet(arrayList);
    }

    public final void performClear(boolean hasForeignKeys, String... tableNames) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new C09561(hasForeignKeys, tableNames, null));
    }

    /* JADX INFO: renamed from: androidx.room.RoomDatabase$performClear$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.room.RoomDatabase$performClear$1", m873f = "RoomDatabase.android.kt", m874i = {}, m875l = {531}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C09561 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $hasForeignKeys;
        final /* synthetic */ String[] $tableNames;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C09561(boolean z, String[] strArr, Continuation<? super C09561> continuation) {
            super(2, continuation);
            this.$hasForeignKeys = z;
            this.$tableNames = strArr;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return RoomDatabase.this.new C09561(this.$hasForeignKeys, this.$tableNames, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C09561) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.room.RoomDatabase$performClear$1$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "connection", "Landroidx/room/Transactor;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(m872c = "androidx.room.RoomDatabase$performClear$1$1", m873f = "RoomDatabase.android.kt", m874i = {0, 1, 2, 3, 4}, m875l = {532, 533, 535, 541, 542, 543}, m876m = "invokeSuspend", m877n = {"connection", "connection", "connection", "connection", "connection"}, m878s = {"L$0", "L$0", "L$0", "L$0", "L$0"})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<Transactor, Continuation<? super Unit>, Object> {
            final /* synthetic */ boolean $hasForeignKeys;
            final /* synthetic */ String[] $tableNames;
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ RoomDatabase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(RoomDatabase roomDatabase, boolean z, String[] strArr, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = roomDatabase;
                this.$hasForeignKeys = z;
                this.$tableNames = strArr;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$hasForeignKeys, this.$tableNames, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Transactor transactor, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(transactor, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Code restructure failed: missing block: B:33:0x00b3, code lost:
            
                if (androidx.room.TransactorKt.execSQL(r1, "VACUUM", r7) != r0) goto L35;
             */
            /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x006f A[PHI: r1
  0x006f: PHI (r1v7 androidx.room.Transactor) = (r1v4 androidx.room.Transactor), (r1v4 androidx.room.Transactor), (r1v9 androidx.room.Transactor) binds: [B:17:0x005b, B:19:0x006c, B:10:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0086 A[PHI: r1
  0x0086: PHI (r1v10 androidx.room.Transactor) = (r1v7 androidx.room.Transactor), (r1v12 androidx.room.Transactor) binds: [B:22:0x0083, B:9:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:27:0x0092 A[PHI: r1 r8
  0x0092: PHI (r1v13 androidx.room.Transactor) = (r1v10 androidx.room.Transactor), (r1v15 androidx.room.Transactor) binds: [B:25:0x008f, B:8:0x001e] A[DONT_GENERATE, DONT_INLINE]
  0x0092: PHI (r8v14 java.lang.Object) = (r8v13 java.lang.Object), (r8v0 java.lang.Object) binds: [B:25:0x008f, B:8:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object obj) {
                Transactor transactor;
                Transactor.SQLiteTransactionType sQLiteTransactionType;
                C65621 c65621;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure(obj);
                        Transactor transactor2 = (Transactor) this.L$0;
                        this.L$0 = transactor2;
                        this.label = 1;
                        Object objInTransaction = transactor2.inTransaction(this);
                        if (objInTransaction != coroutine_suspended) {
                            transactor = transactor2;
                            obj = objInTransaction;
                            if (((Boolean) obj).booleanValue()) {
                                InvalidationTracker invalidationTracker = this.this$0.getInvalidationTracker();
                                this.L$0 = transactor;
                                this.label = 2;
                                if (invalidationTracker.sync$room_runtime(this) != coroutine_suspended) {
                                    sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
                                    c65621 = new C65621(this.$hasForeignKeys, this.$tableNames, null);
                                    this.L$0 = transactor;
                                    this.label = 3;
                                    if (transactor.withTransaction(sQLiteTransactionType, c65621, this) != coroutine_suspended) {
                                        this.L$0 = transactor;
                                        this.label = 4;
                                        obj = transactor.inTransaction(this);
                                        if (obj != coroutine_suspended) {
                                            if (!((Boolean) obj).booleanValue()) {
                                                this.L$0 = transactor;
                                                this.label = 5;
                                                if (TransactorKt.execSQL(transactor, "PRAGMA wal_checkpoint(FULL)", this) != coroutine_suspended) {
                                                    this.L$0 = null;
                                                    this.label = 6;
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            }
                            return Unit.INSTANCE;
                        }
                        return coroutine_suspended;
                    case 1:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        if (((Boolean) obj).booleanValue()) {
                        }
                        return Unit.INSTANCE;
                    case 2:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
                        c65621 = new C65621(this.$hasForeignKeys, this.$tableNames, null);
                        this.L$0 = transactor;
                        this.label = 3;
                        if (transactor.withTransaction(sQLiteTransactionType, c65621, this) != coroutine_suspended) {
                        }
                        return coroutine_suspended;
                    case 3:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        this.L$0 = transactor;
                        this.label = 4;
                        obj = transactor.inTransaction(this);
                        if (obj != coroutine_suspended) {
                        }
                        return coroutine_suspended;
                    case 4:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        if (!((Boolean) obj).booleanValue()) {
                        }
                        return Unit.INSTANCE;
                    case 5:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        this.L$0 = null;
                        this.label = 6;
                        break;
                    case 6:
                        ResultKt.throwOnFailure(obj);
                        this.this$0.getInvalidationTracker().refreshAsync();
                        return Unit.INSTANCE;
                    default:
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                }
            }

            /* JADX INFO: renamed from: androidx.room.RoomDatabase$performClear$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/TransactionScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
            @DebugMetadata(m872c = "androidx.room.RoomDatabase$performClear$1$1$1", m873f = "RoomDatabase.android.kt", m874i = {0, 1, 1}, m875l = {537, 539}, m876m = "invokeSuspend", m877n = {"$this$withTransaction", "$this$withTransaction", "$this$forEach$iv"}, m878s = {"L$0", "L$0", "L$1"})
            @SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$performClear$1$1$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,2191:1\n13472#2,2:2192\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$performClear$1$1$1\n*L\n539#1:2192,2\n*E\n"})
            public static final class C65621 extends SuspendLambda implements Function2<TransactionScope<Unit>, Continuation<? super Unit>, Object> {
                final /* synthetic */ boolean $hasForeignKeys;
                final /* synthetic */ String[] $tableNames;
                int I$0;
                int I$1;
                private /* synthetic */ Object L$0;
                Object L$1;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C65621(boolean z, String[] strArr, Continuation<? super C65621> continuation) {
                    super(2, continuation);
                    this.$hasForeignKeys = z;
                    this.$tableNames = strArr;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C65621 c65621 = new C65621(this.$hasForeignKeys, this.$tableNames, continuation);
                    c65621.L$0 = obj;
                    return c65621;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(TransactionScope<Unit> transactionScope, Continuation<? super Unit> continuation) {
                    return ((C65621) create(transactionScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
                
                    if (androidx.room.TransactorKt.execSQL(r1, "PRAGMA defer_foreign_keys = TRUE", r9) == r0) goto L19;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:18:0x0073, code lost:
                
                    if (androidx.room.TransactorKt.execSQL(r6, r10, r9) == r0) goto L19;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:19:0x0075, code lost:
                
                    return r0;
                 */
                /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x0078  */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0073 -> B:20:0x0076). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object invokeSuspend(Object obj) {
                    TransactionScope transactionScope;
                    TransactionScope transactionScope2;
                    int length;
                    int i;
                    String[] strArr;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = this.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        transactionScope = (TransactionScope) this.L$0;
                        if (this.$hasForeignKeys) {
                            this.L$0 = transactionScope;
                            this.label = 1;
                        }
                    } else if (i2 == 1) {
                        transactionScope = (TransactionScope) this.L$0;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        if (i2 != 2) {
                            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        length = this.I$1;
                        i = this.I$0;
                        strArr = (String[]) this.L$1;
                        transactionScope2 = (TransactionScope) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        i++;
                        if (i >= length) {
                            String str = "DELETE FROM `" + strArr[i] + '`';
                            this.L$0 = transactionScope2;
                            this.L$1 = strArr;
                            this.I$0 = i;
                            this.I$1 = length;
                            this.label = 2;
                        } else {
                            return Unit.INSTANCE;
                        }
                    }
                    String[] strArr2 = this.$tableNames;
                    transactionScope2 = transactionScope;
                    length = strArr2.length;
                    i = 0;
                    strArr = strArr2;
                    if (i >= length) {
                    }
                }
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                RoomConnectionManager roomConnectionManager = RoomDatabase.this.connectionManager;
                if (roomConnectionManager == null) {
                    roomConnectionManager = null;
                }
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(RoomDatabase.this, this.$hasForeignKeys, this.$tableNames, null);
                this.label = 1;
                if (roomConnectionManager.useConnection(false, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public boolean isOpen() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            return autoCloser.isActive();
        }
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        return roomConnectionManager.isSupportDatabaseOpen();
    }

    public final boolean isOpenInternal$room_runtime() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            SupportSQLiteDatabase delegateDatabase$room_runtime = autoCloser.getDelegateDatabase();
            if (delegateDatabase$room_runtime != null) {
                return delegateDatabase$room_runtime.isOpen();
            }
            return false;
        }
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        return roomConnectionManager.isSupportDatabaseOpen();
    }

    public void close() {
        this.closeBarrier.close$room_runtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosed() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope == null) {
            coroutineScope = null;
        }
        CoroutineScopeKt.cancel$default(coroutineScope, null, 1, null);
        getInvalidationTracker().stop$room_runtime();
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        (roomConnectionManager != null ? roomConnectionManager : null).close();
    }

    public final boolean isMainThread$room_runtime() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public void assertNotMainThread() {
        if (!this.allowMainThreadQueries && isMainThread$room_runtime()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void assertNotSuspendingTransaction() {
        if (inCompatibilityMode() && !inTransaction() && isThreadInSuspendingTransaction()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public final <R> Object useConnection(boolean z, Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        return roomConnectionManager.useConnection(z, function2, continuation);
    }

    public final boolean inCompatibilityMode() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        return roomConnectionManager.getSupportOpenHelper() != null;
    }

    public Cursor query(String query, Object[] args) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().query(new SimpleSQLiteQuery(query, args));
    }

    public static /* synthetic */ Cursor query$default(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: query");
            return null;
        }
        if ((i & 2) != 0) {
            cancellationSignal = null;
        }
        return roomDatabase.query(supportSQLiteQuery, cancellationSignal);
    }

    @JvmOverloads
    public Cursor query(SupportSQLiteQuery query, CancellationSignal signal) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        if (signal != null) {
            return getOpenHelper().getWritableDatabase().query(query, signal);
        }
        return getOpenHelper().getWritableDatabase().query(query);
    }

    public SupportSQLiteStatement compileStatement(String sql) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().compileStatement(sql);
    }

    @Deprecated(message = "beginTransaction() is deprecated", replaceWith = @ReplaceWith(expression = "runInTransaction(Runnable)", imports = {}))
    public void beginTransaction() {
        assertNotMainThread();
        internalBeginTransaction();
    }

    private final void internalBeginTransaction() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        if (!writableDatabase.inTransaction()) {
            getInvalidationTracker().syncBlocking$room_runtime();
        }
        if (writableDatabase.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    @Deprecated(message = "endTransaction() is deprecated", replaceWith = @ReplaceWith(expression = "runInTransaction(Runnable)", imports = {}))
    public void endTransaction() {
        internalEndTransaction();
    }

    private final void internalEndTransaction() {
        getOpenHelper().getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        getInvalidationTracker().refreshVersionsAsync();
    }

    @Deprecated(message = "setTransactionSuccessful() is deprecated", replaceWith = @ReplaceWith(expression = "runInTransaction(Runnable)", imports = {}))
    public void setTransactionSuccessful() {
        getOpenHelper().getWritableDatabase().setTransactionSuccessful();
    }

    public static Unit $r8$lambda$bNnW08bMruDX4DuvntvGeRm0ICM(Runnable runnable) {
        runnable.run();
        return Unit.INSTANCE;
    }

    public void runInTransaction(final Runnable body) {
        runInTransaction(new Function0() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomDatabase.$r8$lambda$bNnW08bMruDX4DuvntvGeRm0ICM(body);
            }
        });
    }

    public <V> V runInTransaction(final Callable<V> body) {
        return (V) runInTransaction(new Function0() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return body.call();
            }
        });
    }

    private final <T> T runInTransaction(final Function0<? extends T> body) {
        if (inCompatibilityMode()) {
            beginTransaction();
            try {
                T tInvoke = body.invoke();
                setTransactionSuccessful();
                return tInvoke;
            } finally {
                endTransaction();
            }
        }
        return (T) DBUtil.performBlocking(this, false, true, new Function1() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return body.invoke();
            }
        });
    }

    @Deprecated(message = "No longer called by generated")
    public void internalInitInvalidationTracker(SupportSQLiteDatabase db) {
        internalInitInvalidationTracker(new SupportSQLiteConnection(db));
    }

    public final void internalInitInvalidationTracker(SQLiteConnection connection) {
        getInvalidationTracker().internalInit$room_runtime(connection);
    }

    public boolean inTransaction() {
        return isOpenInternal$room_runtime() && getOpenHelper().getWritableDatabase().inTransaction();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tH\u0000¢\u0006\u0002\b\nj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u000b"}, d2 = {"Landroidx/room/RoomDatabase$JournalMode;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "AUTOMATIC", "TRUNCATE", "WRITE_AHEAD_LOGGING", "resolve", "context", "Landroid/content/Context;", "resolve$room_runtime", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class JournalMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ JournalMode[] $VALUES;
        public static final JournalMode AUTOMATIC = new JournalMode("AUTOMATIC", 0);
        public static final JournalMode TRUNCATE = new JournalMode("TRUNCATE", 1);
        public static final JournalMode WRITE_AHEAD_LOGGING = new JournalMode("WRITE_AHEAD_LOGGING", 2);

        private static final /* synthetic */ JournalMode[] $values() {
            return new JournalMode[]{AUTOMATIC, TRUNCATE, WRITE_AHEAD_LOGGING};
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) $VALUES.clone();
        }

        private JournalMode(String str, int i) {
        }

        static {
            JournalMode[] journalModeArr$values = $values();
            $VALUES = journalModeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(journalModeArr$values);
        }

        public final JournalMode resolve$room_runtime(Context context) {
            if (this != AUTOMATIC) {
                return this;
            }
            Object systemService = context.getSystemService("activity");
            ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
            if (activityManager != null && !activityManager.isLowRamDevice()) {
                return WRITE_AHEAD_LOGGING;
            }
            return TRUNCATE;
        }
    }

    @Metadata(d1 = {"\u0000Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B)\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u0010\"\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001b\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u001d\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00028\u0000H\u0016¢\u0006\u0004\b#\u0010$R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010&R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010'R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010(R\u001c\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010*R\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001f0+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00030+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010-R\u0018\u0010/\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00101\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00100R\u0018\u00102\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u0010\u0015\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u00104R\u0016\u00106\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010<\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010?\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0014\u0010B\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u001c\u0010F\u001a\b\u0012\u0004\u0012\u00020E0D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001a\u0010H\u001a\b\u0012\u0004\u0012\u00020E0D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010GR\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020I0+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010-R\u0016\u0010K\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u00104R\u0016\u0010L\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u00104R\u0016\u0010M\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u00104R\u0018\u0010N\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010(R\u0018\u0010P\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u001e\u0010T\u001a\n\u0012\u0004\u0012\u00020S\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010W\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010Z\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010\\\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u00104¨\u0006]"}, d2 = {"Landroidx/room/RoomDatabase$Builder;", "Landroidx/room/RoomDatabase;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/content/Context;", "context", "Ljava/lang/Class;", "klass", _UrlKt.FRAGMENT_ENCODE_SET, "name", "<init>", "(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;", PluginsConstants.Settings.FACTORY, "openHelperFactory", "(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/migration/Migration;", "migrations", "addMigrations", "([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;", "allowMainThreadQueries", "()Landroidx/room/RoomDatabase$Builder;", "Ljava/util/concurrent/Executor;", "executor", "setQueryExecutor", "(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "dropAllTables", "fallbackToDestructiveMigration", "(Z)Landroidx/room/RoomDatabase$Builder;", "Landroidx/room/RoomDatabase$Callback;", com.sun.jna.Callback.METHOD_NAME, "addCallback", "(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;", "build", "()Landroidx/room/RoomDatabase;", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/KClass;", "Landroid/content/Context;", "Ljava/lang/String;", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "callbacks", "Ljava/util/List;", "typeConverters", "queryExecutor", "Ljava/util/concurrent/Executor;", "transactionExecutor", "supportOpenHelperFactory", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;", "Z", "Landroidx/room/RoomDatabase$JournalMode;", "journalMode", "Landroidx/room/RoomDatabase$JournalMode;", "Landroid/content/Intent;", "multiInstanceInvalidationIntent", "Landroid/content/Intent;", _UrlKt.FRAGMENT_ENCODE_SET, "autoCloseTimeout", "J", "Ljava/util/concurrent/TimeUnit;", "autoCloseTimeUnit", "Ljava/util/concurrent/TimeUnit;", "Landroidx/room/RoomDatabase$MigrationContainer;", "migrationContainer", "Landroidx/room/RoomDatabase$MigrationContainer;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "migrationsNotRequiredFrom", "Ljava/util/Set;", "migrationStartAndEndVersions", "Landroidx/room/migration/AutoMigrationSpec;", "autoMigrationSpecs", "requireMigration", "allowDestructiveMigrationOnDowngrade", "allowDestructiveMigrationForAllTables", "copyFromAssetPath", "Ljava/io/File;", "copyFromFile", "Ljava/io/File;", "Ljava/util/concurrent/Callable;", "Ljava/io/InputStream;", "copyFromInputStream", "Ljava/util/concurrent/Callable;", "Landroidx/sqlite/SQLiteDriver;", "driver", "Landroidx/sqlite/SQLiteDriver;", "Lkotlin/coroutines/CoroutineContext;", "queryCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "inMemoryTrackingTableMode", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2191:1\n1#2:2192\n*E\n"})
    public static class Builder<T extends RoomDatabase> {
        private boolean allowDestructiveMigrationForAllTables;
        private boolean allowDestructiveMigrationOnDowngrade;
        private boolean allowMainThreadQueries;
        private TimeUnit autoCloseTimeUnit;
        private final Context context;
        private String copyFromAssetPath;
        private File copyFromFile;
        private Callable<InputStream> copyFromInputStream;
        private SQLiteDriver driver;
        private final KClass<T> klass;
        private Intent multiInstanceInvalidationIntent;
        private final String name;
        private CoroutineContext queryCoroutineContext;
        private Executor queryExecutor;
        private SupportSQLiteOpenHelper.Factory supportOpenHelperFactory;
        private Executor transactionExecutor;
        private final List<Callback> callbacks = new ArrayList();
        private final List<Object> typeConverters = new ArrayList();
        private JournalMode journalMode = JournalMode.AUTOMATIC;
        private long autoCloseTimeout = -1;
        private final MigrationContainer migrationContainer = new MigrationContainer();
        private Set<Integer> migrationsNotRequiredFrom = new LinkedHashSet();
        private final Set<Integer> migrationStartAndEndVersions = new LinkedHashSet();
        private final List<AutoMigrationSpec> autoMigrationSpecs = new ArrayList();
        private boolean requireMigration = true;
        private boolean inMemoryTrackingTableMode = true;
        private final Function0<T> factory = null;

        public Builder(Context context, Class<T> cls, String str) {
            this.klass = JvmClassMappingKt.getKotlinClass(cls);
            this.context = context;
            this.name = str;
        }

        public Builder<T> openHelperFactory(SupportSQLiteOpenHelper.Factory factory) {
            this.supportOpenHelperFactory = factory;
            return this;
        }

        public Builder<T> addMigrations(Migration... migrations) {
            for (Migration migration : migrations) {
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.startVersion));
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.endVersion));
            }
            this.migrationContainer.addMigrations((Migration[]) Arrays.copyOf(migrations, migrations.length));
            return this;
        }

        public Builder<T> allowMainThreadQueries() {
            this.allowMainThreadQueries = true;
            return this;
        }

        public Builder<T> setQueryExecutor(Executor executor) {
            if (this.queryCoroutineContext != null) {
                f$$ExternalSyntheticBUOutline1.m212m("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
                return null;
            }
            this.queryExecutor = executor;
            return this;
        }

        public final Builder<T> fallbackToDestructiveMigration(boolean dropAllTables) {
            this.requireMigration = false;
            this.allowDestructiveMigrationOnDowngrade = true;
            this.allowDestructiveMigrationForAllTables = dropAllTables;
            return this;
        }

        public Builder<T> addCallback(Callback callback) {
            this.callbacks.add(callback);
            return this;
        }

        public T build() {
            SupportSQLiteOpenHelper.Factory prePackagedCopyOpenHelperFactory;
            SupportSQLiteOpenHelper.Factory factory;
            T tInvoke;
            Executor executor = this.queryExecutor;
            if (executor == null && this.transactionExecutor == null) {
                Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
                this.transactionExecutor = iOThreadExecutor;
                this.queryExecutor = iOThreadExecutor;
            } else if (executor != null && this.transactionExecutor == null) {
                this.transactionExecutor = executor;
            } else if (executor == null) {
                this.queryExecutor = this.transactionExecutor;
            }
            RoomDatabaseKt.validateMigrationsNotRequired(this.migrationStartAndEndVersions, this.migrationsNotRequiredFrom);
            SQLiteDriver sQLiteDriver = this.driver;
            if (sQLiteDriver == null && this.supportOpenHelperFactory == null) {
                prePackagedCopyOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            } else {
                SupportSQLiteOpenHelper.Factory factory2 = this.supportOpenHelperFactory;
                if (sQLiteDriver == null) {
                    prePackagedCopyOpenHelperFactory = factory2;
                } else {
                    if (factory2 != null) {
                        f$$ExternalSyntheticBUOutline1.m212m("A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory.");
                        return null;
                    }
                    prePackagedCopyOpenHelperFactory = null;
                }
            }
            boolean z = this.autoCloseTimeout > 0;
            boolean z2 = (this.copyFromAssetPath == null && this.copyFromFile == null && this.copyFromInputStream == null) ? false : true;
            if (prePackagedCopyOpenHelperFactory != null) {
                if (z) {
                    if (this.name == null) {
                        f$$ExternalSyntheticBUOutline1.m212m("Cannot create auto-closing database for an in-memory database.");
                        return null;
                    }
                    long j = this.autoCloseTimeout;
                    TimeUnit timeUnit = this.autoCloseTimeUnit;
                    if (timeUnit == null) {
                        f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
                        return null;
                    }
                    prePackagedCopyOpenHelperFactory = new AutoClosingRoomOpenHelperFactory(prePackagedCopyOpenHelperFactory, new AutoCloser(j, timeUnit, null, 4, null));
                }
                if (z2) {
                    if (this.name == null) {
                        f$$ExternalSyntheticBUOutline1.m212m("Cannot create from asset or file for an in-memory database.");
                        return null;
                    }
                    String str = this.copyFromAssetPath;
                    int i = str == null ? 0 : 1;
                    File file = this.copyFromFile;
                    int i2 = file == null ? 0 : 1;
                    Callable<InputStream> callable = this.copyFromInputStream;
                    if (i + i2 + (callable != null ? 1 : 0) != 1) {
                        f$$ExternalSyntheticBUOutline1.m212m("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                        return null;
                    }
                    prePackagedCopyOpenHelperFactory = new PrePackagedCopyOpenHelperFactory(str, file, callable, prePackagedCopyOpenHelperFactory);
                }
                factory = prePackagedCopyOpenHelperFactory;
            } else {
                factory = null;
            }
            if (factory == null) {
                if (z) {
                    f$$ExternalSyntheticBUOutline1.m212m("Auto Closing Database is not supported when an SQLiteDriver is configured.");
                    return null;
                }
                if (z2) {
                    f$$ExternalSyntheticBUOutline1.m212m("Pre-Package Database is not supported when an SQLiteDriver is configured.");
                    return null;
                }
            }
            Context context = this.context;
            String str2 = this.name;
            MigrationContainer migrationContainer = this.migrationContainer;
            List<Callback> list = this.callbacks;
            boolean z3 = this.allowMainThreadQueries;
            JournalMode journalModeResolve$room_runtime = this.journalMode.resolve$room_runtime(context);
            Executor executor2 = this.queryExecutor;
            if (executor2 == null) {
                f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
                return null;
            }
            Executor executor3 = this.transactionExecutor;
            if (executor3 != null) {
                DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, str2, factory, migrationContainer, list, z3, journalModeResolve$room_runtime, executor2, executor3, this.multiInstanceInvalidationIntent, this.requireMigration, this.allowDestructiveMigrationOnDowngrade, this.migrationsNotRequiredFrom, this.copyFromAssetPath, this.copyFromFile, this.copyFromInputStream, null, this.typeConverters, this.autoMigrationSpecs, this.allowDestructiveMigrationForAllTables, this.driver, this.queryCoroutineContext);
                databaseConfiguration.setUseTempTrackingTable$room_runtime(this.inMemoryTrackingTableMode);
                Function0<T> function0 = this.factory;
                if (function0 == null || (tInvoke = function0.invoke()) == null) {
                    tInvoke = (T) KClassUtil.findAndInstantiateDatabaseImpl$default(JvmClassMappingKt.getJavaClass((KClass) this.klass), null, 2, null);
                }
                tInvoke.init(databaseConfiguration);
                return tInvoke;
            }
            f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
            return null;
        }
    }

    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\b\u001a\u00020\u00072\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u000e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00050\r0\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00132\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000e¢\u0006\u0004\b\u0019\u0010\u001aJ7\u0010 \u001a\"\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00050\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u001d\u0018\u00010\u001c2\u0006\u0010\u001b\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ7\u0010\"\u001a\"\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00050\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u001d\u0018\u00010\u001c2\u0006\u0010\u001b\u001a\u00020\u000eH\u0000¢\u0006\u0004\b!\u0010\u001fR,\u0010\u0006\u001a\u001a\u0012\u0004\u0012\u00020\u000e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00050$0#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010%¨\u0006&"}, d2 = {"Landroidx/room/RoomDatabase$MigrationContainer;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/migration/Migration;", "migrations", _UrlKt.FRAGMENT_ENCODE_SET, "addMigrations", "([Landroidx/room/migration/Migration;)V", "migration", "addMigration", "(Landroidx/room/migration/Migration;)V", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "getMigrations", "()Ljava/util/Map;", "start", "end", _UrlKt.FRAGMENT_ENCODE_SET, "findMigrationPath", "(II)Ljava/util/List;", "startVersion", "endVersion", _UrlKt.FRAGMENT_ENCODE_SET, "contains", "(II)Z", "migrationStart", "Lkotlin/Pair;", _UrlKt.FRAGMENT_ENCODE_SET, "getSortedNodes$room_runtime", "(I)Lkotlin/Pair;", "getSortedNodes", "getSortedDescendingNodes$room_runtime", "getSortedDescendingNodes", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/util/TreeMap;", "Ljava/util/Map;", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$MigrationContainer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,2191:1\n13472#2,2:2192\n1869#3,2:2194\n384#4,7:2196\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$MigrationContainer\n*L\n1830#1:2192,2\n1840#1:2194,2\n1853#1:2196,7\n*E\n"})
    public static class MigrationContainer {
        private final Map<Integer, TreeMap<Integer, Migration>> migrations = new LinkedHashMap();

        public final void addMigration(Migration migration) {
            int i = migration.startVersion;
            int i2 = migration.endVersion;
            Map<Integer, TreeMap<Integer, Migration>> map = this.migrations;
            Integer numValueOf = Integer.valueOf(i);
            TreeMap<Integer, Migration> treeMap = map.get(numValueOf);
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                map.put(numValueOf, treeMap);
            }
            TreeMap<Integer, Migration> treeMap2 = treeMap;
            if (treeMap2.containsKey(Integer.valueOf(i2))) {
                Log.w("ROOM", "Overriding migration " + treeMap2.get(Integer.valueOf(i2)) + " with " + migration);
            }
            treeMap2.put(Integer.valueOf(i2), migration);
        }

        public Map<Integer, Map<Integer, Migration>> getMigrations() {
            return this.migrations;
        }

        public List<Migration> findMigrationPath(int start, int end) {
            return MigrationUtil.findMigrationPath(this, start, end);
        }

        public final boolean contains(int startVersion, int endVersion) {
            return MigrationUtil.contains(this, startVersion, endVersion);
        }

        public final Pair<Map<Integer, Migration>, Iterable<Integer>> getSortedNodes$room_runtime(int migrationStart) {
            TreeMap<Integer, Migration> treeMap = this.migrations.get(Integer.valueOf(migrationStart));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.to(treeMap, treeMap.keySet());
        }

        public final Pair<Map<Integer, Migration>, Iterable<Integer>> getSortedDescendingNodes$room_runtime(int migrationStart) {
            TreeMap<Integer, Migration> treeMap = this.migrations.get(Integer.valueOf(migrationStart));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.to(treeMap, treeMap.descendingKeySet());
        }

        public void addMigrations(Migration... migrations) {
            for (Migration migration : migrations) {
                addMigration(migration);
            }
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\f"}, d2 = {"Landroidx/room/RoomDatabase$Callback;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "onCreate", _UrlKt.FRAGMENT_ENCODE_SET, "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "connection", "Landroidx/sqlite/SQLiteConnection;", "onDestructiveMigration", "onOpen", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Callback {
        public void onCreate(SupportSQLiteDatabase db) {
        }

        public void onDestructiveMigration(SupportSQLiteDatabase db) {
        }

        public void onOpen(SupportSQLiteDatabase db) {
        }

        public void onCreate(SQLiteConnection connection) {
            if (connection instanceof SupportSQLiteConnection) {
                onCreate(((SupportSQLiteConnection) connection).getDb());
            }
        }

        public void onDestructiveMigration(SQLiteConnection connection) {
            if (connection instanceof SupportSQLiteConnection) {
                onDestructiveMigration(((SupportSQLiteConnection) connection).getDb());
            }
        }

        public void onOpen(SQLiteConnection connection) {
            if (connection instanceof SupportSQLiteConnection) {
                onOpen(((SupportSQLiteConnection) connection).getDb());
            }
        }
    }
}
