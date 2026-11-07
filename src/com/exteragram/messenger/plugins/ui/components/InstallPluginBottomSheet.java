package com.exteragram.messenger.plugins.ui.components;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.StrikethroughSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.CheckBoxRow;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.pip.PipController;
import com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet;
import com.exteragram.messenger.plugins.ui.components.PluginRequirementsView;
import com.exteragram.messenger.plugins.ui.components.RequiredPluginCell;
import com.exteragram.messenger.translator.TranslatorUtils;
import com.exteragram.messenger.translator.core.TranslationError;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.ui.UIUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LanguageDetector;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.ViewOutlineProviderImpl;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EffectsTextView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 z2\u00020\u0001:\u0002yzB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u00107\u001a\u00020\u001bH\u0014J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0014J(\u0010<\u001a\u00020=2\u0016\u0010>\u001a\u0012\u0012\u0004\u0012\u00020@0?j\b\u0012\u0004\u0012\u00020@`A2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010B\u001a\u00020@2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020+H\u0002J\u0018\u0010F\u001a\u00020@2\u0006\u0010C\u001a\u00020D2\u0006\u0010G\u001a\u00020+H\u0002J\u0010\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u001bH\u0002J\u0010\u0010J\u001a\u00020@2\u0006\u0010K\u001a\u00020LH\u0002J\u0010\u0010M\u001a\u00020=2\u0006\u0010N\u001a\u00020\u001dH\u0016J \u0010O\u001a\u00020=2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020D2\u0006\u0010S\u001a\u00020LH\u0014J\u0010\u0010T\u001a\u00020=2\u0006\u0010U\u001a\u000202H\u0002J\b\u0010V\u001a\u00020=H\u0002J\u0010\u0010W\u001a\u00020=2\u0006\u0010X\u001a\u00020\rH\u0002J\u0010\u0010Y\u001a\u00020\u001f2\u0006\u0010Z\u001a\u00020[H\u0002J\u0010\u0010\\\u001a\u00020\u001f2\u0006\u0010Z\u001a\u00020[H\u0002J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010Z\u001a\u00020[H\u0002J\u0010\u0010^\u001a\u00020=2\u0006\u0010_\u001a\u00020+H\u0002J\b\u0010`\u001a\u00020=H\u0002J\u0010\u0010a\u001a\u00020=2\u0006\u0010b\u001a\u00020\u001fH\u0002J\u0010\u0010c\u001a\u00020\u001f2\u0006\u0010Z\u001a\u00020[H\u0002J\b\u0010d\u001a\u00020=H\u0002J\b\u0010e\u001a\u00020=H\u0002J\b\u0010f\u001a\u00020=H\u0002J6\u0010g\u001a\u00020=2\u0006\u0010I\u001a\u00020+2\u0006\u0010h\u001a\u00020+2\u0006\u0010i\u001a\u00020+2\u0014\u0010j\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010+\u0012\u0004\u0012\u00020=0kH\u0002J\u001e\u0010l\u001a\u00020=2\f\u0010m\u001a\b\u0012\u0004\u0012\u00020-012\u0006\u0010n\u001a\u00020\rH\u0002J\u0010\u0010o\u001a\u00020=2\u0006\u0010p\u001a\u00020\rH\u0002J\b\u0010q\u001a\u00020=H\u0002J\b\u0010r\u001a\u00020=H\u0002J\u0018\u0010s\u001a\u00020=2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0018\u0010t\u001a\u00020=2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010u\u001a\u00020vH\u0002J\b\u0010w\u001a\u00020=H\u0016J\b\u0010x\u001a\u00020=H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00100\u001a\b\u0012\u0004\u0012\u00020201X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00105\u001a\b\u0012\u0004\u0012\u00020206X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006{"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;", "Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;", "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "validationResult", "Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;", PluginsConstants.PARAMS, "Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;", "<init>", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V", "plugin", "Lcom/exteragram/messenger/plugins/Plugin;", "enableAfterInstallation", _UrlKt.FRAGMENT_ENCODE_SET, "installing", "cancellationRequested", "delayedLoadingRunnable", "Ljava/lang/Runnable;", "currentHint", "Lorg/telegram/ui/Stories/recorder/HintView2;", "isUpdate", "button", "Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;", "contentReady", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "titleText", _UrlKt.FRAGMENT_ENCODE_SET, "sheetContainer", "Landroid/widget/FrameLayout;", "headerView", "Landroid/view/View;", "descriptionView", "actionsPill", "Landroid/widget/LinearLayout;", "translateButton", "Lcom/exteragram/messenger/plugins/ui/components/PluginTranslateButton;", "bottomContainer", "enableAfterInstallRow", "errorView", "errorTextView", "Landroid/widget/TextView;", "errorText", _UrlKt.FRAGMENT_ENCODE_SET, "nameText", "Lcom/exteragram/messenger/plugins/ui/components/TranslatableText;", "descriptionText", "translating", Common.ASSET_REQUIREMENTS, _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/ui/components/RequiredPluginInfo;", "unknownSourceBlocked", "blocked", "requirementDelegate", "Lorg/telegram/messenger/Utilities$Callback;", "getTitle", "createAdapter", "Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;", "listView", "Lorg/telegram/ui/Components/RecyclerListView;", "fillItems", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", "pipRow", "id", _UrlKt.FRAGMENT_ENCODE_SET, "requirement", "wheelRow", "fileName", PluginsConstants.Settings.TYPE_HEADER, "text", "spacer", "heightDp", _UrlKt.FRAGMENT_ENCODE_SET, "onViewCreated", "containerView", "onPreDraw", "canvas", "Landroid/graphics/Canvas;", "top", "progressToFullView", "onRequirementAction", "info", "checkRequirementsSatisfied", "applyButtonState", "animated", "buildHeader", "activity", "Landroid/app/Activity;", "buildDescription", "buildError", "showError", "message", "scrollToError", "showSourceHint", PluginsConstants.Settings.VIEW, "createEnableAfterInstallRow", "openPluginFile", "checkTranslatable", "onTranslateClick", "translateText", "fromLanguage", "toLanguage", "done", "Lkotlin/Function1;", "onTranslationFinished", "texts", "success", "showTexts", "translated", "onTextTransitionUpdate", "onInstallClick", "showSuccessBulletin", "showSimpleSuccessBulletin", "bf", "Lorg/telegram/ui/Components/BulletinFactory;", "dismiss", "onSwipeStarts", "PluginInstallParams", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInstallPluginBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstallPluginBottomSheet.kt\ncom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1369:1\n1#2:1370\n1807#3,3:1371\n1915#3,2:1377\n3938#4:1374\n4474#4,2:1375\n*S KotlinDebug\n*F\n+ 1 InstallPluginBottomSheet.kt\ncom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet\n*L\n411#1:1371,3\n1002#1:1377,2\n941#1:1374\n941#1:1375,2\n*E\n"})
public final class InstallPluginBottomSheet extends BottomSheetWithRecyclerListView {
    private static final float SECTION_GAP = 12.0f;
    private LinearLayout actionsPill;
    private UniversalAdapter adapter;
    private boolean blocked;
    private LinearLayout bottomContainer;
    private final ButtonWithCounterView button;
    private volatile boolean cancellationRequested;
    private boolean contentReady;
    private HintView2 currentHint;
    private Runnable delayedLoadingRunnable;
    private final TranslatableText descriptionText;
    private View descriptionView;
    private View enableAfterInstallRow;
    private boolean enableAfterInstallation;
    private String errorText;
    private TextView errorTextView;
    private View errorView;
    private final BaseFragment fragment;
    private View headerView;
    private boolean installing;
    private final boolean isUpdate;
    private final TranslatableText nameText;
    private final PluginInstallParams params;
    private final Plugin plugin;
    private final Utilities.Callback<RequiredPluginInfo> requirementDelegate;
    private final List<RequiredPluginInfo> requirements;
    private FrameLayout sheetContainer;
    private CharSequence titleText;
    private PluginTranslateButton translateButton;
    private boolean translating;
    private final boolean unknownSourceBlocked;

    public static CharSequence $r8$lambda$q4p5RiDrgsviqy7JLiU9TlMNu8Q(String str) {
        return str;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public /* bridge */ /* synthetic */ void setLastVisible(boolean z) {
        super.setLastVisible(z);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public InstallPluginBottomSheet(BaseFragment baseFragment, PluginsController.PluginValidationResult pluginValidationResult, PluginInstallParams pluginInstallParams) {
        List<RequiredPluginInfo> list;
        super(baseFragment.getParentActivity(), baseFragment, false, false, false, true, BottomSheetWithRecyclerListView.ActionBarType.FADING, baseFragment.getResourceProvider());
        this.fragment = baseFragment;
        this.params = pluginInstallParams;
        Plugin plugin = pluginValidationResult.getPlugin();
        if (plugin == null) {
            f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
            throw null;
        }
        this.plugin = plugin;
        this.isUpdate = PluginsController.INSTANCE.getInstance().getPlugins().containsKey(plugin.getId());
        this.nameText = new TranslatableText(plugin.getName(), new Function1() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return InstallPluginBottomSheet.$r8$lambda$q4p5RiDrgsviqy7JLiU9TlMNu8Q((String) obj);
            }
        }, new InstallPluginBottomSheet$nameText$2(this));
        this.descriptionText = new TranslatableText(plugin.getDescription(), new Function1() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                InstallPluginBottomSheet installPluginBottomSheet = this.f$0;
                return LocaleUtils.fullyFormatText((String) obj, installPluginBottomSheet.fragment, new InstallPluginBottomSheet$$ExternalSyntheticLambda5(installPluginBottomSheet));
            }
        }, new InstallPluginBottomSheet$descriptionText$2(this));
        List<RequiredPluginInfo> requiredPlugins = pluginInstallParams.getRequiredPlugins();
        this.requirements = (requiredPlugins == null || (list = CollectionsKt.toList(requiredPlugins)) == null) ? CollectionsKt.emptyList() : list;
        boolean z = (pluginInstallParams.getTrusted() || ExteraConfig.getPluginsUnknownSources()) ? false : true;
        this.unknownSourceBlocked = z;
        this.blocked = z || pluginInstallParams.getBlockedTitle() != null;
        this.requirementDelegate = new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.onRequirementAction((RequiredPluginInfo) obj);
            }
        };
        setDelegate(new BottomSheet.BottomSheetDelegate() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet.1
            @Override // org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegate, org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
            public boolean canDismiss() {
                return !InstallPluginBottomSheet.this.installing;
            }
        });
        Activity parentActivity = baseFragment.getParentActivity();
        this.occupyNavigationBar = true;
        setApplyBottomPadding(false);
        this.topPadding = 0.2f;
        int i = Theme.key_windowBackgroundGray;
        setBackgroundColor(getThemedColor(i));
        ActionBar actionBar = this.actionBar;
        actionBar.setBackgroundColor(getThemedColor(i));
        actionBar.setCastShadows(false);
        this.showShadow = false;
        this.titleText = plugin.getName();
        updateTitle();
        this.takeTranslationIntoAccount = true;
        RecyclerListView recyclerListView = this.recyclerListView;
        recyclerListView.setClipChildren(false);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setOverScrollMode(2);
        int i2 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i2, 0, i2, 0);
        recyclerListView.setSections();
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$3$1
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder holder) {
                super.onMoveAnimationUpdate(holder);
                ((BottomSheet) this.this$0).containerView.invalidate();
            }
        };
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                InstallPluginBottomSheet.$r8$lambda$0bzmhvmogRnBU8vwylqF8Odp7Is(this.f$0, view, i3);
            }
        });
        this.headerView = buildHeader(parentActivity);
        this.descriptionView = buildDescription(parentActivity);
        this.errorView = buildError(parentActivity);
        checkTranslatable();
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(parentActivity, true, this.resourcesProvider);
        buttonWithCounterView.setRound();
        this.button = buttonWithCounterView;
        applyButtonState(false);
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        linearLayout.setBackground(UIUtil.createBottomFade(getThemedColor(i)));
        linearLayout.setPadding(0, 0, 0, AndroidUtilities.navigationBarHeight);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, AndroidUtilities.dp(48.0f));
        int iDp = this.backgroundPaddingLeft + AndroidUtilities.dp(SECTION_GAP);
        layoutParams.setMargins(iDp, AndroidUtilities.dp(SECTION_GAP), iDp, AndroidUtilities.dp(SECTION_GAP));
        Unit unit = Unit.INSTANCE;
        linearLayout.addView(buttonWithCounterView, layoutParams);
        if (!plugin.isEnabled() && !ExteraConfig.getPluginsSafeMode()) {
            View viewCreateEnableAfterInstallRow = createEnableAfterInstallRow(parentActivity);
            viewCreateEnableAfterInstallRow.setVisibility(this.blocked ? 8 : 0);
            linearLayout.addView(viewCreateEnableAfterInstallRow, LayoutHelper.createLinear(-2, -2, 1, 0.0f, 0.0f, 0.0f, 8.0f));
            this.enableAfterInstallRow = viewCreateEnableAfterInstallRow;
        }
        linearLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda10
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                InstallPluginBottomSheet.$r8$lambda$JcFMrAkO6mT6xcKCfpOjvc83vx8(this.f$0, view, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        });
        this.bottomContainer = linearLayout;
        FrameLayout frameLayout = this.sheetContainer;
        if (frameLayout != null) {
            frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 80));
        }
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        actionBarMenuCreateMenu.setPadding(0, 0, AndroidUtilities.dp(3.5f), 0);
        actionBarMenuCreateMenu.addItem(1, C2665R.drawable.msg_openin);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet.7
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int id) {
                if (id == -1) {
                    InstallPluginBottomSheet.this.dismiss();
                } else {
                    if (id != 1) {
                        return;
                    }
                    InstallPluginBottomSheet.this.openPluginFile();
                }
            }
        });
        this.contentReady = true;
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }

    public static void $r8$lambda$0bzmhvmogRnBU8vwylqF8Odp7Is(InstallPluginBottomSheet installPluginBottomSheet, View view, int i) {
        UItem item;
        UniversalAdapter universalAdapter = installPluginBottomSheet.adapter;
        if (universalAdapter == null || (item = universalAdapter.getItem(i)) == null) {
            return;
        }
        Object obj = item.object2;
        String str = obj instanceof String ? (String) obj : null;
        if (str == null) {
            return;
        }
        Browser.openUrl(installPluginBottomSheet.getContext(), str);
    }

    public static void $r8$lambda$JcFMrAkO6mT6xcKCfpOjvc83vx8(InstallPluginBottomSheet installPluginBottomSheet, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i4 - i2;
        if (installPluginBottomSheet.recyclerListView.getPaddingBottom() != i9) {
            RecyclerListView recyclerListView = installPluginBottomSheet.recyclerListView;
            int i10 = installPluginBottomSheet.backgroundPaddingLeft;
            recyclerListView.setPadding(i10, 0, i10, i9);
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        CharSequence charSequence = this.titleText;
        return charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView listView) {
        Context context = getContext();
        int i = this.currentAccount;
        BaseFragment baseFragment = getBaseFragment();
        UniversalAdapter universalAdapter = new UniversalAdapter(listView, context, i, baseFragment != null ? baseFragment.getClassGuid() : 0, true, new Utilities.Callback2() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda26
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        View view;
        if (this.contentReady) {
            View view2 = this.headerView;
            if (view2 != null) {
                items.add(UItem.asCustomShadow(view2));
                items.add(spacer(20.0f));
            }
            View view3 = this.descriptionView;
            if (view3 != null) {
                items.add(UItem.asCustom(view3));
            }
            if (!this.requirements.isEmpty()) {
                items.add(spacer(SECTION_GAP));
                items.add(header(LocaleController.getString(C2665R.string.PluginRequired)));
                Iterator<RequiredPluginInfo> it = this.requirements.iterator();
                while (it.hasNext()) {
                    items.add(RequiredPluginCell.Factory.INSTANCE.asRequirement(it.next(), this.requirementDelegate));
                }
            }
            List<String> requirements = this.plugin.getRequirements();
            List<String> list = requirements;
            int i = 0;
            if (list != null && !list.isEmpty()) {
                items.add(spacer(SECTION_GAP));
                items.add(header(LocaleController.getString(C2665R.string.PluginRequirements)));
                Iterator<T> it2 = requirements.iterator();
                int i2 = 0;
                while (it2.hasNext()) {
                    items.add(pipRow(i2 + 1000, (String) it2.next()));
                    i2++;
                }
            }
            List<String> bundledPackages = this.params.getBundledPackages();
            if (bundledPackages != null) {
                if (bundledPackages.isEmpty()) {
                    bundledPackages = null;
                }
                if (bundledPackages != null) {
                    items.add(spacer(SECTION_GAP));
                    items.add(header(LocaleController.getString(C2665R.string.PluginBundledPackages)));
                    Iterator<T> it3 = bundledPackages.iterator();
                    while (it3.hasNext()) {
                        items.add(wheelRow(i + 1500, (String) it3.next()));
                        i++;
                    }
                }
            }
            if (this.errorText == null || (view = this.errorView) == null) {
                return;
            }
            items.add(spacer(SECTION_GAP));
            items.add(UItem.asCustomShadow(view));
        }
    }

    private final UItem pipRow(int id, String requirement) {
        String string = StringsKt.trim((CharSequence) requirement).toString();
        PluginRequirementsView.Companion companion = PluginRequirementsView.INSTANCE;
        String strRequirementName = companion.requirementName(string);
        String strRequirementUrl = companion.requirementUrl(string);
        if (strRequirementUrl == null) {
            return UItem.asSettingsCell(id, string, (CharSequence) null);
        }
        String string2 = StringsKt.trim((CharSequence) StringsKt.removePrefix(string, (CharSequence) strRequirementName)).toString();
        UItem uItemAsButton = UItem.asButton(id, strRequirementName, string2.length() != 0 ? string2 : null);
        uItemAsButton.object2 = strRequirementUrl;
        return uItemAsButton;
    }

    private final UItem wheelRow(int id, String fileName) {
        String strDropLast;
        String str = StringsKt.endsWith(fileName, ".whl", true) ? fileName : null;
        List listSplit$default = (str == null || (strDropLast = StringsKt.dropLast(str, 4)) == null) ? null : StringsKt.split$default((CharSequence) strDropLast, new String[]{"-"}, false, 0, 6, (Object) null);
        if (listSplit$default == null || listSplit$default.size() < 2) {
            return UItem.asSettingsCell(id, fileName, (CharSequence) null);
        }
        return UItem.asSettingsCell(id, StringsKt.replace$default((String) listSplit$default.get(0), '_', SignatureVisitor.SUPER, false, 4, (Object) null), (CharSequence) listSplit$default.get(1));
    }

    private final UItem header(CharSequence text) {
        return UItem.asHeader(text).onBind(new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda27
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                InstallPluginBottomSheet.$r8$lambda$axbWnxDrBj8SEXz68q0_0EeZ7WI((View) obj);
            }
        });
    }

    public static void $r8$lambda$axbWnxDrBj8SEXz68q0_0EeZ7WI(View view) {
        HeaderCell headerCell = view instanceof HeaderCell ? (HeaderCell) view : null;
        if (headerCell == null) {
            return;
        }
        TextView textView = headerCell.getTextView();
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 == null) {
            return;
        }
        int iDp = AndroidUtilities.dp(6.0f);
        int iDp2 = AndroidUtilities.dp(34.0f);
        if (layoutParams2.topMargin == iDp && textView.getMinHeight() == iDp2) {
            return;
        }
        layoutParams2.topMargin = iDp;
        textView.setMinHeight(iDp2);
        headerCell.requestLayout();
    }

    private final UItem spacer(float heightDp) {
        UItem uItemAsSpace = UItem.asSpace(AndroidUtilities.dp(heightDp));
        uItemAsSpace.transparent = true;
        return uItemAsSpace;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public void onViewCreated(FrameLayout containerView) {
        super.onViewCreated(containerView);
        this.sheetContainer = containerView;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public void onPreDraw(Canvas canvas, int top, float progressToFullView) {
        LinearLayout linearLayout = this.actionsPill;
        if (linearLayout != null) {
            float f = 1.0f - progressToFullView;
            linearLayout.setAlpha(f);
            int childCount = linearLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                linearLayout.getChildAt(i).setClickable(f > 0.5f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRequirementAction(final RequiredPluginInfo info) {
        if (info.isSatisfied()) {
            return;
        }
        if (info.state == 1) {
            PluginsController.INSTANCE.getInstance().setPluginEnabled(info.id, true, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda30
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            InstallPluginBottomSheet.$r8$lambda$S6yUHpGKTwONSUPNmjtxj1U2NIs(str, requiredPluginInfo, installPluginBottomSheet);
                        }
                    });
                }
            });
            return;
        }
        String str = info.downloadUrl;
        if (str == null) {
            return;
        }
        dismiss();
        Browser.openUrl(getContext(), str);
    }

    public static void $r8$lambda$S6yUHpGKTwONSUPNmjtxj1U2NIs(String str, RequiredPluginInfo requiredPluginInfo, InstallPluginBottomSheet installPluginBottomSheet) {
        String name;
        if (str == null) {
            Plugin plugin = PluginsController.INSTANCE.getInstance().getPlugins().get(requiredPluginInfo.id);
            requiredPluginInfo.currentVersion = plugin != null ? plugin.getVersion() : null;
            if (plugin == null || (name = plugin.getName()) == null) {
                name = requiredPluginInfo.name;
            }
            requiredPluginInfo.name = name;
            requiredPluginInfo.state = 3;
            installPluginBottomSheet.errorText = null;
            UniversalAdapter universalAdapter = installPluginBottomSheet.adapter;
            if (universalAdapter != null) {
                universalAdapter.update(true);
            }
            installPluginBottomSheet.checkRequirementsSatisfied();
            return;
        }
        installPluginBottomSheet.showError(str);
    }

    private final void checkRequirementsSatisfied() {
        if (this.unknownSourceBlocked || !this.blocked || this.requirements.isEmpty()) {
            return;
        }
        List<RequiredPluginInfo> list = this.requirements;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!((RequiredPluginInfo) it.next()).isSatisfied()) {
                    return;
                }
            }
        }
        this.blocked = false;
        applyButtonState(true);
        View view = this.enableAfterInstallRow;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private final void applyButtonState(boolean animated) {
        String blockedTitle;
        String blockedSubtitle;
        ButtonWithCounterView buttonWithCounterView = this.button;
        buttonWithCounterView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
        if (this.unknownSourceBlocked) {
            blockedTitle = LocaleController.getString(C2665R.string.PluginInstallBlocked);
        } else {
            blockedTitle = this.params.getBlockedTitle();
        }
        if (this.unknownSourceBlocked) {
            blockedSubtitle = LocaleController.getString(C2665R.string.PluginInstallBlockedInfo);
        } else {
            blockedSubtitle = this.params.getBlockedSubtitle();
        }
        if (this.blocked && blockedTitle != null) {
            buttonWithCounterView.setColor(ColorUtils.compositeColors(ColorUtils.setAlphaComponent(getThemedColor(Theme.key_featuredStickers_addButton), 180), getThemedColor(Theme.key_windowBackgroundWhite)));
            buttonWithCounterView.setText(blockedTitle, animated);
            buttonWithCounterView.setSubText(blockedSubtitle, animated);
            buttonWithCounterView.setOnClickListener(null);
            buttonWithCounterView.setClickable(false);
            buttonWithCounterView.setFocusable(false);
            return;
        }
        buttonWithCounterView.setColor(getThemedColor(Theme.key_featuredStickers_addButton));
        buttonWithCounterView.setText(LocaleController.getString(this.isUpdate ? C2665R.string.UpdatePlugin : C2665R.string.InstallPlugin), animated);
        buttonWithCounterView.setSubText(null, animated);
        buttonWithCounterView.setFocusable(true);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onInstallClick();
            }
        });
    }

    private final View buildHeader(final Activity activity) {
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        Drawable iconDrawable = this.params.getIconDrawable();
        if (iconDrawable != null || (this.plugin.getPack() != null && this.plugin.getIndex() >= 0)) {
            FrameLayout frameLayout = new FrameLayout(activity);
            frameLayout.setClipChildren(false);
            frameLayout.setClipToPadding(false);
            BackupImageView backupImageView = new BackupImageView(activity);
            backupImageView.setOutlineProvider(ViewOutlineProviderImpl.boundsWithRoundRect(AndroidUtilities.dpf2(SECTION_GAP)));
            backupImageView.setClipToOutline(true);
            backupImageView.getImageReceiver().setAutoRepeat(1);
            frameLayout.addView(backupImageView, LayoutHelper.createFrame(78, 78, 17));
            FrameLayout frameLayout2 = new FrameLayout(activity);
            frameLayout2.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(28.0f), getThemedColor(Theme.key_windowBackgroundGray)));
            FrameLayout frameLayout3 = new FrameLayout(activity);
            frameLayout3.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(24.0f), getThemedColor(Theme.key_featuredStickers_addButton)));
            frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(24, 24, 17));
            ImageView imageView = new ImageView(activity);
            imageView.setImageResource(C2665R.drawable.plugins_filled);
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_featuredStickers_buttonText), PorterDuff.Mode.SRC_IN));
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            frameLayout2.addView(imageView, LayoutHelper.createFrame(16, 16, 17));
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(28, 28.0f, 8388693, 0.0f, 0.0f, -4.0f, -4.0f));
            linearLayout.addView(frameLayout, LayoutHelper.createLinear(78, 78, 1, 0.0f, 28.0f, 0.0f, 0.0f));
            if (iconDrawable != null) {
                backupImageView.setImageDrawable(iconDrawable);
            } else {
                MediaDataController.getInstance(UserConfig.selectedAccount).setPlaceholderImageByIndex(backupImageView, this.plugin.getPack(), this.plugin.getIndex(), "150_150", this.resourcesProvider);
            }
        } else {
            ImageView imageView2 = new ImageView(activity);
            imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView2.setImageResource(C2665R.drawable.plugins_filled);
            imageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_featuredStickers_buttonText), PorterDuff.Mode.SRC_IN));
            imageView2.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(78.0f), getThemedColor(Theme.key_featuredStickers_addButton)));
            int iDp = AndroidUtilities.dp(16.0f);
            imageView2.setPadding(iDp, iDp, iDp, iDp);
            linearLayout.addView(imageView2, LayoutHelper.createLinear(78, 78, 1, 0.0f, 28.0f, 0.0f, 0.0f));
        }
        TextView textView = new TextView(activity) { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$buildHeader$pluginNameView$1
            @Override // android.widget.TextView, android.view.View
            public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
                setMeasuredDimension(getMeasuredWidth(), this.nameText.getHeight(getMeasuredHeight()));
            }

            @Override // android.widget.TextView, android.view.View
            public void onDraw(Canvas canvas) {
                int iBeforeDraw = this.nameText.beforeDraw(canvas);
                super.onDraw(canvas);
                this.nameText.afterDraw(canvas, iBeforeDraw);
            }
        };
        textView.setGravity(1);
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 18.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(this.plugin.getName());
        this.nameText.setView(textView);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0, 40.0f, 16.0f, 40.0f, 0.0f));
        EffectsTextView effectsTextView = new EffectsTextView(activity, this.fragment.getResourceProvider());
        effectsTextView.setGravity(1);
        effectsTextView.setTypeface(AndroidUtilities.regular());
        effectsTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        effectsTextView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
        effectsTextView.setTextSize(1, 14.0f);
        effectsTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(LocaleController.getString(C2665R.string.PluginVersion)).append((CharSequence) " ");
        int length = spannableStringBuilderAppend.length();
        if (this.isUpdate) {
            Plugin plugin = PluginsController.INSTANCE.getInstance().getPlugins().get(this.plugin.getId());
            if (plugin != null) {
                String version = plugin.getVersion();
                String str = _UrlKt.FRAGMENT_ENCODE_SET;
                if (version == null) {
                    version = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                String version2 = this.plugin.getVersion();
                if (version2 != null) {
                    str = version2;
                }
                spannableStringBuilderAppend.append((CharSequence) version).append((CharSequence) " -> ").append((CharSequence) str);
                spannableStringBuilderAppend = LocaleUtils.replaceArrows(getContext(), spannableStringBuilderAppend, C2665R.drawable.msg_mini_arrow_mediathin);
                spannableStringBuilderAppend.setSpan(new StrikethroughSpan(), length, version.length() + length, 33);
            }
        } else {
            spannableStringBuilderAppend.append((CharSequence) this.plugin.getVersion());
        }
        spannableStringBuilderAppend.append((CharSequence) " • ").append(LocaleUtils.formatWithUsernames(this.plugin.getAuthor(), this.fragment, new InstallPluginBottomSheet$$ExternalSyntheticLambda5(this)));
        effectsTextView.setText(spannableStringBuilderAppend);
        linearLayout.addView(effectsTextView, LayoutHelper.createLinear(-1, -2, 0, 21.0f, 4.0f, 21.0f, 0.0f));
        int i = this.params.getTrusted() ? C2665R.drawable.trusted_mini : C2665R.drawable.unknown_mini;
        int themedColor = getThemedColor(this.params.getTrusted() ? Theme.key_windowBackgroundWhiteGreenText : Theme.key_text_RedRegular);
        String string = LocaleController.getString(this.params.getTrusted() ? C2665R.string.PluginSourceTrusted : C2665R.string.PluginSourceUnknown);
        final LinearLayout linearLayout2 = new LinearLayout(activity);
        ScaleStateListAnimator.apply(linearLayout2, 0.05f, 1.5f);
        linearLayout2.setOrientation(0);
        linearLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), ColorUtils.compositeColors(AndroidUtilities.multiplyAlphaComponent(themedColor, 0.1f), getThemedColor(Theme.key_windowBackgroundWhite))));
        linearLayout2.setPadding(AndroidUtilities.dp(SECTION_GAP), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(6.0f));
        linearLayout2.setGravity(17);
        ImageView imageView3 = new ImageView(activity);
        imageView3.setImageResource(i);
        imageView3.setColorFilter(new PorterDuffColorFilter(themedColor, PorterDuff.Mode.SRC_IN));
        linearLayout2.addView(imageView3, LayoutHelper.createLinear(14, 14, 16, 0.0f, 0.0f, 6.0f, 0.0f));
        TextView textView2 = new TextView(activity);
        textView2.setTypeface(AndroidUtilities.regular());
        textView2.setTextColor(themedColor);
        textView2.setTextSize(1, 13.0f);
        textView2.setText(string);
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 17, 0.0f, SECTION_GAP, 0.0f, 0.0f));
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showSourceHint(view);
            }
        });
        int themedColor2 = getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon);
        ImageView imageView4 = new ImageView(activity);
        ScaleStateListAnimator.apply(imageView4, 0.15f, 1.5f);
        Drawable drawable = ContextCompat.getDrawable(activity, C2665R.drawable.msg_openin);
        imageView4.setImageDrawable(drawable != null ? drawable.mutate() : null);
        imageView4.setColorFilter(new PorterDuffColorFilter(themedColor2, PorterDuff.Mode.MULTIPLY));
        imageView4.setScaleType(ImageView.ScaleType.CENTER);
        imageView4.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.openPluginFile();
            }
        });
        int i2 = Theme.key_dialogButtonSelector;
        imageView4.setBackground(Theme.createSelectorDrawable(getThemedColor(i2), 1, AndroidUtilities.dp(20.0f)));
        PluginTranslateButton pluginTranslateButton = new PluginTranslateButton(activity, themedColor2);
        ScaleStateListAnimator.apply(pluginTranslateButton, 0.15f, 1.5f);
        pluginTranslateButton.setVisibility(8);
        pluginTranslateButton.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onTranslateClick();
            }
        });
        pluginTranslateButton.setBackground(Theme.createSelectorDrawable(getThemedColor(i2), 1, AndroidUtilities.dp(20.0f)));
        this.translateButton = pluginTranslateButton;
        LinearLayout linearLayout3 = new LinearLayout(activity);
        linearLayout3.setOrientation(0);
        int iDp2 = AndroidUtilities.dp(2.0f);
        linearLayout3.setPadding(iDp2, iDp2, iDp2, iDp2);
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        blurredBackgroundSourceColor.setColor(getThemedColor(Theme.key_windowBackgroundGray));
        BlurredBackgroundDrawable radius = blurredBackgroundSourceColor.createDrawable().setColorProvider(BlurredBackgroundProviderImpl.topPanelChatActivity(this.resourcesProvider)).setRadius(AndroidUtilities.dpf2(22.0f));
        radius.setShadowAlpha(0.0f);
        linearLayout3.setBackground(radius);
        linearLayout3.addView(pluginTranslateButton, LayoutHelper.createLinear(40, 40));
        linearLayout3.addView(imageView4, LayoutHelper.createLinear(40, 40));
        this.actionsPill = linearLayout3;
        if ((this.params.getTrusted() && !ExteraConfig.getPreferences().getBoolean("trusted_source_hint", false)) || (!this.params.getTrusted() && !ExteraConfig.getPreferences().getBoolean("unknown_source_hint", false))) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    InstallPluginBottomSheet.$r8$lambda$1mwQKeA8NTran0o7I5m7IQPO56g(linearLayout2, this);
                }
            }, 600L);
        }
        FrameLayout frameLayout4 = new FrameLayout(activity);
        frameLayout4.setClipChildren(false);
        frameLayout4.setClipToPadding(false);
        frameLayout4.addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
        frameLayout4.addView(linearLayout3, LayoutHelper.createFrame(-2, 44.0f, 53, 0.0f, 14.0f, SECTION_GAP, 0.0f));
        return frameLayout4;
    }

    public static void $r8$lambda$1mwQKeA8NTran0o7I5m7IQPO56g(LinearLayout linearLayout, InstallPluginBottomSheet installPluginBottomSheet) {
        linearLayout.performClick();
        ExteraConfig.getEditor().putBoolean(installPluginBottomSheet.params.getTrusted() ? "trusted_source_hint" : "unknown_source_hint", true).apply();
    }

    private final View buildDescription(Activity activity) {
        EffectsTextView effectsTextView = new EffectsTextView(activity) { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet.buildDescription.1
            @Override // android.widget.TextView, android.view.View
            public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
                setMeasuredDimension(getMeasuredWidth(), this.descriptionText.getHeight(getMeasuredHeight()));
            }

            @Override // org.telegram.ui.Components.EffectsTextView, org.telegram.ui.Components.spoilers.SpoilersTextView, android.widget.TextView, android.view.View
            public void onDraw(Canvas canvas) {
                int iBeforeDraw = this.descriptionText.beforeDraw(canvas);
                super.onDraw(canvas);
                this.descriptionText.afterDraw(canvas, iBeforeDraw);
            }
        };
        effectsTextView.setGravity(3);
        effectsTextView.setTypeface(AndroidUtilities.regular());
        effectsTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        effectsTextView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
        effectsTextView.setTextSize(1, 15.0f);
        effectsTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        effectsTextView.setText(LocaleUtils.fullyFormatText(this.plugin.getDescription(), this.fragment, new InstallPluginBottomSheet$$ExternalSyntheticLambda5(this)));
        effectsTextView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(SECTION_GAP));
        this.descriptionText.setView(effectsTextView);
        return effectsTextView;
    }

    private final View buildError(Activity activity) {
        int themedColor = getThemedColor(Theme.key_text_RedRegular);
        int iDp = AndroidUtilities.dp(ExteraConfig.getSectionRadiusDp());
        TextView textView = new TextView(activity);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
        textView.setTextSize(1, SECTION_GAP);
        textView.setTextColor(themedColor);
        textView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(SECTION_GAP));
        textView.setBackground(Theme.createRoundRectDrawable(iDp, iDp, ColorUtils.compositeColors(AndroidUtilities.multiplyAlphaComponent(themedColor, 0.1f), getThemedColor(Theme.key_windowBackgroundWhite))));
        ScaleStateListAnimator.apply(textView, 0.02f, 1.5f);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InstallPluginBottomSheet.m2669$r8$lambda$JDAKNeU10FilbAnsaIZ2uI7PKk(this.f$0, view);
            }
        });
        this.errorTextView = textView;
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setPadding(AndroidUtilities.dp(SECTION_GAP), 0, AndroidUtilities.dp(SECTION_GAP), AndroidUtilities.dp(SECTION_GAP));
        frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f));
        return frameLayout;
    }

    /* JADX INFO: renamed from: $r8$lambda$JDAKNeU10Fil-bAnsaIZ2uI7PKk, reason: not valid java name */
    public static void m2669$r8$lambda$JDAKNeU10FilbAnsaIZ2uI7PKk(InstallPluginBottomSheet installPluginBottomSheet, View view) {
        String str = installPluginBottomSheet.errorText;
        if (str != null && AndroidUtilities.addToClipboard(str)) {
            BulletinFactory.of(installPluginBottomSheet.topBulletinContainer, installPluginBottomSheet.resourcesProvider).createCopyBulletin(LocaleController.getString(C2665R.string.TextCopied)).show();
        }
    }

    private final void showError(String message) {
        String string = StringsKt.trim((CharSequence) message).toString();
        boolean z = this.errorText == null;
        this.errorText = string;
        TextView textView = this.errorTextView;
        if (textView != null) {
            textView.setText(string);
        }
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
        if (z) {
            scrollToError();
        }
    }

    private final void scrollToError() {
        if (this.recyclerListView.getAdapter() != null) {
            this.recyclerListView.smoothScrollToPosition(r0.getItemCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSourceHint(final View view) {
        HintView2 hintView2 = this.currentHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        this.currentHint = null;
        final HintView2 rounding = new HintView2(getContext(), 3).setMultilineText(true).setBgColor(getThemedColor(Theme.key_undo_background)).setTextColor(getThemedColor(Theme.key_undo_infoColor)).setText(AndroidUtilities.replaceTags(LocaleController.getString(this.params.getTrusted() ? C2665R.string.PluginSourceTrustedInfo : C2665R.string.PluginSourceUnknownInfo))).setTextAlign(Layout.Alignment.ALIGN_CENTER).allowBlur(true).setRounding(SECTION_GAP);
        rounding.setMaxWidthPx(HintView2.cutInFancyHalf(rounding.getText(), rounding.getTextPaint()));
        this.container.addView(rounding, LayoutHelper.createFrame(-1, 100.0f, 55, 32.0f, 0.0f, 32.0f, 0.0f));
        this.currentHint = rounding;
        this.container.post(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                InstallPluginBottomSheet.$r8$lambda$51uVpX6e938kFdqF76dtHaIpIp8(view, this, rounding);
            }
        });
    }

    public static void $r8$lambda$51uVpX6e938kFdqF76dtHaIpIp8(View view, InstallPluginBottomSheet installPluginBottomSheet, HintView2 hintView2) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        installPluginBottomSheet.container.getLocationInWindow(iArr2);
        iArr[0] = iArr[0] - iArr2[0];
        int i = iArr[1] - iArr2[1];
        iArr[1] = i;
        hintView2.setTranslationY((i - AndroidUtilities.dp(100.0f)) - AndroidUtilities.dp(6.0f));
        hintView2.setJointPx(0.0f, (-AndroidUtilities.dp(32.0f)) + iArr[0] + (view.getMeasuredWidth() / 2.0f));
        hintView2.setDuration(5500L);
        hintView2.show();
    }

    private final View createEnableAfterInstallRow(Activity activity) {
        CheckBoxRow checkBoxRow = new CheckBoxRow(activity, LocaleController.getString(C2665R.string.EnableAfterInstallation), this.enableAfterInstallation, this.resourcesProvider);
        checkBoxRow.setOnCheckedChange(new Function1() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return InstallPluginBottomSheet.$r8$lambda$uW8h013qngMyO9QW7bp8hpiNB2E(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
        return checkBoxRow;
    }

    public static Unit $r8$lambda$uW8h013qngMyO9QW7bp8hpiNB2E(InstallPluginBottomSheet installPluginBottomSheet, boolean z) {
        installPluginBottomSheet.enableAfterInstallation = z;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openPluginFile() {
        if (this.installing) {
            return;
        }
        File file = new File(this.params.getFilePath());
        if (file.exists()) {
            if (PluginFileViewer.canOpen(file)) {
                String name = file.getName();
                if (!StringsKt.contains$default((CharSequence) name, '.', false, 2, (Object) null)) {
                    name = null;
                }
                if (name == null) {
                    name = this.plugin.getId() + PluginsConstants.PLUGINS_EXT;
                }
                if (PluginFileViewer.INSTANCE.open(this.fragment, file, name)) {
                    dismiss();
                    return;
                }
                return;
            }
            PluginFileViewer.openExternally(this.fragment, file, file.getName());
        }
    }

    private final void checkTranslatable() {
        if (LanguageDetector.hasSupport()) {
            TranslatableText[] translatableTextArr = {this.nameText, this.descriptionText};
            for (int i = 0; i < 2; i++) {
                final TranslatableText translatableText = translatableTextArr[i];
                String original = translatableText.getOriginal();
                if (original != null && !StringsKt.isBlank(original)) {
                    LanguageDetector.detectLanguage(original, new LanguageDetector.StringCallback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda3
                        @Override // org.telegram.messenger.LanguageDetector.StringCallback
                        public final void run(String str) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda23
                                @Override // java.lang.Runnable
                                public final void run() {
                                    InstallPluginBottomSheet.$r8$lambda$xwESlfoHFGWhHXNA_r6mweAjQ8I(str, translatableText, installPluginBottomSheet);
                                }
                            });
                        }
                    }, null);
                }
            }
        }
    }

    public static void $r8$lambda$xwESlfoHFGWhHXNA_r6mweAjQ8I(String str, TranslatableText translatableText, InstallPluginBottomSheet installPluginBottomSheet) {
        if (str == null || str.length() == 0 || Intrinsics.areEqual(str, TranslateController.UNKNOWN_LANGUAGE) || TranslatorUtils.isRestrictedLanguage(str)) {
            return;
        }
        translatableText.setLanguage(str);
        PluginTranslateButton pluginTranslateButton = installPluginBottomSheet.translateButton;
        if (pluginTranslateButton != null) {
            pluginTranslateButton.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTranslateClick() {
        PluginTranslateButton pluginTranslateButton = this.translateButton;
        if (pluginTranslateButton == null || this.translating) {
            return;
        }
        int i = 0;
        if (pluginTranslateButton.getState() == 2) {
            showTexts(false);
            pluginTranslateButton.setState(0);
            return;
        }
        TranslatableText[] translatableTextArr = {this.nameText, this.descriptionText};
        final ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 2; i2++) {
            TranslatableText translatableText = translatableTextArr[i2];
            if (translatableText.getLanguage() != null && translatableText.getTranslation() == null) {
                arrayList.add(translatableText);
            }
        }
        if (arrayList.isEmpty()) {
            showTexts(true);
            pluginTranslateButton.setState(2);
            return;
        }
        this.translating = true;
        pluginTranslateButton.setState(1);
        String resolvedTargetLanguageCode = TranslatorUtils.getResolvedTargetLanguageCode();
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = arrayList.size();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            final TranslatableText translatableText2 = (TranslatableText) obj;
            translatableText2.startLoading();
            String original = translatableText2.getOriginal();
            if (original == null) {
                original = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            String language = translatableText2.getLanguage();
            if (language == null) {
                language = "auto";
            }
            translateText(original, language, resolvedTargetLanguageCode, new Function1() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return InstallPluginBottomSheet.$r8$lambda$4owLgGt87wFgmWYGGJXyRImSMkc(booleanRef, translatableText2, intRef, this, arrayList, (String) obj2);
                }
            });
        }
    }

    public static Unit $r8$lambda$4owLgGt87wFgmWYGGJXyRImSMkc(Ref.BooleanRef booleanRef, TranslatableText translatableText, Ref.IntRef intRef, InstallPluginBottomSheet installPluginBottomSheet, List list, String str) {
        if (str == null) {
            booleanRef.element = true;
        } else {
            translatableText.setTranslation(str);
        }
        int i = intRef.element - 1;
        intRef.element = i;
        if (i == 0) {
            installPluginBottomSheet.onTranslationFinished(list, !booleanRef.element);
        }
        return Unit.INSTANCE;
    }

    private final void translateText(String text, String fromLanguage, String toLanguage, final Function1<? super String, Unit> done) {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return InstallPluginBottomSheet.$r8$lambda$QmIdZAyHeJKamuDsNUC71z3zbGQ(booleanRef, done, (String) obj);
            }
        };
        TranslatorUtils.translate(text, fromLanguage, toLanguage, new TranslatorUtils.TranslateCallback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet.translateText.1
            @Override // com.exteragram.messenger.translator.TranslatorUtils.TranslateCallback
            public /* bridge */ /* synthetic */ void onFailed(TranslationError translationError) {
                super.onFailed(translationError);
            }

            @Override // com.exteragram.messenger.translator.TranslatorUtils.TranslateCallback
            public /* bridge */ /* synthetic */ void onReqId(int i) {
                super.onReqId(i);
            }

            @Override // com.exteragram.messenger.translator.TranslatorUtils.TranslateCallback
            public /* bridge */ /* synthetic */ void onSuccess(TLObject tLObject, TLRPC.TL_error tL_error) {
                super.onSuccess(tLObject, tL_error);
            }

            @Override // com.exteragram.messenger.translator.TranslatorUtils.TranslateCallback
            public /* bridge */ /* synthetic */ void onSuccess(TLRPC.TL_textWithEntities tL_textWithEntities) {
                super.onSuccess(tL_textWithEntities);
            }

            @Override // com.exteragram.messenger.translator.TranslatorUtils.TranslateCallback
            public void onSuccess(String translatedText) {
                Function1<String, Unit> function12 = function1;
                if (translatedText == null || StringsKt.isBlank(translatedText)) {
                    translatedText = null;
                }
                function12.invoke(translatedText);
            }

            @Override // com.exteragram.messenger.translator.TranslatorUtils.TranslateCallback
            public void onFailed() {
                function1.invoke(null);
            }
        });
    }

    public static Unit $r8$lambda$QmIdZAyHeJKamuDsNUC71z3zbGQ(final Ref.BooleanRef booleanRef, final Function1 function1, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InstallPluginBottomSheet.$r8$lambda$cj8Fxmv3WzdlRmOhCU2DoQ437yc(booleanRef, function1, str);
            }
        });
        return Unit.INSTANCE;
    }

    public static void $r8$lambda$cj8Fxmv3WzdlRmOhCU2DoQ437yc(Ref.BooleanRef booleanRef, Function1 function1, String str) {
        if (booleanRef.element) {
            return;
        }
        booleanRef.element = true;
        function1.invoke(str);
    }

    private final void onTranslationFinished(List<TranslatableText> texts, boolean success) {
        this.translating = false;
        if (success) {
            showTexts(true);
            PluginTranslateButton pluginTranslateButton = this.translateButton;
            if (pluginTranslateButton != null) {
                pluginTranslateButton.setState(2);
            }
        } else {
            PluginTranslateButton pluginTranslateButton2 = this.translateButton;
            if (pluginTranslateButton2 != null) {
                pluginTranslateButton2.setState(0);
            }
            if (isShowing()) {
                BulletinFactory.of(this.topBulletinContainer, this.resourcesProvider).createErrorBulletin(LocaleController.getString(C2665R.string.TranslationFailedAlert2)).show();
            }
        }
        Iterator<T> it = texts.iterator();
        while (it.hasNext()) {
            ((TranslatableText) it.next()).stopLoading();
        }
    }

    private final void showTexts(boolean translated) {
        String original;
        this.nameText.show(translated);
        this.descriptionText.show(translated);
        TranslatableText translatableText = this.nameText;
        if (translated) {
            original = translatableText.getTranslation();
            if (original == null) {
                original = this.nameText.getOriginal();
            }
        } else {
            original = translatableText.getOriginal();
        }
        this.titleText = original;
        updateTitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTextTransitionUpdate() {
        ViewGroup viewGroup = this.containerView;
        if (viewGroup != null) {
            viewGroup.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onInstallClick() {
        if (this.installing) {
            if (this.cancellationRequested) {
                return;
            }
            this.cancellationRequested = true;
            this.button.setLoading(true);
            this.button.setSubText(null, true);
            return;
        }
        ConcurrentHashMap<String, PluginsController.PluginsEngine> engines = PluginsController.INSTANCE.getEngines();
        String engine = this.plugin.getEngine();
        if (engine == null) {
            engine = PluginsConstants.PYTHON;
        }
        PluginsController.PluginsEngine pluginsEngine = engines.get(engine);
        if (pluginsEngine == null) {
            return;
        }
        this.installing = true;
        this.cancellationRequested = false;
        setCanDismissWithSwipe(false);
        setCanDismissWithTouchOutside(false);
        Runnable runnable = this.delayedLoadingRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.button.setLoading(true);
            }
        };
        this.delayedLoadingRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 250L);
        pluginsEngine.loadPluginFromFile(this.params.getFilePath(), this.plugin, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda29
                    @Override // java.lang.Runnable
                    public final void run() {
                        InstallPluginBottomSheet.$r8$lambda$0iFSAj_4pVkRlrIMq9sW2Re2HQQ(installPluginBottomSheet, str);
                    }
                });
            }
        }, new C13714());
    }

    public static void $r8$lambda$0iFSAj_4pVkRlrIMq9sW2Re2HQQ(final InstallPluginBottomSheet installPluginBottomSheet, String str) {
        Runnable runnable = installPluginBottomSheet.delayedLoadingRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        installPluginBottomSheet.delayedLoadingRunnable = null;
        installPluginBottomSheet.button.setLoading(false);
        installPluginBottomSheet.setCancelable(true);
        installPluginBottomSheet.setCanDismissWithSwipe(true);
        installPluginBottomSheet.setCanDismissWithTouchOutside(true);
        installPluginBottomSheet.installing = false;
        if (installPluginBottomSheet.cancellationRequested) {
            installPluginBottomSheet.cancellationRequested = false;
            installPluginBottomSheet.applyButtonState(true);
            return;
        }
        if (str != null) {
            installPluginBottomSheet.applyButtonState(true);
            if (StringsKt.contains$default((CharSequence) str, (CharSequence) "Installation cancelled", false, 2, (Object) null)) {
                return;
            }
            installPluginBottomSheet.showError(str);
            return;
        }
        if (installPluginBottomSheet.enableAfterInstallation && !ExteraConfig.getPluginsSafeMode()) {
            installPluginBottomSheet.installing = true;
            installPluginBottomSheet.setCanDismissWithSwipe(false);
            installPluginBottomSheet.setCanDismissWithTouchOutside(false);
            installPluginBottomSheet.button.setLoading(true);
            PluginsController.INSTANCE.getInstance().setPluginEnabled(installPluginBottomSheet.plugin.getId(), true, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda24
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda12
                        @Override // java.lang.Runnable
                        public final void run() {
                            InstallPluginBottomSheet.m2670$r8$lambda$U5co24RCnkNfmnx5ohZVPCpsK0(this.f$0, str);
                        }
                    });
                }
            });
            return;
        }
        installPluginBottomSheet.dismiss();
        installPluginBottomSheet.showSuccessBulletin(installPluginBottomSheet.fragment, installPluginBottomSheet.plugin);
    }

    /* JADX INFO: renamed from: $r8$lambda$U5co24RCnkNfmnx5ohZVPCpsK-0, reason: not valid java name */
    public static void m2670$r8$lambda$U5co24RCnkNfmnx5ohZVPCpsK0(InstallPluginBottomSheet installPluginBottomSheet, String str) {
        installPluginBottomSheet.installing = false;
        installPluginBottomSheet.setCanDismissWithSwipe(true);
        installPluginBottomSheet.setCanDismissWithTouchOutside(true);
        installPluginBottomSheet.button.setLoading(false);
        if (str != null) {
            installPluginBottomSheet.applyButtonState(true);
            installPluginBottomSheet.showError(str);
        } else {
            installPluginBottomSheet.dismiss();
            installPluginBottomSheet.showSuccessBulletin(installPluginBottomSheet.fragment, installPluginBottomSheet.plugin);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$onInstallClick$4 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$onInstallClick$4", "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;", "onProgress", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "isCancelled", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nInstallPluginBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstallPluginBottomSheet.kt\ncom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$onInstallClick$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1369:1\n1#2:1370\n*E\n"})
    public static final class C13714 implements PipController.InstallerDelegate {
        public C13714() {
        }

        @Override // com.exteragram.messenger.plugins.pip.PipController.InstallerDelegate
        public void onProgress(final String text) {
            final InstallPluginBottomSheet installPluginBottomSheet = InstallPluginBottomSheet.this;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$onInstallClick$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    InstallPluginBottomSheet.C13714.$r8$lambda$CRoqHnY2Bzd4KgYV55JhE9rdRbw(installPluginBottomSheet, text);
                }
            });
        }

        public static void $r8$lambda$CRoqHnY2Bzd4KgYV55JhE9rdRbw(InstallPluginBottomSheet installPluginBottomSheet, String str) {
            Runnable runnable = installPluginBottomSheet.delayedLoadingRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            installPluginBottomSheet.delayedLoadingRunnable = null;
            if (installPluginBottomSheet.cancellationRequested) {
                return;
            }
            installPluginBottomSheet.button.setLoading(false);
            installPluginBottomSheet.button.setText(LocaleController.getString(C2665R.string.Cancel), true);
            installPluginBottomSheet.button.setSubText(str, true);
        }

        @Override // com.exteragram.messenger.plugins.pip.PipController.InstallerDelegate
        public boolean isCancelled() {
            return InstallPluginBottomSheet.this.cancellationRequested;
        }
    }

    private final void showSuccessBulletin(BaseFragment fragment, final Plugin plugin) {
        final BulletinFactory bulletinFactoryOf = BulletinFactory.of(fragment);
        final String name = plugin.getName();
        if (plugin.getPack() != null && plugin.getIndex() >= 0) {
            TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
            tL_inputStickerSetShortName.short_name = plugin.getPack();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    InstallPluginBottomSheet.$r8$lambda$bCqSZM6hxYuEJX0VdupAXrW9z48(atomicBoolean, this, plugin, bulletinFactoryOf);
                }
            };
            AndroidUtilities.runOnUIThread(runnable, 300L);
            MediaDataController.getInstance(UserConfig.selectedAccount).getStickerSet(tL_inputStickerSetShortName, 0, true, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda32
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda28
                        @Override // java.lang.Runnable
                        public final void run() {
                            InstallPluginBottomSheet.$r8$lambda$PcrlDgT4JGXCfZRinXFErAkdLs0(atomicBoolean, tL_messages_stickerSet, plugin, runnable, installPluginBottomSheet, str, bulletinFactory);
                        }
                    });
                }
            });
            return;
        }
        showSimpleSuccessBulletin(plugin, bulletinFactoryOf);
    }

    public static void $r8$lambda$bCqSZM6hxYuEJX0VdupAXrW9z48(AtomicBoolean atomicBoolean, InstallPluginBottomSheet installPluginBottomSheet, Plugin plugin, BulletinFactory bulletinFactory) {
        if (atomicBoolean.getAndSet(true)) {
            return;
        }
        installPluginBottomSheet.showSimpleSuccessBulletin(plugin, bulletinFactory);
    }

    public static void $r8$lambda$PcrlDgT4JGXCfZRinXFErAkdLs0(AtomicBoolean atomicBoolean, TLRPC.TL_messages_stickerSet tL_messages_stickerSet, final Plugin plugin, Runnable runnable, InstallPluginBottomSheet installPluginBottomSheet, String str, BulletinFactory bulletinFactory) {
        Bulletin bulletinCreateSimpleBulletin;
        int index;
        if (atomicBoolean.get()) {
            return;
        }
        TLRPC.Document document = null;
        if ((tL_messages_stickerSet != null ? tL_messages_stickerSet.documents : null) != null && !tL_messages_stickerSet.documents.isEmpty() && (index = plugin.getIndex()) >= 0 && index < tL_messages_stickerSet.documents.size()) {
            document = tL_messages_stickerSet.documents.get(index);
        }
        if (document == null || atomicBoolean.getAndSet(true)) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(runnable);
        SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(installPluginBottomSheet.isUpdate ? C2665R.string.PluginUpdated : C2665R.string.PluginInstalled, str));
        PluginsController.Companion companion = PluginsController.INSTANCE;
        Plugin plugin2 = companion.getInstance().getPlugins().get(plugin.getId());
        if (plugin2 != null && companion.getInstance().hasPluginSettings(plugin.getId()) && plugin2.isEnabled()) {
            bulletinCreateSimpleBulletin = bulletinFactory.createEmojiBulletin(document, spannableStringBuilderReplaceTags, LocaleController.getString(C2665R.string.Settings), new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    PluginsController.INSTANCE.openPluginSettings(plugin.getId());
                }
            });
        } else {
            bulletinCreateSimpleBulletin = bulletinFactory.createSimpleBulletin(document, spannableStringBuilderReplaceTags);
        }
        bulletinCreateSimpleBulletin.show();
    }

    private final void showSimpleSuccessBulletin(final Plugin plugin, BulletinFactory bf) {
        String string = LocaleController.formatString(this.isUpdate ? C2665R.string.PluginUpdated : C2665R.string.PluginInstalled, plugin.getName());
        PluginsController.Companion companion = PluginsController.INSTANCE;
        Plugin plugin2 = companion.getInstance().getPlugins().get(plugin.getId());
        if (plugin2 != null && companion.getInstance().hasPluginSettings(plugin.getId()) && plugin2.isEnabled()) {
            bf.createSimpleBulletin(C2665R.raw.contact_check, string, LocaleController.getString(C2665R.string.Settings), new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    PluginsController.INSTANCE.openPluginSettings(plugin.getId());
                }
            }).show();
        } else {
            bf.createSimpleBulletin(C2665R.raw.contact_check, string).show();
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public void dismiss() {
        HintView2 hintView2 = this.currentHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        this.currentHint = null;
        super.dismiss();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void onSwipeStarts() {
        HintView2 hintView2 = this.currentHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        this.currentHint = null;
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 &2\u00020\u0001:\u0001&B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u001c\u0010 \u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\t\"\u0004\b\"\u0010\u000bR\u001c\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\t\"\u0004\b%\u0010\u000b¨\u0006'"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;", _UrlKt.FRAGMENT_ENCODE_SET, "filePath", _UrlKt.FRAGMENT_ENCODE_SET, "trusted", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;Z)V", "getFilePath", "()Ljava/lang/String;", "setFilePath", "(Ljava/lang/String;)V", "getTrusted", "()Z", "setTrusted", "(Z)V", "iconDrawable", "Landroid/graphics/drawable/Drawable;", "getIconDrawable", "()Landroid/graphics/drawable/Drawable;", "setIconDrawable", "(Landroid/graphics/drawable/Drawable;)V", "requiredPlugins", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/ui/components/RequiredPluginInfo;", "getRequiredPlugins", "()Ljava/util/List;", "setRequiredPlugins", "(Ljava/util/List;)V", "bundledPackages", "getBundledPackages", "setBundledPackages", "blockedTitle", "getBlockedTitle", "setBlockedTitle", "blockedSubtitle", "getBlockedSubtitle", "setBlockedSubtitle", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PluginInstallParams {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private String blockedSubtitle;
        private String blockedTitle;
        private List<String> bundledPackages;
        private String filePath;
        private Drawable iconDrawable;
        private List<RequiredPluginInfo> requiredPlugins;
        private boolean trusted;

        @JvmStatic
        public static final PluginInstallParams of(MessageObject messageObject) {
            return INSTANCE.of(messageObject);
        }

        public PluginInstallParams(String str, boolean z) {
            this.filePath = str;
            this.trusted = z;
        }

        public final String getFilePath() {
            return this.filePath;
        }

        public final void setFilePath(String str) {
            this.filePath = str;
        }

        public final boolean getTrusted() {
            return this.trusted;
        }

        public final void setTrusted(boolean z) {
            this.trusted = z;
        }

        public final Drawable getIconDrawable() {
            return this.iconDrawable;
        }

        public final void setIconDrawable(Drawable drawable) {
            this.iconDrawable = drawable;
        }

        public final List<RequiredPluginInfo> getRequiredPlugins() {
            return this.requiredPlugins;
        }

        public final void setRequiredPlugins(List<RequiredPluginInfo> list) {
            this.requiredPlugins = list;
        }

        public final List<String> getBundledPackages() {
            return this.bundledPackages;
        }

        public final void setBundledPackages(List<String> list) {
            this.bundledPackages = list;
        }

        public final String getBlockedTitle() {
            return this.blockedTitle;
        }

        public final void setBlockedTitle(String str) {
            this.blockedTitle = str;
        }

        public final String getBlockedSubtitle() {
            return this.blockedSubtitle;
        }

        public final void setBlockedSubtitle(String str) {
            this.blockedSubtitle = str;
        }

        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "of", "Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;", "messageObject", "Lorg/telegram/messenger/MessageObject;", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
            @JvmStatic
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final PluginInstallParams of(MessageObject messageObject) {
                String pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject);
                boolean z = true;
                boolean z2 = false;
                if (messageObject.isForwarded()) {
                    Long forwardedFromId = messageObject.getForwardedFromId();
                    if (forwardedFromId != null) {
                        BadgesController badgesController = BadgesController.INSTANCE;
                        if (!badgesController.isTrusted(-forwardedFromId.longValue()) && !badgesController.isExtera(-forwardedFromId.longValue())) {
                            z = false;
                        }
                        z2 = z;
                    }
                } else if (messageObject.isFromChannel() && !messageObject.isFromChat()) {
                    long j = -messageObject.getDialogId();
                    BadgesController badgesController2 = BadgesController.INSTANCE;
                    if (!badgesController2.isTrusted(j) && !badgesController2.isExtera(j)) {
                    }
                    z2 = z;
                }
                return new PluginInstallParams(pathToMessage, z2);
            }
        }
    }
}
