package com.exteragram.messenger.badges.source;

import com.exteragram.messenger.api.db.ProfileDao;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import com.exteragram.messenger.api.model.ProfileStatus;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiFunction;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\b\u001a\u00020\u0007*\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u0012J\"\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u000eH\u0086@¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u001bH\u0086@¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\"\u001a\u00020\u001b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00060 ¢\u0006\u0004\b\"\u0010#R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010$R \u0010&\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006("}, d2 = {"Lcom/exteragram/messenger/badges/source/ApiBadgeSource;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/api/db/ProfileDao;", "profileDao", "<init>", "(Lcom/exteragram/messenger/api/db/ProfileDao;)V", "Lcom/exteragram/messenger/api/dto/ProfileDTO;", "Lcom/exteragram/messenger/badges/source/BadgeInfo;", "toBadgeInfo", "(Lcom/exteragram/messenger/api/dto/ProfileDTO;)Lcom/exteragram/messenger/badges/source/BadgeInfo;", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "isUser", "Lcom/exteragram/messenger/api/dto/BadgeDTO;", "getBadge", "(JZ)Lcom/exteragram/messenger/api/dto/BadgeDTO;", "isDeveloper", "(J)Z", "Lcom/exteragram/messenger/api/model/ProfileStatus;", "getStatus", "(J)Lcom/exteragram/messenger/api/model/ProfileStatus;", _UrlKt.FRAGMENT_ENCODE_SET, "getNumber", "(J)Ljava/lang/Integer;", "canChangeBadge", "badge", _UrlKt.FRAGMENT_ENCODE_SET, "updateLocalBadge", "(JLcom/exteragram/messenger/api/dto/BadgeDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadToCache", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "profiles", "applySync", "(Ljava/util/List;)V", "Lcom/exteragram/messenger/api/db/ProfileDao;", "Ljava/util/concurrent/ConcurrentHashMap;", "cache", "Ljava/util/concurrent/ConcurrentHashMap;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class ApiBadgeSource {
    private final ConcurrentHashMap<Long, BadgeInfo> cache = new ConcurrentHashMap<>();
    private final ProfileDao profileDao;

    /* JADX INFO: renamed from: com.exteragram.messenger.badges.source.ApiBadgeSource$loadToCache$1 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "com.exteragram.messenger.badges.source.ApiBadgeSource", m921f = "ApiBadgeSource.kt", m922i = {}, m923l = {48}, m924m = "loadToCache", m925n = {}, m926s = {})
    public static final class C12681 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C12681(Continuation<? super C12681> continuation) {
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
        this.profileDao = profileDao;
    }

    public BadgeDTO getBadge(long id, boolean isUser) {
        BadgeInfo badgeInfo = this.cache.get(Long.valueOf(id));
        if (badgeInfo != null) {
            return badgeInfo.getBadge();
        }
        return null;
    }

    public final boolean isDeveloper(long id) {
        BadgeInfo badgeInfo = this.cache.get(Long.valueOf(id));
        return (badgeInfo != null ? badgeInfo.getStatus() : null) == ProfileStatus.DEVELOPER;
    }

    public final ProfileStatus getStatus(long id) {
        BadgeInfo badgeInfo = this.cache.get(Long.valueOf(id));
        if (badgeInfo != null) {
            return badgeInfo.getStatus();
        }
        return null;
    }

    public final Integer getNumber(long id) {
        BadgeInfo badgeInfo = this.cache.get(Long.valueOf(id));
        if (badgeInfo != null) {
            return badgeInfo.getNumber();
        }
        return null;
    }

    public final boolean canChangeBadge(long id) {
        BadgeInfo badgeInfo = this.cache.get(Long.valueOf(id));
        return (badgeInfo != null && badgeInfo.getCanChangeBadge()) || isDeveloper(id);
    }

    public static BadgeInfo $r8$lambda$k56Kf1gLoZpo2cEpNa8MMgWDGfI(Function2 function2, Object obj, Object obj2) {
        return (BadgeInfo) function2.invoke(obj, obj2);
    }

    public final Object updateLocalBadge(long j, final BadgeDTO badgeDTO, Continuation<? super Unit> continuation) {
        ConcurrentHashMap<Long, BadgeInfo> concurrentHashMap = this.cache;
        Long lBoxLong = Boxing.boxLong(j);
        final Function2 function2 = new Function2() { // from class: com.exteragram.messenger.badges.source.ApiBadgeSource$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return BadgeInfo.copy$default((BadgeInfo) obj2, badgeDTO, null, false, null, 14, null);
            }
        };
        concurrentHashMap.computeIfPresent(lBoxLong, new BiFunction() { // from class: com.exteragram.messenger.badges.source.ApiBadgeSource$$ExternalSyntheticLambda1
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ApiBadgeSource.$r8$lambda$k56Kf1gLoZpo2cEpNa8MMgWDGfI(function2, obj, obj2);
            }
        });
        Object objUpdateBadge = this.profileDao.updateBadge(j, badgeDTO, continuation);
        return objUpdateBadge == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objUpdateBadge : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object loadToCache(Continuation<? super Unit> continuation) {
        C12681 c12681;
        if (continuation instanceof C12681) {
            c12681 = (C12681) continuation;
            int i = c12681.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c12681.label = i - Integer.MIN_VALUE;
            } else {
                c12681 = new C12681(continuation);
            }
        }
        Object all = c12681.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c12681.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(all);
            ProfileDao profileDao = this.profileDao;
            c12681.label = 1;
            all = profileDao.getAll(c12681);
            if (all == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(all);
        }
        for (ProfileDTO profileDTO : (List) all) {
            this.cache.putIfAbsent(Boxing.boxLong(profileDTO.getId()), toBadgeInfo(profileDTO));
        }
        return Unit.INSTANCE;
    }

    public final void applySync(List<ProfileDTO> profiles) {
        for (ProfileDTO profileDTO : profiles) {
            boolean zAreEqual = Intrinsics.areEqual(profileDTO.getDeleted(), Boolean.TRUE);
            ConcurrentHashMap<Long, BadgeInfo> concurrentHashMap = this.cache;
            if (zAreEqual) {
                concurrentHashMap.remove(Long.valueOf(profileDTO.getId()));
            } else {
                concurrentHashMap.put(Long.valueOf(profileDTO.getId()), toBadgeInfo(profileDTO));
            }
        }
    }

    private final BadgeInfo toBadgeInfo(ProfileDTO profileDTO) {
        return new BadgeInfo(profileDTO.getBadge(), profileDTO.getStatus(), Intrinsics.areEqual(profileDTO.getCanChangeBadge(), Boolean.TRUE), profileDTO.getNumber());
    }
}
