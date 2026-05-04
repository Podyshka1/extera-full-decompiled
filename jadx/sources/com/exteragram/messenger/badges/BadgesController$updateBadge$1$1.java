package com.exteragram.messenger.badges;

import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.source.ApiBadgeSource;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.telegram.messenger.UserConfig;

/* JADX INFO: loaded from: classes4.dex */
final class BadgesController$updateBadge$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ BadgeDTO $badge;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BadgesController$updateBadge$1$1(BadgeDTO badgeDTO, Continuation continuation) {
        super(2, continuation);
        this.$badge = badgeDTO;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BadgesController$updateBadge$1$1(this.$badge, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((BadgesController$updateBadge$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ApiBadgeSource apiBadgeSource = BadgesController.apiBadgeSource;
            long j = UserConfig.getInstance(UserConfig.selectedAccount).clientUserId;
            BadgeDTO badgeDTO = this.$badge;
            this.label = 1;
            if (apiBadgeSource.updateLocalBadge(j, badgeDTO, this) == coroutine_suspended) {
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
