package com.exteragram.messenger.api;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.Constraints;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.dto.ProfileDTO;
import com.exteragram.messenger.api.network.ApiClient;
import com.exteragram.messenger.api.network.ApiService;
import com.exteragram.messenger.api.p010db.DatabaseHelper;
import com.exteragram.messenger.api.worker.SyncWorker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.p029ui.Components.ForegroundDetector;
import p022j$.time.Duration;
import p022j$.time.Instant;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public final class ApiController {
    private static long lastBoostySyncTime;
    private static long lastExchangeRatesSyncTime;
    private static long lastProfilesSyncTime;
    public static final ApiController INSTANCE = new ApiController();
    private static final CoroutineScope scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());

    /* JADX INFO: renamed from: com.exteragram.messenger.api.ApiController$performSync$1 */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.ApiController", m1084f = "ApiController.kt", m1085l = {77, 79, 94, 96, 103, 106}, m1086m = "performSync", m1087v = 1)
    static final class C10371 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C10371(Continuation<? super C10371> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ApiController.this.performSync(null, false, this);
        }
    }

    public static final void sync() {
        sync$default(null, false, 3, null);
    }

    public static final void sync(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        sync$default(preferences, false, 2, null);
    }

    private ApiController() {
    }

    public static final void init() {
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

    public static /* synthetic */ void sync$default(SharedPreferences preferences, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            preferences = ExteraConfig.preferences;
            Intrinsics.checkNotNullExpressionValue(preferences, "preferences");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        sync(preferences, z);
    }

    public static final void sync(SharedPreferences preferences, boolean z) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z2 = true;
        boolean z3 = z || jCurrentTimeMillis - lastProfilesSyncTime >= Duration.ofMinutes(8L).toMillis();
        boolean z4 = z || jCurrentTimeMillis - lastBoostySyncTime >= Duration.ofMinutes(40L).toMillis();
        if (!z && jCurrentTimeMillis - lastExchangeRatesSyncTime < Duration.ofHours(2L).toMillis()) {
            z2 = false;
        }
        if (z3 || z4 || z2) {
            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10381(preferences, z, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.ApiController$sync$1 */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.ApiController$sync$1", m1084f = "ApiController.kt", m1085l = {66}, m1086m = "invokeSuspend", m1087v = 1)
    static final class C10381 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $force;
        final /* synthetic */ SharedPreferences $preferences;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10381(SharedPreferences sharedPreferences, boolean z, Continuation<? super C10381> continuation) {
            super(2, continuation);
            this.$preferences = sharedPreferences;
            this.$force = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10381(this.$preferences, this.$force, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10381) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ApiController apiController = ApiController.INSTANCE;
                SharedPreferences sharedPreferences = this.$preferences;
                boolean z = this.$force;
                this.label = 1;
                if (apiController.performSync(sharedPreferences, z, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ Object performSync$default(ApiController apiController, SharedPreferences preferences, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            preferences = ExteraConfig.preferences;
            Intrinsics.checkNotNullExpressionValue(preferences, "preferences");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return apiController.performSync(preferences, z, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 7, insn: 0x00d4: MOVE (r19 I:??[long, double]) = (r7 I:??[long, double]), block:B:30:0x00d4 */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x00d8: MOVE (r5 I:??[OBJECT, ARRAY]) = (r9 I:??[OBJECT, ARRAY]), block:B:30:0x00d4 */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02e9 A[Catch: all -> 0x024c, TryCatch #4 {all -> 0x024c, blocks: (B:120:0x032c, B:111:0x02e0, B:113:0x02e9, B:92:0x023e, B:94:0x0248, B:97:0x024f, B:99:0x0259, B:101:0x0279, B:102:0x028f, B:104:0x0295, B:105:0x02a7), top: B:137:0x023e }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0138 A[Catch: all -> 0x0165, TryCatch #1 {all -> 0x0165, blocks: (B:53:0x0162, B:46:0x0130, B:48:0x0138, B:50:0x013e), top: B:131:0x0130 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0172 A[PHI: r1 r5 r7 r8
  0x0172: PHI (r1v3 ??) = (r1v27 ??), (r1v28 ??), (r1v29 ??), (r1v30 ??), (r1v31 ??) binds: [B:61:0x016f, B:39:0x010e, B:47:0x0136, B:49:0x013c, B:53:0x0162] A[DONT_GENERATE, DONT_INLINE]
  0x0172: PHI (r5v3 android.content.SharedPreferences) = 
  (r5v2 android.content.SharedPreferences)
  (r5v13 android.content.SharedPreferences)
  (r5v14 android.content.SharedPreferences)
  (r5v14 android.content.SharedPreferences)
  (r5v18 android.content.SharedPreferences)
 binds: [B:61:0x016f, B:39:0x010e, B:47:0x0136, B:49:0x013c, B:53:0x0162] A[DONT_GENERATE, DONT_INLINE]
  0x0172: PHI (r7v3 int) = (r7v2 int), (r7v27 int), (r7v28 int), (r7v28 int), (r7v32 int) binds: [B:61:0x016f, B:39:0x010e, B:47:0x0136, B:49:0x013c, B:53:0x0162] A[DONT_GENERATE, DONT_INLINE]
  0x0172: PHI (r8v2 long) = (r8v1 long), (r8v10 long), (r8v11 long), (r8v11 long), (r8v14 long) binds: [B:61:0x016f, B:39:0x010e, B:47:0x0136, B:49:0x013c, B:53:0x0162] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0198 A[Catch: all -> 0x005d, TryCatch #5 {all -> 0x005d, blocks: (B:13:0x0056, B:18:0x0084, B:21:0x009d, B:80:0x01f3, B:81:0x01f6, B:83:0x01fc, B:85:0x0202, B:87:0x0215, B:88:0x0226, B:90:0x022c, B:24:0x00b4, B:74:0x01c0, B:68:0x018c, B:70:0x0198, B:76:0x01cb), top: B:130:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01cb A[Catch: all -> 0x005d, TryCatch #5 {all -> 0x005d, blocks: (B:13:0x0056, B:18:0x0084, B:21:0x009d, B:80:0x01f3, B:81:0x01f6, B:83:0x01fc, B:85:0x0202, B:87:0x0215, B:88:0x0226, B:90:0x022c, B:24:0x00b4, B:74:0x01c0, B:68:0x018c, B:70:0x0198, B:76:0x01cb), top: B:130:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01fc A[Catch: all -> 0x005d, TryCatch #5 {all -> 0x005d, blocks: (B:13:0x0056, B:18:0x0084, B:21:0x009d, B:80:0x01f3, B:81:0x01f6, B:83:0x01fc, B:85:0x0202, B:87:0x0215, B:88:0x0226, B:90:0x022c, B:24:0x00b4, B:74:0x01c0, B:68:0x018c, B:70:0x0198, B:76:0x01cb), top: B:130:0x002b }] */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object performSync(SharedPreferences sharedPreferences, boolean z, Continuation<? super Boolean> continuation) {
        C10371 c10371;
        boolean z2;
        long j;
        int i;
        SharedPreferences sharedPreferences2;
        SharedPreferences sharedPreferences3;
        long j2;
        ?? r1;
        String string;
        ApiService apiService;
        SharedPreferences sharedPreferences4;
        ?? r5;
        int i2;
        long j3;
        ?? r52;
        Response response;
        ?? r53;
        Response response2;
        ApiService apiService2;
        long j4;
        SharedPreferences sharedPreferences5;
        List list;
        List list2;
        List<ProfileDTO> list3;
        String str;
        ?? r54;
        SharedPreferences sharedPreferences6;
        long j5;
        Response response3;
        ?? r12 = z;
        if (continuation instanceof C10371) {
            c10371 = (C10371) continuation;
            int i3 = c10371.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c10371.label = i3 - Integer.MIN_VALUE;
            } else {
                c10371 = new C10371(continuation);
            }
        }
        Object boostySubscribers = c10371.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c10371.label;
        try {
            try {
            } catch (Throwable th) {
                th = th;
                i = r12 == true ? 1 : 0;
                r12 = i4;
                sharedPreferences3 = sharedPreferences2;
                j2 = j;
            }
        } catch (Throwable th2) {
            th = th2;
            z2 = true;
            FileLog.m1136e(th);
            i = 0;
            return Boxing.boxBoolean(i == 0 ? z2 : false);
        }
        switch (i4) {
            case 0:
                ResultKt.throwOnFailure(boostySubscribers);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (r12 != 0 || jCurrentTimeMillis - lastBoostySyncTime >= Duration.ofMinutes(40L).toMillis()) {
                    try {
                        ApiService apiService3 = ApiClient.INSTANCE.getApiService();
                        sharedPreferences3 = sharedPreferences;
                        try {
                            c10371.L$0 = sharedPreferences3;
                            c10371.Z$0 = r12;
                            c10371.J$0 = jCurrentTimeMillis;
                            c10371.I$0 = 1;
                            c10371.label = 1;
                            boostySubscribers = apiService3.getBoostySubscribers(c10371);
                        } catch (Throwable th3) {
                            th = th3;
                            j2 = jCurrentTimeMillis;
                            i = 1;
                            FileLog.m1136e(th);
                            r1 = r12;
                        }
                        break;
                    } catch (Throwable th4) {
                        th = th4;
                        sharedPreferences3 = sharedPreferences;
                    }
                    if (boostySubscribers != coroutine_suspended) {
                        j2 = jCurrentTimeMillis;
                        i = 1;
                        r12 = r12;
                        try {
                            response3 = (Response) boostySubscribers;
                            r1 = r12;
                        } catch (Throwable th5) {
                            th = th5;
                            FileLog.m1136e(th);
                            r1 = r12;
                        }
                        if (!response3.isSuccessful()) {
                            r1 = r12;
                            if (response3.body() != null) {
                                DatabaseHelper databaseHelper = DatabaseHelper.INSTANCE;
                                Object objBody = response3.body();
                                Intrinsics.checkNotNull(objBody);
                                c10371.L$0 = sharedPreferences3;
                                c10371.L$1 = SpillingKt.nullOutSpilledVariable(response3);
                                c10371.Z$0 = r12;
                                c10371.J$0 = j2;
                                c10371.I$0 = i == true ? 1 : 0;
                                c10371.label = 2;
                                r12 = r12;
                                if (databaseHelper.insertBoostySubscribers((List) objBody, c10371) == coroutine_suspended) {
                                }
                                lastBoostySyncTime = j2;
                                r1 = r12;
                                if (r1 == 0 || j2 - lastProfilesSyncTime >= Duration.ofMinutes(8L).toMillis()) {
                                    string = sharedPreferences3.getString("lastSyncTimestamp", null);
                                    ApiService apiService4 = ApiClient.INSTANCE.getApiService();
                                    if (string != null) {
                                        c10371.L$0 = sharedPreferences3;
                                        c10371.L$1 = SpillingKt.nullOutSpilledVariable(string);
                                        c10371.L$2 = SpillingKt.nullOutSpilledVariable(apiService4);
                                        c10371.Z$0 = r1;
                                        c10371.J$0 = j2;
                                        c10371.I$0 = i == true ? 1 : 0;
                                        c10371.label = 3;
                                        Object allProfiles = apiService4.getAllProfiles(c10371);
                                        if (allProfiles != coroutine_suspended) {
                                            apiService = apiService4;
                                            boostySubscribers = allProfiles;
                                            sharedPreferences4 = sharedPreferences3;
                                            r52 = r1;
                                            i2 = i == true ? 1 : 0;
                                            j3 = j2;
                                            response = (Response) boostySubscribers;
                                            r53 = r52;
                                        }
                                    } else {
                                        c10371.L$0 = sharedPreferences3;
                                        c10371.L$1 = SpillingKt.nullOutSpilledVariable(string);
                                        c10371.L$2 = SpillingKt.nullOutSpilledVariable(apiService4);
                                        c10371.Z$0 = r1;
                                        c10371.J$0 = j2;
                                        c10371.I$0 = i == true ? 1 : 0;
                                        c10371.label = 4;
                                        Object updates = apiService4.getUpdates(string, c10371);
                                        if (updates != coroutine_suspended) {
                                            apiService = apiService4;
                                            boostySubscribers = updates;
                                            sharedPreferences4 = sharedPreferences3;
                                            r5 = r1;
                                            i2 = i == true ? 1 : 0;
                                            j3 = j2;
                                            response = (Response) boostySubscribers;
                                            r53 = r5;
                                        }
                                    }
                                } else {
                                    z2 = true;
                                    return Boxing.boxBoolean(i == 0 ? z2 : false);
                                }
                            } else {
                                if (r1 == 0) {
                                }
                                string = sharedPreferences3.getString("lastSyncTimestamp", null);
                                ApiService apiService42 = ApiClient.INSTANCE.getApiService();
                                if (string != null) {
                                }
                            }
                        }
                        response2 = response;
                        apiService2 = apiService;
                        long j6 = j3;
                        String str2 = string;
                        j4 = j6;
                        sharedPreferences5 = sharedPreferences4;
                        if (!response2.isSuccessful() && response2.body() != null) {
                            Object objBody2 = response2.body();
                            Intrinsics.checkNotNull(objBody2);
                            list = (List) objBody2;
                            if (list.isEmpty()) {
                                z2 = true;
                                i = i2;
                                SharedPreferences.Editor editorEdit = sharedPreferences5.edit();
                                editorEdit.putString("lastSyncTimestamp", Instant.now().toString());
                                editorEdit.apply();
                                lastProfilesSyncTime = j4;
                                return Boxing.boxBoolean(i == 0 ? z2 : false);
                            }
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                Iterator it2 = it;
                                Object next = it2.next();
                                String str3 = str2;
                                z2 = true;
                                try {
                                    if (Intrinsics.areEqual(((ProfileDTO) next).getDeleted(), Boxing.boxBoolean(true))) {
                                        arrayList.add(next);
                                    } else {
                                        arrayList2.add(next);
                                    }
                                    it = it2;
                                    str2 = str3;
                                } catch (Throwable th6) {
                                    th = th6;
                                    FileLog.m1136e(th);
                                    i = 0;
                                    return Boxing.boxBoolean(i == 0 ? z2 : false);
                                }
                            }
                            String str4 = str2;
                            z2 = true;
                            Pair pair = new Pair(arrayList, arrayList2);
                            list2 = (List) pair.component1();
                            list3 = (List) pair.component2();
                            if (!list2.isEmpty()) {
                                DatabaseHelper databaseHelper2 = DatabaseHelper.INSTANCE;
                                List list4 = list2;
                                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
                                Iterator it3 = list4.iterator();
                                while (it3.hasNext()) {
                                    arrayList3.add(Boxing.boxLong(((ProfileDTO) it3.next()).getId()));
                                }
                                c10371.L$0 = sharedPreferences5;
                                c10371.L$1 = SpillingKt.nullOutSpilledVariable(str4);
                                c10371.L$2 = SpillingKt.nullOutSpilledVariable(apiService2);
                                c10371.L$3 = SpillingKt.nullOutSpilledVariable(response2);
                                c10371.L$4 = SpillingKt.nullOutSpilledVariable(list);
                                c10371.L$5 = SpillingKt.nullOutSpilledVariable(list2);
                                c10371.L$6 = list3;
                                c10371.Z$0 = r53;
                                c10371.J$0 = j4;
                                c10371.I$0 = i2;
                                c10371.label = 5;
                                if (databaseHelper2.deleteProfiles(arrayList3, c10371) != coroutine_suspended) {
                                    list2 = list2;
                                }
                            }
                            str = str4;
                            r54 = r53;
                            if (!list3.isEmpty()) {
                                DatabaseHelper databaseHelper3 = DatabaseHelper.INSTANCE;
                                c10371.L$0 = sharedPreferences5;
                                c10371.L$1 = SpillingKt.nullOutSpilledVariable(str);
                                c10371.L$2 = SpillingKt.nullOutSpilledVariable(apiService2);
                                c10371.L$3 = SpillingKt.nullOutSpilledVariable(response2);
                                c10371.L$4 = SpillingKt.nullOutSpilledVariable(list);
                                c10371.L$5 = SpillingKt.nullOutSpilledVariable(list2);
                                c10371.L$6 = SpillingKt.nullOutSpilledVariable(list3);
                                c10371.Z$0 = r54;
                                c10371.J$0 = j4;
                                c10371.I$0 = i2;
                                c10371.label = 6;
                                if (databaseHelper3.insertProfiles(list3, c10371) != coroutine_suspended) {
                                    sharedPreferences6 = sharedPreferences5;
                                    j5 = j4;
                                    i = i2;
                                    sharedPreferences5 = sharedPreferences6;
                                    j4 = j5;
                                    SharedPreferences.Editor editorEdit2 = sharedPreferences5.edit();
                                    editorEdit2.putString("lastSyncTimestamp", Instant.now().toString());
                                    editorEdit2.apply();
                                    lastProfilesSyncTime = j4;
                                    return Boxing.boxBoolean(i == 0 ? z2 : false);
                                }
                            }
                            i = i2;
                            SharedPreferences.Editor editorEdit22 = sharedPreferences5.edit();
                            editorEdit22.putString("lastSyncTimestamp", Instant.now().toString());
                            editorEdit22.apply();
                            lastProfilesSyncTime = j4;
                            return Boxing.boxBoolean(i == 0 ? z2 : false);
                        }
                        z2 = true;
                        i = 0;
                        return Boxing.boxBoolean(i == 0 ? z2 : false);
                    }
                    return coroutine_suspended;
                }
                sharedPreferences3 = sharedPreferences;
                j2 = jCurrentTimeMillis;
                i = 1;
                r1 = r12;
                if (r1 == 0) {
                }
                string = sharedPreferences3.getString("lastSyncTimestamp", null);
                ApiService apiService422 = ApiClient.INSTANCE.getApiService();
                if (string != null) {
                }
                return coroutine_suspended;
            case 1:
                int i5 = c10371.I$0;
                long j7 = c10371.J$0;
                boolean z3 = c10371.Z$0;
                SharedPreferences sharedPreferences7 = (SharedPreferences) c10371.L$0;
                ResultKt.throwOnFailure(boostySubscribers);
                i = i5;
                r12 = z3;
                sharedPreferences3 = sharedPreferences7;
                j2 = j7;
                response3 = (Response) boostySubscribers;
                r1 = r12;
                if (!response3.isSuccessful()) {
                }
                response2 = response;
                apiService2 = apiService;
                long j62 = j3;
                String str22 = string;
                j4 = j62;
                sharedPreferences5 = sharedPreferences4;
                if (!response2.isSuccessful()) {
                    break;
                }
                z2 = true;
                i = 0;
                return Boxing.boxBoolean(i == 0 ? z2 : false);
            case 2:
                int i6 = c10371.I$0;
                long j8 = c10371.J$0;
                boolean z4 = c10371.Z$0;
                SharedPreferences sharedPreferences8 = (SharedPreferences) c10371.L$0;
                ResultKt.throwOnFailure(boostySubscribers);
                i = i6;
                r12 = z4;
                sharedPreferences3 = sharedPreferences8;
                j2 = j8;
                lastBoostySyncTime = j2;
                r1 = r12;
                if (r1 == 0) {
                }
                string = sharedPreferences3.getString("lastSyncTimestamp", null);
                ApiService apiService4222 = ApiClient.INSTANCE.getApiService();
                if (string != null) {
                }
                return coroutine_suspended;
            case 3:
                i2 = c10371.I$0;
                j3 = c10371.J$0;
                boolean z5 = c10371.Z$0;
                apiService = (ApiService) c10371.L$2;
                string = (String) c10371.L$1;
                sharedPreferences4 = (SharedPreferences) c10371.L$0;
                ResultKt.throwOnFailure(boostySubscribers);
                r52 = z5;
                response = (Response) boostySubscribers;
                r53 = r52;
                response2 = response;
                apiService2 = apiService;
                long j622 = j3;
                String str222 = string;
                j4 = j622;
                sharedPreferences5 = sharedPreferences4;
                if (!response2.isSuccessful()) {
                }
                z2 = true;
                i = 0;
                return Boxing.boxBoolean(i == 0 ? z2 : false);
            case 4:
                i2 = c10371.I$0;
                j3 = c10371.J$0;
                boolean z6 = c10371.Z$0;
                apiService = (ApiService) c10371.L$2;
                string = (String) c10371.L$1;
                sharedPreferences4 = (SharedPreferences) c10371.L$0;
                ResultKt.throwOnFailure(boostySubscribers);
                r5 = z6;
                response = (Response) boostySubscribers;
                r53 = r5;
                response2 = response;
                apiService2 = apiService;
                long j6222 = j3;
                String str2222 = string;
                j4 = j6222;
                sharedPreferences5 = sharedPreferences4;
                if (!response2.isSuccessful()) {
                }
                z2 = true;
                i = 0;
                return Boxing.boxBoolean(i == 0 ? z2 : false);
            case 5:
                i2 = c10371.I$0;
                j4 = c10371.J$0;
                boolean z7 = c10371.Z$0;
                list3 = (List) c10371.L$6;
                list2 = (List) c10371.L$5;
                list = (List) c10371.L$4;
                response2 = (Response) c10371.L$3;
                apiService2 = (ApiService) c10371.L$2;
                str = (String) c10371.L$1;
                sharedPreferences5 = (SharedPreferences) c10371.L$0;
                ResultKt.throwOnFailure(boostySubscribers);
                z2 = true;
                r54 = z7;
                if (!list3.isEmpty()) {
                }
                i = i2;
                SharedPreferences.Editor editorEdit222 = sharedPreferences5.edit();
                editorEdit222.putString("lastSyncTimestamp", Instant.now().toString());
                editorEdit222.apply();
                lastProfilesSyncTime = j4;
                return Boxing.boxBoolean(i == 0 ? z2 : false);
            case 6:
                i2 = c10371.I$0;
                j5 = c10371.J$0;
                sharedPreferences6 = (SharedPreferences) c10371.L$0;
                ResultKt.throwOnFailure(boostySubscribers);
                z2 = true;
                i = i2;
                sharedPreferences5 = sharedPreferences6;
                j4 = j5;
                SharedPreferences.Editor editorEdit2222 = sharedPreferences5.edit();
                editorEdit2222.putString("lastSyncTimestamp", Instant.now().toString());
                editorEdit2222.apply();
                lastProfilesSyncTime = j4;
                return Boxing.boxBoolean(i == 0 ? z2 : false);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static final void scheduleWorker() {
        PeriodicWorkRequest periodicWorkRequest = (PeriodicWorkRequest) ((PeriodicWorkRequest.Builder) new PeriodicWorkRequest.Builder(SyncWorker.class, 1L, TimeUnit.HOURS).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build())).build();
        WorkManager.Companion companion = WorkManager.Companion;
        Context applicationContext = ApplicationLoader.applicationContext;
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        companion.getInstance(applicationContext).enqueueUniquePeriodicWork("api_sync_work", ExistingPeriodicWorkPolicy.UPDATE, periodicWorkRequest);
    }
}
