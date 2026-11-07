package com.exteragram.messenger.badges;

import android.widget.FrameLayout;
import com.exteragram.messenger.api.db.ExteraDatabase;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.source.ApiBadgeSource;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.sun.jna.Callback;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JM\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u001a\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001c\u001a\u00020\n2\b\b\u0002\u0010\u0019\u001a\u00020\u0018H\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\"\u0010!J\u0017\u0010\"\u001a\u00020\n2\b\u0010$\u001a\u0004\u0018\u00010#¢\u0006\u0004\b\"\u0010%J\u000f\u0010&\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b&\u0010'J\u0019\u0010&\u001a\u0004\u0018\u00010\u00062\b\u0010)\u001a\u0004\u0018\u00010(¢\u0006\u0004\b&\u0010*J#\u0010+\u001a\u00020\n2\b\u0010)\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b+\u0010,J\u0019\u0010-\u001a\u0004\u0018\u00010\u00062\b\u0010)\u001a\u0004\u0018\u00010(¢\u0006\u0004\b-\u0010*J\u0019\u0010.\u001a\u00020\n2\b\b\u0002\u0010)\u001a\u00020(H\u0007¢\u0006\u0004\b.\u0010/J'\u00103\u001a\u00020\u00122\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u000e\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010100¢\u0006\u0004\b3\u00104J\u0019\u00105\u001a\u00020\n2\b\b\u0002\u0010)\u001a\u00020(H\u0007¢\u0006\u0004\b5\u0010/JO\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010)\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u0013\u00106JW\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010)\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u0013\u00107JW\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010$\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u0013\u00108R\u0014\u0010:\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010=\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0014\u0010@\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0017\u0010B\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010'R\u0017\u0010E\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\bE\u0010C\u001a\u0004\bF\u0010'R\u0017\u0010G\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\bG\u0010C\u001a\u0004\bH\u0010'¨\u0006I"}, d2 = {"Lcom/exteragram/messenger/badges/BadgesController;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Lorg/telegram/ui/ActionBar/BaseFragment;", "fragment", "Lcom/exteragram/messenger/api/dto/BadgeDTO;", "badge", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "showButton", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "resourcesProvider", _UrlKt.FRAGMENT_ENCODE_SET, "account", "Landroid/widget/FrameLayout;", "containerLayout", _UrlKt.FRAGMENT_ENCODE_SET, "showBadgeBulletin", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/widget/FrameLayout;)V", "fallbackText", "formatBadgeText", "(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "Lorg/telegram/tgnet/TLObject;", "obj", "getBadge", "(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;", "hasBadge", "(Lorg/telegram/tgnet/TLObject;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "id", "isTrusted", "(J)Z", "isExtera", "Lorg/telegram/tgnet/TLRPC$Chat;", "chat", "(Lorg/telegram/tgnet/TLRPC$Chat;)Z", "getDefaultBadge", "()Lcom/exteragram/messenger/api/dto/BadgeDTO;", "Lorg/telegram/tgnet/TLRPC$User;", "user", "(Lorg/telegram/tgnet/TLRPC$User;)Lcom/exteragram/messenger/api/dto/BadgeDTO;", "shouldUseSecondaryBadgeSlot", "(Lorg/telegram/tgnet/TLRPC$User;Lcom/exteragram/messenger/api/dto/BadgeDTO;)Z", "getSecondaryBadge", "canChangeBadge", "(Lorg/telegram/tgnet/TLRPC$User;)Z", "Ljava/util/function/Consumer;", _UrlKt.FRAGMENT_ENCODE_SET, Callback.METHOD_NAME, "updateBadge", "(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/util/function/Consumer;)V", "isDeveloper", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/widget/FrameLayout;Ljava/lang/Boolean;)V", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/widget/FrameLayout;Ljava/lang/Boolean;)V", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/widget/FrameLayout;Ljava/lang/Boolean;)V", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "Lcom/exteragram/messenger/badges/source/ApiBadgeSource;", "apiBadgeSource", "Lcom/exteragram/messenger/badges/source/ApiBadgeSource;", "Lcom/exteragram/messenger/badges/CachedRemoteSet;", "trustedPluginsCache", "Lcom/exteragram/messenger/badges/CachedRemoteSet;", "DEV_BADGE", "Lcom/exteragram/messenger/api/dto/BadgeDTO;", "getDEV_BADGE", "SUPPORTER_BADGE", "getSUPPORTER_BADGE", "TRUSTED_BADGE", "getTRUSTED_BADGE", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBadgesController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BadgesController.kt\ncom/exteragram/messenger/badges/BadgesController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,259:1\n1#2:260\n*E\n"})
public final class BadgesController {
    private static final BadgeDTO DEV_BADGE;
    public static final BadgesController INSTANCE = new BadgesController();
    private static final BadgeDTO SUPPORTER_BADGE;
    private static final BadgeDTO TRUSTED_BADGE;
    private static final ApiBadgeSource apiBadgeSource;
    private static final CoroutineScope scope;
    private static final CachedRemoteSet trustedPluginsCache;

    @JvmOverloads
    public final boolean canChangeBadge() {
        return canChangeBadge$default(this, null, 1, null);
    }

    @JvmOverloads
    public final BadgeDTO getBadge() {
        return getBadge$default(this, null, 1, null);
    }

    @JvmOverloads
    public final boolean hasBadge() {
        return hasBadge$default(this, null, 1, null);
    }

    @JvmOverloads
    public final boolean isDeveloper() {
        return isDeveloper$default(this, null, 1, null);
    }

    @JvmOverloads
    public final void showBadgeBulletin(BaseFragment baseFragment, BadgeDTO badgeDTO, TLRPC.Chat chat, Theme.ResourcesProvider resourcesProvider, int i) {
        showBadgeBulletin$default(this, baseFragment, badgeDTO, chat, resourcesProvider, i, (FrameLayout) null, (Boolean) null, 96, (Object) null);
    }

    @JvmOverloads
    public final void showBadgeBulletin(BaseFragment baseFragment, BadgeDTO badgeDTO, TLRPC.User user, Theme.ResourcesProvider resourcesProvider, int i) {
        showBadgeBulletin$default(this, baseFragment, badgeDTO, user, resourcesProvider, i, (FrameLayout) null, (Boolean) null, 96, (Object) null);
    }

    private BadgesController() {
    }

    static {
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        scope = CoroutineScope;
        trustedPluginsCache = new CachedRemoteSet("trusted_plugins", SetsKt.setOf(2562664432L));
        DEV_BADGE = new BadgeDTO(5359407509327085568L, null);
        SUPPORTER_BADGE = new BadgeDTO(5391059537102927631L, null);
        TRUSTED_BADGE = new BadgeDTO(5452008215409629764L, null);
        apiBadgeSource = new ApiBadgeSource(ExteraDatabase.INSTANCE.getInstance().profileDao());
        BuildersKt__Builders_commonKt.launch$default(CoroutineScope, null, null, new C12401(null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.badges.BadgesController$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.badges.BadgesController$1", m873f = "BadgesController.kt", m874i = {}, m875l = {53}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C12401 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C12401(Continuation<? super C12401> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12401(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12401) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ApiBadgeSource apiBadgeSource = BadgesController.apiBadgeSource;
                this.label = 1;
                if (apiBadgeSource.loadToCache(this) == coroutine_suspended) {
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

    public static /* synthetic */ BadgeDTO getBadge$default(BadgesController badgesController, TLObject tLObject, int i, Object obj) {
        if ((i & 1) != 0) {
            tLObject = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
        }
        return badgesController.getBadge(tLObject);
    }

    @JvmOverloads
    public final BadgeDTO getBadge(TLObject obj) {
        Pair pair;
        long jLongValue;
        boolean zBooleanValue;
        try {
            if (obj instanceof TLRPC.User) {
                pair = TuplesKt.to(Long.valueOf(((TLRPC.User) obj).id), Boolean.TRUE);
            } else {
                if (!(obj instanceof TLRPC.Chat)) {
                    return null;
                }
                pair = TuplesKt.to(Long.valueOf(((TLRPC.Chat) obj).id), Boolean.FALSE);
            }
            jLongValue = ((Number) pair.component1()).longValue();
            zBooleanValue = ((Boolean) pair.component2()).booleanValue();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        if (!zBooleanValue && isTrusted(jLongValue)) {
            return TRUSTED_BADGE;
        }
        BadgeDTO badge = apiBadgeSource.getBadge(jLongValue, zBooleanValue);
        if (badge != null) {
            return badge;
        }
        return null;
    }

    public static /* synthetic */ boolean hasBadge$default(BadgesController badgesController, TLObject tLObject, int i, Object obj) {
        if ((i & 1) != 0) {
            tLObject = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
        }
        return badgesController.hasBadge(tLObject);
    }

    @JvmOverloads
    public final boolean hasBadge(TLObject obj) {
        return getBadge(obj) != null;
    }

    public final boolean isTrusted(long id) {
        return trustedPluginsCache.contains(id);
    }

    public final boolean isExtera(long id) {
        return apiBadgeSource.isDeveloper(id);
    }

    public final boolean isExtera(TLRPC.Chat chat) {
        return chat != null && INSTANCE.isExtera(chat.id);
    }

    public final BadgeDTO getDefaultBadge() {
        if (apiBadgeSource.isDeveloper(UserConfig.getInstance(UserConfig.selectedAccount).clientUserId)) {
            return DEV_BADGE;
        }
        return SUPPORTER_BADGE;
    }

    public final BadgeDTO getDefaultBadge(TLRPC.User user) {
        if (user == null) {
            return null;
        }
        return isDeveloper(user) ? DEV_BADGE : SUPPORTER_BADGE;
    }

    public final boolean shouldUseSecondaryBadgeSlot(TLRPC.User user, BadgeDTO badge) {
        return user != null && badge != null && canChangeBadge(user) && (!Intrinsics.areEqual(badge, getDefaultBadge(user)) || isDeveloper(user));
    }

    public final BadgeDTO getSecondaryBadge(TLRPC.User user) {
        BadgeDTO badge = getBadge(user);
        if (badge != null && INSTANCE.shouldUseSecondaryBadgeSlot(user, badge)) {
            return badge;
        }
        return null;
    }

    public static /* synthetic */ boolean canChangeBadge$default(BadgesController badgesController, TLRPC.User user, int i, Object obj) {
        if ((i & 1) != 0) {
            user = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
        }
        return badgesController.canChangeBadge(user);
    }

    @JvmOverloads
    public final boolean canChangeBadge(TLRPC.User user) {
        return apiBadgeSource.canChangeBadge(user.id);
    }

    public final void updateBadge(final BadgeDTO badge, final Consumer<String> callback) {
        String str;
        if (badge != null) {
            String text = badge.getText();
            if (text == null || text.length() == 0) {
                str = "badge " + badge.getDocumentId();
            } else {
                str = "badge " + badge.getDocumentId() + " " + text;
            }
            ChatUtils.getInstance(UserConfig.selectedAccount).sendBotRequest(str, false, new Utilities.Callback() { // from class: com.exteragram.messenger.badges.BadgesController$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    BadgesController.$r8$lambda$q2QZZ0ppiIjePLLSVYRB87x0Q6Y(callback, badge, (String) obj);
                }
            });
            return;
        }
        callback.accept(null);
    }

    public static void $r8$lambda$q2QZZ0ppiIjePLLSVYRB87x0Q6Y(Consumer consumer, BadgeDTO badgeDTO, String str) {
        if (Intrinsics.areEqual("ok", str)) {
            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new BadgesController$updateBadge$1$1(badgeDTO, null), 3, null);
        }
        consumer.accept(str);
    }

    public static /* synthetic */ boolean isDeveloper$default(BadgesController badgesController, TLRPC.User user, int i, Object obj) {
        if ((i & 1) != 0) {
            user = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
        }
        return badgesController.isDeveloper(user);
    }

    @JvmOverloads
    public final boolean isDeveloper(TLRPC.User user) {
        return apiBadgeSource.isDeveloper(user.id);
    }

    @JvmOverloads
    public final void showBadgeBulletin(BaseFragment fragment, TLRPC.User user, Theme.ResourcesProvider resourcesProvider, int account, FrameLayout containerLayout, Boolean showButton) {
        BadgeDTO badge;
        if (user == null || (badge = getBadge(user)) == null) {
            return;
        }
        showBadgeBulletin(fragment, badge, user, resourcesProvider, account, containerLayout, showButton);
    }

    public static /* synthetic */ void showBadgeBulletin$default(BadgesController badgesController, BaseFragment baseFragment, BadgeDTO badgeDTO, TLRPC.User user, Theme.ResourcesProvider resourcesProvider, int i, FrameLayout frameLayout, Boolean bool, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            resourcesProvider = baseFragment.getResourceProvider();
        }
        Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
        if ((i2 & 16) != 0) {
            i = baseFragment.getCurrentAccount();
        }
        badgesController.showBadgeBulletin(baseFragment, badgeDTO, user, resourcesProvider2, i, (i2 & 32) != 0 ? null : frameLayout, (i2 & 64) != 0 ? null : bool);
    }

    @JvmOverloads
    public final void showBadgeBulletin(BaseFragment fragment, BadgeDTO badge, TLRPC.User user, Theme.ResourcesProvider resourcesProvider, int account, FrameLayout containerLayout, Boolean showButton) {
        boolean zBooleanValue;
        if (user == null) {
            return;
        }
        boolean zIsDeveloper = isDeveloper(user);
        CharSequence badgeText = formatBadgeText(badge, LocaleController.formatString(zIsDeveloper ? C2665R.string.Developer : C2665R.string.Supporter, user.first_name));
        if (showButton != null) {
            zBooleanValue = showButton.booleanValue();
        } else {
            zBooleanValue = (zIsDeveloper || canChangeBadge(user)) ? false : true;
        }
        showBadgeBulletin(fragment, badge, badgeText, zBooleanValue, resourcesProvider, account, containerLayout);
    }

    public static /* synthetic */ void showBadgeBulletin$default(BadgesController badgesController, BaseFragment baseFragment, BadgeDTO badgeDTO, TLRPC.Chat chat, Theme.ResourcesProvider resourcesProvider, int i, FrameLayout frameLayout, Boolean bool, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            resourcesProvider = baseFragment.getResourceProvider();
        }
        Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
        if ((i2 & 16) != 0) {
            i = baseFragment.getCurrentAccount();
        }
        badgesController.showBadgeBulletin(baseFragment, badgeDTO, chat, resourcesProvider2, i, (i2 & 32) != 0 ? null : frameLayout, (i2 & 64) != 0 ? null : bool);
    }

    @JvmOverloads
    public final void showBadgeBulletin(BaseFragment fragment, BadgeDTO badge, TLRPC.Chat chat, Theme.ResourcesProvider resourcesProvider, int account, FrameLayout containerLayout, Boolean showButton) {
        String string;
        boolean zBooleanValue;
        if (chat == null) {
            return;
        }
        boolean zIsExtera = isExtera(chat);
        boolean zIsTrusted = isTrusted(chat.id);
        if (zIsExtera) {
            string = LocaleController.formatString(C2665R.string.OfficialChannel, chat.title);
        } else if (zIsTrusted) {
            string = LocaleController.getString(C2665R.string.PluginSourceTrustedInfo);
        } else {
            string = LocaleController.formatString(C2665R.string.Supporter, chat.title);
        }
        CharSequence badgeText = formatBadgeText(badge, string);
        if (showButton != null) {
            zBooleanValue = showButton.booleanValue();
        } else {
            zBooleanValue = (zIsExtera || zIsTrusted) ? false : true;
        }
        showBadgeBulletin(fragment, badge, badgeText, zBooleanValue, resourcesProvider, account, containerLayout);
    }

    private final void showBadgeBulletin(final BaseFragment fragment, BadgeDTO badge, CharSequence text, boolean showButton, final Theme.ResourcesProvider resourcesProvider, int account, FrameLayout containerLayout) {
        BulletinFactory bulletinFactoryOf;
        if (containerLayout != null) {
            bulletinFactoryOf = BulletinFactory.of(containerLayout, resourcesProvider);
        } else {
            bulletinFactoryOf = BulletinFactory.of(fragment);
        }
        Bulletin bulletinCreateEmojiBulletin = bulletinFactoryOf.createEmojiBulletin(AnimatedEmojiDrawable.findDocument(account, badge.getDocumentId()), text, showButton ? LocaleController.getString(C2665R.string.FragmentUsernameOpen) : null, showButton ? new Runnable() { // from class: com.exteragram.messenger.badges.BadgesController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SupporterBottomSheet.showAlert(fragment, resourcesProvider);
            }
        } : null);
        if (!showButton) {
            bulletinCreateEmojiBulletin.wrapContent();
        }
        bulletinCreateEmojiBulletin.show();
    }

    private final CharSequence formatBadgeText(BadgeDTO badge, CharSequence fallbackText) {
        CharSequence withUsernames;
        String text = badge.getText();
        return (text == null || (withUsernames = LocaleUtils.formatWithUsernames(text)) == null) ? fallbackText : withUsernames;
    }
}
