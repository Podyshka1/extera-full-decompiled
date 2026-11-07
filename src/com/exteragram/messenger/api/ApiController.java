package com.exteragram.messenger.api;

import android.content.SharedPreferences;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.db.DatabaseHelper;
import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import com.exteragram.messenger.api.model.ProfileStatus;
import com.exteragram.messenger.api.model.ProfileType;
import com.exteragram.messenger.api.network.ApiClient;
import com.exteragram.messenger.api.network.ApiService;
import com.exteragram.messenger.api.worker.SyncWorker;
import com.exteragram.messenger.badges.BadgesController;
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
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0017H\u0007J\u001c\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0007J\"\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0086@¢\u0006\u0002\u0010\u001eJ\u001c\u0010\u001f\u001a\u00020\u001c2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!H\u0082@¢\u0006\u0002\u0010#J\u0014\u0010$\u001a\u00020\u00172\n\u0010%\u001a\u00020&\"\u00020\u0013H\u0007J\u0014\u0010'\u001a\u00020\u000b2\n\u0010(\u001a\u0006\u0012\u0002\b\u00030)H\u0002J\u0018\u0010*\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u00132\u0006\u0010,\u001a\u00020\u0013H\u0002J\u0012\u0010-\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u001aH\u0007J\b\u0010.\u001a\u00020\u0017H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/exteragram/messenger/api/ApiController;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "scope", "Lkotlinx/coroutines/CoroutineScope;", "started", "Ljava/util/concurrent/atomic/AtomicBoolean;", "syncMutex", "Lkotlinx/coroutines/sync/Mutex;", "SYNC_TIMESTAMP_HEADER", _UrlKt.FRAGMENT_ENCODE_SET, "PROFILES_SYNC_TIME_KEY", "BOOSTY_SYNC_TIME_KEY", "SYNC_FAILURE_TIME_KEY", "PROFILES_SCHEMA_KEY", "PROFILES_SCHEMA", _UrlKt.FRAGMENT_ENCODE_SET, "PROFILES_SYNC_INTERVAL", _UrlKt.FRAGMENT_ENCODE_SET, "BOOSTY_SYNC_INTERVAL", "FAILURE_BACKOFF", "init", _UrlKt.FRAGMENT_ENCODE_SET, "sync", "prefs", "Landroid/content/SharedPreferences;", "force", _UrlKt.FRAGMENT_ENCODE_SET, "performSync", "(Landroid/content/SharedPreferences;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "storeProfiles", "profiles", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/api/dto/ProfileDTO;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshProfiles", "ids", _UrlKt.FRAGMENT_ENCODE_SET, "syncWatermark", PluginsConstants.RESPONSE, "Lretrofit2/Response;", "elapsedSince", "now", "timestamp", "resetSyncState", "scheduleWorker", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nApiController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiController.kt\ncom/exteragram/messenger/api/ApiController\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,284:1\n117#2,7:285\n125#2,2:340\n41#3,12:292\n41#3,12:304\n41#3,12:316\n41#3,12:328\n41#3,12:356\n3347#4,10:342\n1586#4:352\n1661#4,3:353\n364#5:368\n*S KotlinDebug\n*F\n+ 1 ApiController.kt\ncom/exteragram/messenger/api/ApiController\n*L\n95#1:285,7\n95#1:340,2\n120#1:292,12\n150#1:304,12\n158#1:316,12\n182#1:328,12\n253#1:356,12\n194#1:342,10\n197#1:352\n197#1:353,3\n270#1:368\n*E\n"})
public final class ApiController {
    private static final String BOOSTY_SYNC_TIME_KEY = "lastBoostySyncTime";
    private static final int PROFILES_SCHEMA = 1;
    private static final String PROFILES_SCHEMA_KEY = "profilesSchema";
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
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "com.exteragram.messenger.api.ApiController", m921f = "ApiController.kt", m922i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5}, m923l = {289, 117, 119, 144, 146, 156}, m924m = "performSync", m925n = {"prefs", "$this$withLock_u24default$iv", "force", "$i$f$withLock", "prefs", "$this$withLock_u24default$iv", "success", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "fullProfilesSync", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "boostyResponse", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "fullProfilesSync", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "fullProfilesSync", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "fullProfilesSync", "profilesDue", "attempted", "prefs", "$this$withLock_u24default$iv", "success", "lastSyncTimestamp", "profilesEtag", "apiService", PluginsConstants.RESPONSE, "profiles", "force", "$i$f$withLock", "$i$a$-withLock$default-ApiController$performSync$2", "now", "boostyDue", "fullProfilesSync", "profilesDue", "attempted"}, m926s = {"L$0", "L$1", "Z$0", "I$0", "L$0", "L$1", "L$2", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "I$5", "L$0", "L$1", "L$2", "L$3", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "I$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "I$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "I$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "Z$0", "I$0", "I$1", "J$0", "I$2", "I$3", "I$4", "I$5"})
    public static final class C12401 extends ContinuationImpl {
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
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C12401(Continuation<? super C12401> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ApiController.this.performSync(null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.ApiController$storeProfiles$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "com.exteragram.messenger.api.ApiController", m921f = "ApiController.kt", m922i = {0, 0, 0, 0, 1, 1, 1, 1}, m923l = {197, 200}, m924m = "storeProfiles", m925n = {"profiles", "profilesToDelete", "profilesToInsert", "stored", "profiles", "profilesToDelete", "profilesToInsert", "stored"}, m926s = {"L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "L$2", "I$0"})
    public static final class C12421 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C12421(Continuation<? super C12421> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ApiController.this.storeProfiles(null, this);
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

    private ApiController() {
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
                boolean z = prefs.getInt(PROFILES_SCHEMA_KEY, 0) != 1 || apiController.elapsedSince(jCurrentTimeMillis, prefs.getLong(PROFILES_SYNC_TIME_KEY, 0L)) >= PROFILES_SYNC_INTERVAL;
                boolean z2 = apiController.elapsedSince(jCurrentTimeMillis, prefs.getLong(BOOSTY_SYNC_TIME_KEY, 0L)) >= BOOSTY_SYNC_INTERVAL;
                if (!z && !z2) {
                    return;
                }
            }
            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C12431(prefs, force, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.ApiController$sync$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "com.exteragram.messenger.api.ApiController$sync$1", m921f = "ApiController.kt", m922i = {}, m923l = {91}, m924m = "invokeSuspend", m925n = {}, m926s = {})
    public static final class C12431 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $force;
        final /* synthetic */ SharedPreferences $prefs;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12431(SharedPreferences sharedPreferences, boolean z, Continuation<? super C12431> continuation) {
            super(2, continuation);
            this.$prefs = sharedPreferences;
            this.$force = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12431(this.$prefs, this.$force, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12431) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
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
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x019e: MOVE (r7 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:37:0x0194 */
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x05eb: MOVE (r12 I:??[OBJECT, ARRAY]) = (r15 I:??[OBJECT, ARRAY]), block:B:241:0x05eb */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x01a4: MOVE (r3 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:37:0x0194 */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x0194: MOVE (r16 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r18 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:37:0x0194 */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x01aa: MOVE (r9 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:37:0x0194 */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x00e6: MOVE (r15 I:??[OBJECT, ARRAY]) = (r20 I:??[OBJECT, ARRAY]), block:B:27:0x00e6 */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x01a6: MOVE (r17 I:??[OBJECT, ARRAY]) = (r20 I:??[OBJECT, ARRAY]), block:B:37:0x0194 */
    /* JADX WARN: Not initialized variable reg: 21, insn: 0x019f: MOVE (r8 I:??[OBJECT, ARRAY]) = (r21 I:??[OBJECT, ARRAY]), block:B:37:0x0194 */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0345 A[Catch: all -> 0x0352, CancellationException -> 0x035b, TryCatch #35 {CancellationException -> 0x035b, all -> 0x0352, blocks: (B:102:0x033d, B:104:0x0345, B:110:0x0360), top: B:307:0x033d }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0360 A[Catch: all -> 0x0352, CancellationException -> 0x035b, TRY_LEAVE, TryCatch #35 {CancellationException -> 0x035b, all -> 0x0352, blocks: (B:102:0x033d, B:104:0x0345, B:110:0x0360), top: B:307:0x033d }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x04eb  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x057b A[Catch: CancellationException -> 0x0079, all -> 0x0562, TryCatch #3 {all -> 0x0562, blocks: (B:199:0x0553, B:212:0x057b, B:214:0x0598, B:217:0x05a2, B:216:0x059e), top: B:266:0x0553 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x05b1 A[Catch: CancellationException -> 0x0079, all -> 0x05af, TRY_LEAVE, TryCatch #13 {all -> 0x05af, blocks: (B:219:0x05a8, B:222:0x05b1), top: B:280:0x0579 }] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x05fb  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x04c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x023a A[Catch: all -> 0x025e, TryCatch #34 {all -> 0x025e, blocks: (B:256:0x0616, B:48:0x022f, B:51:0x023a, B:53:0x0245, B:60:0x026a, B:66:0x0280, B:72:0x028e, B:80:0x02a7), top: B:305:0x022f }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Type inference failed for: r0v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v135 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* JADX WARN: Type inference failed for: r10v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v40 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v41 */
    /* JADX WARN: Type inference failed for: r12v42 */
    /* JADX WARN: Type inference failed for: r12v43, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v44 */
    /* JADX WARN: Type inference failed for: r12v45, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v49 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v50 */
    /* JADX WARN: Type inference failed for: r12v51 */
    /* JADX WARN: Type inference failed for: r12v52 */
    /* JADX WARN: Type inference failed for: r12v54 */
    /* JADX WARN: Type inference failed for: r12v58 */
    /* JADX WARN: Type inference failed for: r12v59, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v62 */
    /* JADX WARN: Type inference failed for: r12v69 */
    /* JADX WARN: Type inference failed for: r12v78 */
    /* JADX WARN: Type inference failed for: r12v79 */
    /* JADX WARN: Type inference failed for: r12v80 */
    /* JADX WARN: Type inference failed for: r12v81 */
    /* JADX WARN: Type inference failed for: r12v82 */
    /* JADX WARN: Type inference failed for: r12v83 */
    /* JADX WARN: Type inference failed for: r12v84 */
    /* JADX WARN: Type inference failed for: r12v85 */
    /* JADX WARN: Type inference failed for: r12v86 */
    /* JADX WARN: Type inference failed for: r12v87 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v18 */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v25 */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v27 */
    /* JADX WARN: Type inference failed for: r15v30 */
    /* JADX WARN: Type inference failed for: r15v31 */
    /* JADX WARN: Type inference failed for: r15v32 */
    /* JADX WARN: Type inference failed for: r15v33, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v35 */
    /* JADX WARN: Type inference failed for: r15v36, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v39 */
    /* JADX WARN: Type inference failed for: r15v40 */
    /* JADX WARN: Type inference failed for: r15v42 */
    /* JADX WARN: Type inference failed for: r15v43 */
    /* JADX WARN: Type inference failed for: r15v46 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v51 */
    /* JADX WARN: Type inference failed for: r15v52 */
    /* JADX WARN: Type inference failed for: r15v53 */
    /* JADX WARN: Type inference failed for: r15v54 */
    /* JADX WARN: Type inference failed for: r15v55 */
    /* JADX WARN: Type inference failed for: r15v56 */
    /* JADX WARN: Type inference failed for: r15v57 */
    /* JADX WARN: Type inference failed for: r15v58 */
    /* JADX WARN: Type inference failed for: r15v59 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v60 */
    /* JADX WARN: Type inference failed for: r15v61 */
    /* JADX WARN: Type inference failed for: r15v62 */
    /* JADX WARN: Type inference failed for: r15v63 */
    /* JADX WARN: Type inference failed for: r15v64 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v22 */
    /* JADX WARN: Type inference failed for: r17v27 */
    /* JADX WARN: Type inference failed for: r17v28 */
    /* JADX WARN: Type inference failed for: r17v29, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v30 */
    /* JADX WARN: Type inference failed for: r17v33 */
    /* JADX WARN: Type inference failed for: r17v36 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v43 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v17 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v21 */
    /* JADX WARN: Type inference failed for: r19v22 */
    /* JADX WARN: Type inference failed for: r19v23 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r20v20 */
    /* JADX WARN: Type inference failed for: r20v25 */
    /* JADX WARN: Type inference failed for: r20v31 */
    /* JADX WARN: Type inference failed for: r20v5 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r7v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
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
        C12401 c12401;
        int i;
        String str;
        int i2;
        String str2;
        String str3;
        int i3;
        int i4;
        SharedPreferences sharedPreferences2;
        SharedPreferences sharedPreferences3;
        ?? r15;
        String str4;
        char c2;
        int i5;
        Object obj;
        ?? IsSuccessful;
        String str5;
        Ref.BooleanRef booleanRef;
        Ref.BooleanRef booleanRef2;
        Object obj2;
        ?? r12;
        ?? r17;
        ?? r152;
        long jCurrentTimeMillis;
        int i6;
        int i7;
        int i8;
        ?? r0;
        ?? r153;
        int i9;
        int i10;
        ?? r20;
        ?? r154;
        int i11;
        int i12;
        int i13;
        long j;
        ?? r02;
        ?? r122;
        String str6;
        String string;
        String string2;
        boolean z2;
        Throwable th;
        long j2;
        SharedPreferences sharedPreferences4;
        Ref.BooleanRef booleanRef3;
        int i14;
        String str7;
        String str8;
        String str9;
        ApiService apiService;
        String str10;
        Object allProfiles;
        ?? r19;
        int i15;
        Object obj3;
        ?? r9;
        int i16;
        int i17;
        int i18;
        long j3;
        int i19;
        String str11;
        String str12;
        ?? r192;
        Object updates;
        String str13;
        int i20;
        int i21;
        ?? r92;
        int i22;
        int i23;
        boolean z3;
        Response<?> response;
        String str14;
        int i24;
        String str15;
        int i25;
        ?? r93;
        ?? r155;
        ?? r193;
        ?? r94;
        ApiService apiService2;
        ?? r7;
        SharedPreferences sharedPreferences5;
        boolean z4;
        ?? r156;
        boolean z5;
        ?? r157;
        String str16;
        String str17;
        SharedPreferences sharedPreferences6;
        Object objStoreProfiles;
        Response<?> response2;
        ?? r123;
        ?? r10;
        ?? r102;
        boolean z6;
        List<ProfileDTO> list;
        ?? r95;
        SharedPreferences sharedPreferences7;
        boolean z7;
        int i26;
        ApiClient apiClient;
        ApiClient apiClient2;
        boolean z8;
        int i27;
        SharedPreferences sharedPreferences8;
        Object boostySubscribers;
        ?? r4;
        Response response3;
        String str18;
        Object objInsertBoostySubscribers;
        boolean z9;
        int i28;
        Ref.BooleanRef booleanRef4;
        Mutex mutex;
        SharedPreferences sharedPreferences9;
        if (continuation instanceof C12401) {
            c12401 = (C12401) continuation;
            int i29 = c12401.label;
            if ((i29 & Integer.MIN_VALUE) != 0) {
                c12401.label = i29 - Integer.MIN_VALUE;
            } else {
                c12401 = new C12401(continuation);
            }
        }
        Object obj4 = c12401.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i30 = c12401.label;
        int i31 = 0;
        List<ProfileDTO> list2 = null;
        try {
            try {
                try {
                    try {
                        try {
                        } catch (CancellationException e) {
                            throw e;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        r12 = obj2;
                        r12.unlock(null);
                        throw th;
                    }
                } catch (CancellationException e2) {
                    throw e2;
                }
            } catch (CancellationException e3) {
                throw e3;
            }
        } catch (CancellationException e4) {
            e = e4;
        } catch (Throwable th3) {
            th = th3;
            str = "profilesEtag";
            i2 = i;
            str2 = "lastSyncTimestamp";
            str3 = PROFILES_SYNC_TIME_KEY;
            i4 = i3;
            sharedPreferences3 = sharedPreferences2;
            r15 = i30;
            str4 = PROFILES_SCHEMA_KEY;
            i5 = c2 == true ? 1 : 0;
            IsSuccessful = obj;
            str5 = SYNC_FAILURE_TIME_KEY;
            booleanRef2 = booleanRef;
        }
        switch (i30) {
            case 0:
                ResultKt.throwOnFailure(obj4);
                Mutex mutex2 = syncMutex;
                sharedPreferences7 = sharedPreferences;
                c12401.L$0 = sharedPreferences7;
                c12401.L$1 = mutex2;
                z7 = z;
                c12401.Z$0 = z7;
                c12401.I$0 = 0;
                c12401.label = 1;
                if (mutex2.lock(null, c12401) != coroutine_suspended) {
                    r12 = mutex2;
                    i26 = 0;
                    try {
                        apiClient = ApiClient.INSTANCE;
                        if (apiClient.getRequestsEnabled$TMessagesProj()) {
                            r10 = 1;
                            r12 = r12;
                        } else {
                            jCurrentTimeMillis = System.currentTimeMillis();
                            str2 = "lastSyncTimestamp";
                            if (z7) {
                                apiClient2 = apiClient;
                                z8 = z7;
                                i27 = i26;
                            } else {
                                apiClient2 = apiClient;
                                z8 = z7;
                                i27 = i26;
                                if (INSTANCE.elapsedSince(jCurrentTimeMillis, sharedPreferences7.getLong(SYNC_FAILURE_TIME_KEY, 0L)) < FAILURE_BACKOFF) {
                                    r10 = 0;
                                    r12 = r12;
                                }
                            }
                            int i32 = (z8 || INSTANCE.elapsedSince(jCurrentTimeMillis, sharedPreferences7.getLong(BOOSTY_SYNC_TIME_KEY, 0L)) >= BOOSTY_SYNC_INTERVAL) ? 1 : 0;
                            i6 = sharedPreferences7.getInt(PROFILES_SCHEMA_KEY, 0) != 1 ? 1 : 0;
                            int i33 = (z8 || i6 != 0 || INSTANCE.elapsedSince(jCurrentTimeMillis, sharedPreferences7.getLong(PROFILES_SYNC_TIME_KEY, 0L)) >= PROFILES_SYNC_INTERVAL) ? 1 : 0;
                            if (i32 == 0 && i33 == 0) {
                                r10 = 1;
                                r12 = r12;
                            } else {
                                Ref.BooleanRef booleanRef5 = new Ref.BooleanRef();
                                str = "profilesEtag";
                                booleanRef5.element = true;
                                if (i32 != 0) {
                                    try {
                                        try {
                                            ApiService apiService3 = apiClient2.getApiService();
                                            c12401.L$0 = sharedPreferences7;
                                            c12401.L$1 = r12;
                                            c12401.L$2 = booleanRef5;
                                            r15 = z8;
                                            try {
                                                c12401.Z$0 = r15;
                                                sharedPreferences8 = sharedPreferences7;
                                                int i34 = i27;
                                                try {
                                                    c12401.I$0 = i34;
                                                    i27 = i34;
                                                    try {
                                                        c12401.I$1 = 0;
                                                        c12401.J$0 = jCurrentTimeMillis;
                                                        c12401.I$2 = i32;
                                                        c12401.I$3 = i6;
                                                        c12401.I$4 = i33;
                                                        c12401.I$5 = 1;
                                                        c12401.label = 2;
                                                        boostySubscribers = apiService3.getBoostySubscribers(c12401);
                                                        break;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        str4 = PROFILES_SCHEMA_KEY;
                                                        str3 = PROFILES_SYNC_TIME_KEY;
                                                        str5 = SYNC_FAILURE_TIME_KEY;
                                                        int i35 = i32;
                                                        i7 = i33;
                                                        i2 = i27;
                                                        IsSuccessful = r12;
                                                        i31 = i35;
                                                        booleanRef2 = booleanRef5;
                                                        sharedPreferences3 = sharedPreferences8;
                                                        i5 = 1;
                                                        i4 = 0;
                                                        try {
                                                            FileLog.m1040e(th);
                                                            booleanRef2.element = false;
                                                            r152 = r15;
                                                            r17 = IsSuccessful;
                                                            i8 = i7;
                                                            r0 = r152;
                                                            r153 = r17;
                                                            i9 = i5;
                                                            i10 = i4;
                                                            j = jCurrentTimeMillis;
                                                            i12 = i6;
                                                            i11 = i31;
                                                            i13 = i2;
                                                            r02 = r0;
                                                            r154 = r153;
                                                            if (i8 == 0) {
                                                            }
                                                        } catch (Throwable th5) {
                                                            th = th5;
                                                            r12 = IsSuccessful;
                                                            r12.unlock(null);
                                                            throw th;
                                                        }
                                                    }
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                    i27 = i34;
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                sharedPreferences8 = sharedPreferences7;
                                                str4 = PROFILES_SCHEMA_KEY;
                                                str3 = PROFILES_SYNC_TIME_KEY;
                                                str5 = SYNC_FAILURE_TIME_KEY;
                                                int i352 = i32;
                                                i7 = i33;
                                                i2 = i27;
                                                IsSuccessful = r12;
                                                i31 = i352;
                                                booleanRef2 = booleanRef5;
                                                sharedPreferences3 = sharedPreferences8;
                                                i5 = 1;
                                                i4 = 0;
                                                FileLog.m1040e(th);
                                                booleanRef2.element = false;
                                                r152 = r15;
                                                r17 = IsSuccessful;
                                                i8 = i7;
                                                r0 = r152;
                                                r153 = r17;
                                                i9 = i5;
                                                i10 = i4;
                                                j = jCurrentTimeMillis;
                                                i12 = i6;
                                                i11 = i31;
                                                i13 = i2;
                                                r02 = r0;
                                                r154 = r153;
                                                if (i8 == 0) {
                                                }
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            r15 = z8;
                                        }
                                    } catch (CancellationException e5) {
                                        e = e5;
                                        r20 = r12;
                                    }
                                    if (boostySubscribers != coroutine_suspended) {
                                        str4 = PROFILES_SCHEMA_KEY;
                                        str3 = PROFILES_SYNC_TIME_KEY;
                                        str5 = SYNC_FAILURE_TIME_KEY;
                                        r4 = r12;
                                        sharedPreferences3 = sharedPreferences8;
                                        i5 = 1;
                                        booleanRef2 = booleanRef5;
                                        i31 = i32;
                                        i4 = 0;
                                        i7 = i33;
                                        i2 = i27;
                                        r15 = r15;
                                        try {
                                            response3 = (Response) boostySubscribers;
                                            IsSuccessful = response3.isSuccessful();
                                            try {
                                            } catch (CancellationException e6) {
                                                e = e6;
                                                r20 = IsSuccessful;
                                            } catch (Throwable th9) {
                                                th = th9;
                                                FileLog.m1040e(th);
                                                booleanRef2.element = false;
                                                r152 = r15;
                                                r17 = IsSuccessful;
                                                break;
                                            }
                                        } catch (CancellationException e7) {
                                            e = e7;
                                            IsSuccessful = r4;
                                        } catch (Throwable th10) {
                                            th = th10;
                                            IsSuccessful = r4;
                                            FileLog.m1040e(th);
                                            booleanRef2.element = false;
                                            r152 = r15;
                                            r17 = IsSuccessful;
                                            i8 = i7;
                                            r0 = r152;
                                            r153 = r17;
                                            i9 = i5;
                                            i10 = i4;
                                            j = jCurrentTimeMillis;
                                            i12 = i6;
                                            i11 = i31;
                                            i13 = i2;
                                            r02 = r0;
                                            r154 = r153;
                                            if (i8 == 0) {
                                            }
                                        }
                                        if (IsSuccessful != 0 || response3.body() == null) {
                                            r17 = r4;
                                            booleanRef2.element = false;
                                            r152 = r15;
                                            i8 = i7;
                                            r0 = r152;
                                            r153 = r17;
                                            i9 = i5;
                                            i10 = i4;
                                            j = jCurrentTimeMillis;
                                            i12 = i6;
                                            i11 = i31;
                                            i13 = i2;
                                            r02 = r0;
                                            r154 = r153;
                                            if (i8 == 0) {
                                                if (i12 != 0) {
                                                    str6 = str2;
                                                    string = null;
                                                    string2 = null;
                                                } else {
                                                    str6 = str2;
                                                    string = null;
                                                    try {
                                                        string2 = sharedPreferences3.getString(str6, null);
                                                    } catch (Throwable th11) {
                                                        th = th11;
                                                        z2 = true;
                                                        j2 = j;
                                                        sharedPreferences4 = sharedPreferences3;
                                                        booleanRef3 = booleanRef2;
                                                        i14 = z2 ? 1 : 0;
                                                        r123 = z2;
                                                        r155 = r154;
                                                        FileLog.m1040e(th);
                                                        booleanRef3.element = false;
                                                        sharedPreferences3 = sharedPreferences4;
                                                        i9 = i14;
                                                        booleanRef2 = booleanRef3;
                                                        j = j2;
                                                        r122 = r123;
                                                        r157 = r155;
                                                        if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                                        }
                                                        r12 = r157;
                                                        r10 = r102;
                                                        Boolean boolBoxBoolean = Boxing.boxBoolean(r10);
                                                        r12.unlock(null);
                                                        return boolBoxBoolean;
                                                    }
                                                }
                                                if (i12 != 0) {
                                                    str7 = str6;
                                                    str8 = str;
                                                } else {
                                                    str7 = str6;
                                                    str8 = str;
                                                    string = sharedPreferences3.getString(str8, string);
                                                }
                                                str9 = str8;
                                                apiService = ApiClient.INSTANCE.getApiService();
                                                if (string2 == null) {
                                                    try {
                                                        c12401.L$0 = sharedPreferences3;
                                                        c12401.L$1 = r154;
                                                        c12401.L$2 = booleanRef2;
                                                        str10 = string2;
                                                        c12401.L$3 = SpillingKt.nullOutSpilledVariable(str10);
                                                        c12401.L$4 = SpillingKt.nullOutSpilledVariable(string);
                                                        c12401.L$5 = SpillingKt.nullOutSpilledVariable(apiService);
                                                        c12401.Z$0 = r02;
                                                        c12401.I$0 = i13;
                                                        c12401.I$1 = i10;
                                                        c12401.J$0 = j;
                                                        c12401.I$2 = i11;
                                                        c12401.I$3 = i12;
                                                        c12401.I$4 = i8;
                                                        c12401.I$5 = 1;
                                                        c12401.label = 4;
                                                        allProfiles = apiService.getAllProfiles(string, c12401);
                                                    } catch (Throwable th12) {
                                                        th = th12;
                                                        j2 = j;
                                                        sharedPreferences4 = sharedPreferences3;
                                                        booleanRef3 = booleanRef2;
                                                        i14 = 1;
                                                        r156 = r154;
                                                        r123 = 1;
                                                        r155 = r156;
                                                        FileLog.m1040e(th);
                                                        booleanRef3.element = false;
                                                        sharedPreferences3 = sharedPreferences4;
                                                        i9 = i14;
                                                        booleanRef2 = booleanRef3;
                                                        j = j2;
                                                        r122 = r123;
                                                        r157 = r155;
                                                        if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                                        }
                                                        r12 = r157;
                                                        r10 = r102;
                                                        Boolean boolBoxBoolean2 = Boxing.boxBoolean(r10);
                                                        r12.unlock(null);
                                                        return boolBoxBoolean2;
                                                    }
                                                    if (allProfiles != coroutine_suspended) {
                                                        r19 = r02;
                                                        i15 = i8;
                                                        booleanRef3 = booleanRef2;
                                                        obj3 = allProfiles;
                                                        r9 = r154;
                                                        i16 = i13;
                                                        i17 = i10;
                                                        i18 = i11;
                                                        j3 = j;
                                                        i19 = 1;
                                                        str11 = str10;
                                                        try {
                                                            response = (Response) obj3;
                                                            i23 = i12;
                                                            j2 = j3;
                                                            str14 = string;
                                                            i24 = i15;
                                                            str15 = str11;
                                                            i22 = i19;
                                                            i25 = i16;
                                                            r94 = r9;
                                                            r193 = r19;
                                                            apiService2 = apiService;
                                                            r7 = r193;
                                                            try {
                                                            } catch (Throwable th13) {
                                                                th = th13;
                                                                sharedPreferences5 = sharedPreferences3;
                                                                z4 = true;
                                                            }
                                                        } catch (Throwable th14) {
                                                            th = th14;
                                                            i14 = i19;
                                                            sharedPreferences4 = sharedPreferences3;
                                                            j2 = j3;
                                                            z3 = true;
                                                            r93 = r9;
                                                            r155 = r93;
                                                            r123 = z3;
                                                        }
                                                        if (response.code() != 304) {
                                                            try {
                                                                SharedPreferences.Editor editorEdit = sharedPreferences3.edit();
                                                                editorEdit.putString(str7, INSTANCE.syncWatermark(response));
                                                                editorEdit.putLong(str3, j2);
                                                                editorEdit.apply();
                                                                sharedPreferences5 = sharedPreferences3;
                                                                z5 = true;
                                                                i9 = i22 == true ? 1 : 0;
                                                                r157 = r94;
                                                                j = j2;
                                                                sharedPreferences3 = sharedPreferences5;
                                                                booleanRef2 = booleanRef3;
                                                                r122 = z5;
                                                            } catch (Throwable th15) {
                                                                th = th15;
                                                                i14 = i22 == true ? 1 : 0;
                                                                sharedPreferences4 = sharedPreferences3;
                                                                r156 = r94;
                                                                r123 = 1;
                                                                r155 = r156;
                                                                FileLog.m1040e(th);
                                                                booleanRef3.element = false;
                                                                sharedPreferences3 = sharedPreferences4;
                                                                i9 = i14;
                                                                booleanRef2 = booleanRef3;
                                                                j = j2;
                                                                r122 = r123;
                                                                r157 = r155;
                                                            }
                                                        } else {
                                                            String str19 = str7;
                                                            String str20 = str3;
                                                            if (response.isSuccessful() && response.body() != null) {
                                                                str16 = str20;
                                                                List<ProfileDTO> list3 = (List) response.body();
                                                                if (list3.isEmpty()) {
                                                                    str17 = str19;
                                                                    r95 = r94;
                                                                    list = list3;
                                                                    i14 = i22;
                                                                    sharedPreferences4 = sharedPreferences3;
                                                                    r155 = r95;
                                                                    response2 = response;
                                                                    z6 = true;
                                                                    r123 = list;
                                                                    if (z6) {
                                                                    }
                                                                    sharedPreferences3 = sharedPreferences4;
                                                                    i9 = i14;
                                                                    booleanRef2 = booleanRef3;
                                                                    j = j2;
                                                                    r122 = r123;
                                                                    r157 = r155;
                                                                } else {
                                                                    str17 = str19;
                                                                    try {
                                                                        ApiController apiController = INSTANCE;
                                                                        c12401.L$0 = sharedPreferences3;
                                                                        c12401.L$1 = r94;
                                                                        c12401.L$2 = booleanRef3;
                                                                        sharedPreferences6 = sharedPreferences3;
                                                                        try {
                                                                            c12401.L$3 = SpillingKt.nullOutSpilledVariable(str15);
                                                                            c12401.L$4 = SpillingKt.nullOutSpilledVariable(str14);
                                                                            c12401.L$5 = SpillingKt.nullOutSpilledVariable(apiService2);
                                                                            c12401.L$6 = response;
                                                                            c12401.L$7 = SpillingKt.nullOutSpilledVariable(list3);
                                                                            c12401.Z$0 = r7;
                                                                            c12401.I$0 = i25;
                                                                            c12401.I$1 = i17;
                                                                            c12401.J$0 = j2;
                                                                            c12401.I$2 = i18;
                                                                            c12401.I$3 = i23;
                                                                            c12401.I$4 = i24;
                                                                            c12401.I$5 = i22 == true ? 1 : 0;
                                                                            c12401.label = 6;
                                                                            objStoreProfiles = apiController.storeProfiles(list3, c12401);
                                                                            coroutine_suspended = coroutine_suspended;
                                                                        } catch (Throwable th16) {
                                                                            th = th16;
                                                                            i14 = i22 == true ? 1 : 0;
                                                                            r156 = r94;
                                                                            sharedPreferences4 = sharedPreferences6;
                                                                            r123 = 1;
                                                                            r155 = r156;
                                                                        }
                                                                    } catch (Throwable th17) {
                                                                        th = th17;
                                                                        sharedPreferences6 = sharedPreferences3;
                                                                    }
                                                                    if (objStoreProfiles != coroutine_suspended) {
                                                                        i14 = i22 == true ? 1 : 0;
                                                                        r155 = r94;
                                                                        response2 = response;
                                                                        obj4 = objStoreProfiles;
                                                                        sharedPreferences4 = sharedPreferences6;
                                                                        list2 = list3;
                                                                        try {
                                                                        } catch (Throwable th18) {
                                                                            th = th18;
                                                                            r156 = r155;
                                                                            r123 = 1;
                                                                            r155 = r156;
                                                                        }
                                                                        if (((Boolean) obj4).booleanValue()) {
                                                                            z6 = false;
                                                                            r123 = list2;
                                                                            r155 = r155;
                                                                            if (z6) {
                                                                            }
                                                                            sharedPreferences3 = sharedPreferences4;
                                                                            i9 = i14;
                                                                            booleanRef2 = booleanRef3;
                                                                            j = j2;
                                                                            r122 = r123;
                                                                            r157 = r155;
                                                                        } else {
                                                                            sharedPreferences3 = sharedPreferences4;
                                                                            response = response2;
                                                                            r95 = r155;
                                                                            i22 = i14;
                                                                            list = list2;
                                                                            i14 = i22;
                                                                            sharedPreferences4 = sharedPreferences3;
                                                                            r155 = r95;
                                                                            response2 = response;
                                                                            z6 = true;
                                                                            r123 = list;
                                                                            try {
                                                                                if (z6) {
                                                                                    SharedPreferences.Editor editorEdit2 = sharedPreferences4.edit();
                                                                                    editorEdit2.putString(str17, INSTANCE.syncWatermark(response2));
                                                                                    String str21 = response2.headers().get("ETag");
                                                                                    String str22 = str9;
                                                                                    if (str21 != null) {
                                                                                        editorEdit2.putString(str22, str21);
                                                                                    } else {
                                                                                        editorEdit2.remove(str22);
                                                                                    }
                                                                                    editorEdit2.putLong(str16, j2);
                                                                                    r123 = 1;
                                                                                    editorEdit2.putInt(str4, 1);
                                                                                    editorEdit2.apply();
                                                                                } else {
                                                                                    r123 = 1;
                                                                                    booleanRef3.element = false;
                                                                                }
                                                                            } catch (Throwable th19) {
                                                                                th = th19;
                                                                                r123 = r123;
                                                                                r155 = r155;
                                                                                FileLog.m1040e(th);
                                                                                booleanRef3.element = false;
                                                                            }
                                                                            sharedPreferences3 = sharedPreferences4;
                                                                            i9 = i14;
                                                                            booleanRef2 = booleanRef3;
                                                                            j = j2;
                                                                            r122 = r123;
                                                                            r157 = r155;
                                                                        }
                                                                    }
                                                                }
                                                                break;
                                                            } else {
                                                                sharedPreferences5 = sharedPreferences3;
                                                                z4 = true;
                                                                z5 = true;
                                                                try {
                                                                    booleanRef3.element = false;
                                                                    i9 = i22 == true ? 1 : 0;
                                                                    r157 = r94;
                                                                    j = j2;
                                                                    sharedPreferences3 = sharedPreferences5;
                                                                    booleanRef2 = booleanRef3;
                                                                    r122 = z5;
                                                                } catch (Throwable th20) {
                                                                    th = th20;
                                                                    i14 = i22 == true ? 1 : 0;
                                                                    r155 = r94;
                                                                    sharedPreferences4 = sharedPreferences5;
                                                                    r123 = z4;
                                                                    FileLog.m1040e(th);
                                                                    booleanRef3.element = false;
                                                                    sharedPreferences3 = sharedPreferences4;
                                                                    i9 = i14;
                                                                    booleanRef2 = booleanRef3;
                                                                    j = j2;
                                                                    r122 = r123;
                                                                    r157 = r155;
                                                                }
                                                            }
                                                            i14 = i22 == true ? 1 : 0;
                                                            r155 = r94;
                                                            sharedPreferences4 = sharedPreferences5;
                                                            r123 = z4;
                                                            FileLog.m1040e(th);
                                                            booleanRef3.element = false;
                                                            sharedPreferences3 = sharedPreferences4;
                                                            i9 = i14;
                                                            booleanRef2 = booleanRef3;
                                                            j = j2;
                                                            r122 = r123;
                                                            r157 = r155;
                                                        }
                                                        if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                                            if (i9 != 0) {
                                                                SharedPreferences.Editor editorEdit3 = sharedPreferences3.edit();
                                                                if (booleanRef2.element) {
                                                                    editorEdit3.remove(str5);
                                                                } else {
                                                                    editorEdit3.putLong(str5, j);
                                                                }
                                                                editorEdit3.apply();
                                                            }
                                                            r102 = booleanRef2.element;
                                                        } else {
                                                            r102 = r122;
                                                        }
                                                        r12 = r157;
                                                        r10 = r102;
                                                    }
                                                } else {
                                                    String str23 = string2;
                                                    c12401.L$0 = sharedPreferences3;
                                                    c12401.L$1 = r154;
                                                    c12401.L$2 = booleanRef2;
                                                    c12401.L$3 = SpillingKt.nullOutSpilledVariable(str23);
                                                    c12401.L$4 = SpillingKt.nullOutSpilledVariable(string);
                                                    c12401.L$5 = SpillingKt.nullOutSpilledVariable(apiService);
                                                    c12401.Z$0 = r02;
                                                    c12401.I$0 = i13;
                                                    c12401.I$1 = i10;
                                                    c12401.J$0 = j;
                                                    c12401.I$2 = i11;
                                                    c12401.I$3 = i12;
                                                    c12401.I$4 = i8;
                                                    z2 = true;
                                                    try {
                                                        c12401.I$5 = 1;
                                                        c12401.label = 5;
                                                        str12 = str23;
                                                        r192 = r02;
                                                        updates = apiService.getUpdates(str12, string, c12401);
                                                    } catch (Throwable th21) {
                                                        th = th21;
                                                        j2 = j;
                                                        sharedPreferences4 = sharedPreferences3;
                                                        booleanRef3 = booleanRef2;
                                                        i14 = z2 ? 1 : 0;
                                                        r123 = z2;
                                                        r155 = r154;
                                                    }
                                                    if (updates != coroutine_suspended) {
                                                        str13 = string;
                                                        i20 = i11;
                                                        long j4 = j;
                                                        i21 = i8;
                                                        booleanRef3 = booleanRef2;
                                                        r92 = r154;
                                                        i22 = 1;
                                                        i23 = i12;
                                                        j2 = j4;
                                                        try {
                                                            response = (Response) updates;
                                                            int i36 = i20;
                                                            i24 = i21;
                                                            i25 = i13;
                                                            i17 = i10;
                                                            i18 = i36;
                                                            str14 = str13;
                                                            str15 = str12;
                                                            r94 = r92;
                                                            r193 = r192;
                                                            apiService2 = apiService;
                                                            r7 = r193;
                                                            if (response.code() != 304) {
                                                            }
                                                        } catch (Throwable th22) {
                                                            th = th22;
                                                            z3 = true;
                                                            i14 = i22 == true ? 1 : 0;
                                                            sharedPreferences4 = sharedPreferences3;
                                                            r93 = r92;
                                                            r155 = r93;
                                                            r123 = z3;
                                                        }
                                                        if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                                        }
                                                        r12 = r157;
                                                        r10 = r102;
                                                    }
                                                }
                                            } else {
                                                r122 = 1;
                                                r157 = r154;
                                                if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                                                }
                                                r12 = r157;
                                                r10 = r102;
                                            }
                                            break;
                                        } else {
                                            DatabaseHelper databaseHelper = DatabaseHelper.INSTANCE;
                                            Object objBody = response3.body();
                                            str18 = BOOSTY_SYNC_TIME_KEY;
                                            List<BoostySubscriberDTO> list4 = (List) objBody;
                                            c12401.L$0 = sharedPreferences3;
                                            c12401.L$1 = r4;
                                            c12401.L$2 = booleanRef2;
                                            ?? r172 = r4;
                                            c12401.L$3 = SpillingKt.nullOutSpilledVariable(response3);
                                            c12401.Z$0 = r15;
                                            c12401.I$0 = i2;
                                            c12401.I$1 = i4;
                                            c12401.J$0 = jCurrentTimeMillis;
                                            c12401.I$2 = i31;
                                            c12401.I$3 = i6;
                                            c12401.I$4 = i7;
                                            c12401.I$5 = i5 == true ? 1 : 0;
                                            c12401.label = 3;
                                            objInsertBoostySubscribers = databaseHelper.insertBoostySubscribers(list4, c12401);
                                            if (objInsertBoostySubscribers != coroutine_suspended) {
                                                r4 = r172;
                                                i9 = i5 == true ? 1 : 0;
                                                z9 = r15 == true ? 1 : 0;
                                                i28 = i4;
                                                try {
                                                    if (((Boolean) objInsertBoostySubscribers).booleanValue()) {
                                                        booleanRef2.element = false;
                                                    } else {
                                                        SharedPreferences.Editor editorEdit4 = sharedPreferences3.edit();
                                                        editorEdit4.putLong(str18, jCurrentTimeMillis);
                                                        editorEdit4.apply();
                                                    }
                                                    r0 = z9;
                                                    i8 = i7;
                                                    i10 = i28;
                                                    r153 = r4;
                                                } catch (CancellationException e8) {
                                                    e = e8;
                                                    r20 = r4;
                                                } catch (Throwable th23) {
                                                    th = th23;
                                                    i4 = i28;
                                                    r15 = z9;
                                                    i5 = i9 == true ? 1 : 0;
                                                    IsSuccessful = r4;
                                                    FileLog.m1040e(th);
                                                    booleanRef2.element = false;
                                                    r152 = r15;
                                                    r17 = IsSuccessful;
                                                    i8 = i7;
                                                    r0 = r152;
                                                    r153 = r17;
                                                    i9 = i5;
                                                    i10 = i4;
                                                }
                                                j = jCurrentTimeMillis;
                                                i12 = i6;
                                                i11 = i31;
                                                i13 = i2;
                                                r02 = r0;
                                                r154 = r153;
                                                if (i8 == 0) {
                                                }
                                            }
                                        }
                                        r20 = IsSuccessful;
                                        try {
                                            throw e;
                                        } catch (Throwable th24) {
                                            th = th24;
                                            r12 = r20;
                                            r12.unlock(null);
                                            throw th;
                                        }
                                    }
                                } else {
                                    SharedPreferences sharedPreferences10 = sharedPreferences7;
                                    str4 = PROFILES_SCHEMA_KEY;
                                    str3 = PROFILES_SYNC_TIME_KEY;
                                    str5 = SYNC_FAILURE_TIME_KEY;
                                    i8 = i33;
                                    booleanRef2 = booleanRef5;
                                    j = jCurrentTimeMillis;
                                    r02 = z8;
                                    sharedPreferences3 = sharedPreferences10;
                                    i11 = i32;
                                    i12 = i6;
                                    r154 = r12;
                                    i13 = i27;
                                    i10 = 0;
                                    i9 = 0;
                                    if (i8 == 0) {
                                    }
                                }
                            }
                        }
                        Boolean boolBoxBoolean22 = Boxing.boxBoolean(r10);
                        r12.unlock(null);
                        return boolBoxBoolean22;
                    } catch (Throwable th25) {
                        th = th25;
                        r12.unlock(null);
                        throw th;
                    }
                }
                return coroutine_suspended;
            case 1:
                int i37 = c12401.I$0;
                boolean z10 = c12401.Z$0;
                Mutex mutex3 = (Mutex) c12401.L$1;
                SharedPreferences sharedPreferences11 = (SharedPreferences) c12401.L$0;
                ResultKt.throwOnFailure(obj4);
                r12 = mutex3;
                z7 = z10;
                sharedPreferences7 = sharedPreferences11;
                i26 = i37;
                apiClient = ApiClient.INSTANCE;
                if (apiClient.getRequestsEnabled$TMessagesProj()) {
                }
                Boolean boolBoxBoolean222 = Boxing.boxBoolean(r10);
                r12.unlock(null);
                return boolBoxBoolean222;
            case 2:
                int i38 = c12401.I$5;
                i7 = c12401.I$4;
                i6 = c12401.I$3;
                i31 = c12401.I$2;
                jCurrentTimeMillis = c12401.J$0;
                int i39 = c12401.I$1;
                int i40 = c12401.I$0;
                boolean z11 = c12401.Z$0;
                Ref.BooleanRef booleanRef6 = (Ref.BooleanRef) c12401.L$2;
                Mutex mutex4 = (Mutex) c12401.L$1;
                SharedPreferences sharedPreferences12 = (SharedPreferences) c12401.L$0;
                ResultKt.throwOnFailure(obj4);
                str = "profilesEtag";
                i2 = i40;
                str3 = PROFILES_SYNC_TIME_KEY;
                boostySubscribers = obj4;
                sharedPreferences3 = sharedPreferences12;
                str4 = PROFILES_SCHEMA_KEY;
                str2 = "lastSyncTimestamp";
                i4 = i39;
                r4 = mutex4;
                r15 = z11;
                str5 = SYNC_FAILURE_TIME_KEY;
                i5 = i38;
                booleanRef2 = booleanRef6;
                response3 = (Response) boostySubscribers;
                IsSuccessful = response3.isSuccessful();
                if (IsSuccessful != 0) {
                }
                r17 = r4;
                booleanRef2.element = false;
                r152 = r15;
                i8 = i7;
                r0 = r152;
                r153 = r17;
                i9 = i5;
                i10 = i4;
                j = jCurrentTimeMillis;
                i12 = i6;
                i11 = i31;
                i13 = i2;
                r02 = r0;
                r154 = r153;
                if (i8 == 0) {
                }
                break;
            case 3:
                int i41 = c12401.I$5;
                i7 = c12401.I$4;
                i6 = c12401.I$3;
                i31 = c12401.I$2;
                jCurrentTimeMillis = c12401.J$0;
                i28 = c12401.I$1;
                i9 = i41;
                int i42 = c12401.I$0;
                z9 = c12401.Z$0;
                Ref.BooleanRef booleanRef7 = (Ref.BooleanRef) c12401.L$2;
                Mutex mutex5 = (Mutex) c12401.L$1;
                SharedPreferences sharedPreferences13 = (SharedPreferences) c12401.L$0;
                ResultKt.throwOnFailure(obj4);
                str = "profilesEtag";
                i2 = i42;
                str18 = BOOSTY_SYNC_TIME_KEY;
                str3 = PROFILES_SYNC_TIME_KEY;
                objInsertBoostySubscribers = obj4;
                sharedPreferences3 = sharedPreferences13;
                str4 = PROFILES_SCHEMA_KEY;
                str2 = "lastSyncTimestamp";
                r4 = mutex5;
                str5 = SYNC_FAILURE_TIME_KEY;
                booleanRef2 = booleanRef7;
                if (((Boolean) objInsertBoostySubscribers).booleanValue()) {
                }
                r0 = z9;
                i8 = i7;
                i10 = i28;
                r153 = r4;
                j = jCurrentTimeMillis;
                i12 = i6;
                i11 = i31;
                i13 = i2;
                r02 = r0;
                r154 = r153;
                if (i8 == 0) {
                }
                break;
            case 4:
                int i43 = c12401.I$5;
                int i44 = c12401.I$4;
                int i45 = c12401.I$3;
                i18 = c12401.I$2;
                j2 = c12401.J$0;
                i17 = c12401.I$1;
                i16 = c12401.I$0;
                boolean z12 = c12401.Z$0;
                i15 = i44;
                ApiService apiService4 = (ApiService) c12401.L$5;
                String str24 = (String) c12401.L$4;
                String str25 = (String) c12401.L$3;
                booleanRef4 = (Ref.BooleanRef) c12401.L$2;
                mutex = (Mutex) c12401.L$1;
                sharedPreferences9 = (SharedPreferences) c12401.L$0;
                try {
                    ResultKt.throwOnFailure(obj4);
                    i12 = i45;
                    booleanRef3 = booleanRef4;
                    r19 = z12;
                    j3 = j2;
                    str5 = SYNC_FAILURE_TIME_KEY;
                    r9 = mutex;
                    str3 = PROFILES_SYNC_TIME_KEY;
                    obj3 = obj4;
                    sharedPreferences3 = sharedPreferences9;
                    str4 = PROFILES_SCHEMA_KEY;
                    str7 = "lastSyncTimestamp";
                    apiService = apiService4;
                    i19 = i43;
                    str11 = str25;
                    str9 = "profilesEtag";
                    string = str24;
                    response = (Response) obj3;
                    i23 = i12;
                    j2 = j3;
                    str14 = string;
                    i24 = i15;
                    str15 = str11;
                    i22 = i19;
                    i25 = i16;
                    r94 = r9;
                    r193 = r19;
                    apiService2 = apiService;
                    r7 = r193;
                    if (response.code() != 304) {
                    }
                } catch (Throwable th26) {
                    th = th26;
                    i14 = i43;
                    booleanRef3 = booleanRef4;
                    r155 = mutex;
                    sharedPreferences4 = sharedPreferences9;
                    r123 = 1;
                    str5 = SYNC_FAILURE_TIME_KEY;
                    break;
                }
                if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                }
                r12 = r157;
                r10 = r102;
                Boolean boolBoxBoolean2222 = Boxing.boxBoolean(r10);
                r12.unlock(null);
                return boolBoxBoolean2222;
            case 5:
                i22 = c12401.I$5;
                int i46 = c12401.I$4;
                int i47 = c12401.I$3;
                int i48 = c12401.I$2;
                i23 = i47;
                long j5 = c12401.J$0;
                i10 = c12401.I$1;
                i13 = c12401.I$0;
                boolean z13 = c12401.Z$0;
                ApiService apiService5 = (ApiService) c12401.L$5;
                str13 = (String) c12401.L$4;
                String str26 = (String) c12401.L$3;
                booleanRef4 = (Ref.BooleanRef) c12401.L$2;
                mutex = (Mutex) c12401.L$1;
                sharedPreferences9 = (SharedPreferences) c12401.L$0;
                try {
                    ResultKt.throwOnFailure(obj4);
                    str9 = "profilesEtag";
                    i20 = i48;
                    j2 = j5;
                    str12 = str26;
                    str5 = SYNC_FAILURE_TIME_KEY;
                    r92 = mutex;
                    str3 = PROFILES_SYNC_TIME_KEY;
                    updates = obj4;
                    sharedPreferences3 = sharedPreferences9;
                    str4 = PROFILES_SCHEMA_KEY;
                    i21 = i46;
                    str7 = "lastSyncTimestamp";
                    booleanRef3 = booleanRef4;
                    r192 = z13;
                    apiService = apiService5;
                    response = (Response) updates;
                    int i362 = i20;
                    i24 = i21;
                    i25 = i13;
                    i17 = i10;
                    i18 = i362;
                    str14 = str13;
                    str15 = str12;
                    r94 = r92;
                    r193 = r192;
                    apiService2 = apiService;
                    r7 = r193;
                    if (response.code() != 304) {
                    }
                } catch (Throwable th27) {
                    th = th27;
                    i14 = i22;
                    j2 = j5;
                    booleanRef3 = booleanRef4;
                    r155 = mutex;
                    sharedPreferences4 = sharedPreferences9;
                    r123 = 1;
                    str5 = SYNC_FAILURE_TIME_KEY;
                    break;
                }
                if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
                }
                r12 = r157;
                r10 = r102;
                Boolean boolBoxBoolean22222 = Boxing.boxBoolean(r10);
                r12.unlock(null);
                return boolBoxBoolean22222;
            case 6:
                i14 = c12401.I$5;
                j2 = c12401.J$0;
                response2 = (Response) c12401.L$6;
                booleanRef3 = (Ref.BooleanRef) c12401.L$2;
                Mutex mutex6 = (Mutex) c12401.L$1;
                sharedPreferences4 = (SharedPreferences) c12401.L$0;
                try {
                    ResultKt.throwOnFailure(obj4);
                    str4 = PROFILES_SCHEMA_KEY;
                    str9 = "profilesEtag";
                    str17 = "lastSyncTimestamp";
                    str16 = PROFILES_SYNC_TIME_KEY;
                    str5 = SYNC_FAILURE_TIME_KEY;
                    r155 = mutex6;
                    if (((Boolean) obj4).booleanValue()) {
                    }
                } catch (Throwable th28) {
                    th = th28;
                    str5 = SYNC_FAILURE_TIME_KEY;
                    r156 = mutex6;
                    r123 = 1;
                    r155 = r156;
                    break;
                }
                break;
            default:
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object storeProfiles(List<ProfileDTO> list, Continuation<? super Boolean> continuation) {
        C12421 c12421;
        List list2;
        List<ProfileDTO> list3;
        boolean z;
        List<ProfileDTO> list4;
        int i;
        List<ProfileDTO> list5;
        int i2;
        if (continuation instanceof C12421) {
            c12421 = (C12421) continuation;
            int i3 = c12421.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c12421.label = i3 - Integer.MIN_VALUE;
            } else {
                c12421 = new C12421(continuation);
            }
        }
        Object objDeleteProfiles = c12421.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c12421.label;
        boolean z2 = false;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objDeleteProfiles);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (Intrinsics.areEqual(((ProfileDTO) obj).getDeleted(), Boxing.boxBoolean(true))) {
                    arrayList.add(obj);
                } else {
                    arrayList2.add(obj);
                }
            }
            Pair pair = new Pair(arrayList, arrayList2);
            list2 = (List) pair.component1();
            list3 = (List) pair.component2();
            if (!list2.isEmpty()) {
                DatabaseHelper databaseHelper = DatabaseHelper.INSTANCE;
                List list6 = list2;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list6, 10));
                Iterator it = list6.iterator();
                while (it.hasNext()) {
                    arrayList3.add(Boxing.boxLong(((ProfileDTO) it.next()).getId()));
                }
                c12421.L$0 = list;
                c12421.L$1 = SpillingKt.nullOutSpilledVariable(list2);
                c12421.L$2 = list3;
                c12421.I$0 = 1;
                c12421.label = 1;
                objDeleteProfiles = databaseHelper.deleteProfiles(arrayList3, c12421);
                if (objDeleteProfiles != coroutine_suspended) {
                    list4 = list;
                    i = 1;
                }
                return coroutine_suspended;
            }
            z = true;
            if (!list3.isEmpty()) {
                DatabaseHelper databaseHelper2 = DatabaseHelper.INSTANCE;
                c12421.L$0 = list;
                c12421.L$1 = SpillingKt.nullOutSpilledVariable(list2);
                c12421.L$2 = SpillingKt.nullOutSpilledVariable(list3);
                c12421.I$0 = z ? 1 : 0;
                c12421.label = 2;
                Object objInsertProfiles = databaseHelper2.insertProfiles(list3, c12421);
                if (objInsertProfiles != coroutine_suspended) {
                    list5 = list;
                    i2 = z ? 1 : 0;
                    objDeleteProfiles = objInsertProfiles;
                    if (((Boolean) objDeleteProfiles).booleanValue()) {
                        z2 = true;
                    }
                    list = list5;
                    z = z2;
                }
                return coroutine_suspended;
            }
            if (z) {
            }
            return Boxing.boxBoolean(z);
        }
        if (i4 != 1) {
            if (i4 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i2 = c12421.I$0;
            list5 = (List) c12421.L$0;
            ResultKt.throwOnFailure(objDeleteProfiles);
            if (((Boolean) objDeleteProfiles).booleanValue() && i2 != 0) {
                z2 = true;
            }
            list = list5;
            z = z2;
            if (z) {
                BadgesController.INSTANCE.onProfilesSynced(list);
            }
            return Boxing.boxBoolean(z);
        }
        i = c12421.I$0;
        list3 = (List) c12421.L$2;
        list2 = (List) c12421.L$1;
        list4 = (List) c12421.L$0;
        ResultKt.throwOnFailure(objDeleteProfiles);
        z = ((Boolean) objDeleteProfiles).booleanValue() && i != 0;
        list = list4;
        if (!list3.isEmpty()) {
        }
        if (z) {
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.ApiController$refreshProfiles$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "com.exteragram.messenger.api.ApiController$refreshProfiles$1", m921f = "ApiController.kt", m922i = {0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2}, m923l = {289, Opcodes.ADD_INT_LIT8, 229}, m924m = "invokeSuspend", m925n = {"$this$withLock_u24default$iv", "$i$f$withLock", "$this$withLock_u24default$iv", "profiles", "$i$f$withLock", "$i$a$-withLock$default-ApiController$refreshProfiles$1$1", "id", "$this$withLock_u24default$iv", "profiles", "$i$f$withLock", "$i$a$-withLock$default-ApiController$refreshProfiles$1$1"}, m926s = {"L$0", "I$0", "L$0", "L$2", "I$0", "I$1", "J$0", "L$0", "L$1", "I$0", "I$1"})
    @SourceDebugExtension({"SMAP\nApiController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiController.kt\ncom/exteragram/messenger/api/ApiController$refreshProfiles$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n117#2,7:285\n125#2,2:293\n1#3:292\n*S KotlinDebug\n*F\n+ 1 ApiController.kt\ncom/exteragram/messenger/api/ApiController$refreshProfiles$1\n*L\n212#1:285,7\n212#1:293,2\n*E\n"})
    public static final class C12411 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long[] $ids;
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12411(long[] jArr, Continuation<? super C12411> continuation) {
            super(2, continuation);
            this.$ids = jArr;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12411(this.$ids, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12411) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:54:0x012e, code lost:
        
            if (r0.storeProfiles(r14, r1) == r2) goto L55;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0098 A[Catch: all -> 0x010e, TRY_LEAVE, TryCatch #5 {all -> 0x010e, blocks: (B:28:0x0098, B:46:0x0105, B:51:0x0112, B:53:0x0118, B:26:0x008a), top: B:62:0x000d }] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00c7 A[Catch: all -> 0x00d7, CancellationException -> 0x00d9, TryCatch #5 {CancellationException -> 0x00d9, all -> 0x00d7, blocks: (B:33:0x00bf, B:35:0x00c7, B:37:0x00cf, B:29:0x009d, B:42:0x00dc, B:44:0x00e4), top: B:66:0x00bf }] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00dc A[Catch: all -> 0x00d7, CancellationException -> 0x00d9, TryCatch #5 {CancellationException -> 0x00d9, all -> 0x00d7, blocks: (B:33:0x00bf, B:35:0x00c7, B:37:0x00cf, B:29:0x009d, B:42:0x00dc, B:44:0x00e4), top: B:66:0x00bf }] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0112 A[Catch: all -> 0x010e, TRY_ENTER, TryCatch #5 {all -> 0x010e, blocks: (B:28:0x0098, B:46:0x0105, B:51:0x0112, B:53:0x0118, B:26:0x008a), top: B:62:0x000d }] */
        /* JADX WARN: Type inference failed for: r0v12, types: [com.exteragram.messenger.api.network.ApiService] */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r1v0, types: [com.exteragram.messenger.api.ApiController$refreshProfiles$1, kotlin.coroutines.Continuation] */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v5, types: [kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r1v9 */
        /* JADX WARN: Type inference failed for: r9v10 */
        /* JADX WARN: Type inference failed for: r9v11 */
        /* JADX WARN: Type inference failed for: r9v12 */
        /* JADX WARN: Type inference failed for: r9v13 */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v15 */
        /* JADX WARN: Type inference failed for: r9v16 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v19 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v20 */
        /* JADX WARN: Type inference failed for: r9v21 */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Type inference failed for: r9v7 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00bd -> B:66:0x00bf). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Throwable {
            long[] jArr;
            ?? r9;
            int i;
            int i2;
            int i3;
            long[] jArr2;
            ArrayList arrayList;
            int length;
            int i4;
            boolean z;
            ?? r92;
            boolean z2;
            Throwable th;
            ?? r93;
            ?? r1;
            Object profile;
            long j;
            ?? r94;
            ?? r95;
            ?? r12 = this;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i5 = r12.label;
            boolean z3 = false;
            boolean z4 = true;
            try {
                try {
                    if (i5 == 0) {
                        ResultKt.throwOnFailure(obj);
                        ?? r0 = ApiController.syncMutex;
                        jArr = r12.$ids;
                        r12.L$0 = r0;
                        r12.L$1 = jArr;
                        r12.I$0 = 0;
                        r12.label = 1;
                        if (r0.lock(null, r12) != coroutine_suspended) {
                            r9 = r0;
                            i = 0;
                        }
                        return coroutine_suspended;
                    }
                    if (i5 != 1) {
                        if (i5 != 2) {
                            if (i5 != 3) {
                                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            Mutex mutex = (Mutex) r12.L$0;
                            ResultKt.throwOnFailure(obj);
                            r1 = mutex;
                            Unit unit = Unit.INSTANCE;
                            r1.unlock(null);
                            return Unit.INSTANCE;
                        }
                        long j2 = r12.J$0;
                        length = r12.I$3;
                        i4 = r12.I$2;
                        i3 = r12.I$1;
                        i2 = r12.I$0;
                        arrayList = (ArrayList) r12.L$2;
                        jArr2 = (long[]) r12.L$1;
                        Mutex mutex2 = (Mutex) r12.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                            profile = obj;
                            j = j2;
                            r95 = mutex2;
                            z2 = false;
                            z = true;
                        } catch (CancellationException e) {
                            throw e;
                        } catch (Throwable th2) {
                            th = th2;
                            z2 = false;
                            r92 = mutex2;
                            z = true;
                            FileLog.m1040e(th);
                            r94 = r92;
                            i4++;
                            z3 = z2;
                            z4 = z;
                            r93 = r94;
                            if (i4 < length) {
                            }
                            return coroutine_suspended;
                        }
                        try {
                        } catch (CancellationException e2) {
                            throw e2;
                        } catch (Throwable th3) {
                            th = th3;
                            r92 = r95;
                            FileLog.m1040e(th);
                            r94 = r92;
                            i4++;
                            z3 = z2;
                            z4 = z;
                            r93 = r94;
                            if (i4 < length) {
                            }
                            return coroutine_suspended;
                        }
                        Response response = (Response) profile;
                        if (!response.isSuccessful()) {
                            ProfileDTO profileDTO = (ProfileDTO) response.body();
                            r94 = r95;
                            if (profileDTO != null) {
                                Boxing.boxBoolean(arrayList.add(profileDTO));
                                r94 = r95;
                            }
                        } else {
                            r94 = r95;
                            if (response.code() == 404) {
                                arrayList.add(new ProfileDTO(j, ProfileType.USER, ProfileStatus.DEFAULT, null, null, Boxing.boxBoolean(z), Boxing.boxBoolean(z2), null, 128, null));
                                r94 = r95;
                            }
                        }
                        i4++;
                        z3 = z2;
                        z4 = z;
                        r93 = r94;
                        if (i4 < length) {
                            z2 = z3;
                            z = z4;
                            long j3 = jArr2[i4];
                            ?? apiService = ApiClient.INSTANCE.getApiService();
                            r12.L$0 = r93;
                            r12.L$1 = jArr2;
                            r12.L$2 = arrayList;
                            r12.I$0 = i2;
                            r12.I$1 = i3;
                            r12.I$2 = i4;
                            r12.I$3 = length;
                            r12.J$0 = j3;
                            r12.label = 2;
                            profile = apiService.getProfile(j3, r12);
                            if (profile != coroutine_suspended) {
                                j = j3;
                                r95 = r93;
                                Response response2 = (Response) profile;
                                if (!response2.isSuccessful()) {
                                }
                                i4++;
                                z3 = z2;
                                z4 = z;
                                r93 = r94;
                                if (i4 < length) {
                                    if (!arrayList.isEmpty()) {
                                        ApiController apiController = ApiController.INSTANCE;
                                        r12.L$0 = r93;
                                        r12.L$1 = SpillingKt.nullOutSpilledVariable(arrayList);
                                        r12.L$2 = null;
                                        r12.I$0 = i2;
                                        r12.I$1 = i3;
                                        r12.label = 3;
                                    }
                                    r1 = r93;
                                    Unit unit2 = Unit.INSTANCE;
                                    r1.unlock(null);
                                    return Unit.INSTANCE;
                                }
                            }
                        }
                        return coroutine_suspended;
                    }
                    i = r12.I$0;
                    jArr = (long[]) r12.L$1;
                    Mutex mutex3 = (Mutex) r12.L$0;
                    ResultKt.throwOnFailure(obj);
                    r9 = mutex3;
                    i2 = i;
                    i3 = 0;
                    jArr2 = jArr;
                    arrayList = new ArrayList();
                    length = jArr.length;
                    i4 = 0;
                    r93 = r9;
                    if (i4 < length) {
                    }
                    return coroutine_suspended;
                } catch (Throwable th4) {
                    th = th4;
                    r12.unlock(null);
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                r12 = r93;
                r12.unlock(null);
                throw th;
            }
        }
    }

    @JvmStatic
    public static final void refreshProfiles(long... ids) {
        if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C12411(ids, null), 3, null);
        }
    }

    private final String syncWatermark(Response<?> response) {
        String str = response.headers().get(SYNC_TIMESTAMP_HEADER);
        if (str != null) {
            try {
                return Instant.parse(str).toString();
            } catch (DateTimeParseException e) {
                FileLog.m1040e(e);
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
            FileLog.m1040e(th);
        }
    }
}
