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
import j$.time.Duration;
import j$.time.Instant;
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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0013H\u0007J\u001c\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018H\u0007J\"\u0010\u0019\u001a\u00020\u00182\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018H\u0086@¢\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002J\u0012\u0010\u001e\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u0016H\u0007J\b\u0010\u001f\u001a\u00020\u0013H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/exteragram/messenger/api/ApiController;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "scope", "Lkotlinx/coroutines/CoroutineScope;", "started", "Ljava/util/concurrent/atomic/AtomicBoolean;", "syncMutex", "Lkotlinx/coroutines/sync/Mutex;", "PROFILES_SYNC_TIME_KEY", _UrlKt.FRAGMENT_ENCODE_SET, "BOOSTY_SYNC_TIME_KEY", "SYNC_FAILURE_TIME_KEY", "PROFILES_SYNC_INTERVAL", _UrlKt.FRAGMENT_ENCODE_SET, "BOOSTY_SYNC_INTERVAL", "FAILURE_BACKOFF", "init", _UrlKt.FRAGMENT_ENCODE_SET, "sync", "prefs", "Landroid/content/SharedPreferences;", "force", _UrlKt.FRAGMENT_ENCODE_SET, "performSync", "(Landroid/content/SharedPreferences;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "elapsedSince", "now", "timestamp", "resetSyncState", "scheduleWorker", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nApiController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiController.kt\ncom/exteragram/messenger/api/ApiController\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,223:1\n116#2,8:224\n125#2,2:295\n41#3,12:232\n41#3,12:244\n41#3,6:270\n47#3,6:277\n41#3,12:283\n41#3,12:297\n3347#4,10:256\n1586#4:266\n1661#4,3:267\n1#5:276\n364#6:309\n*S KotlinDebug\n*F\n+ 1 ApiController.kt\ncom/exteragram/messenger/api/ApiController\n*L\n83#1:224,8\n83#1:295,2\n105#1:232,12\n135#1:244,12\n152#1:270,6\n152#1:277,6\n174#1:283,12\n192#1:297,12\n143#1:256,10\n145#1:266\n145#1:267,3\n209#1:309\n*E\n"})
public final class ApiController {
    private static final String BOOSTY_SYNC_TIME_KEY = "lastBoostySyncTime";
    private static final String PROFILES_SYNC_TIME_KEY = "lastProfilesSyncTime";
    private static final String SYNC_FAILURE_TIME_KEY = "lastSyncFailureTime";
    public static final ApiController INSTANCE = new ApiController();
    private static final CoroutineScope scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
    private static final AtomicBoolean started = new AtomicBoolean(false);
    private static final Mutex syncMutex = MutexKt.Mutex$default(false, 1, null);
    private static final long PROFILES_SYNC_INTERVAL = Duration.ofMinutes(10).toMillis();
    private static final long BOOSTY_SYNC_INTERVAL = Duration.ofMinutes(40).toMillis();
    private static final long FAILURE_BACKOFF = Duration.ofMinutes(5).toMillis();

    /* JADX INFO: renamed from: com.exteragram.messenger.api.ApiController$performSync$1 */
    @Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.ApiController", m766f = "ApiController.kt", m767i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6}, m768l = {229, 102, 104, 129, 131, 145, 148}, m769m = "performSync", m770n = {"prefs", "$this$withLock_u24default$iv", "force", "$i$f$withLock", "prefs", "$this$withLock_u24default$iv", "success", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "boostyResponse", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", "response", "profiles", "profilesToDelete", "profilesToInsert", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "stored", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", "response", "profiles", "profilesToDelete", "profilesToInsert", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "profilesDue", "attempted", "stored"}, m771s = {"L$0", "L$1", "Z$0", "I$0", "L$0", "L$1", "L$2", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "L$0", "L$1", "L$2", "L$3", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "I$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "I$5"}, m772v = 1)
    public static final class C09941 extends ContinuationImpl {
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

        public C09941(Continuation<? super C09941> continuation) {
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
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C09951(prefs, force, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.ApiController$sync$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.ApiController$sync$1", m766f = "ApiController.kt", m767i = {}, m768l = {79}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C09951 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $force;
        final /* synthetic */ SharedPreferences $prefs;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C09951(SharedPreferences sharedPreferences, boolean z, Continuation<? super C09951> continuation) {
            super(2, continuation);
            this.$prefs = sharedPreferences;
            this.$force = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09951(this.$prefs, this.$force, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C09951) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
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
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x01f9: MOVE (r8 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY]), block:B:42:0x01ed */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x0156: MOVE (r15 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY]), block:B:32:0x0155 */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x01f5: MOVE (r7 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY]), block:B:42:0x01ed */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x0158: MOVE (r11 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:32:0x0155 */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x015f: MOVE (r11 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:34:0x015f */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x01f1: MOVE (r16 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:42:0x01ed */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x015a: MOVE (r1 I:??[OBJECT, ARRAY]) = (r20 I:??[OBJECT, ARRAY]), block:B:32:0x0155 */
    /* JADX WARN: Removed duplicated region for block: B:101:0x035e A[Catch: all -> 0x0369, CancellationException -> 0x036c, TryCatch #2 {all -> 0x0369, blocks: (B:99:0x0356, B:101:0x035e, B:106:0x0371, B:96:0x0337, B:112:0x0389), top: B:258:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0371 A[Catch: all -> 0x0369, CancellationException -> 0x036c, TryCatch #2 {all -> 0x0369, blocks: (B:99:0x0356, B:101:0x035e, B:106:0x0371, B:96:0x0337, B:112:0x0389), top: B:258:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0613 A[Catch: CancellationException -> 0x007e, all -> 0x0681, TRY_LEAVE, TryCatch #19 {all -> 0x0681, blocks: (B:205:0x0609, B:207:0x0613), top: B:284:0x0609 }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0685  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x069e A[Catch: CancellationException -> 0x007e, all -> 0x0677, TryCatch #11 {all -> 0x0677, blocks: (B:214:0x0667, B:231:0x069e, B:233:0x06b1, B:235:0x06bd, B:236:0x06c2, B:237:0x06cb), top: B:270:0x0667 }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x06cb A[Catch: CancellationException -> 0x007e, all -> 0x0677, TRY_LEAVE, TryCatch #11 {all -> 0x0677, blocks: (B:214:0x0667, B:231:0x069e, B:233:0x06b1, B:235:0x06bd, B:236:0x06c2, B:237:0x06cb), top: B:270:0x0667 }] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x06e9 A[Catch: all -> 0x028d, TryCatch #26 {all -> 0x028d, blocks: (B:245:0x06e9, B:247:0x06f1, B:249:0x06fc, B:248:0x06f7, B:250:0x06ff, B:251:0x0701, B:242:0x06dc, B:243:0x06e6, B:53:0x026e, B:55:0x0276, B:62:0x0297, B:68:0x02ad, B:76:0x02c8), top: B:258:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0489 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x02d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0276 A[Catch: all -> 0x028d, TryCatch #26 {all -> 0x028d, blocks: (B:245:0x06e9, B:247:0x06f1, B:249:0x06fc, B:248:0x06f7, B:250:0x06ff, B:251:0x0701, B:242:0x06dc, B:243:0x06e6, B:53:0x026e, B:55:0x0276, B:62:0x0297, B:68:0x02ad, B:76:0x02c8), top: B:258:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Type inference failed for: r0v26, types: [android.content.SharedPreferences$Editor] */
    /* JADX WARN: Type inference failed for: r0v49, types: [android.content.SharedPreferences$Editor] */
    /* JADX WARN: Type inference failed for: r11v19, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v43 */
    /* JADX WARN: Type inference failed for: r11v44 */
    /* JADX WARN: Type inference failed for: r11v45 */
    /* JADX WARN: Type inference failed for: r11v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r11v52 */
    /* JADX WARN: Type inference failed for: r11v53 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v73 */
    /* JADX WARN: Type inference failed for: r11v74 */
    /* JADX WARN: Type inference failed for: r11v75 */
    /* JADX WARN: Type inference failed for: r11v76 */
    /* JADX WARN: Type inference failed for: r11v79 */
    /* JADX WARN: Type inference failed for: r11v80 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17, types: [long] */
    /* JADX WARN: Type inference failed for: r12v18, types: [long] */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v3 */
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
    /* JADX WARN: Type inference failed for: r12v4, types: [long] */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v41 */
    /* JADX WARN: Type inference failed for: r12v42 */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v18 */
    /* JADX WARN: Type inference failed for: r15v20, types: [kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r15v21, types: [kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v40 */
    /* JADX WARN: Type inference failed for: r15v43 */
    /* JADX WARN: Type inference failed for: r15v44 */
    /* JADX WARN: Type inference failed for: r15v45 */
    /* JADX WARN: Type inference failed for: r15v46 */
    /* JADX WARN: Type inference failed for: r15v47 */
    /* JADX WARN: Type inference failed for: r15v48 */
    /* JADX WARN: Type inference failed for: r15v49 */
    /* JADX WARN: Type inference failed for: r15v50 */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.lang.Object, kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r16v32 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v20, types: [android.content.SharedPreferences] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v10 */
    /* JADX WARN: Type inference failed for: r24v11 */
    /* JADX WARN: Type inference failed for: r24v12 */
    /* JADX WARN: Type inference failed for: r24v15 */
    /* JADX WARN: Type inference failed for: r24v16 */
    /* JADX WARN: Type inference failed for: r24v17 */
    /* JADX WARN: Type inference failed for: r24v18 */
    /* JADX WARN: Type inference failed for: r24v4 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v10 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r26v9 */
    /* JADX WARN: Type inference failed for: r2v25, types: [android.content.SharedPreferences$Editor] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30, types: [android.content.SharedPreferences] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.content.SharedPreferences, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.content.SharedPreferences, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26, types: [kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v3, types: [kotlin.jvm.internal.Ref$BooleanRef] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v35 */
    /* JADX WARN: Type inference failed for: r8v36 */
    /* JADX WARN: Type inference failed for: r8v39 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v40 */
    /* JADX WARN: Type inference failed for: r8v41 */
    /* JADX WARN: Type inference failed for: r8v42 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v45 */
    /* JADX WARN: Type inference failed for: r8v46 */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v48 */
    /* JADX WARN: Type inference failed for: r8v49 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v50 */
    /* JADX WARN: Type inference failed for: r8v51 */
    /* JADX WARN: Type inference failed for: r8v52 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
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
        C09941 c09941;
        String str;
        String str2;
        SharedPreferences sharedPreferences2;
        SharedPreferences sharedPreferences3;
        String str3;
        Object obj;
        Object obj2;
        String str4;
        Object obj3;
        ?? r8;
        int i;
        Ref.BooleanRef booleanRef;
        Ref.BooleanRef booleanRef2;
        Mutex mutex;
        Mutex mutex2;
        SharedPreferences sharedPreferences4;
        SharedPreferences sharedPreferences5;
        ?? r1;
        ?? r15;
        Mutex mutex3;
        boolean z2;
        int i2;
        int i3;
        int i4;
        int i5;
        ?? r12;
        int i6;
        ?? r82;
        int i7;
        int i8;
        int i9;
        ?? r3;
        int i10;
        String string;
        String str5;
        String string2;
        ApiService apiService;
        String str6;
        int i11;
        Object obj4;
        ApiService apiService2;
        int i12;
        int i13;
        ?? r5;
        Object obj5;
        ?? r52;
        SharedPreferences sharedPreferences6;
        ?? r11;
        ?? r83;
        Object obj6;
        ?? r122;
        Object obj7;
        ?? r84;
        Response response;
        ?? r85;
        String str7;
        int i14;
        boolean z3;
        int i15;
        int i16;
        List list;
        String str8;
        String str9;
        ?? r13;
        int i17;
        List<ProfileDTO> list2;
        List list3;
        ?? r132;
        ?? r6;
        int i18;
        int i19;
        int i20;
        String str10;
        int i21;
        List list4;
        Object obj8;
        ApiService apiService3;
        int i22;
        int i23;
        Object objDeleteProfiles;
        Object obj9;
        ?? r24;
        ?? r133;
        ?? r16;
        List list5;
        ApiService apiService4;
        int i24;
        List<ProfileDTO> list6;
        Response response2;
        Object obj10;
        String str11;
        ?? r123;
        Object obj11;
        ?? r86;
        ?? r242;
        ?? r152;
        ?? r124;
        Object obj12;
        ?? r26;
        Object obj13;
        ?? r53;
        ?? r243;
        ?? r153;
        Response response3;
        ?? r154;
        ?? r125;
        ?? r14;
        String str12;
        Object obj14;
        ?? r112;
        boolean z4;
        String str13;
        Object obj15;
        boolean z5;
        Mutex mutex4;
        int i25;
        SharedPreferences sharedPreferences7;
        boolean z6;
        int i26;
        int i27;
        SharedPreferences sharedPreferences8;
        ApiService apiService5;
        Object boostySubscribers;
        Mutex mutex5;
        long j;
        Ref.BooleanRef booleanRef3;
        SharedPreferences sharedPreferences9;
        Response response4;
        SharedPreferences sharedPreferences10;
        Object objInsertBoostySubscribers;
        long j2;
        Ref.BooleanRef booleanRef4;
        Mutex mutex6;
        if (continuation instanceof C09941) {
            c09941 = (C09941) continuation;
            int i28 = c09941.label;
            if ((i28 & Integer.MIN_VALUE) != 0) {
                c09941.label = i28 - Integer.MIN_VALUE;
            } else {
                c09941 = new C09941(continuation);
            }
        }
        Object obj16 = c09941.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i29 = c09941.label;
        ?? r54 = BOOSTY_SYNC_TIME_KEY;
        String str14 = PROFILES_SYNC_TIME_KEY;
        ?? r87 = SYNC_FAILURE_TIME_KEY;
        Object obj17 = null;
         = 0;
        ?? r113 = 0;
        ?? r114 = 0;
        try {
            try {
                try {
                    try {
                        try {
                            try {
                            } catch (Throwable th) {
                                th = th;
                                obj2 = str14;
                                r8 = r87;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            i = i29;
                            r1 = r54;
                            r15 = r87;
                            obj17 = obj17;
                            r12 = r12;
                        }
                    } catch (CancellationException e) {
                        throw e;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    r113.unlock(null);
                    throw th;
                }
            } catch (CancellationException e2) {
                throw e2;
            } catch (Throwable th4) {
                th = th4;
                i = i29;
                booleanRef2 = booleanRef;
                mutex2 = mutex;
                sharedPreferences5 = sharedPreferences4;
            }
        } catch (CancellationException e3) {
            e = e3;
        } catch (Throwable th5) {
            th = th5;
            str = "profilesEtag";
            str2 = "lastSyncTimestamp";
            sharedPreferences3 = sharedPreferences2;
            str3 = PROFILES_SYNC_TIME_KEY;
            obj2 = obj;
            str4 = SYNC_FAILURE_TIME_KEY;
            r8 = obj3;
        }
        switch (i29) {
            case 0:
                ResultKt.throwOnFailure(obj16);
                Mutex mutex7 = syncMutex;
                SharedPreferences sharedPreferences11 = sharedPreferences;
                c09941.L$0 = sharedPreferences11;
                c09941.L$1 = mutex7;
                z5 = z;
                c09941.Z$0 = z5;
                c09941.I$0 = 0;
                c09941.label = 1;
                if (mutex7.lock(null, c09941) != coroutine_suspended) {
                    mutex4 = mutex7;
                    i25 = 0;
                    sharedPreferences7 = sharedPreferences11;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (z5) {
                        z6 = z5;
                        i26 = i25;
                        if (INSTANCE.elapsedSince(jCurrentTimeMillis, sharedPreferences7.getLong(SYNC_FAILURE_TIME_KEY, 0L)) < FAILURE_BACKOFF) {
                            z4 = false;
                            r112 = mutex4;
                        }
                        Boolean boolBoxBoolean = Boxing.boxBoolean(z4);
                        r112.unlock(null);
                        return boolBoxBoolean;
                    }
                    z6 = z5;
                    i26 = i25;
                    i27 = (!z6 || INSTANCE.elapsedSince(jCurrentTimeMillis, sharedPreferences7.getLong(BOOSTY_SYNC_TIME_KEY, 0L)) >= BOOSTY_SYNC_INTERVAL) ? 1 : 0;
                    int i30 = (!z6 || INSTANCE.elapsedSince(jCurrentTimeMillis, sharedPreferences7.getLong(PROFILES_SYNC_TIME_KEY, 0L)) >= PROFILES_SYNC_INTERVAL) ? 1 : 0;
                    if (i27 != 0 && i30 == 0) {
                        z4 = true;
                        r112 = mutex4;
                        Boolean boolBoxBoolean2 = Boxing.boxBoolean(z4);
                        r112.unlock(null);
                        return boolBoxBoolean2;
                    }
                    Ref.BooleanRef booleanRef5 = new Ref.BooleanRef();
                    booleanRef5.element = true;
                    if (i27 != 0) {
                        z2 = z6;
                        str = "profilesEtag";
                        str2 = "lastSyncTimestamp";
                        str3 = PROFILES_SYNC_TIME_KEY;
                        str4 = SYNC_FAILURE_TIME_KEY;
                        i8 = i27;
                        i10 = i30;
                        r82 = booleanRef5;
                        i6 = i26;
                        i9 = 0;
                        i7 = 0;
                        r3 = sharedPreferences7;
                        obj17 = mutex4;
                        r12 = jCurrentTimeMillis;
                        if (i10 != 0) {
                        }
                        if (i9 != 0) {
                        }
                        z4 = r82.element;
                        r112 = obj17;
                        Boolean boolBoxBoolean22 = Boxing.boxBoolean(z4);
                        r112.unlock(null);
                        return boolBoxBoolean22;
                    }
                    try {
                        try {
                            apiService5 = ApiClient.INSTANCE.getApiService();
                            c09941.L$0 = sharedPreferences7;
                            c09941.L$1 = mutex4;
                            c09941.L$2 = booleanRef5;
                            z2 = z6;
                            try {
                                c09941.Z$0 = z2;
                                sharedPreferences8 = sharedPreferences7;
                                int i31 = i26;
                                try {
                                    c09941.I$0 = i31;
                                    i26 = i31;
                                } catch (Throwable th6) {
                                    th = th6;
                                    i26 = i31;
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                sharedPreferences8 = sharedPreferences7;
                                str = "profilesEtag";
                                str2 = "lastSyncTimestamp";
                                str3 = PROFILES_SYNC_TIME_KEY;
                                str4 = SYNC_FAILURE_TIME_KEY;
                                int i32 = i30;
                                i4 = i27;
                                i5 = i32;
                                obj2 = mutex4;
                                r114 = jCurrentTimeMillis;
                                r8 = booleanRef5;
                                i2 = i26;
                                sharedPreferences3 = sharedPreferences8;
                                i29 = 1;
                                i3 = 0;
                                try {
                                    FileLog.m898e(th);
                                    r8.element = false;
                                    obj6 = obj2;
                                    r83 = r8;
                                    r11 = r114;
                                    sharedPreferences6 = sharedPreferences3;
                                    i9 = i29;
                                    i10 = i5;
                                    i8 = i4;
                                    i7 = i3;
                                    i6 = i2;
                                    r3 = sharedPreferences6;
                                    r12 = r11;
                                    obj17 = obj6;
                                    r82 = r83;
                                    if (i10 != 0) {
                                    }
                                    if (i9 != 0) {
                                    }
                                    z4 = r82.element;
                                    r112 = obj17;
                                    Boolean boolBoxBoolean222 = Boxing.boxBoolean(z4);
                                    r112.unlock(null);
                                    return boolBoxBoolean222;
                                } catch (Throwable th8) {
                                    th = th8;
                                    r113 = obj2;
                                    r113.unlock(null);
                                    throw th;
                                }
                            }
                        } catch (Throwable th9) {
                            th = th9;
                            z2 = z6;
                        }
                        try {
                            c09941.I$1 = 0;
                            c09941.J$0 = jCurrentTimeMillis;
                            c09941.I$2 = i27;
                            c09941.I$3 = i30;
                            c09941.I$4 = 1;
                            c09941.label = 2;
                            boostySubscribers = apiService5.getBoostySubscribers(c09941);
                        } catch (Throwable th10) {
                            th = th10;
                            str = "profilesEtag";
                            str2 = "lastSyncTimestamp";
                            str3 = PROFILES_SYNC_TIME_KEY;
                            str4 = SYNC_FAILURE_TIME_KEY;
                            int i322 = i30;
                            i4 = i27;
                            i5 = i322;
                            obj2 = mutex4;
                            r114 = jCurrentTimeMillis;
                            r8 = booleanRef5;
                            i2 = i26;
                            sharedPreferences3 = sharedPreferences8;
                            i29 = 1;
                            i3 = 0;
                        }
                        if (boostySubscribers != coroutine_suspended) {
                            int i33 = i30;
                            i4 = i27;
                            i5 = i33;
                            str = "profilesEtag";
                            str3 = PROFILES_SYNC_TIME_KEY;
                            str4 = SYNC_FAILURE_TIME_KEY;
                            mutex5 = mutex4;
                            j = jCurrentTimeMillis;
                            booleanRef3 = booleanRef5;
                            i2 = i26;
                            sharedPreferences9 = sharedPreferences8;
                            i29 = 1;
                            i3 = 0;
                            try {
                                try {
                                    response4 = (Response) boostySubscribers;
                                } catch (CancellationException e4) {
                                    e = e4;
                                    mutex3 = mutex5;
                                    try {
                                        throw e;
                                    } catch (Throwable th11) {
                                        th = th11;
                                        r113 = mutex3;
                                        r113.unlock(null);
                                        throw th;
                                    }
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                sharedPreferences3 = sharedPreferences9;
                                str2 = "lastSyncTimestamp";
                                obj2 = mutex5;
                                r8 = booleanRef3;
                                r114 = j;
                            }
                            if (!response4.isSuccessful() && response4.body() != null) {
                                DatabaseHelper databaseHelper = DatabaseHelper.INSTANCE;
                                str2 = "lastSyncTimestamp";
                                try {
                                    List<BoostySubscriberDTO> list7 = (List) response4.body();
                                    c09941.L$0 = sharedPreferences9;
                                    c09941.L$1 = mutex5;
                                    c09941.L$2 = booleanRef3;
                                    sharedPreferences10 = sharedPreferences9;
                                    c09941.L$3 = SpillingKt.nullOutSpilledVariable(response4);
                                    c09941.Z$0 = z2;
                                    c09941.I$0 = i2;
                                    c09941.I$1 = i3;
                                    c09941.J$0 = j;
                                    c09941.I$2 = i4;
                                    c09941.I$3 = i5;
                                    c09941.I$4 = i29;
                                    c09941.label = 3;
                                    objInsertBoostySubscribers = databaseHelper.insertBoostySubscribers(list7, c09941);
                                    mutex6 = mutex5;
                                    booleanRef4 = booleanRef3;
                                    j2 = j;
                                    if (objInsertBoostySubscribers == coroutine_suspended) {
                                    }
                                    if (((Boolean) objInsertBoostySubscribers).booleanValue()) {
                                        booleanRef4.element = false;
                                        obj6 = mutex6;
                                        r83 = booleanRef4;
                                        r11 = j2;
                                        sharedPreferences6 = sharedPreferences10;
                                    } else {
                                        SharedPreferences.Editor editorEdit = sharedPreferences10.edit();
                                        editorEdit.putLong(BOOSTY_SYNC_TIME_KEY, j2);
                                        editorEdit.apply();
                                        obj6 = mutex6;
                                        r83 = booleanRef4;
                                        r11 = j2;
                                        sharedPreferences6 = sharedPreferences10;
                                    }
                                } catch (Throwable th13) {
                                    th = th13;
                                    sharedPreferences3 = sharedPreferences9;
                                    obj2 = mutex5;
                                    r8 = booleanRef3;
                                    r114 = j;
                                    FileLog.m898e(th);
                                    r8.element = false;
                                    obj6 = obj2;
                                    r83 = r8;
                                    r11 = r114;
                                    sharedPreferences6 = sharedPreferences3;
                                    break;
                                }
                                i9 = i29;
                                i10 = i5;
                                i8 = i4;
                                i7 = i3;
                                i6 = i2;
                                r3 = sharedPreferences6;
                                r12 = r11;
                                obj17 = obj6;
                                r82 = r83;
                                if (i10 != 0) {
                                }
                                if (i9 != 0) {
                                }
                                z4 = r82.element;
                                r112 = obj17;
                                Boolean boolBoxBoolean2222 = Boxing.boxBoolean(z4);
                                r112.unlock(null);
                                return boolBoxBoolean2222;
                            }
                            sharedPreferences6 = sharedPreferences9;
                            str2 = "lastSyncTimestamp";
                            booleanRef3.element = false;
                            obj6 = mutex5;
                            r83 = booleanRef3;
                            r11 = j;
                            i9 = i29;
                            i10 = i5;
                            i8 = i4;
                            i7 = i3;
                            i6 = i2;
                            r3 = sharedPreferences6;
                            r12 = r11;
                            obj17 = obj6;
                            r82 = r83;
                            if (i10 != 0) {
                                try {
                                    string = r3.getString(str2, null);
                                    str5 = str;
                                    string2 = r3.getString(str5, null);
                                    apiService = ApiClient.INSTANCE.getApiService();
                                } catch (Throwable th14) {
                                    th = th14;
                                    r1 = r3;
                                    r15 = r82;
                                    i = 1;
                                    obj17 = obj17;
                                    r12 = r12;
                                }
                                if (string == null) {
                                    c09941.L$0 = r3;
                                    c09941.L$1 = obj17;
                                    c09941.L$2 = r82;
                                    c09941.L$3 = string;
                                    str6 = str5;
                                    c09941.L$4 = SpillingKt.nullOutSpilledVariable(string2);
                                    c09941.L$5 = SpillingKt.nullOutSpilledVariable(apiService);
                                    c09941.Z$0 = z2;
                                    c09941.I$0 = i6;
                                    c09941.I$1 = i7;
                                    c09941.J$0 = r12;
                                    c09941.I$2 = i8;
                                    c09941.I$3 = i10;
                                    c09941.I$4 = 1;
                                    c09941.label = 4;
                                    Object allProfiles = apiService.getAllProfiles(string2, c09941);
                                    if (allProfiles != coroutine_suspended) {
                                        i11 = i10;
                                        obj5 = allProfiles;
                                        apiService2 = apiService;
                                        i12 = i7;
                                        i13 = i8;
                                        r52 = r3;
                                        i29 = 1;
                                        r84 = r82;
                                        obj7 = obj17;
                                        r122 = r12;
                                        response = (Response) obj5;
                                        r54 = r52;
                                        r85 = r84;
                                        obj17 = obj7;
                                        r12 = r122;
                                        str7 = string2;
                                        int i34 = i12;
                                        i14 = i6;
                                        ApiService apiService6 = apiService2;
                                        z3 = z2;
                                        ?? r155 = r85;
                                        r87 = i13;
                                        int i35 = i11;
                                        try {
                                        } catch (Throwable th15) {
                                            th = th15;
                                            i15 = i29;
                                        }
                                        if (response.code() != 304) {
                                            try {
                                                ?? Edit = r54.edit();
                                                Edit.putString(str2, Instant.now().toString());
                                                Edit.putLong(str3, r12);
                                                Edit.apply();
                                                i16 = i29;
                                            } catch (Throwable th16) {
                                                th = th16;
                                                i = i29;
                                                r1 = r54;
                                                obj17 = obj17;
                                                r12 = r12;
                                                r15 = r155;
                                                FileLog.m898e(th);
                                                r15.element = false;
                                                r3 = r1;
                                                i9 = i;
                                                r82 = r15;
                                            }
                                        } else {
                                            String str15 = str3;
                                            String str16 = str2;
                                            try {
                                            } catch (Throwable th17) {
                                                th = th17;
                                            }
                                            if (!response.isSuccessful() || response.body() == null) {
                                                i16 = i29;
                                                r155.element = false;
                                            } else {
                                                list = (List) response.body();
                                                if (list.isEmpty()) {
                                                    str8 = str16;
                                                    str9 = str15;
                                                    r13 = r54;
                                                    i17 = 1;
                                                    obj17 = obj17;
                                                    r12 = r12;
                                                    r153 = r155;
                                                    if (i17 == 0) {
                                                    }
                                                    i9 = i29;
                                                    r82 = r153;
                                                    r3 = r13;
                                                } else {
                                                    str9 = str15;
                                                    ArrayList arrayList = new ArrayList();
                                                    str8 = str16;
                                                    ArrayList arrayList2 = new ArrayList();
                                                    ?? r88 = r87;
                                                    for (Object obj18 : list) {
                                                        int i36 = i29;
                                                        int i37 = i35;
                                                        ?? r262 = r88;
                                                        if (Intrinsics.areEqual(((ProfileDTO) obj18).getDeleted(), Boxing.boxBoolean(true))) {
                                                            arrayList.add(obj18);
                                                        } else {
                                                            arrayList2.add(obj18);
                                                        }
                                                        i29 = i36;
                                                        i35 = i37;
                                                        r88 = r262 == true ? 1 : 0;
                                                        break;
                                                    }
                                                    int i38 = i29;
                                                    int i39 = i35;
                                                    ?? r263 = r88;
                                                    Pair pair = new Pair(arrayList, arrayList2);
                                                    List list8 = (List) pair.component1();
                                                    list2 = (List) pair.component2();
                                                    if (list8.isEmpty()) {
                                                        list3 = list8;
                                                        r132 = r12;
                                                        r6 = r155;
                                                        i18 = 1;
                                                        i19 = i34;
                                                        i20 = i39;
                                                        str10 = string;
                                                        i21 = i38;
                                                        list4 = list;
                                                        obj8 = coroutine_suspended;
                                                        apiService3 = apiService6;
                                                        r53 = r54;
                                                        obj13 = obj17;
                                                        r26 = r263;
                                                        ?? r89 = r26;
                                                        if (list2.isEmpty()) {
                                                        }
                                                        i = i21;
                                                        r152 = r6;
                                                        r124 = r132;
                                                        obj12 = obj13;
                                                        r242 = r243;
                                                        r1 = r242;
                                                        obj17 = obj12;
                                                        r12 = r124;
                                                        r15 = r152;
                                                        FileLog.m898e(th);
                                                        r15.element = false;
                                                        r3 = r1;
                                                        i9 = i;
                                                        r82 = r15;
                                                    } else {
                                                        DatabaseHelper databaseHelper2 = DatabaseHelper.INSTANCE;
                                                        List list9 = list8;
                                                        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list9, 10));
                                                        Iterator it = list9.iterator();
                                                        while (it.hasNext()) {
                                                            arrayList3.add(Boxing.boxLong(((ProfileDTO) it.next()).getId()));
                                                        }
                                                        c09941.L$0 = r54;
                                                        c09941.L$1 = obj17;
                                                        c09941.L$2 = r155;
                                                        c09941.L$3 = string;
                                                        c09941.L$4 = SpillingKt.nullOutSpilledVariable(str7);
                                                        c09941.L$5 = SpillingKt.nullOutSpilledVariable(apiService6);
                                                        c09941.L$6 = response;
                                                        c09941.L$7 = SpillingKt.nullOutSpilledVariable(list);
                                                        c09941.L$8 = SpillingKt.nullOutSpilledVariable(list8);
                                                        c09941.L$9 = list2;
                                                        c09941.Z$0 = z3;
                                                        c09941.I$0 = i14;
                                                        c09941.I$1 = i34;
                                                        c09941.J$0 = r12;
                                                        c09941.I$2 = r263 == true ? 1 : 0;
                                                        c09941.I$3 = i39;
                                                        i22 = r263 == true ? 1 : 0;
                                                        try {
                                                            c09941.I$4 = i38;
                                                            i23 = i38;
                                                            c09941.I$5 = 1;
                                                            c09941.label = 6;
                                                            objDeleteProfiles = databaseHelper2.deleteProfiles(arrayList3, c09941);
                                                            obj9 = coroutine_suspended;
                                                        } catch (Throwable th18) {
                                                            th = th18;
                                                            i15 = i38;
                                                            r1 = r54;
                                                            i = i15;
                                                            obj17 = obj17;
                                                            r12 = r12;
                                                            r15 = r155;
                                                        }
                                                        if (objDeleteProfiles == obj9) {
                                                            return obj9;
                                                        }
                                                        r24 = r54;
                                                        r133 = r12;
                                                        r16 = r155;
                                                        list5 = list8;
                                                        apiService4 = apiService6;
                                                        i19 = i34;
                                                        i20 = i39;
                                                        i24 = 1;
                                                        list6 = list2;
                                                        response2 = response;
                                                        obj10 = objDeleteProfiles;
                                                        str11 = str7;
                                                        obj14 = obj17;
                                                        try {
                                                            str7 = str11;
                                                            i18 = (((Boolean) obj10).booleanValue() || i24 == 0) ? 0 : 1;
                                                            response = response2;
                                                            list2 = list6;
                                                            str10 = string;
                                                            i21 = i23;
                                                            list4 = list;
                                                            obj8 = obj9;
                                                            r6 = r16;
                                                            apiService3 = apiService4;
                                                            list3 = list5;
                                                            r53 = r24;
                                                            obj13 = obj14;
                                                            r132 = r133;
                                                            r26 = i22;
                                                            ?? r892 = r26;
                                                            try {
                                                                if (list2.isEmpty()) {
                                                                    i17 = i18;
                                                                    i29 = i21;
                                                                    r153 = r6;
                                                                    string = str10;
                                                                    r12 = r132;
                                                                    r13 = r53;
                                                                    obj17 = obj13;
                                                                    if (i17 == 0) {
                                                                    }
                                                                    i9 = i29;
                                                                    r82 = r153;
                                                                    r3 = r13;
                                                                } else {
                                                                    List<ProfileDTO> list10 = list2;
                                                                    DatabaseHelper databaseHelper3 = DatabaseHelper.INSTANCE;
                                                                    c09941.L$0 = r53;
                                                                    c09941.L$1 = obj13;
                                                                    c09941.L$2 = r6;
                                                                    c09941.L$3 = str10;
                                                                    r243 = r53;
                                                                    try {
                                                                        c09941.L$4 = SpillingKt.nullOutSpilledVariable(str7);
                                                                        c09941.L$5 = SpillingKt.nullOutSpilledVariable(apiService3);
                                                                        c09941.L$6 = response;
                                                                        c09941.L$7 = SpillingKt.nullOutSpilledVariable(list4);
                                                                        c09941.L$8 = SpillingKt.nullOutSpilledVariable(list3);
                                                                        c09941.L$9 = SpillingKt.nullOutSpilledVariable(list10);
                                                                        c09941.Z$0 = z3;
                                                                        c09941.I$0 = i14;
                                                                        c09941.I$1 = i19;
                                                                        c09941.J$0 = r132;
                                                                        c09941.I$2 = r892 == true ? 1 : 0;
                                                                        c09941.I$3 = i20;
                                                                        c09941.I$4 = i21;
                                                                        c09941.I$5 = i18;
                                                                        c09941.label = 7;
                                                                        Object objInsertProfiles = databaseHelper3.insertProfiles(list10, c09941);
                                                                        Object obj19 = obj8;
                                                                        if (objInsertProfiles == obj19) {
                                                                            return obj19;
                                                                        }
                                                                        response3 = response;
                                                                        obj16 = objInsertProfiles;
                                                                        i29 = i21;
                                                                        r154 = r6;
                                                                        r125 = r132;
                                                                        r14 = r243;
                                                                        str12 = str10;
                                                                        obj15 = obj13;
                                                                        try {
                                                                            i17 = (((Boolean) obj16).booleanValue() || i18 == 0) ? 0 : 1;
                                                                            response = response3;
                                                                            string = str12;
                                                                            r13 = r14;
                                                                            obj17 = obj15;
                                                                            r12 = r125;
                                                                            r153 = r154;
                                                                            if (i17 == 0) {
                                                                                ?? Edit2 = r13.edit();
                                                                                Edit2.putString(str8, Instant.now().toString());
                                                                                if (string == null && (str13 = response.headers().get("ETag")) != null) {
                                                                                    Edit2.putString(str6, str13);
                                                                                }
                                                                                Edit2.putLong(str9, r12);
                                                                                Edit2.apply();
                                                                            } else {
                                                                                r153.element = false;
                                                                            }
                                                                            i9 = i29;
                                                                            r82 = r153;
                                                                            r3 = r13;
                                                                        } catch (Throwable th19) {
                                                                            th = th19;
                                                                            i = i29;
                                                                            r1 = r14;
                                                                            obj17 = obj15;
                                                                            r12 = r125;
                                                                            r15 = r154;
                                                                            FileLog.m898e(th);
                                                                            r15.element = false;
                                                                            r3 = r1;
                                                                            i9 = i;
                                                                            r82 = r15;
                                                                        }
                                                                    } catch (Throwable th20) {
                                                                        th = th20;
                                                                        i = i21;
                                                                        r152 = r6;
                                                                        r124 = r132;
                                                                        obj12 = obj13;
                                                                        r242 = r243;
                                                                        r1 = r242;
                                                                        obj17 = obj12;
                                                                        r12 = r124;
                                                                        r15 = r152;
                                                                    }
                                                                }
                                                            } catch (Throwable th21) {
                                                                th = th21;
                                                                r243 = r53;
                                                            }
                                                            i = i21;
                                                            r152 = r6;
                                                            r124 = r132;
                                                            obj12 = obj13;
                                                            r242 = r243;
                                                        } catch (Throwable th22) {
                                                            th = th22;
                                                            r124 = r133;
                                                            r152 = r16;
                                                            i = i23;
                                                            obj12 = obj14;
                                                            r242 = r24;
                                                        }
                                                        r1 = r242;
                                                        obj17 = obj12;
                                                        r12 = r124;
                                                        r15 = r152;
                                                        FileLog.m898e(th);
                                                        r15.element = false;
                                                        r3 = r1;
                                                        i9 = i;
                                                        r82 = r15;
                                                    }
                                                }
                                            }
                                            r1 = r54;
                                            i = i15;
                                            obj17 = obj17;
                                            r12 = r12;
                                            r15 = r155;
                                            FileLog.m898e(th);
                                            r15.element = false;
                                            r3 = r1;
                                            i9 = i;
                                            r82 = r15;
                                        }
                                        r3 = r54;
                                        r82 = r155;
                                        i9 = i16;
                                    }
                                } else {
                                    str6 = str5;
                                    c09941.L$0 = r3;
                                    c09941.L$1 = obj17;
                                    c09941.L$2 = r82;
                                    c09941.L$3 = string;
                                    c09941.L$4 = SpillingKt.nullOutSpilledVariable(string2);
                                    c09941.L$5 = SpillingKt.nullOutSpilledVariable(apiService);
                                    c09941.Z$0 = z2;
                                    c09941.I$0 = i6;
                                    c09941.I$1 = i7;
                                    c09941.J$0 = r12;
                                    c09941.I$2 = i8;
                                    c09941.I$3 = i10;
                                    c09941.I$4 = 1;
                                    c09941.label = 5;
                                    Object updates = apiService.getUpdates(string, c09941);
                                    if (updates != coroutine_suspended) {
                                        i11 = i10;
                                        obj4 = updates;
                                        apiService2 = apiService;
                                        i12 = i7;
                                        i13 = i8;
                                        r5 = r3;
                                        i29 = 1;
                                        r86 = r82;
                                        obj11 = obj17;
                                        r123 = r12;
                                        response = (Response) obj4;
                                        r54 = r5;
                                        r85 = r86;
                                        obj17 = obj11;
                                        r12 = r123;
                                        str7 = string2;
                                        int i342 = i12;
                                        i14 = i6;
                                        ApiService apiService62 = apiService2;
                                        z3 = z2;
                                        ?? r1552 = r85;
                                        r87 = i13;
                                        int i352 = i11;
                                        if (response.code() != 304) {
                                        }
                                        r3 = r54;
                                        r82 = r1552;
                                        i9 = i16;
                                    }
                                }
                                break;
                            }
                            if (i9 != 0) {
                                ?? Edit3 = r3.edit();
                                if (r82.element) {
                                    Edit3.remove(str4);
                                } else {
                                    Edit3.putLong(str4, r12);
                                }
                                Edit3.apply();
                            }
                            z4 = r82.element;
                            r112 = obj17;
                            Boolean boolBoxBoolean22222 = Boxing.boxBoolean(z4);
                            r112.unlock(null);
                            return boolBoxBoolean22222;
                            FileLog.m898e(th);
                            r8.element = false;
                            obj6 = obj2;
                            r83 = r8;
                            r11 = r114;
                            sharedPreferences6 = sharedPreferences3;
                            i9 = i29;
                            i10 = i5;
                            i8 = i4;
                            i7 = i3;
                            i6 = i2;
                            r3 = sharedPreferences6;
                            r12 = r11;
                            obj17 = obj6;
                            r82 = r83;
                            if (i10 != 0) {
                            }
                            if (i9 != 0) {
                            }
                            z4 = r82.element;
                            r112 = obj17;
                            Boolean boolBoxBoolean222222 = Boxing.boxBoolean(z4);
                            r112.unlock(null);
                            return boolBoxBoolean222222;
                        }
                    } catch (CancellationException e5) {
                        e = e5;
                        mutex3 = mutex4;
                        throw e;
                    }
                }
                return coroutine_suspended;
            case 1:
                int i40 = c09941.I$0;
                boolean z7 = c09941.Z$0;
                Mutex mutex8 = (Mutex) c09941.L$1;
                SharedPreferences sharedPreferences12 = (SharedPreferences) c09941.L$0;
                ResultKt.throwOnFailure(obj16);
                mutex4 = mutex8;
                z5 = z7;
                sharedPreferences7 = sharedPreferences12;
                i25 = i40;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (z5) {
                }
                if (z6) {
                    if (z6) {
                        if (i27 != 0) {
                        }
                        Ref.BooleanRef booleanRef52 = new Ref.BooleanRef();
                        booleanRef52.element = true;
                        if (i27 != 0) {
                        }
                    }
                }
                Boolean boolBoxBoolean2222222 = Boxing.boxBoolean(z4);
                r112.unlock(null);
                return boolBoxBoolean2222222;
            case 2:
                i29 = c09941.I$4;
                i5 = c09941.I$3;
                i4 = c09941.I$2;
                long j3 = c09941.J$0;
                i3 = c09941.I$1;
                i2 = c09941.I$0;
                z2 = c09941.Z$0;
                Ref.BooleanRef booleanRef6 = (Ref.BooleanRef) c09941.L$2;
                Mutex mutex9 = (Mutex) c09941.L$1;
                SharedPreferences sharedPreferences13 = (SharedPreferences) c09941.L$0;
                ResultKt.throwOnFailure(obj16);
                str = "profilesEtag";
                boostySubscribers = obj16;
                sharedPreferences9 = sharedPreferences13;
                str3 = PROFILES_SYNC_TIME_KEY;
                mutex5 = mutex9;
                str4 = SYNC_FAILURE_TIME_KEY;
                booleanRef3 = booleanRef6;
                j = j3;
                response4 = (Response) boostySubscribers;
                if (!response4.isSuccessful()) {
                    break;
                }
                sharedPreferences6 = sharedPreferences9;
                str2 = "lastSyncTimestamp";
                booleanRef3.element = false;
                obj6 = mutex5;
                r83 = booleanRef3;
                r11 = j;
                i9 = i29;
                i10 = i5;
                i8 = i4;
                i7 = i3;
                i6 = i2;
                r3 = sharedPreferences6;
                r12 = r11;
                obj17 = obj6;
                r82 = r83;
                if (i10 != 0) {
                }
                if (i9 != 0) {
                }
                z4 = r82.element;
                r112 = obj17;
                Boolean boolBoxBoolean22222222 = Boxing.boxBoolean(z4);
                r112.unlock(null);
                return boolBoxBoolean22222222;
            case 3:
                i29 = c09941.I$4;
                i5 = c09941.I$3;
                i4 = c09941.I$2;
                long j4 = c09941.J$0;
                i3 = c09941.I$1;
                i2 = c09941.I$0;
                z2 = c09941.Z$0;
                Ref.BooleanRef booleanRef7 = (Ref.BooleanRef) c09941.L$2;
                Mutex mutex10 = (Mutex) c09941.L$1;
                SharedPreferences sharedPreferences14 = (SharedPreferences) c09941.L$0;
                ResultKt.throwOnFailure(obj16);
                str = "profilesEtag";
                str2 = "lastSyncTimestamp";
                objInsertBoostySubscribers = obj16;
                sharedPreferences10 = sharedPreferences14;
                str3 = PROFILES_SYNC_TIME_KEY;
                mutex6 = mutex10;
                str4 = SYNC_FAILURE_TIME_KEY;
                booleanRef4 = booleanRef7;
                j2 = j4;
                if (((Boolean) objInsertBoostySubscribers).booleanValue()) {
                }
                i9 = i29;
                i10 = i5;
                i8 = i4;
                i7 = i3;
                i6 = i2;
                r3 = sharedPreferences6;
                r12 = r11;
                obj17 = obj6;
                r82 = r83;
                if (i10 != 0) {
                }
                if (i9 != 0) {
                }
                z4 = r82.element;
                r112 = obj17;
                Boolean boolBoxBoolean222222222 = Boxing.boxBoolean(z4);
                r112.unlock(null);
                return boolBoxBoolean222222222;
            case 4:
                i29 = c09941.I$4;
                int i41 = c09941.I$3;
                int i42 = c09941.I$2;
                long j5 = c09941.J$0;
                i12 = c09941.I$1;
                i6 = c09941.I$0;
                boolean z8 = c09941.Z$0;
                apiService2 = (ApiService) c09941.L$5;
                String str17 = (String) c09941.L$4;
                i11 = i41;
                String str18 = (String) c09941.L$3;
                Ref.BooleanRef booleanRef8 = (Ref.BooleanRef) c09941.L$2;
                Mutex mutex11 = (Mutex) c09941.L$1;
                SharedPreferences sharedPreferences15 = (SharedPreferences) c09941.L$0;
                ResultKt.throwOnFailure(obj16);
                str3 = PROFILES_SYNC_TIME_KEY;
                string2 = str17;
                z2 = z8;
                obj7 = mutex11;
                str4 = SYNC_FAILURE_TIME_KEY;
                r84 = booleanRef8;
                str2 = "lastSyncTimestamp";
                obj5 = obj16;
                i13 = i42;
                r52 = sharedPreferences15;
                str6 = "profilesEtag";
                string = str18;
                r122 = j5;
                response = (Response) obj5;
                r54 = r52;
                r85 = r84;
                obj17 = obj7;
                r12 = r122;
                str7 = string2;
                int i3422 = i12;
                i14 = i6;
                ApiService apiService622 = apiService2;
                z3 = z2;
                ?? r15522 = r85;
                r87 = i13;
                int i3522 = i11;
                if (response.code() != 304) {
                }
                r3 = r54;
                r82 = r15522;
                i9 = i16;
                if (i9 != 0) {
                }
                z4 = r82.element;
                r112 = obj17;
                Boolean boolBoxBoolean2222222222 = Boxing.boxBoolean(z4);
                r112.unlock(null);
                return boolBoxBoolean2222222222;
            case 5:
                i29 = c09941.I$4;
                int i43 = c09941.I$3;
                int i44 = c09941.I$2;
                long j6 = c09941.J$0;
                i12 = c09941.I$1;
                i6 = c09941.I$0;
                boolean z9 = c09941.Z$0;
                apiService2 = (ApiService) c09941.L$5;
                String str19 = (String) c09941.L$4;
                i11 = i43;
                String str20 = (String) c09941.L$3;
                Ref.BooleanRef booleanRef9 = (Ref.BooleanRef) c09941.L$2;
                Mutex mutex12 = (Mutex) c09941.L$1;
                SharedPreferences sharedPreferences16 = (SharedPreferences) c09941.L$0;
                ResultKt.throwOnFailure(obj16);
                str3 = PROFILES_SYNC_TIME_KEY;
                string2 = str19;
                z2 = z9;
                obj11 = mutex12;
                str4 = SYNC_FAILURE_TIME_KEY;
                r86 = booleanRef9;
                str2 = "lastSyncTimestamp";
                obj4 = obj16;
                i13 = i44;
                r5 = sharedPreferences16;
                str6 = "profilesEtag";
                string = str20;
                r123 = j6;
                response = (Response) obj4;
                r54 = r5;
                r85 = r86;
                obj17 = obj11;
                r12 = r123;
                str7 = string2;
                int i34222 = i12;
                i14 = i6;
                ApiService apiService6222 = apiService2;
                z3 = z2;
                ?? r155222 = r85;
                r87 = i13;
                int i35222 = i11;
                if (response.code() != 304) {
                }
                r3 = r54;
                r82 = r155222;
                i9 = i16;
                if (i9 != 0) {
                }
                z4 = r82.element;
                r112 = obj17;
                Boolean boolBoxBoolean22222222222 = Boxing.boxBoolean(z4);
                r112.unlock(null);
                return boolBoxBoolean22222222222;
            case 6:
                int i45 = c09941.I$5;
                int i46 = c09941.I$4;
                int i47 = c09941.I$3;
                int i48 = c09941.I$2;
                long j7 = c09941.J$0;
                i19 = c09941.I$1;
                i14 = c09941.I$0;
                z3 = c09941.Z$0;
                List<ProfileDTO> list11 = (List) c09941.L$9;
                List list12 = (List) c09941.L$8;
                list = (List) c09941.L$7;
                Response response5 = (Response) c09941.L$6;
                apiService4 = (ApiService) c09941.L$5;
                String str21 = (String) c09941.L$4;
                String str22 = (String) c09941.L$3;
                Ref.BooleanRef booleanRef10 = (Ref.BooleanRef) c09941.L$2;
                Mutex mutex13 = (Mutex) c09941.L$1;
                SharedPreferences sharedPreferences17 = (SharedPreferences) c09941.L$0;
                try {
                    ResultKt.throwOnFailure(obj16);
                    i24 = i45;
                    response2 = response5;
                    str4 = SYNC_FAILURE_TIME_KEY;
                    i22 = i48;
                    obj10 = obj16;
                    r16 = booleanRef10;
                    str8 = "lastSyncTimestamp";
                    i20 = i47;
                    obj14 = mutex13;
                    obj9 = coroutine_suspended;
                    i23 = i46;
                    str11 = str21;
                    list5 = list12;
                    str6 = "profilesEtag";
                    string = str22;
                    str9 = PROFILES_SYNC_TIME_KEY;
                    list6 = list11;
                    r133 = j7;
                    r24 = sharedPreferences17;
                    break;
                } catch (CancellationException e6) {
                    throw e6;
                } catch (Throwable th23) {
                    th = th23;
                    i = i46;
                    str4 = SYNC_FAILURE_TIME_KEY;
                    r124 = j7;
                    r152 = booleanRef10;
                    obj12 = mutex13;
                    r242 = sharedPreferences17;
                }
                if (((Boolean) obj10).booleanValue()) {
                    str7 = str11;
                    i18 = (((Boolean) obj10).booleanValue() || i24 == 0) ? 0 : 1;
                    response = response2;
                    list2 = list6;
                    str10 = string;
                    i21 = i23;
                    list4 = list;
                    obj8 = obj9;
                    r6 = r16;
                    apiService3 = apiService4;
                    list3 = list5;
                    r53 = r24;
                    obj13 = obj14;
                    r132 = r133;
                    r26 = i22;
                    ?? r8922 = r26;
                    if (list2.isEmpty()) {
                    }
                    i = i21;
                    r152 = r6;
                    r124 = r132;
                    obj12 = obj13;
                    r242 = r243;
                    r1 = r242;
                    obj17 = obj12;
                    r12 = r124;
                    r15 = r152;
                    FileLog.m898e(th);
                    r15.element = false;
                    r3 = r1;
                    i9 = i;
                    r82 = r15;
                    if (i9 != 0) {
                    }
                    z4 = r82.element;
                    r112 = obj17;
                }
                Boolean boolBoxBoolean222222222222 = Boxing.boxBoolean(z4);
                r112.unlock(null);
                return boolBoxBoolean222222222222;
            case 7:
                i18 = c09941.I$5;
                i29 = c09941.I$4;
                long j8 = c09941.J$0;
                response3 = (Response) c09941.L$6;
                str12 = (String) c09941.L$3;
                Ref.BooleanRef booleanRef11 = (Ref.BooleanRef) c09941.L$2;
                Mutex mutex14 = (Mutex) c09941.L$1;
                SharedPreferences sharedPreferences18 = (SharedPreferences) c09941.L$0;
                try {
                    ResultKt.throwOnFailure(obj16);
                    str6 = "profilesEtag";
                    str8 = "lastSyncTimestamp";
                    str9 = PROFILES_SYNC_TIME_KEY;
                    str4 = SYNC_FAILURE_TIME_KEY;
                    r14 = sharedPreferences18;
                    obj15 = mutex14;
                    r125 = j8;
                    r154 = booleanRef11;
                } catch (Throwable th24) {
                    th = th24;
                    i = i29;
                    sharedPreferences5 = sharedPreferences18;
                    mutex2 = mutex14;
                    booleanRef2 = booleanRef11;
                    str4 = SYNC_FAILURE_TIME_KEY;
                    r1 = sharedPreferences5;
                    obj17 = mutex2;
                    r12 = j8;
                    r15 = booleanRef2;
                    break;
                }
                if (((Boolean) obj16).booleanValue()) {
                    response = response3;
                    string = str12;
                    r13 = r14;
                    obj17 = obj15;
                    r12 = r125;
                    r153 = r154;
                    if (i17 == 0) {
                    }
                    i9 = i29;
                    r82 = r153;
                    r3 = r13;
                    if (i9 != 0) {
                    }
                    z4 = r82.element;
                    r112 = obj17;
                }
                Boolean boolBoxBoolean2222222222222 = Boxing.boxBoolean(z4);
                r112.unlock(null);
                return boolBoxBoolean2222222222222;
            default:
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
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
            FileLog.m898e(th);
        }
    }
}
