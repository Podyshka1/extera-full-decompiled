package com.exteragram.messenger.icons;

import com.exteragram.messenger.icons.IconPackStorageResult;
import java.io.File;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.BulletinFactory;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(m920c = "com.exteragram.messenger.icons.IconManager$handleIconPack$1$1$bottomSheet$1$1", m921f = "IconManager.kt", m922i = {1}, m923l = {1020, 1021}, m924m = "invokeSuspend", m925n = {"installResult"}, m926s = {"L$0"})
public final class IconManager$handleIconPack$1$1$bottomSheet$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BaseFragment $baseFragment;
    final /* synthetic */ boolean $enable;
    final /* synthetic */ File $file;
    final /* synthetic */ IconPack $pack;
    final /* synthetic */ boolean $update;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IconManager$handleIconPack$1$1$bottomSheet$1$1(File file, BaseFragment baseFragment, boolean z, IconPack iconPack, boolean z2, Continuation<? super IconManager$handleIconPack$1$1$bottomSheet$1$1> continuation) {
        super(2, continuation);
        this.$file = file;
        this.$baseFragment = baseFragment;
        this.$update = z;
        this.$pack = iconPack;
        this.$enable = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IconManager$handleIconPack$1$1$bottomSheet$1$1(this.$file, this.$baseFragment, this.$update, this.$pack, this.$enable, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((IconManager$handleIconPack$1$1$bottomSheet$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r11, r3, r10) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            IconPackStorage iconPackStorage = IconPackStorage.INSTANCE;
            File file = this.$file;
            this.label = 1;
            obj = iconPackStorage.installPack(file, this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        IconPackStorageResult iconPackStorageResult = (IconPackStorageResult) obj;
        MainCoroutineDispatcher main = Dispatchers.getMain();
        C13611 c13611 = new C13611(iconPackStorageResult, this.$baseFragment, this.$update, this.$pack, this.$enable, null);
        this.L$0 = SpillingKt.nullOutSpilledVariable(iconPackStorageResult);
        this.label = 2;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$handleIconPack$1$1$bottomSheet$1$1$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "com.exteragram.messenger.icons.IconManager$handleIconPack$1$1$bottomSheet$1$1$1", m921f = "IconManager.kt", m922i = {}, m923l = {}, m924m = "invokeSuspend", m925n = {}, m926s = {})
    public static final class C13611 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BaseFragment $baseFragment;
        final /* synthetic */ boolean $enable;
        final /* synthetic */ IconPackStorageResult<Unit> $installResult;
        final /* synthetic */ IconPack $pack;
        final /* synthetic */ boolean $update;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13611(IconPackStorageResult<Unit> iconPackStorageResult, BaseFragment baseFragment, boolean z, IconPack iconPack, boolean z2, Continuation<? super C13611> continuation) {
            super(2, continuation);
            this.$installResult = iconPackStorageResult;
            this.$baseFragment = baseFragment;
            this.$update = z;
            this.$pack = iconPack;
            this.$enable = z2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13611(this.$installResult, this.$baseFragment, this.$update, this.$pack, this.$enable, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13611) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            IconPackStorageResult<Unit> iconPackStorageResult = this.$installResult;
            if (iconPackStorageResult instanceof IconPackStorageResult.Success) {
                BulletinFactory.of(this.$baseFragment).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.formatString(this.$update ? C2807R.string.PluginUpdated : C2807R.string.PluginInstalled, this.$pack.getName())).show();
                if (this.$enable) {
                    IconManager.INSTANCE.setActiveCustomPack(this.$pack.getId());
                } else {
                    IconManager iconManager = IconManager.INSTANCE;
                    iconManager.syncInstalledCustomPacks(CollectionsKt.listOf(this.$pack));
                    iconManager.initialize(true);
                }
            } else if (iconPackStorageResult instanceof IconPackStorageResult.Failure) {
                IconManager.INSTANCE.showIconPackError(this.$baseFragment, ((IconPackStorageResult.Failure) iconPackStorageResult).getError());
            } else {
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                return null;
            }
            return Unit.INSTANCE;
        }
    }
}
