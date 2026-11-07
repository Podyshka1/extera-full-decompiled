package com.exteragram.messenger.api;

import android.content.SharedPreferences;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.db.DatabaseHelper;
import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import com.exteragram.messenger.api.network.ApiClient;
import com.exteragram.messenger.api.network.ApiService;
import com.exteragram.messenger.api.worker.SyncWorker;
import com.exteragram.messenger.plugins.PluginsConstants;
import j$.time.Duration;
import j$.time.Instant;
import j$.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.ui.Components.ForegroundDetector;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0013\u001a\u00020\u0014H\u0007J\u001c\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019H\u0007J\"\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019H\u0086@¢\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u00020\u000b2\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0010H\u0002J\u0012\u0010\"\u001a\u00020\u00142\b\b\u0002\u0010\u0016\u001a\u00020\u0017H\u0007J\b\u0010#\u001a\u00020\u0014H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/exteragram/messenger/api/ApiController;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "scope", "Lkotlinx/coroutines/CoroutineScope;", "started", "Ljava/util/concurrent/atomic/AtomicBoolean;", "syncMutex", "Lkotlinx/coroutines/sync/Mutex;", "SYNC_TIMESTAMP_HEADER", _UrlKt.FRAGMENT_ENCODE_SET, "PROFILES_SYNC_TIME_KEY", "BOOSTY_SYNC_TIME_KEY", "SYNC_FAILURE_TIME_KEY", "PROFILES_SYNC_INTERVAL", _UrlKt.FRAGMENT_ENCODE_SET, "BOOSTY_SYNC_INTERVAL", "FAILURE_BACKOFF", "init", _UrlKt.FRAGMENT_ENCODE_SET, "sync", "prefs", "Landroid/content/SharedPreferences;", "force", _UrlKt.FRAGMENT_ENCODE_SET, "performSync", "(Landroid/content/SharedPreferences;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "syncWatermark", PluginsConstants.RESPONSE, "Lretrofit2/Response;", "elapsedSince", "now", "timestamp", "resetSyncState", "scheduleWorker", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nApiController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiController.kt\ncom/exteragram/messenger/api/ApiController\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,243:1\n117#2,7:244\n125#2,2:313\n41#3,12:251\n41#3,12:263\n41#3,12:289\n41#3,12:301\n41#3,12:315\n3347#4,10:275\n1586#4:285\n1661#4,3:286\n364#5:327\n*S KotlinDebug\n*F\n+ 1 ApiController.kt\ncom/exteragram/messenger/api/ApiController\n*L\n89#1:244,7\n89#1:313,2\n113#1:251,12\n143#1:263,12\n160#1:289,12\n183#1:301,12\n212#1:315,12\n151#1:275,10\n153#1:285\n153#1:286,3\n229#1:327\n*E\n"})
public final class ApiController {
    private static final String BOOSTY_SYNC_TIME_KEY = "lastBoostySyncTime";
    private static final String PROFILES_SYNC_TIME_KEY = "lastProfilesSyncTime";
    private static final String SYNC_FAILURE_TIME_KEY = "lastSyncFailureTime";
    private static final String SYNC_TIMESTAMP_HEADER = "X-Sync-Timestamp";
    public static final ApiController INSTANCE = new ApiController();
    private static final CoroutineScope scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
    private static final AtomicBoolean started = new AtomicBoolean(false);
    private static final Mutex syncMutex = MutexKt.Mutex$default(false, 1, null);
    private static final long PROFILES_SYNC_INTERVAL = Duration.ofMinutes(10).toMillis();
    private static final long BOOSTY_SYNC_INTERVAL = Duration.ofMinutes(40).toMillis();
    private static final long FAILURE_BACKOFF = Duration.ofMinutes(5).toMillis();

    /* JADX INFO: renamed from: com.exteragram.messenger.api.ApiController$performSync$1 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.ApiController", m873f = "ApiController.kt", m874i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6}, m875l = {248, 110, 112, 137, 139, 153, 156}, m876m = "performSync", m877n = {"prefs", "$this$withLock_u24default$iv", "force", "$i$f$withLock", "prefs", "$this$withLock_u24default$iv", "success", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "boostyResponse", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", PluginsConstants.RESPONSE, "profiles", "profilesToDelete", "profilesToInsert", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "stored", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", PluginsConstants.RESPONSE, "profiles", "profilesToDelete", "profilesToInsert", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "stored"}, m878s = {"L$0", "L$1", "Z$0", "I$0", "L$0", "L$1", "L$2", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "L$0", "L$1", "L$2", "L$3", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "I$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "I$5"})
    public static final class C12161 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        int I$4;
        int I$5;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C12161(Continuation<? super C12161> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ApiController.this.performSync(null, false, this);
        }
    }

    private final long elapsedSince(long now, long timestamp) {
        return (timestamp <= 0 || timestamp > now) ? LongCompanionObject.MAX_VALUE : now - timestamp;
    }

    @JvmStatic
    @JvmOverloads
    public static final void resetSyncState() {
        resetSyncState$default(null, 1, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sync() {
        sync$default(null, false, 3, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sync(SharedPreferences sharedPreferences) {
        sync$default(sharedPreferences, false, 2, null);
    }

    private ApiController() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void resetSyncState(SharedPreferences prefs) {
        SharedPreferences.Editor editorEdit = prefs.edit();
        editorEdit.remove("lastSyncTimestamp");
        editorEdit.remove("profilesEtag");
        editorEdit.remove(PROFILES_SYNC_TIME_KEY);
        editorEdit.remove(BOOSTY_SYNC_TIME_KEY);
        editorEdit.remove(SYNC_FAILURE_TIME_KEY);
        editorEdit.apply();
    }

    @JvmStatic
    public static final void init() {
        if (started.compareAndSet(false, true)) {
            sync$default(null, false, 3, null);
            scheduleWorker();
            ForegroundDetector.getInstance().addListener(new ForegroundDetector.Listener() { // from class: com.exteragram.messenger.api.ApiController.init.1
                @Override // org.telegram.ui.Components.ForegroundDetector.Listener
                public void onBecameBackground() {
                }

                @Override // org.telegram.ui.Components.ForegroundDetector.Listener
                public void onBecameForeground() {
                    ApiController.sync$default(null, false, 3, null);
                }
            });
        }
    }

    public static /* synthetic */ void sync$default(SharedPreferences sharedPreferences, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            sharedPreferences = ExteraConfig.getPreferences();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        sync(sharedPreferences, z);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sync(SharedPreferences prefs, boolean force) {
        if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
            if (!force) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                ApiController apiController = INSTANCE;
                if (apiController.elapsedSince(jCurrentTimeMillis, prefs.getLong(SYNC_FAILURE_TIME_KEY, 0L)) < FAILURE_BACKOFF) {
                    return;
                }
                boolean z = apiController.elapsedSince(jCurrentTimeMillis, prefs.getLong(PROFILES_SYNC_TIME_KEY, 0L)) >= PROFILES_SYNC_INTERVAL;
                boolean z2 = apiController.elapsedSince(jCurrentTimeMillis, prefs.getLong(BOOSTY_SYNC_TIME_KEY, 0L)) >= BOOSTY_SYNC_INTERVAL;
                if (!z && !z2) {
                    return;
                }
            }
            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C12171(prefs, force, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.ApiController$sync$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.ApiController$sync$1", m873f = "ApiController.kt", m874i = {}, m875l = {85}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C12171 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $force;
        final /* synthetic */ SharedPreferences $prefs;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12171(SharedPreferences sharedPreferences, boolean z, Continuation<? super C12171> continuation) {
            super(2, continuation);
            this.$prefs = sharedPreferences;
            this.$force = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12171(this.$prefs, this.$force, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ApiController apiController = ApiController.INSTANCE;
                SharedPreferences sharedPreferences = this.$prefs;
                boolean z = this.$force;
                this.label = 1;
                if (apiController.performSync(sharedPreferences, z, this) == coroutine_suspended) {
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

    public static /* synthetic */ Object performSync$default(ApiController apiController, SharedPreferences sharedPreferences, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            sharedPreferences = ExteraConfig.getPreferences();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return apiController.performSync(sharedPreferences, z, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x06db: MOVE (r11 I:??[OBJECT, ARRAY]) = (r15 I:??[OBJECT, ARRAY]), block:B:245:0x06db */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x0207: MOVE (r5 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY]), block:B:40:0x01fb */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x015e: MOVE (r14 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY]), block:B:30:0x015e */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x01fb: MOVE (r16 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY]), block:B:40:0x01fb */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x0160: MOVE (r15 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:30:0x015e */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x0167: MOVE (r15 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:32:0x0167 */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x01ff: MOVE (r8 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:40:0x01fb */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x0162: MOVE (r1 I:??[OBJECT, ARRAY]) = (r20 I:??[OBJECT, ARRAY]), block:B:30:0x015e */
    /* JADX WARN: Removed duplicated region for block: B:101:0x037e A[Catch: all -> 0x0377, CancellationException -> 0x0379, TryCatch #31 {CancellationException -> 0x0379, all -> 0x0377, blocks: (B:94:0x0364, B:96:0x036c, B:101:0x037e, B:91:0x0345, B:109:0x039a), top: B:271:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x060c A[Catch: CancellationException -> 0x067b, all -> 0x067f, TRY_LEAVE, TryCatch #15 {all -> 0x067f, blocks: (B:203:0x0602, B:205:0x060c), top: B:279:0x0602 }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0699 A[Catch: CancellationException -> 0x007d, all -> 0x0671, TryCatch #4 {all -> 0x0671, blocks: (B:212:0x0661, B:231:0x0699, B:233:0x06b6, B:236:0x06c0, B:235:0x06bc, B:237:0x06c7), top: B:268:0x0661 }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x06c7 A[Catch: CancellationException -> 0x007d, all -> 0x0671, TRY_LEAVE, TryCatch #4 {all -> 0x0671, blocks: (B:212:0x0661, B:231:0x0699, B:233:0x06b6, B:236:0x06c0, B:235:0x06bc, B:237:0x06c7), top: B:268:0x0661 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x06e7  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x048b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0286 A[PHI: r11
  0x0286: PHI (r11v17 kotlinx.coroutines.sync.Mutex) = (r11v18 kotlinx.coroutines.sync.Mutex), (r11v21 kotlinx.coroutines.sync.Mutex), (r11v21 kotlinx.coroutines.sync.Mutex) binds: [B:249:0x06e7, B:52:0x0284, B:76:0x02e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0289 A[Catch: all -> 0x02aa, TryCatch #3 {all -> 0x02aa, blocks: (B:247:0x06df, B:257:0x0703, B:251:0x06eb, B:253:0x06f3, B:255:0x06fe, B:254:0x06f9, B:256:0x0701, B:51:0x027e, B:54:0x0289, B:56:0x0291, B:63:0x02b6, B:69:0x02cc, B:77:0x02e5), top: B:266:0x027e }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x036c A[Catch: all -> 0x0377, CancellationException -> 0x0379, TryCatch #31 {CancellationException -> 0x0379, all -> 0x0377, blocks: (B:94:0x0364, B:96:0x036c, B:101:0x037e, B:91:0x0345, B:109:0x039a), top: B:271:0x0034 }] */
    /* JADX WARN: Type inference failed for: r0v58, types: [android.content.SharedPreferences$Editor] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v41 */
    /* JADX WARN: Type inference failed for: r11v42 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11, types: [long] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13, types: [long] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v36 */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v39 */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v41 */
    /* JADX WARN: Type inference failed for: r12v42 */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v44 */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v5, types: [long] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [long] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v19, types: [kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v20, types: [kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22, types: [kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v36 */
    /* JADX WARN: Type inference failed for: r14v39 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v41 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v51 */
    /* JADX WARN: Type inference failed for: r14v52 */
    /* JADX WARN: Type inference failed for: r14v53 */
    /* JADX WARN: Type inference failed for: r14v54 */
    /* JADX WARN: Type inference failed for: r14v55 */
    /* JADX WARN: Type inference failed for: r14v56 */
    /* JADX WARN: Type inference failed for: r14v57 */
    /* JADX WARN: Type inference failed for: r14v58 */
    /* JADX WARN: Type inference failed for: r14v59 */
    /* JADX WARN: Type inference failed for: r14v60 */
    /* JADX WARN: Type inference failed for: r14v61 */
    /* JADX WARN: Type inference failed for: r14v62 */
    /* JADX WARN: Type inference failed for: r14v63 */
    /* JADX WARN: Type inference failed for: r14v64 */
    /* JADX WARN: Type inference failed for: r14v65 */
    /* JADX WARN: Type inference failed for: r14v66 */
    /* JADX WARN: Type inference failed for: r14v8, types: [java.lang.Object, kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20, types: [android.content.SharedPreferences] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.content.SharedPreferences$Editor] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r24v9 */
    /* JADX WARN: Type inference failed for: r2v17, types: [android.content.SharedPreferences$Editor] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v61 */
    /* JADX WARN: Type inference failed for: r3v72 */
    /* JADX WARN: Type inference failed for: r3v73 */
    /* JADX WARN: Type inference failed for: r3v74 */
    /* JADX WARN: Type inference failed for: r3v75 */
    /* JADX WARN: Type inference failed for: r3v76 */
    /* JADX WARN: Type inference failed for: r3v77 */
    /* JADX WARN: Type inference failed for: r3v78 */
    /* JADX WARN: Type inference failed for: r3v79 */
    /* JADX WARN: Type inference failed for: r3v80 */
    /* JADX WARN: Type inference failed for: r3v81 */
    /* JADX WARN: Type inference failed for: r3v82 */
    /* JADX WARN: Type inference failed for: r3v89 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v32, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v60 */
    /* JADX WARN: Type inference failed for: r5v61 */
    /* JADX WARN: Type inference failed for: r5v62 */
    /* JADX WARN: Type inference failed for: r5v63 */
    /* JADX WARN: Type inference failed for: r5v64 */
    /* JADX WARN: Type inference failed for: r5v65 */
    /* JADX WARN: Type inference failed for: r5v66 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [android.content.SharedPreferences] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.content.SharedPreferences, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v34 */
    /* JADX WARN: Type inference failed for: r8v35 */
    /* JADX WARN: Type inference failed for: r8v36 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v39 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v40 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8, types: [android.content.SharedPreferences, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object performSync(SharedPreferences sharedPreferences, boolean z, Continuation<? super Boolean> continuation) throws Throwable {
        C12161 c12161;
        Ref.BooleanRef booleanRef;
        Ref.BooleanRef booleanRef2;
        Mutex mutex;
        Mutex mutex2;
        SharedPreferences sharedPreferences2;
        SharedPreferences sharedPreferences3;
        Mutex mutex3;
        String str;
        Object obj;
        ?? r8;
        Mutex mutex4;
        String str2;
        String str3;
        Object obj2;
        ?? r5;
        String str4;
        Mutex mutex5;
        Mutex mutex6;
        Mutex mutex7;
        boolean z2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        ?? r14;
        ?? r12;
        boolean z3;
        int i6;
        int i7;
        int i8;
        ?? r3;
        int i9;
        ?? r1;
        ?? r32;
        String string;
        String str5;
        String string2;
        ApiService apiService;
        String str6;
        String str7;
        int i10;
        String str8;
        int i11;
        Object obj3;
        int i12;
        int i13;
        Object obj4;
        ?? r11;
        ?? r82;
        ?? r52;
        int i14;
        ?? r142;
        ?? r122;
        ?? r83;
        Response<?> response;
        ?? r33;
        int i15;
        int i16;
        boolean z4;
        String str9;
        ApiService apiService2;
        boolean z5;
        List list;
        String str10;
        String str11;
        ?? r13;
        int i17;
        boolean z6;
        List list2;
        List<ProfileDTO> list3;
        List<ProfileDTO> list4;
        List list5;
        Object obj5;
        int i18;
        int i19;
        ?? r53;
        Mutex mutex8;
        int i20;
        Response<?> response2;
        int i21;
        int i22;
        ?? r23;
        Mutex mutex9;
        Response<?> response3;
        Object obj6;
        int i23;
        String str12;
        ApiService apiService3;
        ?? r143;
        ?? r123;
        ?? r84;
        ?? r124;
        ?? r85;
        List<ProfileDTO> list6;
        ?? r24;
        ?? r144;
        ?? r145;
        Object objInsertProfiles;
        int i24;
        Response<?> response4;
        ?? r15;
        ?? r146;
        ?? r125;
        ?? r86;
        ?? r126;
        boolean z7;
        ?? r16;
        ?? r127;
        ?? r34;
        ?? r128;
        int i25;
        SharedPreferences sharedPreferences4;
        boolean z8;
        ApiClient apiClient;
        ApiClient apiClient2;
        Object boostySubscribers;
        Ref.BooleanRef booleanRef3;
        SharedPreferences sharedPreferences5;
        Mutex mutex10;
        long j;
        int i26;
        Response response5;
        Object objInsertBoostySubscribers;
        long j2;
        SharedPreferences sharedPreferences6;
        Ref.BooleanRef booleanRef4;
        int i27;
        if (continuation instanceof C12161) {
            c12161 = (C12161) continuation;
            int i28 = c12161.label;
            if ((i28 & Integer.MIN_VALUE) != 0) {
                c12161.label = i28 - Integer.MIN_VALUE;
            } else {
                c12161 = new C12161(continuation);
            }
        }
        Object obj7 = c12161.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i29 = c12161.label;
        String str13 = "profilesEtag";
        ?? r87 = SYNC_FAILURE_TIME_KEY;
        ?? r112 = 0;
        r112 = 0;
        try {
            try {
                try {
                    try {
                        try {
                            try {
                            } catch (Throwable th) {
                                th = th;
                                r33 = str13;
                                r1 = r87;
                                r32 = r33;
                                r126 = r12;
                                r144 = r14;
                                FileLog.m992e(th);
                                r144.element = false;
                                r16 = r1;
                                r3 = r32;
                                r12 = r126;
                                r14 = r144;
                                r87 = r16;
                                mutex6 = mutex2;
                                if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                }
                            }
                        } catch (CancellationException e) {
                            throw e;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        mutex6 = mutex5;
                        mutex6.unlock(null);
                        throw th;
                    }
                } catch (CancellationException e2) {
                    e = e2;
                } catch (Throwable th3) {
                    th = th3;
                    i5 = i29;
                    r5 = str13;
                    r8 = r87;
                }
            } catch (CancellationException e3) {
                e = e3;
            } catch (Throwable th4) {
                th = th4;
                str = SYNC_FAILURE_TIME_KEY;
                r8 = obj;
                mutex4 = mutex3;
                str2 = "profilesEtag";
                str3 = PROFILES_SYNC_TIME_KEY;
                r5 = obj2;
                str4 = "lastSyncTimestamp";
                i5 = i29;
            }
        } catch (CancellationException e4) {
            throw e4;
        } catch (Throwable th5) {
            th = th5;
            booleanRef2 = booleanRef;
            mutex2 = mutex;
            sharedPreferences3 = sharedPreferences2;
        }
        switch (i29) {
            case 0:
                ResultKt.throwOnFailure(obj7);
                Mutex mutex11 = syncMutex;
                sharedPreferences4 = sharedPreferences;
                c12161.L$0 = sharedPreferences4;
                c12161.L$1 = mutex11;
                z8 = z;
                c12161.Z$0 = z8;
                c12161.I$0 = 0;
                c12161.label = 1;
                if (mutex11.lock(null, c12161) != coroutine_suspended) {
                    mutex6 = mutex11;
                    i6 = 0;
                    try {
                        apiClient = ApiClient.INSTANCE;
                        if (apiClient.getRequestsEnabled$TMessagesProj()) {
                            z7 = true;
                        } else {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (z8) {
                                apiClient2 = apiClient;
                                str2 = "profilesEtag";
                                str4 = "lastSyncTimestamp";
                            } else {
                                apiClient2 = apiClient;
                                str2 = "profilesEtag";
                                str4 = "lastSyncTimestamp";
                                if (INSTANCE.elapsedSince(jCurrentTimeMillis, sharedPreferences4.getLong(SYNC_FAILURE_TIME_KEY, 0L)) < FAILURE_BACKOFF) {
                                    z7 = false;
                                }
                            }
                            int i30 = (z8 || INSTANCE.elapsedSince(jCurrentTimeMillis, sharedPreferences4.getLong(BOOSTY_SYNC_TIME_KEY, 0L)) >= BOOSTY_SYNC_INTERVAL) ? 1 : 0;
                            int i31 = (z8 || INSTANCE.elapsedSince(jCurrentTimeMillis, sharedPreferences4.getLong(PROFILES_SYNC_TIME_KEY, 0L)) >= PROFILES_SYNC_INTERVAL) ? 1 : 0;
                            if (i30 == 0 && i31 == 0) {
                                z7 = true;
                            } else {
                                Ref.BooleanRef booleanRef5 = new Ref.BooleanRef();
                                booleanRef5.element = true;
                                if (i30 != 0) {
                                    try {
                                        ApiService apiService4 = apiClient2.getApiService();
                                        c12161.L$0 = sharedPreferences4;
                                        c12161.L$1 = mutex6;
                                        c12161.L$2 = booleanRef5;
                                        c12161.Z$0 = z8;
                                        c12161.I$0 = i6;
                                        c12161.I$1 = 0;
                                        c12161.J$0 = jCurrentTimeMillis;
                                        c12161.I$2 = i30;
                                        c12161.I$3 = i31;
                                        c12161.I$4 = 1;
                                        c12161.label = 2;
                                        boostySubscribers = apiService4.getBoostySubscribers(c12161);
                                        break;
                                    } catch (CancellationException e5) {
                                        e = e5;
                                        mutex7 = mutex6;
                                        try {
                                            throw e;
                                        } catch (Throwable th6) {
                                            th = th6;
                                            mutex6 = mutex7;
                                            mutex6.unlock(null);
                                            throw th;
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        str3 = PROFILES_SYNC_TIME_KEY;
                                        str = SYNC_FAILURE_TIME_KEY;
                                        int i32 = i6;
                                        i3 = i30;
                                        r5 = booleanRef5;
                                        i = i32;
                                        r8 = sharedPreferences4;
                                        z2 = z8;
                                        mutex4 = mutex6;
                                        r112 = jCurrentTimeMillis;
                                        i5 = 1;
                                        i2 = 0;
                                        i4 = i31;
                                        try {
                                            FileLog.m992e(th);
                                            r5.element = false;
                                            i14 = i5;
                                            r52 = r5;
                                            r82 = r8;
                                            r11 = r112;
                                            i9 = i4;
                                            i8 = i3;
                                            i6 = i;
                                            r14 = r52;
                                            i7 = i2;
                                            r12 = r11;
                                            z3 = z2;
                                            mutex2 = mutex4;
                                            r3 = i14;
                                            r87 = r82;
                                            if (i9 != 0) {
                                            }
                                            mutex6 = mutex2;
                                            if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            mutex6 = mutex4;
                                            mutex6.unlock(null);
                                            throw th;
                                        }
                                    }
                                    if (boostySubscribers != coroutine_suspended) {
                                        int i33 = i6;
                                        i3 = i30;
                                        booleanRef3 = booleanRef5;
                                        i = i33;
                                        str = SYNC_FAILURE_TIME_KEY;
                                        z2 = z8;
                                        sharedPreferences5 = sharedPreferences4;
                                        i4 = i31;
                                        mutex10 = mutex6;
                                        j = jCurrentTimeMillis;
                                        i26 = 1;
                                        i2 = 0;
                                        try {
                                            try {
                                                response5 = (Response) boostySubscribers;
                                            } catch (CancellationException e6) {
                                                e = e6;
                                                Mutex mutex12 = mutex10;
                                                mutex7 = mutex12;
                                                throw e;
                                            }
                                        } catch (Throwable th9) {
                                            th = th9;
                                            mutex4 = mutex10;
                                            str3 = PROFILES_SYNC_TIME_KEY;
                                            i5 = i26;
                                            r5 = booleanRef3;
                                            r8 = sharedPreferences5;
                                            r112 = j;
                                        }
                                        if (response5.isSuccessful() || response5.body() == null) {
                                            mutex4 = mutex10;
                                            str3 = PROFILES_SYNC_TIME_KEY;
                                            booleanRef3.element = false;
                                            i14 = i26;
                                            r52 = booleanRef3;
                                            r82 = sharedPreferences5;
                                            r11 = j;
                                            i9 = i4;
                                            i8 = i3;
                                            i6 = i;
                                            r14 = r52;
                                            i7 = i2;
                                            r12 = r11;
                                            z3 = z2;
                                            mutex2 = mutex4;
                                            r3 = i14;
                                            r87 = r82;
                                            if (i9 != 0) {
                                                try {
                                                    string = r87.getString(str4, null);
                                                    str5 = str2;
                                                    string2 = r87.getString(str5, null);
                                                    apiService = ApiClient.INSTANCE.getApiService();
                                                } catch (Throwable th10) {
                                                    th = th10;
                                                    r1 = r87;
                                                    r32 = 1;
                                                    r126 = r12;
                                                    r144 = r14;
                                                }
                                                if (string == null) {
                                                    c12161.L$0 = r87;
                                                    c12161.L$1 = mutex2;
                                                    c12161.L$2 = r14;
                                                    str6 = str5;
                                                    c12161.L$3 = SpillingKt.nullOutSpilledVariable(string);
                                                    c12161.L$4 = SpillingKt.nullOutSpilledVariable(string2);
                                                    c12161.L$5 = SpillingKt.nullOutSpilledVariable(apiService);
                                                    c12161.Z$0 = z3;
                                                    c12161.I$0 = i6;
                                                    c12161.I$1 = i7;
                                                    c12161.J$0 = r12;
                                                    c12161.I$2 = i8;
                                                    c12161.I$3 = i9;
                                                    c12161.I$4 = 1;
                                                    c12161.label = 4;
                                                    Object allProfiles = apiService.getAllProfiles(string2, c12161);
                                                    if (allProfiles != coroutine_suspended) {
                                                        str7 = string2;
                                                        i10 = i8;
                                                        str8 = string;
                                                        i11 = i9;
                                                        obj4 = allProfiles;
                                                        i12 = i7;
                                                        i13 = 1;
                                                        r83 = r87;
                                                        r122 = r12;
                                                        r142 = r14;
                                                        response = (Response) obj4;
                                                        r87 = r83;
                                                        r12 = r122;
                                                        r14 = r142;
                                                        int i34 = i13;
                                                        int i35 = i11;
                                                        r33 = i34;
                                                        boolean z9 = z3;
                                                        i15 = i12;
                                                        i16 = i6;
                                                        z4 = z9;
                                                        str9 = str8;
                                                        try {
                                                            apiService2 = apiService;
                                                        } catch (Throwable th11) {
                                                            th = th11;
                                                            boolean z10 = r33 == true ? 1 : 0;
                                                        }
                                                        if (response.code() != 304) {
                                                            try {
                                                                ?? Edit = r87.edit();
                                                                Edit.putString(str4, INSTANCE.syncWatermark(response));
                                                                Edit.putLong(str3, r12);
                                                                Edit.apply();
                                                                z5 = r33 == true ? 1 : 0;
                                                                r3 = z5;
                                                            } catch (Throwable th12) {
                                                                th = th12;
                                                                r1 = r87;
                                                                r32 = r33;
                                                                r126 = r12;
                                                                r144 = r14;
                                                                FileLog.m992e(th);
                                                                r144.element = false;
                                                                r16 = r1;
                                                                r3 = r32;
                                                                r12 = r126;
                                                                r14 = r144;
                                                                r87 = r16;
                                                            }
                                                        } else {
                                                            String str14 = str4;
                                                            String str15 = str3;
                                                            if (!response.isSuccessful() || response.body() == null) {
                                                                z5 = r33 == true ? 1 : 0;
                                                                r14.element = false;
                                                                r3 = z5;
                                                            } else {
                                                                list = (List) response.body();
                                                                if (list.isEmpty()) {
                                                                    str10 = str14;
                                                                    str11 = str15;
                                                                    r13 = r87;
                                                                    i17 = 1;
                                                                    r34 = r33;
                                                                    r127 = r12;
                                                                    r145 = r14;
                                                                    if (i17 == 0) {
                                                                    }
                                                                    r87 = r16;
                                                                } else {
                                                                    str11 = str15;
                                                                    ArrayList arrayList = new ArrayList();
                                                                    str10 = str14;
                                                                    ArrayList arrayList2 = new ArrayList();
                                                                    r33 = r33;
                                                                    for (Object obj8 : list) {
                                                                        Object obj9 = coroutine_suspended;
                                                                        try {
                                                                            ProfileDTO profileDTO = (ProfileDTO) obj8;
                                                                            z6 = r33 == true ? 1 : 0;
                                                                            try {
                                                                                int i36 = i35;
                                                                                if (Intrinsics.areEqual(profileDTO.getDeleted(), Boxing.boxBoolean(true))) {
                                                                                    arrayList.add(obj8);
                                                                                } else {
                                                                                    arrayList2.add(obj8);
                                                                                }
                                                                                coroutine_suspended = obj9;
                                                                                r33 = z6 ? 1 : 0;
                                                                                i35 = i36;
                                                                            } catch (Throwable th13) {
                                                                                th = th13;
                                                                                r1 = r87;
                                                                                r32 = z6;
                                                                                r126 = r12;
                                                                                r144 = r14;
                                                                            }
                                                                        } catch (Throwable th14) {
                                                                            th = th14;
                                                                            boolean z11 = r33 == true ? 1 : 0;
                                                                        }
                                                                        break;
                                                                    }
                                                                    Object obj10 = coroutine_suspended;
                                                                    z6 = r33 == true ? 1 : 0;
                                                                    int i37 = i35;
                                                                    try {
                                                                        Pair pair = new Pair(arrayList, arrayList2);
                                                                        list2 = (List) pair.component1();
                                                                        list3 = (List) pair.component2();
                                                                    } catch (Throwable th15) {
                                                                        th = th15;
                                                                        str13 = z6 ? 1 : 0;
                                                                        r33 = str13;
                                                                        r1 = r87;
                                                                        r32 = r33;
                                                                        r126 = r12;
                                                                        r144 = r14;
                                                                    }
                                                                    if (list2.isEmpty()) {
                                                                        list4 = list3;
                                                                        list5 = list2;
                                                                        obj5 = obj10;
                                                                        ?? r2 = r14;
                                                                        i18 = i37;
                                                                        i19 = z6 ? 1 : 0;
                                                                        r53 = r2;
                                                                        mutex8 = mutex2;
                                                                        i20 = i10;
                                                                        response2 = response;
                                                                        i21 = 1;
                                                                        r85 = r87;
                                                                        r124 = r12;
                                                                        list6 = list4;
                                                                        if (list6.isEmpty()) {
                                                                        }
                                                                        mutex2 = mutex8;
                                                                        r1 = r85;
                                                                        r144 = r24;
                                                                        r32 = i19;
                                                                        r126 = r124;
                                                                    } else {
                                                                        DatabaseHelper databaseHelper = DatabaseHelper.INSTANCE;
                                                                        List list7 = list2;
                                                                        list5 = list2;
                                                                        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list7, 10));
                                                                        Iterator it = list7.iterator();
                                                                        while (it.hasNext()) {
                                                                            arrayList3.add(Boxing.boxLong(((ProfileDTO) it.next()).getId()));
                                                                        }
                                                                        c12161.L$0 = r87;
                                                                        c12161.L$1 = mutex2;
                                                                        c12161.L$2 = r14;
                                                                        c12161.L$3 = SpillingKt.nullOutSpilledVariable(str9);
                                                                        c12161.L$4 = SpillingKt.nullOutSpilledVariable(str7);
                                                                        c12161.L$5 = SpillingKt.nullOutSpilledVariable(apiService2);
                                                                        c12161.L$6 = response;
                                                                        c12161.L$7 = SpillingKt.nullOutSpilledVariable(list);
                                                                        c12161.L$8 = SpillingKt.nullOutSpilledVariable(list5);
                                                                        c12161.L$9 = list3;
                                                                        c12161.Z$0 = z4;
                                                                        c12161.I$0 = i16;
                                                                        c12161.I$1 = i15;
                                                                        c12161.J$0 = r12;
                                                                        c12161.I$2 = i10;
                                                                        c12161.I$3 = i37;
                                                                        c12161.I$4 = z6 ? 1 : 0;
                                                                        list4 = list3;
                                                                        c12161.I$5 = 1;
                                                                        c12161.label = 6;
                                                                        Object objDeleteProfiles = databaseHelper.deleteProfiles(arrayList3, c12161);
                                                                        obj5 = obj10;
                                                                        if (objDeleteProfiles == obj5) {
                                                                            return obj5;
                                                                        }
                                                                        i22 = z6 ? 1 : 0;
                                                                        r23 = r14;
                                                                        mutex9 = mutex2;
                                                                        response3 = response;
                                                                        obj6 = objDeleteProfiles;
                                                                        i18 = i37;
                                                                        i20 = i10;
                                                                        i23 = 1;
                                                                        str12 = str9;
                                                                        apiService3 = apiService2;
                                                                        r86 = r87;
                                                                        r125 = r12;
                                                                        try {
                                                                            i21 = (((Boolean) obj6).booleanValue() || i23 == 0) ? 0 : 1;
                                                                            str9 = str12;
                                                                            apiService2 = apiService3;
                                                                            response2 = response3;
                                                                            i19 = i22;
                                                                            r53 = r23;
                                                                            mutex8 = mutex9;
                                                                            r85 = r86;
                                                                            r124 = r125;
                                                                            list6 = list4;
                                                                            try {
                                                                                try {
                                                                                } catch (Throwable th16) {
                                                                                    th = th16;
                                                                                    r24 = r53;
                                                                                }
                                                                            } catch (CancellationException e7) {
                                                                                throw e7;
                                                                            }
                                                                        } catch (CancellationException e8) {
                                                                            throw e8;
                                                                        } catch (Throwable th17) {
                                                                            th = th17;
                                                                            r32 = i22;
                                                                            r1 = r86;
                                                                            r144 = r23;
                                                                            mutex2 = mutex9;
                                                                            r126 = r125;
                                                                        }
                                                                        if (list6.isEmpty()) {
                                                                            i17 = i21;
                                                                            response = response2;
                                                                            mutex2 = mutex8;
                                                                            r13 = r85;
                                                                            r145 = r53;
                                                                            r34 = i19;
                                                                            r127 = r124;
                                                                            if (i17 == 0) {
                                                                            }
                                                                            r87 = r16;
                                                                        } else {
                                                                            Object obj11 = obj5;
                                                                            DatabaseHelper databaseHelper2 = DatabaseHelper.INSTANCE;
                                                                            c12161.L$0 = r85;
                                                                            c12161.L$1 = mutex8;
                                                                            c12161.L$2 = r53;
                                                                            r24 = r53;
                                                                            try {
                                                                                c12161.L$3 = SpillingKt.nullOutSpilledVariable(str9);
                                                                                c12161.L$4 = SpillingKt.nullOutSpilledVariable(str7);
                                                                                c12161.L$5 = SpillingKt.nullOutSpilledVariable(apiService2);
                                                                                c12161.L$6 = response2;
                                                                                c12161.L$7 = SpillingKt.nullOutSpilledVariable(list);
                                                                                c12161.L$8 = SpillingKt.nullOutSpilledVariable(list5);
                                                                                c12161.L$9 = SpillingKt.nullOutSpilledVariable(list6);
                                                                                c12161.Z$0 = z4;
                                                                                c12161.I$0 = i16;
                                                                                c12161.I$1 = i15;
                                                                                c12161.J$0 = r124;
                                                                                c12161.I$2 = i20;
                                                                                c12161.I$3 = i18;
                                                                                c12161.I$4 = i19;
                                                                                c12161.I$5 = i21;
                                                                                c12161.label = 7;
                                                                                objInsertProfiles = databaseHelper2.insertProfiles(list6, c12161);
                                                                            } catch (Throwable th18) {
                                                                                th = th18;
                                                                                mutex2 = mutex8;
                                                                                r1 = r85;
                                                                                r144 = r24;
                                                                                r32 = i19;
                                                                                r126 = r124;
                                                                            }
                                                                            if (objInsertProfiles == obj11) {
                                                                                return obj11;
                                                                            }
                                                                            i24 = i21;
                                                                            obj7 = objInsertProfiles;
                                                                            response4 = response2;
                                                                            mutex2 = mutex8;
                                                                            r15 = r85;
                                                                            r146 = r24;
                                                                            i25 = i19;
                                                                            r128 = r124;
                                                                            try {
                                                                                i17 = (((Boolean) obj7).booleanValue() || i24 == 0) ? 0 : 1;
                                                                                response = response4;
                                                                                r13 = r15;
                                                                                r34 = i25;
                                                                                r127 = r128;
                                                                                r145 = r146;
                                                                                if (i17 == 0) {
                                                                                    ?? Edit2 = r13.edit();
                                                                                    Edit2.putString(str10, INSTANCE.syncWatermark(response));
                                                                                    String str16 = response.headers().get("ETag");
                                                                                    String str17 = str6;
                                                                                    if (str16 != null) {
                                                                                        Edit2.putString(str17, str16);
                                                                                    } else {
                                                                                        Edit2.remove(str17);
                                                                                    }
                                                                                    Edit2.putLong(str11, r127);
                                                                                    Edit2.apply();
                                                                                    r16 = r13;
                                                                                    r3 = r34;
                                                                                    r12 = r127;
                                                                                    r14 = r145;
                                                                                } else {
                                                                                    r145.element = false;
                                                                                    r16 = r13;
                                                                                    r3 = r34;
                                                                                    r12 = r127;
                                                                                    r14 = r145;
                                                                                }
                                                                            } catch (Throwable th19) {
                                                                                th = th19;
                                                                                r1 = r15;
                                                                                r32 = i25;
                                                                                r126 = r128;
                                                                                r144 = r146;
                                                                                FileLog.m992e(th);
                                                                                r144.element = false;
                                                                                r16 = r1;
                                                                                r3 = r32;
                                                                                r12 = r126;
                                                                                r14 = r144;
                                                                            }
                                                                            r87 = r16;
                                                                        }
                                                                        mutex2 = mutex8;
                                                                        r1 = r85;
                                                                        r144 = r24;
                                                                        r32 = i19;
                                                                        r126 = r124;
                                                                    }
                                                                    FileLog.m992e(th);
                                                                    r144.element = false;
                                                                    r16 = r1;
                                                                    r3 = r32;
                                                                    r12 = r126;
                                                                    r14 = r144;
                                                                    r87 = r16;
                                                                }
                                                            }
                                                            r1 = r87;
                                                            r32 = r33;
                                                            r126 = r12;
                                                            r144 = r14;
                                                            FileLog.m992e(th);
                                                            r144.element = false;
                                                            r16 = r1;
                                                            r3 = r32;
                                                            r12 = r126;
                                                            r14 = r144;
                                                            r87 = r16;
                                                        }
                                                    }
                                                } else {
                                                    str6 = str5;
                                                    c12161.L$0 = r87;
                                                    c12161.L$1 = mutex2;
                                                    c12161.L$2 = r14;
                                                    c12161.L$3 = SpillingKt.nullOutSpilledVariable(string);
                                                    c12161.L$4 = SpillingKt.nullOutSpilledVariable(string2);
                                                    c12161.L$5 = SpillingKt.nullOutSpilledVariable(apiService);
                                                    c12161.Z$0 = z3;
                                                    c12161.I$0 = i6;
                                                    c12161.I$1 = i7;
                                                    c12161.J$0 = r12;
                                                    c12161.I$2 = i8;
                                                    c12161.I$3 = i9;
                                                    c12161.I$4 = 1;
                                                    c12161.label = 5;
                                                    Object updates = apiService.getUpdates(string, string2, c12161);
                                                    if (updates != coroutine_suspended) {
                                                        str7 = string2;
                                                        i10 = i8;
                                                        str8 = string;
                                                        i11 = i9;
                                                        obj3 = updates;
                                                        i12 = i7;
                                                        i13 = 1;
                                                        r84 = r87;
                                                        r123 = r12;
                                                        r143 = r14;
                                                        response = (Response) obj3;
                                                        r87 = r84;
                                                        r12 = r123;
                                                        r14 = r143;
                                                        int i342 = i13;
                                                        int i352 = i11;
                                                        r33 = i342;
                                                        boolean z92 = z3;
                                                        i15 = i12;
                                                        i16 = i6;
                                                        z4 = z92;
                                                        str9 = str8;
                                                        apiService2 = apiService;
                                                        if (response.code() != 304) {
                                                        }
                                                    }
                                                }
                                            }
                                            mutex6 = mutex2;
                                            if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                                if (r3 != 0) {
                                                    ?? Edit3 = r87.edit();
                                                    if (r14.element) {
                                                        Edit3.remove(str);
                                                    } else {
                                                        Edit3.putLong(str, r12);
                                                    }
                                                    Edit3.apply();
                                                }
                                                z7 = r14.element;
                                            } else {
                                                z7 = true;
                                            }
                                            break;
                                        } else {
                                            DatabaseHelper databaseHelper3 = DatabaseHelper.INSTANCE;
                                            Object objBody = response5.body();
                                            str3 = PROFILES_SYNC_TIME_KEY;
                                            try {
                                                List<BoostySubscriberDTO> list8 = (List) objBody;
                                                c12161.L$0 = sharedPreferences5;
                                                c12161.L$1 = mutex10;
                                                c12161.L$2 = booleanRef3;
                                                mutex4 = mutex10;
                                                c12161.L$3 = SpillingKt.nullOutSpilledVariable(response5);
                                                c12161.Z$0 = z2;
                                                c12161.I$0 = i;
                                                c12161.I$1 = i2;
                                                c12161.J$0 = j;
                                                c12161.I$2 = i3;
                                                c12161.I$3 = i4;
                                                c12161.I$4 = i26;
                                                c12161.label = 3;
                                                objInsertBoostySubscribers = databaseHelper3.insertBoostySubscribers(list8, c12161);
                                                i27 = i26;
                                                booleanRef4 = booleanRef3;
                                                sharedPreferences6 = sharedPreferences5;
                                                j2 = j;
                                                if (objInsertBoostySubscribers == coroutine_suspended) {
                                                }
                                                if (((Boolean) objInsertBoostySubscribers).booleanValue()) {
                                                    booleanRef4.element = false;
                                                    i14 = i27;
                                                    r52 = booleanRef4;
                                                    r82 = sharedPreferences6;
                                                    r11 = j2;
                                                } else {
                                                    SharedPreferences.Editor editorEdit = sharedPreferences6.edit();
                                                    editorEdit.putLong(BOOSTY_SYNC_TIME_KEY, j2);
                                                    editorEdit.apply();
                                                    i14 = i27;
                                                    r52 = booleanRef4;
                                                    r82 = sharedPreferences6;
                                                    r11 = j2;
                                                }
                                            } catch (Throwable th20) {
                                                th = th20;
                                                mutex4 = mutex10;
                                                i5 = i26;
                                                r5 = booleanRef3;
                                                r8 = sharedPreferences5;
                                                r112 = j;
                                                FileLog.m992e(th);
                                                r5.element = false;
                                                i14 = i5;
                                                r52 = r5;
                                                r82 = r8;
                                                r11 = r112;
                                                break;
                                            }
                                            i9 = i4;
                                            i8 = i3;
                                            i6 = i;
                                            r14 = r52;
                                            i7 = i2;
                                            r12 = r11;
                                            z3 = z2;
                                            mutex2 = mutex4;
                                            r3 = i14;
                                            r87 = r82;
                                            if (i9 != 0) {
                                            }
                                            mutex6 = mutex2;
                                            if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                            }
                                        }
                                    }
                                } else {
                                    str3 = PROFILES_SYNC_TIME_KEY;
                                    str = SYNC_FAILURE_TIME_KEY;
                                    r87 = sharedPreferences4;
                                    i8 = i30;
                                    i9 = i31;
                                    mutex2 = mutex6;
                                    r3 = 0;
                                    i7 = 0;
                                    z3 = z8;
                                    r12 = jCurrentTimeMillis;
                                    r14 = booleanRef5;
                                    if (i9 != 0) {
                                    }
                                    mutex6 = mutex2;
                                    if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                    }
                                }
                            }
                        }
                        Boolean boolBoxBoolean = Boxing.boxBoolean(z7);
                        mutex6.unlock(null);
                        return boolBoxBoolean;
                    } catch (Throwable th21) {
                        th = th21;
                        mutex6.unlock(null);
                        throw th;
                    }
                }
                return coroutine_suspended;
            case 1:
                int i38 = c12161.I$0;
                boolean z12 = c12161.Z$0;
                Mutex mutex13 = (Mutex) c12161.L$1;
                SharedPreferences sharedPreferences7 = (SharedPreferences) c12161.L$0;
                ResultKt.throwOnFailure(obj7);
                mutex6 = mutex13;
                z8 = z12;
                sharedPreferences4 = sharedPreferences7;
                i6 = i38;
                apiClient = ApiClient.INSTANCE;
                if (apiClient.getRequestsEnabled$TMessagesProj()) {
                }
                Boolean boolBoxBoolean2 = Boxing.boxBoolean(z7);
                mutex6.unlock(null);
                return boolBoxBoolean2;
            case 2:
                int i39 = c12161.I$4;
                i4 = c12161.I$3;
                i3 = c12161.I$2;
                long j3 = c12161.J$0;
                i2 = c12161.I$1;
                i = c12161.I$0;
                z2 = c12161.Z$0;
                Ref.BooleanRef booleanRef6 = (Ref.BooleanRef) c12161.L$2;
                Mutex mutex14 = (Mutex) c12161.L$1;
                SharedPreferences sharedPreferences8 = (SharedPreferences) c12161.L$0;
                ResultKt.throwOnFailure(obj7);
                boostySubscribers = obj7;
                str2 = "profilesEtag";
                booleanRef3 = booleanRef6;
                str4 = "lastSyncTimestamp";
                mutex10 = mutex14;
                str = SYNC_FAILURE_TIME_KEY;
                sharedPreferences5 = sharedPreferences8;
                i26 = i39;
                j = j3;
                response5 = (Response) boostySubscribers;
                if (response5.isSuccessful()) {
                }
                mutex4 = mutex10;
                str3 = PROFILES_SYNC_TIME_KEY;
                booleanRef3.element = false;
                i14 = i26;
                r52 = booleanRef3;
                r82 = sharedPreferences5;
                r11 = j;
                i9 = i4;
                i8 = i3;
                i6 = i;
                r14 = r52;
                i7 = i2;
                r12 = r11;
                z3 = z2;
                mutex2 = mutex4;
                r3 = i14;
                r87 = r82;
                if (i9 != 0) {
                }
                mutex6 = mutex2;
                if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                }
                break;
            case 3:
                int i40 = c12161.I$4;
                i4 = c12161.I$3;
                i3 = c12161.I$2;
                long j4 = c12161.J$0;
                i2 = c12161.I$1;
                i = c12161.I$0;
                z2 = c12161.Z$0;
                Ref.BooleanRef booleanRef7 = (Ref.BooleanRef) c12161.L$2;
                Mutex mutex15 = (Mutex) c12161.L$1;
                SharedPreferences sharedPreferences9 = (SharedPreferences) c12161.L$0;
                ResultKt.throwOnFailure(obj7);
                str = SYNC_FAILURE_TIME_KEY;
                sharedPreferences6 = sharedPreferences9;
                mutex4 = mutex15;
                str3 = PROFILES_SYNC_TIME_KEY;
                objInsertBoostySubscribers = obj7;
                str2 = "profilesEtag";
                booleanRef4 = booleanRef7;
                str4 = "lastSyncTimestamp";
                i27 = i40;
                j2 = j4;
                if (((Boolean) objInsertBoostySubscribers).booleanValue()) {
                }
                i9 = i4;
                i8 = i3;
                i6 = i;
                r14 = r52;
                i7 = i2;
                r12 = r11;
                z3 = z2;
                mutex2 = mutex4;
                r3 = i14;
                r87 = r82;
                if (i9 != 0) {
                }
                mutex6 = mutex2;
                if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                }
                break;
            case 4:
                int i41 = c12161.I$4;
                int i42 = c12161.I$3;
                int i43 = c12161.I$2;
                long j5 = c12161.J$0;
                i12 = c12161.I$1;
                i6 = c12161.I$0;
                z3 = c12161.Z$0;
                ApiService apiService5 = (ApiService) c12161.L$5;
                String str18 = (String) c12161.L$4;
                String str19 = (String) c12161.L$3;
                Ref.BooleanRef booleanRef8 = (Ref.BooleanRef) c12161.L$2;
                Mutex mutex16 = (Mutex) c12161.L$1;
                SharedPreferences sharedPreferences10 = (SharedPreferences) c12161.L$0;
                ResultKt.throwOnFailure(obj7);
                str3 = PROFILES_SYNC_TIME_KEY;
                apiService = apiService5;
                r142 = booleanRef8;
                str = SYNC_FAILURE_TIME_KEY;
                r83 = sharedPreferences10;
                str7 = str18;
                mutex2 = mutex16;
                obj4 = obj7;
                str6 = "profilesEtag";
                i13 = i41;
                i11 = i42;
                str4 = "lastSyncTimestamp";
                i10 = i43;
                str8 = str19;
                r122 = j5;
                response = (Response) obj4;
                r87 = r83;
                r12 = r122;
                r14 = r142;
                int i3422 = i13;
                int i3522 = i11;
                r33 = i3422;
                boolean z922 = z3;
                i15 = i12;
                i16 = i6;
                z4 = z922;
                str9 = str8;
                apiService2 = apiService;
                if (response.code() != 304) {
                }
                Boolean boolBoxBoolean22 = Boxing.boxBoolean(z7);
                mutex6.unlock(null);
                return boolBoxBoolean22;
            case 5:
                int i44 = c12161.I$4;
                int i45 = c12161.I$3;
                int i46 = c12161.I$2;
                long j6 = c12161.J$0;
                i12 = c12161.I$1;
                i6 = c12161.I$0;
                z3 = c12161.Z$0;
                ApiService apiService6 = (ApiService) c12161.L$5;
                String str20 = (String) c12161.L$4;
                String str21 = (String) c12161.L$3;
                Ref.BooleanRef booleanRef9 = (Ref.BooleanRef) c12161.L$2;
                Mutex mutex17 = (Mutex) c12161.L$1;
                SharedPreferences sharedPreferences11 = (SharedPreferences) c12161.L$0;
                ResultKt.throwOnFailure(obj7);
                str3 = PROFILES_SYNC_TIME_KEY;
                apiService = apiService6;
                r143 = booleanRef9;
                str = SYNC_FAILURE_TIME_KEY;
                r84 = sharedPreferences11;
                str7 = str20;
                mutex2 = mutex17;
                obj3 = obj7;
                str6 = "profilesEtag";
                i13 = i44;
                i11 = i45;
                str4 = "lastSyncTimestamp";
                i10 = i46;
                str8 = str21;
                r123 = j6;
                response = (Response) obj3;
                r87 = r84;
                r12 = r123;
                r14 = r143;
                int i34222 = i13;
                int i35222 = i11;
                r33 = i34222;
                boolean z9222 = z3;
                i15 = i12;
                i16 = i6;
                z4 = z9222;
                str9 = str8;
                apiService2 = apiService;
                if (response.code() != 304) {
                }
                Boolean boolBoxBoolean222 = Boxing.boxBoolean(z7);
                mutex6.unlock(null);
                return boolBoxBoolean222;
            case 6:
                int i47 = c12161.I$5;
                int i48 = c12161.I$4;
                int i49 = c12161.I$3;
                int i50 = c12161.I$2;
                long j7 = c12161.J$0;
                i15 = c12161.I$1;
                i16 = c12161.I$0;
                z4 = c12161.Z$0;
                List<ProfileDTO> list9 = (List) c12161.L$9;
                List list10 = (List) c12161.L$8;
                list = (List) c12161.L$7;
                Response<?> response6 = (Response) c12161.L$6;
                ApiService apiService7 = (ApiService) c12161.L$5;
                String str22 = (String) c12161.L$4;
                String str23 = (String) c12161.L$3;
                Ref.BooleanRef booleanRef10 = (Ref.BooleanRef) c12161.L$2;
                Mutex mutex18 = (Mutex) c12161.L$1;
                SharedPreferences sharedPreferences12 = (SharedPreferences) c12161.L$0;
                try {
                    ResultKt.throwOnFailure(obj7);
                    obj5 = coroutine_suspended;
                    str12 = str23;
                    str11 = PROFILES_SYNC_TIME_KEY;
                    i22 = i48;
                    obj6 = obj7;
                    mutex9 = mutex18;
                    str6 = "profilesEtag";
                    response3 = response6;
                    r23 = booleanRef10;
                    str10 = "lastSyncTimestamp";
                    str = SYNC_FAILURE_TIME_KEY;
                    r86 = sharedPreferences12;
                    list4 = list9;
                    i23 = i47;
                    apiService3 = apiService7;
                    str7 = str22;
                    list5 = list10;
                    i18 = i49;
                    i20 = i50;
                    r125 = j7;
                    break;
                } catch (CancellationException e9) {
                    throw e9;
                } catch (Throwable th22) {
                    th = th22;
                    r32 = i48;
                    str = SYNC_FAILURE_TIME_KEY;
                    r126 = j7;
                    r144 = booleanRef10;
                    mutex2 = mutex18;
                    r1 = sharedPreferences12;
                }
                if (((Boolean) obj6).booleanValue()) {
                    str9 = str12;
                    apiService2 = apiService3;
                    response2 = response3;
                    i19 = i22;
                    r53 = r23;
                    mutex8 = mutex9;
                    r85 = r86;
                    r124 = r125;
                    list6 = list4;
                    if (list6.isEmpty()) {
                    }
                    mutex2 = mutex8;
                    r1 = r85;
                    r144 = r24;
                    r32 = i19;
                    r126 = r124;
                    FileLog.m992e(th);
                    r144.element = false;
                    r16 = r1;
                    r3 = r32;
                    r12 = r126;
                    r14 = r144;
                    r87 = r16;
                    mutex6 = mutex2;
                    if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                    }
                }
                Boolean boolBoxBoolean2222 = Boxing.boxBoolean(z7);
                mutex6.unlock(null);
                return boolBoxBoolean2222;
            case 7:
                i24 = c12161.I$5;
                i29 = c12161.I$4;
                long j8 = c12161.J$0;
                response4 = (Response) c12161.L$6;
                booleanRef2 = (Ref.BooleanRef) c12161.L$2;
                mutex2 = (Mutex) c12161.L$1;
                sharedPreferences3 = (SharedPreferences) c12161.L$0;
                try {
                    ResultKt.throwOnFailure(obj7);
                    str6 = "profilesEtag";
                    str10 = "lastSyncTimestamp";
                    str11 = PROFILES_SYNC_TIME_KEY;
                    str = SYNC_FAILURE_TIME_KEY;
                    r15 = sharedPreferences3;
                    i25 = i29;
                    r128 = j8;
                    r146 = booleanRef2;
                } catch (Throwable th23) {
                    th = th23;
                    str = SYNC_FAILURE_TIME_KEY;
                    r1 = sharedPreferences3;
                    r32 = i29;
                    r126 = j8;
                    r144 = booleanRef2;
                    break;
                }
                if (((Boolean) obj7).booleanValue()) {
                    i17 = (((Boolean) obj7).booleanValue() || i24 == 0) ? 0 : 1;
                    response = response4;
                    r13 = r15;
                    r34 = i25;
                    r127 = r128;
                    r145 = r146;
                    if (i17 == 0) {
                    }
                    r87 = r16;
                    mutex6 = mutex2;
                    if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                    }
                }
                Boolean boolBoxBoolean22222 = Boxing.boxBoolean(z7);
                mutex6.unlock(null);
                return boolBoxBoolean22222;
            default:
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    private final String syncWatermark(Response<?> response) {
        String str = response.headers().get(SYNC_TIMESTAMP_HEADER);
        if (str != null) {
            try {
                return Instant.parse(str).toString();
            } catch (DateTimeParseException e) {
                FileLog.m992e(e);
            }
        }
        return Instant.now().toString();
    }

    public static /* synthetic */ void resetSyncState$default(SharedPreferences sharedPreferences, int i, Object obj) {
        if ((i & 1) != 0) {
            sharedPreferences = ExteraConfig.getPreferences();
        }
        resetSyncState(sharedPreferences);
    }

    @JvmStatic
    public static final void scheduleWorker() {
        try {
            WorkManager.INSTANCE.getInstance(ApplicationLoader.applicationContext).enqueueUniquePeriodicWork("api_sync_work", ExistingPeriodicWorkPolicy.UPDATE, new PeriodicWorkRequest.Builder(SyncWorker.class, 6L, TimeUnit.HOURS).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).setRequiresBatteryNotLow(true).build()).setBackoffCriteria(BackoffPolicy.LINEAR, FAILURE_BACKOFF, TimeUnit.MILLISECONDS).build());
        } catch (Throwable th) {
            FileLog.m992e(th);
        }
    }
}
