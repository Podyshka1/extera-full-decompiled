package com.exteragram.messenger.badges;

import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.source.ApiBadgeSource;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.UserConfig;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(m920c = "com.exteragram.messenger.badges.BadgesController$updateBadge$1$1", m921f = "BadgesController.kt", m922i = {}, m923l = {180}, m924m = "invokeSuspend", m925n = {}, m926s = {})
public final class BadgesController$updateBadge$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BadgeDTO $badge;
    final /* synthetic */ Consumer<String> $callback;
    final /* synthetic */ String $response;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BadgesController$updateBadge$1$1(BadgeDTO badgeDTO, Consumer<String> consumer, String str, Continuation<? super BadgesController$updateBadge$1$1> continuation) {
        super(2, continuation);
        this.$badge = badgeDTO;
        this.$callback = consumer;
        this.$response = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BadgesController$updateBadge$1$1(this.$badge, this.$callback, this.$response, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
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
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        this.$callback.accept(this.$response);
        return Unit.INSTANCE;
    }
}
