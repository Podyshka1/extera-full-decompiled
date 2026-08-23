package com.exteragram.messenger.badges.source;

import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import com.exteragram.messenger.api.model.ProfileStatus;
import com.exteragram.messenger.api.p010db.ProfileDao;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.concurrent.ConcurrentMap$EL;
import p022j$.util.function.BiFunction$CC;

/* JADX INFO: loaded from: classes.dex */
public final class ApiBadgeSource {
    private final ConcurrentHashMap cache;
    private final ProfileDao profileDao;

    /* JADX INFO: renamed from: com.exteragram.messenger.badges.source.ApiBadgeSource$loadToCache$1 */
    static final class C10561 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C10561(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ApiBadgeSource.this.loadToCache(this);
        }
    }

    public ApiBadgeSource(ProfileDao profileDao) {
        Intrinsics.checkNotNullParameter(profileDao, "profileDao");
        this.profileDao = profileDao;
        this.cache = new ConcurrentHashMap();
    }

    public BadgeDTO getBadge(long j, boolean z) {
        BadgeInfo badgeInfo = (BadgeInfo) this.cache.get(Long.valueOf(j));
        if (badgeInfo != null) {
            return badgeInfo.getBadge();
        }
        return null;
    }

    public final boolean isDeveloper(long j) {
        BadgeInfo badgeInfo = (BadgeInfo) this.cache.get(Long.valueOf(j));
        return (badgeInfo != null ? badgeInfo.getStatus() : null) == ProfileStatus.DEVELOPER;
    }

    public final boolean canChangeBadge(long j) {
        BadgeInfo badgeInfo = (BadgeInfo) this.cache.get(Long.valueOf(j));
        return (badgeInfo != null && badgeInfo.getCanChangeBadge()) || isDeveloper(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BadgeInfo updateLocalBadge$lambda$1(Function2 function2, Object obj, Object obj2) {
        return (BadgeInfo) function2.invoke(obj, obj2);
    }

    public final Object updateLocalBadge(long j, final BadgeDTO badgeDTO, Continuation continuation) {
        ConcurrentHashMap concurrentHashMap = this.cache;
        Long lBoxLong = Boxing.boxLong(j);
        final Function2 function2 = new Function2() { // from class: com.exteragram.messenger.badges.source.ApiBadgeSource$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ApiBadgeSource.updateLocalBadge$lambda$0(badgeDTO, (Long) obj, (BadgeInfo) obj2);
            }
        };
        ConcurrentMap$EL.computeIfPresent(concurrentHashMap, lBoxLong, new BiFunction() { // from class: com.exteragram.messenger.badges.source.ApiBadgeSource$$ExternalSyntheticLambda1
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ApiBadgeSource.updateLocalBadge$lambda$1(function2, obj, obj2);
            }
        });
        Object objUpdateBadge = this.profileDao.updateBadge(j, badgeDTO, continuation);
        return objUpdateBadge == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objUpdateBadge : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BadgeInfo updateLocalBadge$lambda$0(BadgeDTO badgeDTO, Long l, BadgeInfo info) {
        Intrinsics.checkNotNullParameter(l, "<unused var>");
        Intrinsics.checkNotNullParameter(info, "info");
        return BadgeInfo.copy$default(info, badgeDTO, null, false, 6, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object loadToCache(Continuation continuation) {
        C10561 c10561;
        if (continuation instanceof C10561) {
            c10561 = (C10561) continuation;
            int i = c10561.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10561.label = i - Integer.MIN_VALUE;
            } else {
                c10561 = new C10561(continuation);
            }
        }
        Object all = c10561.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10561.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(all);
            ProfileDao profileDao = this.profileDao;
            c10561.label = 1;
            all = profileDao.getAll(c10561);
            if (all == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(all);
        }
        for (ProfileDTO profileDTO : (List) all) {
            this.cache.put(Boxing.boxLong(profileDTO.getId()), new BadgeInfo(profileDTO.getBadge(), profileDTO.getStatus(), Intrinsics.areEqual(profileDTO.getCanChangeBadge(), Boxing.boxBoolean(true))));
        }
        return Unit.INSTANCE;
    }
}
