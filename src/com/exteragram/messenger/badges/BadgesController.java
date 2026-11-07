package com.exteragram.messenger.badges;

import android.widget.FrameLayout;
import com.exteragram.messenger.api.db.ExteraDatabase;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import com.exteragram.messenger.api.model.ProfileStatus;
import com.exteragram.messenger.badges.source.ApiBadgeSource;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.components.supporter.SupporterEnterFrom;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.sun.jna.Callback;
import java.util.List;
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
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJM\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ9\u0010\"\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001bH\u0007¢\u0006\u0004\b\"\u0010#J)\u0010%\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010 \u001a\u0004\u0018\u00010\n2\u0006\u0010$\u001a\u00020\u0014H\u0002¢\u0006\u0004\b%\u0010&J\u001b\u0010*\u001a\u00020\u001d2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020(0'¢\u0006\u0004\b*\u0010+J\u001d\u0010-\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b-\u0010.J\u0019\u00100\u001a\u00020/2\b\b\u0002\u0010,\u001a\u00020\u0004H\u0007¢\u0006\u0004\b0\u00101J\u0015\u00103\u001a\u00020/2\u0006\u00102\u001a\u00020\r¢\u0006\u0004\b3\u00104J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u00020\r¢\u0006\u0004\b\u0007\u00105J\u0015\u00106\u001a\u00020/2\u0006\u00102\u001a\u00020\r¢\u0006\u0004\b6\u00104J\u0015\u00107\u001a\u00020/2\u0006\u00102\u001a\u00020\r¢\u0006\u0004\b7\u00104J\u0017\u00107\u001a\u00020/2\b\u00109\u001a\u0004\u0018\u000108¢\u0006\u0004\b7\u0010:J\u0019\u0010;\u001a\u0004\u0018\u00010\u00122\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b;\u0010.J\u0017\u0010<\u001a\u00020\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b<\u0010=J#\u0010@\u001a\u00020/2\b\u0010?\u001a\u0004\u0018\u00010>2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b@\u0010AJ\u0019\u0010B\u001a\u0004\u0018\u00010\u00122\b\u0010?\u001a\u0004\u0018\u00010>¢\u0006\u0004\bB\u0010CJ\u0019\u0010D\u001a\u00020/2\b\b\u0002\u0010?\u001a\u00020>H\u0007¢\u0006\u0004\bD\u0010EJ'\u0010H\u001a\u00020\u001d2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u000e\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0F¢\u0006\u0004\bH\u0010IJ\u0019\u0010J\u001a\u00020/2\b\b\u0002\u0010?\u001a\u00020>H\u0007¢\u0006\u0004\bJ\u0010EJ\u0017\u0010K\u001a\u00020/2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\bK\u00101J7\u0010N\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010?\u001a\u0004\u0018\u00010>2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010M\u001a\u0004\u0018\u00010LH\u0007¢\u0006\u0004\bN\u0010OJW\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\b\u00109\u001a\u0004\u0018\u0001082\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010P\u001a\u0004\u0018\u00010/H\u0007¢\u0006\u0004\b\u001e\u0010QR\u0014\u0010S\u001a\u00020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010TR\u0014\u0010V\u001a\u00020U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR\u0014\u0010Y\u001a\u00020X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010ZR\u0017\u0010[\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^R\u0017\u0010_\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b_\u0010\\\u001a\u0004\b`\u0010^R\u0017\u0010a\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\ba\u0010\\\u001a\u0004\bb\u0010^¨\u0006c"}, d2 = {"Lcom/exteragram/messenger/badges/BadgesController;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Lorg/telegram/tgnet/TLObject;", "peer", _UrlKt.FRAGMENT_ENCODE_SET, "getNumber", "(Lorg/telegram/tgnet/TLObject;)Ljava/lang/Integer;", "number", _UrlKt.FRAGMENT_ENCODE_SET, "formatNumber", "(I)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "peerId", "(Lorg/telegram/tgnet/TLObject;)Ljava/lang/Long;", "Lorg/telegram/ui/ActionBar/BaseFragment;", "fragment", "Lcom/exteragram/messenger/api/dto/BadgeDTO;", "badge", _UrlKt.FRAGMENT_ENCODE_SET, "text", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "resourcesProvider", "account", "Landroid/widget/FrameLayout;", "containerLayout", "Ljava/lang/Runnable;", "onButton", _UrlKt.FRAGMENT_ENCODE_SET, "showBadgeBulletin", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/widget/FrameLayout;Ljava/lang/Runnable;)V", "name", "onClick", "formatBadgeCaption", "(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;", "fallbackText", "formatBadgeText", "(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/api/dto/ProfileDTO;", "profiles", "onProfilesSynced", "(Ljava/util/List;)V", "obj", "getBadge", "(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;", _UrlKt.FRAGMENT_ENCODE_SET, "hasBadge", "(Lorg/telegram/tgnet/TLObject;)Z", "id", "isSupporter", "(J)Z", "(J)Ljava/lang/Integer;", "isTrusted", "isExtera", "Lorg/telegram/tgnet/TLRPC$Chat;", "chat", "(Lorg/telegram/tgnet/TLRPC$Chat;)Z", "getDefaultBadge", "getCustomBadgeId", "(Lorg/telegram/tgnet/TLObject;)J", "Lorg/telegram/tgnet/TLRPC$User;", "user", "shouldUseSecondaryBadgeSlot", "(Lorg/telegram/tgnet/TLRPC$User;Lcom/exteragram/messenger/api/dto/BadgeDTO;)Z", "getSecondaryBadge", "(Lorg/telegram/tgnet/TLRPC$User;)Lcom/exteragram/messenger/api/dto/BadgeDTO;", "canChangeBadge", "(Lorg/telegram/tgnet/TLRPC$User;)Z", "Ljava/util/function/Consumer;", Callback.METHOD_NAME, "updateBadge", "(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/util/function/Consumer;)V", "isDeveloper", "hasCustomBadge", "Lcom/exteragram/messenger/components/supporter/SupporterEnterFrom;", "enterFrom", "openProfileBadge", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/exteragram/messenger/components/supporter/SupporterEnterFrom;)V", "showButton", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/widget/FrameLayout;Ljava/lang/Boolean;)V", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "Lcom/exteragram/messenger/badges/source/ApiBadgeSource;", "apiBadgeSource", "Lcom/exteragram/messenger/badges/source/ApiBadgeSource;", "Lcom/exteragram/messenger/badges/CachedRemoteSet;", "trustedPluginsCache", "Lcom/exteragram/messenger/badges/CachedRemoteSet;", "DEV_BADGE", "Lcom/exteragram/messenger/api/dto/BadgeDTO;", "getDEV_BADGE", "()Lcom/exteragram/messenger/api/dto/BadgeDTO;", "SUPPORTER_BADGE", "getSUPPORTER_BADGE", "TRUSTED_BADGE", "getTRUSTED_BADGE", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBadgesController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BadgesController.kt\ncom/exteragram/messenger/badges/BadgesController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,306:1\n1#2:307\n*E\n"})
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
    public final void openProfileBadge(BaseFragment baseFragment, TLRPC.User user, Theme.ResourcesProvider resourcesProvider) {
        openProfileBadge$default(this, baseFragment, user, resourcesProvider, null, 8, null);
    }

    @JvmOverloads
    public final void showBadgeBulletin(BaseFragment baseFragment, BadgeDTO badgeDTO, TLRPC.Chat chat, Theme.ResourcesProvider resourcesProvider, int i) {
        showBadgeBulletin$default(this, baseFragment, badgeDTO, chat, resourcesProvider, i, null, null, 96, null);
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
        BuildersKt__Builders_commonKt.launch$default(CoroutineScope, null, null, new C12661(null), 3, null);
    }

    public final BadgeDTO getTRUSTED_BADGE() {
        return TRUSTED_BADGE;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.badges.BadgesController$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "com.exteragram.messenger.badges.BadgesController$1", m921f = "BadgesController.kt", m922i = {}, m923l = {62}, m924m = "invokeSuspend", m925n = {}, m926s = {})
    public static final class C12661 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C12661(Continuation<? super C12661> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12661(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12661) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.badges.BadgesController$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SupporterWelcomeController.check();
                }
            });
            return Unit.INSTANCE;
        }
    }

    public final void onProfilesSynced(List<ProfileDTO> profiles) {
        apiBadgeSource.applySync(profiles);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.badges.BadgesController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BadgesController.$r8$lambda$XAjr2H3Q1SRrHGPgCzmDqsumBjY();
            }
        });
    }

    public static void $r8$lambda$XAjr2H3Q1SRrHGPgCzmDqsumBjY() {
        for (int i = 0; i < 16; i++) {
            if (UserConfig.getInstance(i).isClientActivated()) {
                NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_EMOJI_STATUS));
            }
        }
        SupporterWelcomeController.check();
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
            FileLog.m1040e(e);
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

    public final boolean isSupporter(long id) {
        ProfileStatus status = apiBadgeSource.getStatus(id);
        return status == ProfileStatus.SUPPORTER || status == ProfileStatus.DEVELOPER;
    }

    public final Integer getNumber(long id) {
        Integer number = apiBadgeSource.getNumber(id);
        if (number == null || number.intValue() <= 0 || !INSTANCE.isSupporter(id)) {
            return null;
        }
        return number;
    }

    @JvmStatic
    public static final Integer getNumber(TLObject peer) {
        BadgesController badgesController = INSTANCE;
        Long lPeerId = badgesController.peerId(peer);
        if (lPeerId != null) {
            return badgesController.getNumber(lPeerId.longValue());
        }
        return null;
    }

    @JvmStatic
    public static final String formatNumber(int number) {
        return "#" + number;
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

    public final BadgeDTO getDefaultBadge(TLObject peer) {
        Long lPeerId = peerId(peer);
        if (lPeerId != null) {
            return apiBadgeSource.isDeveloper(lPeerId.longValue()) ? DEV_BADGE : SUPPORTER_BADGE;
        }
        return null;
    }

    public final long getCustomBadgeId(TLObject peer) {
        BadgeDTO badge;
        BadgeDTO defaultBadge;
        if (peer == null || (badge = getBadge(peer)) == null || (defaultBadge = getDefaultBadge(peer)) == null || badge.getDocumentId() == defaultBadge.getDocumentId()) {
            return 0L;
        }
        return badge.getDocumentId();
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
            ChatUtils.getInstance(UserConfig.selectedAccount).sendBotRequest(str, false, new Utilities.Callback() { // from class: com.exteragram.messenger.badges.BadgesController$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    BadgesController.m2277$r8$lambda$WZGaXMvr13F1Qm6cV7pEoSXq1o(callback, badge, (String) obj);
                }
            });
            return;
        }
        callback.accept(null);
    }

    /* JADX INFO: renamed from: $r8$lambda$WZGaXMvr13F1Qm6cV7pEoSXq-1o, reason: not valid java name */
    public static void m2277$r8$lambda$WZGaXMvr13F1Qm6cV7pEoSXq1o(Consumer consumer, BadgeDTO badgeDTO, String str) {
        if (Intrinsics.areEqual("ok", str)) {
            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new BadgesController$updateBadge$1$1(badgeDTO, consumer, str, null), 3, null);
        } else {
            consumer.accept(str);
        }
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

    public final boolean hasCustomBadge(TLObject peer) {
        Long lPeerId = peerId(peer);
        if (lPeerId != null) {
            long jLongValue = lPeerId.longValue();
            if (!apiBadgeSource.isDeveloper(jLongValue) && (!isSupporter(jLongValue) || getCustomBadgeId(peer) != 0)) {
                return true;
            }
        }
        return false;
    }

    private final Long peerId(TLObject peer) {
        if (peer instanceof TLRPC.User) {
            return Long.valueOf(((TLRPC.User) peer).id);
        }
        if (peer instanceof TLRPC.Chat) {
            return Long.valueOf(((TLRPC.Chat) peer).id);
        }
        return null;
    }

    public static /* synthetic */ void openProfileBadge$default(BadgesController badgesController, BaseFragment baseFragment, TLRPC.User user, Theme.ResourcesProvider resourcesProvider, SupporterEnterFrom supporterEnterFrom, int i, Object obj) {
        if ((i & 8) != 0) {
            supporterEnterFrom = null;
        }
        badgesController.openProfileBadge(baseFragment, user, resourcesProvider, supporterEnterFrom);
    }

    @JvmOverloads
    public final void openProfileBadge(final BaseFragment fragment, final TLRPC.User user, final Theme.ResourcesProvider resourcesProvider, SupporterEnterFrom enterFrom) {
        if (user == null) {
            return;
        }
        boolean zIsDeveloper = isDeveloper(user);
        if (!zIsDeveloper && user.id == UserConfig.getInstance(fragment.getCurrentAccount()).clientUserId && isSupporter(user.id)) {
            SupporterBottomSheet.showAlert(fragment, null, resourcesProvider, enterFrom);
            return;
        }
        if (zIsDeveloper || hasCustomBadge(user)) {
            BadgeDTO badge = getBadge(user);
            if (badge == null) {
                return;
            }
            showBadgeBulletin(fragment, badge, formatBadgeText(badge, UserObject.getUserName(user), LocaleController.formatString(zIsDeveloper ? C2807R.string.Developer : C2807R.string.Supporter, user.first_name)), resourcesProvider, fragment.getCurrentAccount(), (FrameLayout) null, zIsDeveloper ? null : new Runnable() { // from class: com.exteragram.messenger.badges.BadgesController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    SupporterBottomSheet.showAlert(fragment, user, resourcesProvider);
                }
            });
            Unit unit = Unit.INSTANCE;
            return;
        }
        SupporterBottomSheet.showAlert(fragment, user, resourcesProvider, enterFrom);
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
    public final void showBadgeBulletin(final BaseFragment fragment, BadgeDTO badge, final TLRPC.Chat chat, final Theme.ResourcesProvider resourcesProvider, int account, FrameLayout containerLayout, Boolean showButton) {
        String string;
        boolean zBooleanValue;
        if (chat == null) {
            return;
        }
        boolean zIsExtera = isExtera(chat);
        boolean zIsTrusted = isTrusted(chat.id);
        if (zIsExtera) {
            string = LocaleController.formatString(C2807R.string.OfficialChannel, chat.title);
        } else if (zIsTrusted) {
            string = LocaleController.getString(C2807R.string.PluginSourceTrustedInfo);
        } else {
            string = LocaleController.formatString(C2807R.string.Supporter, chat.title);
        }
        CharSequence badgeText = formatBadgeText(badge, chat.title, string);
        if (showButton != null) {
            zBooleanValue = showButton.booleanValue();
        } else {
            zBooleanValue = (zIsExtera || zIsTrusted) ? false : true;
        }
        showBadgeBulletin(fragment, badge, badgeText, resourcesProvider, account, containerLayout, zBooleanValue ? new Runnable() { // from class: com.exteragram.messenger.badges.BadgesController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SupporterBottomSheet.showAlert(fragment, chat, resourcesProvider);
            }
        } : null);
    }

    private final void showBadgeBulletin(BaseFragment fragment, BadgeDTO badge, CharSequence text, Theme.ResourcesProvider resourcesProvider, int account, FrameLayout containerLayout, Runnable onButton) {
        BulletinFactory bulletinFactoryOf;
        if (containerLayout != null) {
            bulletinFactoryOf = BulletinFactory.of(containerLayout, resourcesProvider);
        } else {
            bulletinFactoryOf = BulletinFactory.of(fragment);
        }
        Bulletin bulletinCreateEmojiBulletin = bulletinFactoryOf.createEmojiBulletin(AnimatedEmojiDrawable.findDocument(account, badge.getDocumentId()), text, onButton != null ? LocaleController.getString(C2807R.string.FragmentUsernameOpen) : null, onButton);
        if (onButton == null) {
            bulletinCreateEmojiBulletin.wrapContent();
        }
        bulletinCreateEmojiBulletin.show();
    }

    public static /* synthetic */ CharSequence formatBadgeCaption$default(String str, String str2, BaseFragment baseFragment, Runnable runnable, int i, Object obj) {
        if ((i & 4) != 0) {
            baseFragment = null;
        }
        if ((i & 8) != 0) {
            runnable = null;
        }
        return formatBadgeCaption(str, str2, baseFragment, runnable);
    }

    @JvmStatic
    public static final CharSequence formatBadgeCaption(String text, String name, BaseFragment fragment, Runnable onClick) {
        if (name == null) {
            name = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return LocaleUtils.fullyFormatText(StringsKt.replace$default(text, "{name}", name, false, 4, (Object) null), fragment, onClick);
    }

    private final CharSequence formatBadgeText(BadgeDTO badge, String name, CharSequence fallbackText) {
        CharSequence badgeCaption$default;
        String text = badge.getText();
        return (text == null || (badgeCaption$default = formatBadgeCaption$default(text, name, null, null, 12, null)) == null) ? fallbackText : badgeCaption$default;
    }
}
