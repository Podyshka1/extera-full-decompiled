package com.exteragram.messenger.preferences;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.RecordingCanvas;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.collection.LongSparseArray;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.ui.ChatHeaderUiHelper;
import com.exteragram.messenger.utils.ui.PopupUtils;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ShareAlert;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.DownscaleScrollableNoiseSuppressor;
import org.telegram.ui.Components.blur3.ViewGroupPartRenderer;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.Components.chat.layouts.ChatActivityFadeView;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0010\n\u0002\b\u0015\b&\u0018\u00002\u00020\u0001:\u0002\u0080\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0014J\b\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020/H\u0002J\b\u00101\u001a\u00020/H\u0002J\u0010\u00102\u001a\u00020/2\u0006\u00103\u001a\u00020'H\u0002J\u0010\u00104\u001a\u00020/2\u0006\u00105\u001a\u00020)H\u0002J\b\u00106\u001a\u00020/H\u0016J\b\u00107\u001a\u00020/H\u0016J\b\u00108\u001a\u000209H&J\b\u0010:\u001a\u00020/H\u0014J\u000e\u0010;\u001a\u00020/2\u0006\u0010<\u001a\u00020=J=\u0010>\u001a\u00020/2\u0006\u0010?\u001a\u00020@2\u000e\u0010A\u001a\n\u0012\u0006\b\u0001\u0012\u00020C0B2\u0006\u0010D\u001a\u0002092\u0006\u0010E\u001a\u00020=2\u0006\u0010F\u001a\u00020GH\u0004¢\u0006\u0002\u0010HJ[\u0010>\u001a\u00020/2\u0006\u0010?\u001a\u00020@2\u000e\u0010A\u001a\n\u0012\u0006\b\u0001\u0012\u00020C0B2\b\u0010I\u001a\u0004\u0018\u00010J2\u0006\u0010D\u001a\u0002092\u0006\u0010E\u001a\u00020=2\u0006\u0010F\u001a\u00020G2\b\b\u0002\u0010K\u001a\u00020'2\b\b\u0002\u0010L\u001a\u00020'H\u0005¢\u0006\u0002\u0010MJ\b\u0010N\u001a\u00020/H\u0004J#\u0010O\u001a\u00020/2\u0006\u0010?\u001a\u00020@2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020'0QH\u0000¢\u0006\u0002\bRJ\b\u0010S\u001a\u00020'H\u0014J\b\u0010T\u001a\u00020'H\u0014J\b\u0010U\u001a\u00020'H\u0016J\u001e\u0010V\u001a\u00020/2\f\u0010W\u001a\b\u0012\u0004\u0012\u00020@0!2\u0006\u0010X\u001a\u00020YH$J0\u0010Z\u001a\u00020/2\u0006\u0010?\u001a\u00020@2\u0006\u0010[\u001a\u00020+2\u0006\u0010\\\u001a\u00020=2\u0006\u0010]\u001a\u00020)2\u0006\u0010^\u001a\u00020)H\u0014J0\u0010_\u001a\u00020'2\u0006\u0010?\u001a\u00020@2\u0006\u0010[\u001a\u00020+2\u0006\u0010\\\u001a\u00020=2\u0006\u0010]\u001a\u00020)2\u0006\u0010^\u001a\u00020)H\u0014J\u0018\u0010`\u001a\u00020/2\u0006\u0010[\u001a\u00020+2\u0006\u0010a\u001a\u000209H\u0004J\b\u0010b\u001a\u00020'H\u0017J(\u0010c\u001a\u00020/2\u0006\u0010d\u001a\u00020=2\u0006\u0010e\u001a\u00020=2\u0006\u0010f\u001a\u00020=2\u0006\u0010g\u001a\u00020=H\u0016J\u0010\u0010h\u001a\u00020=2\u0006\u0010i\u001a\u00020=H\u0014Ji\u0010j\u001a\u00020@2\n\u0010k\u001a\u0006\u0012\u0002\b\u00030l2\u0006\u0010m\u001a\u00020C2\u0006\u0010n\u001a\u00020'2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010C2\b\b\u0002\u0010p\u001a\u00020=2\b\b\u0002\u0010q\u001a\u00020'2\n\b\u0002\u0010r\u001a\u0004\u0018\u0001092\b\b\u0002\u0010s\u001a\u00020'2\b\b\u0002\u0010t\u001a\u00020=H\u0000¢\u0006\u0002\buJe\u0010j\u001a\u00020@2\u0006\u0010v\u001a\u00020=2\u0006\u0010m\u001a\u00020C2\u0006\u0010n\u001a\u00020'2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010C2\b\b\u0002\u0010p\u001a\u00020=2\b\b\u0002\u0010q\u001a\u00020'2\n\b\u0002\u0010r\u001a\u0004\u0018\u0001092\b\b\u0002\u0010s\u001a\u00020'2\b\b\u0002\u0010t\u001a\u00020=H\u0000¢\u0006\u0002\buJ\u0087\u0001\u0010w\u001a\u00020@2\n\u0010k\u001a\u0006\u0012\u0002\b\u00030l2\u0006\u0010m\u001a\u00020C2\b\b\u0002\u0010t\u001a\u00020=2\n\b\u0002\u0010x\u001a\u0004\u0018\u00010C2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010C2\n\b\u0002\u0010y\u001a\u0004\u0018\u00010'2\b\b\u0002\u0010q\u001a\u00020'2\n\b\u0002\u0010r\u001a\u0004\u0018\u0001092\b\b\u0002\u0010z\u001a\u00020'2\b\b\u0002\u0010{\u001a\u00020'2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010'H\u0000¢\u0006\u0004\b}\u0010~J\u0083\u0001\u0010w\u001a\u00020@2\u0006\u0010v\u001a\u00020=2\u0006\u0010m\u001a\u00020C2\b\b\u0002\u0010t\u001a\u00020=2\n\b\u0002\u0010x\u001a\u0004\u0018\u00010C2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010C2\n\b\u0002\u0010y\u001a\u0004\u0018\u00010'2\b\b\u0002\u0010q\u001a\u00020'2\n\b\u0002\u0010r\u001a\u0004\u0018\u0001092\b\b\u0002\u0010z\u001a\u00020'2\b\b\u0002\u0010{\u001a\u00020'2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010'H\u0000¢\u0006\u0004\b}\u0010\u007fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0081\u0001"}, d2 = {"Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/ui/ActionBar/BaseFragment;", "<init>", "()V", "listView", "Lorg/telegram/ui/Components/UniversalRecyclerView;", "getListView$TMessagesProj", "()Lorg/telegram/ui/Components/UniversalRecyclerView;", "setListView$TMessagesProj", "(Lorg/telegram/ui/Components/UniversalRecyclerView;)V", "layoutManager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getLayoutManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setLayoutManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "fadeView", "Lorg/telegram/ui/Components/chat/layouts/ChatActivityFadeView;", "getFadeView", "()Lorg/telegram/ui/Components/chat/layouts/ChatActivityFadeView;", "setFadeView", "(Lorg/telegram/ui/Components/chat/layouts/ChatActivityFadeView;)V", "recyclerViewState", "Landroid/os/Parcelable;", "scrollableViewNoiseSuppressor", "Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;", "iBlur3SourceColor", "Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;", "iBlur3SourceGlass", "Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;", "iBlur3Capture", "Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;", "iBlur3Positions", "Ljava/util/ArrayList;", "Landroid/graphics/RectF;", "iBlur3PositionActionBar", "headerFadeAnimator", "Landroid/animation/ValueAnimator;", "headerFadeShown", _UrlKt.FRAGMENT_ENCODE_SET, "headerFadeAlpha", _UrlKt.FRAGMENT_ENCODE_SET, "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "clearViews", _UrlKt.FRAGMENT_ENCODE_SET, "blur3_InvalidateBlur", "updateTopFade", "updateHeaderFade", "animated", "setHeaderFadeAlpha", "alpha", "onResume", "onPause", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "initializeOptionStrings", "scrollToItem", "itemId", _UrlKt.FRAGMENT_ENCODE_SET, "showListDialog", PluginsConstants.Settings.ITEM, "Lorg/telegram/ui/Components/UItem;", "options", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "title", "currentValue", "onSelected", "Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;", "(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V", "icons", _UrlKt.FRAGMENT_ENCODE_SET, "useRadioCell", "skipIfValueNotUpdated", "(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;[ILjava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;ZZ)V", "showRestartBulletin", "toggleBooleanSettingAndRefresh", "stateSetter", "Landroidx/core/util/Consumer;", "toggleBooleanSettingAndRefresh$TMessagesProj", "needHideTitle", "hasHeaderFade", "isLightStatusBar", "fillItems", PluginsConstants.Settings.ITEMS, "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.VIEW, "position", "x", "y", "onLongClick", "showCopyLinkOptions", "settingLink", "isSupportEdgeToEdge", "onInsets", "left", "top", "right", "bottom", "getListTopPadding", "topInset", "uCheck", "enumEntry", _UrlKt.FRAGMENT_ENCODE_SET, "text", "checked", "subtext", "checkBoxIcon", "searchable", "linkAlias", PluginsConstants.Settings.MULTILINE, "icon", "uCheck$TMessagesProj", "id", "uButton", "value", "showDivider", PluginsConstants.Settings.RED, PluginsConstants.Settings.ACCENT, "prioritizeTitleOverValue", "uButton$TMessagesProj", "(Ljava/lang/Enum;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Boolean;ZLjava/lang/String;ZZLjava/lang/Boolean;)Lorg/telegram/ui/Components/UItem;", "(ILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Boolean;ZLjava/lang/String;ZZLjava/lang/Boolean;)Lorg/telegram/ui/Components/UItem;", "HeaderContentView", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBasePreferencesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePreferencesActivity.kt\ncom/exteragram/messenger/preferences/BasePreferencesActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,519:1\n1#2:520\n*E\n"})
public abstract class BasePreferencesActivity extends BaseFragment {
    private ChatActivityFadeView fadeView;
    private float headerFadeAlpha;
    private ValueAnimator headerFadeAnimator;
    private boolean headerFadeShown;
    private IBlur3Capture iBlur3Capture;
    private final RectF iBlur3PositionActionBar;
    private final ArrayList<RectF> iBlur3Positions;
    private final BlurredBackgroundSourceColor iBlur3SourceColor;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlass;
    protected LinearLayoutManager layoutManager;
    public UniversalRecyclerView listView;
    private Parcelable recyclerViewState;
    private final DownscaleScrollableNoiseSuppressor scrollableViewNoiseSuppressor;

    public abstract void fillItems(ArrayList<UItem> items, UniversalAdapter adapter);

    public abstract String getTitle();

    public boolean hasHeaderFade() {
        return true;
    }

    public void initializeOptionStrings() {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    @Deprecated(message = "Deprecated in Java")
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public boolean needHideTitle() {
        return false;
    }

    public abstract void onClick(UItem item, View view, int position, float x, float y);

    @JvmOverloads
    public final void showListDialog(UItem uItem, CharSequence[] charSequenceArr, int[] iArr, String str, int i, PopupUtils.OnItemClickListener onItemClickListener) {
        showListDialog$default(this, uItem, charSequenceArr, iArr, str, i, onItemClickListener, false, false, 192, null);
    }

    @JvmOverloads
    public final void showListDialog(UItem uItem, CharSequence[] charSequenceArr, int[] iArr, String str, int i, PopupUtils.OnItemClickListener onItemClickListener, boolean z) {
        showListDialog$default(this, uItem, charSequenceArr, iArr, str, i, onItemClickListener, z, false, 128, null);
    }

    public BasePreferencesActivity() {
        int i = Build.VERSION.SDK_INT;
        this.scrollableViewNoiseSuppressor = i >= 31 ? new DownscaleScrollableNoiseSuppressor() : null;
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        this.iBlur3SourceColor = blurredBackgroundSourceColor;
        this.iBlur3SourceGlass = i >= 31 ? new BlurredBackgroundSourceRenderNode(blurredBackgroundSourceColor) : null;
        ArrayList<RectF> arrayList = new ArrayList<>();
        this.iBlur3Positions = arrayList;
        RectF rectF = new RectF();
        this.iBlur3PositionActionBar = rectF;
        arrayList.add(rectF);
    }

    public final UniversalRecyclerView getListView$TMessagesProj() {
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            return universalRecyclerView;
        }
        return null;
    }

    public final void setListView$TMessagesProj(UniversalRecyclerView universalRecyclerView) {
        this.listView = universalRecyclerView;
    }

    public final LinearLayoutManager getLayoutManager() {
        LinearLayoutManager linearLayoutManager = this.layoutManager;
        if (linearLayoutManager != null) {
            return linearLayoutManager;
        }
        return null;
    }

    public final void setLayoutManager(LinearLayoutManager linearLayoutManager) {
        this.layoutManager = linearLayoutManager;
    }

    public final ChatActivityFadeView getFadeView() {
        return this.fadeView;
    }

    public final void setFadeView(ChatActivityFadeView chatActivityFadeView) {
        this.fadeView = chatActivityFadeView;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0061  */
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
    @Override // org.telegram.ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View createView(Context context) {
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory;
        initializeOptionStrings();
        ActionBar actionBar = this.actionBar;
        actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        actionBar.setAllowOverlayTitle(false);
        actionBar.setTitle(getTitle());
        actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$createView$1$1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int id) {
                if (id == -1) {
                    this.this$0.finishFragment();
                }
            }
        });
        actionBar.setCastShadows(false);
        actionBar.setAddToContainer(false);
        ViewGroup headerContentView = new HeaderContentView(context);
        int i = Theme.key_windowBackgroundGray;
        headerContentView.setBackgroundColor(getThemedColor(i));
        ActionBar actionBar2 = this.actionBar;
        if (actionBar2.menu == null) {
            actionBar2.createMenu();
        }
        this.iBlur3SourceColor.setColor(getThemedColor(i));
        BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode = this.iBlur3SourceGlass;
        if (blurredBackgroundSourceRenderNode != null) {
            if (Build.VERSION.SDK_INT < 31) {
                blurredBackgroundSourceRenderNode = null;
            }
            if (blurredBackgroundSourceRenderNode != null) {
                blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceRenderNode);
                blurredBackgroundDrawableViewFactory.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
            }
        } else {
            blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(this.iBlur3SourceColor);
        }
        blurredBackgroundDrawableViewFactory.setSourceRootView(new ViewPositionWatcher(headerContentView), headerContentView);
        ActionBar actionBar3 = this.actionBar;
        actionBar3.setGlassPadding(AndroidUtilities.dp(12.0f));
        actionBar3.setGlassTitleTextSize(20);
        actionBar3.setupGlass(blurredBackgroundDrawableViewFactory, BlurredBackgroundProviderImpl.topPanelChatActivity(getResourceProvider()));
        ChatHeaderUiHelper.applyChatHeaderGlassStyle(actionBar3, true);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        actionBar3.setTitleColor(getThemedColor(i2));
        actionBar3.setItemsColor(getThemedColor(i2), false);
        actionBar3.setItemsBackgroundColor(getThemedColor(Theme.key_listSelector), false);
        final UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        });
        universalRecyclerView.setSections();
        if (needHideTitle()) {
            this.actionBar.setAdaptiveBackground(universalRecyclerView, true);
        }
        universalRecyclerView.adapter.setApplyBackground(false);
        universalRecyclerView.setClipToPadding(false);
        universalRecyclerView.setPadding(0, getListTopPadding(AndroidUtilities.statusBarHeight), 0, 0);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        setLayoutManager(linearLayoutManager);
        universalRecyclerView.setLayoutManager(linearLayoutManager);
        Parcelable parcelable = this.recyclerViewState;
        if (parcelable != null) {
            getLayoutManager().onRestoreInstanceState(parcelable);
            this.recyclerViewState = null;
        }
        universalRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$createView$6$3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                this.this$0.updateHeaderFade(true);
                if (Build.VERSION.SDK_INT < 31 || this.this$0.scrollableViewNoiseSuppressor == null) {
                    return;
                }
                this.this$0.scrollableViewNoiseSuppressor.onScrolled(dx, dy);
                this.this$0.blur3_InvalidateBlur();
            }
        });
        universalRecyclerView.addEdgeEffectListener(new Runnable() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                universalRecyclerView.postOnAnimation(new Runnable() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.blur3_InvalidateBlur();
                    }
                });
            }
        });
        setListView$TMessagesProj(universalRecyclerView);
        this.iBlur3Capture = new ViewGroupPartRenderer(getListView$TMessagesProj(), headerContentView, new ViewGroupPartRenderer.DrawChildMethod() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.Components.blur3.ViewGroupPartRenderer.DrawChildMethod
            public final boolean drawChild(Canvas canvas, View view, long j) {
                return this.f$0.getListView$TMessagesProj().drawChild(canvas, view, j);
            }
        });
        headerContentView.addView(getListView$TMessagesProj(), LayoutHelper.createFrame(-1, -1.0f));
        if (hasHeaderFade()) {
            ChatActivityFadeView chatActivityFadeView = new ChatActivityFadeView(context);
            chatActivityFadeView.setupColorKey(i);
            chatActivityFadeView.setFadeTopAlpha(0);
            this.fadeView = chatActivityFadeView;
            headerContentView.addView(chatActivityFadeView, LayoutHelper.createFrameMatchParent());
        }
        headerContentView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2, 48));
        this.fragmentView = headerContentView;
        return headerContentView;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void clearViews() {
        if (this.fragmentView != null && this.layoutManager != null) {
            this.recyclerViewState = getLayoutManager().onSaveInstanceState();
        }
        super.clearViews();
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0014J0\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0014J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0014J\b\u0010\u0016\u001a\u00020\bH\u0016¨\u0006\u0017"}, d2 = {"Lcom/exteragram/messenger/preferences/BasePreferencesActivity$HeaderContentView;", "Landroid/widget/FrameLayout;", "Lorg/telegram/ui/ActionBar/Theme$Colorable;", "context", "Landroid/content/Context;", "<init>", "(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;Landroid/content/Context;)V", "onMeasure", _UrlKt.FRAGMENT_ENCODE_SET, "widthMeasureSpec", _UrlKt.FRAGMENT_ENCODE_SET, "heightMeasureSpec", "onLayout", "changed", _UrlKt.FRAGMENT_ENCODE_SET, "left", "top", "right", "bottom", "dispatchDraw", "canvas", "Landroid/graphics/Canvas;", "updateColors", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public final class HeaderContentView extends FrameLayout implements Theme.Colorable {
        public HeaderContentView(Context context) {
            super(context);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            BasePreferencesActivity.this.updateTopFade();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean changed, int left, int top, int right, int bottom) {
            super.onLayout(changed, left, top, right, bottom);
            BasePreferencesActivity.this.updateHeaderFade(false);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            if (Build.VERSION.SDK_INT >= 31 && BasePreferencesActivity.this.scrollableViewNoiseSuppressor != null && BasePreferencesActivity.this.iBlur3SourceGlass != null) {
                BasePreferencesActivity.this.blur3_InvalidateBlur();
                if (!BasePreferencesActivity.this.iBlur3SourceGlass.inRecording()) {
                    RecordingCanvas recordingCanvasBeginRecording = BasePreferencesActivity.this.iBlur3SourceGlass.beginRecording(getMeasuredWidth(), getMeasuredHeight());
                    recordingCanvasBeginRecording.drawColor(BasePreferencesActivity.this.getThemedColor(Theme.key_windowBackgroundGray));
                    if (SharedConfig.chatBlurEnabled()) {
                        BasePreferencesActivity.this.scrollableViewNoiseSuppressor.draw(recordingCanvasBeginRecording, -2);
                    }
                    BasePreferencesActivity.this.iBlur3SourceGlass.endRecording();
                }
            }
            super.dispatchDraw(canvas);
        }

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
            int themedColor = BasePreferencesActivity.this.getThemedColor(Theme.key_windowBackgroundGray);
            setBackgroundColor(themedColor);
            BasePreferencesActivity.this.iBlur3SourceColor.setColor(themedColor);
            BasePreferencesActivity.this.updateTopFade();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void blur3_InvalidateBlur() {
        if (this.iBlur3Capture == null || this.fragmentView == null || Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null || !SharedConfig.chatBlurEnabled()) {
            return;
        }
        int measuredWidth = this.fragmentView.getMeasuredWidth();
        int measuredHeight = this.fragmentView.getMeasuredHeight();
        int iDp = AndroidUtilities.dp(48.0f);
        this.iBlur3PositionActionBar.set(0.0f, -iDp, measuredWidth, this.actionBar.getMeasuredHeight() + iDp);
        this.scrollableViewNoiseSuppressor.setupRenderNodes(this.iBlur3Positions, 1);
        this.scrollableViewNoiseSuppressor.invalidateResultRenderNodes(this.iBlur3Capture, measuredWidth, measuredHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTopFade() {
        ChatActivityFadeView chatActivityFadeView = this.fadeView;
        if (chatActivityFadeView == null) {
            return;
        }
        ChatHeaderUiHelper.setupChatTopFade(chatActivityFadeView, this.actionBar, getThemedColor(Theme.key_windowBackgroundGray), this.actionBar.getMeasuredHeight(), true);
        this.fadeView.setFadeTopAlpha(MathKt.roundToInt(this.headerFadeAlpha * 255.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateHeaderFade(boolean animated) {
        boolean zCanScrollVertically;
        if (this.fadeView == null || this.headerFadeShown == (zCanScrollVertically = getListView$TMessagesProj().canScrollVertically(-1))) {
            return;
        }
        this.headerFadeShown = zCanScrollVertically;
        ValueAnimator valueAnimator = this.headerFadeAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.headerFadeAnimator = null;
        if (!animated) {
            setHeaderFadeAlpha(zCanScrollVertically ? 1.0f : 0.0f);
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.headerFadeAlpha, zCanScrollVertically ? 1.0f : 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.setHeaderFadeAlpha(((Float) valueAnimator2.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.setDuration(320L);
        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.headerFadeAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setHeaderFadeAlpha(float alpha) {
        this.headerFadeAlpha = alpha;
        ChatActivityFadeView chatActivityFadeView = this.fadeView;
        if (chatActivityFadeView != null) {
            chatActivityFadeView.setFadeTopAlpha(MathKt.roundToInt(alpha * 255.0f));
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity.onResume.1
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getTopOffset(int tag) {
                return AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight();
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int tag) {
                return BasePreferencesActivity.this.getBottomInset();
            }
        });
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        Bulletin.removeDelegate(this);
    }

    public final void scrollToItem(final int itemId) {
        if (this.listView == null) {
            return;
        }
        int iFindPositionByItemId = getListView$TMessagesProj().findPositionByItemId(itemId);
        if (iFindPositionByItemId >= 0) {
            UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
            if (iFindPositionByItemId < (universalAdapter != null ? universalAdapter.getItemCount() : 0)) {
                getLayoutManager().scrollToPositionWithOffset(iFindPositionByItemId, AndroidUtilities.dp(80.0f));
                getListView$TMessagesProj().highlightRow(new RecyclerListView.IntReturnCallback() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda2
                    @Override // org.telegram.ui.Components.RecyclerListView.IntReturnCallback
                    public final int run() {
                        return this.f$0.getListView$TMessagesProj().findPositionByItemId(itemId);
                    }
                });
                return;
            }
        }
        SettingsRegistry.getInstance().onSettingNotFound(this);
    }

    public final void showListDialog(UItem item, CharSequence[] options, String title, int currentValue, PopupUtils.OnItemClickListener onSelected) {
        showListDialog$default(this, item, options, null, title, currentValue, onSelected, false, false, 192, null);
    }

    public static /* synthetic */ void showListDialog$default(BasePreferencesActivity basePreferencesActivity, UItem uItem, CharSequence[] charSequenceArr, int[] iArr, String str, int i, PopupUtils.OnItemClickListener onItemClickListener, boolean z, boolean z2, int i2, Object obj) {
        boolean z3;
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: showListDialog");
            return;
        }
        if ((i2 & 64) != 0) {
            z3 = iArr == null;
        } else {
            z3 = z;
        }
        basePreferencesActivity.showListDialog(uItem, charSequenceArr, iArr, str, i, onItemClickListener, z3, (i2 & 128) != 0 ? true : z2);
    }

    @JvmOverloads
    public final void showListDialog(final UItem item, final CharSequence[] options, int[] icons, String title, final int currentValue, final PopupUtils.OnItemClickListener onSelected, boolean useRadioCell, final boolean skipIfValueNotUpdated) {
        if (getParentActivity() == null) {
            return;
        }
        PopupUtils.showDialog(options, icons, title, currentValue, getContext(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda0
            @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
            public final void onClick(int i) {
                BasePreferencesActivity.m2705$r8$lambda$JDWUecVaZ6cxVlL81WxsQKWYP8(skipIfValueNotUpdated, currentValue, onSelected, this, item, options, i);
            }
        }, this.resourceProvider, useRadioCell);
    }

    /* JADX INFO: renamed from: $r8$lambda$JDWUecVaZ6cx-VlL81WxsQKWYP8, reason: not valid java name */
    public static void m2705$r8$lambda$JDWUecVaZ6cxVlL81WxsQKWYP8(boolean z, int i, PopupUtils.OnItemClickListener onItemClickListener, BasePreferencesActivity basePreferencesActivity, UItem uItem, CharSequence[] charSequenceArr, int i2) {
        if (z && i == i2) {
            return;
        }
        onItemClickListener.onClick(i2);
        View viewFindViewByItemId = basePreferencesActivity.getListView$TMessagesProj().findViewByItemId(uItem.id);
        if (viewFindViewByItemId instanceof TextCell) {
            ((TextCell) viewFindViewByItemId).setValue(charSequenceArr[i2], true);
        }
        UniversalAdapter universalAdapter = basePreferencesActivity.getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    public final void showRestartBulletin() {
        BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.info, LocaleController.getString(C2665R.string.RestartRequired), LocaleController.getString(C2665R.string.BotUnblock), new Runnable() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BasePreferencesActivity.$r8$lambda$k7IrsXGeug19Q0QXMcoRuKyd6Qo(this.f$0);
            }
        }).show();
    }

    public static void $r8$lambda$k7IrsXGeug19Q0QXMcoRuKyd6Qo(BasePreferencesActivity basePreferencesActivity) {
        Intent launchIntentForPackage = basePreferencesActivity.getContext().getPackageManager().getLaunchIntentForPackage(basePreferencesActivity.getContext().getPackageName());
        Intent intentMakeRestartActivityTask = Intent.makeRestartActivityTask(launchIntentForPackage != null ? launchIntentForPackage.getComponent() : null);
        intentMakeRestartActivityTask.setPackage(basePreferencesActivity.getContext().getPackageName());
        basePreferencesActivity.getContext().startActivity(intentMakeRestartActivityTask);
        Runtime.getRuntime().exit(0);
    }

    public final void toggleBooleanSettingAndRefresh$TMessagesProj(UItem item, Consumer<Boolean> stateSetter) {
        View viewFindViewByItemId = getListView$TMessagesProj().findViewByItemId(item.id);
        boolean z = !item.checked;
        stateSetter.accept(Boolean.valueOf(z));
        item.setChecked(z);
        if (viewFindViewByItemId instanceof CheckBoxCell) {
            ((CheckBoxCell) viewFindViewByItemId).setChecked(z, true);
        } else if (viewFindViewByItemId instanceof TextCheckCell) {
            ((TextCheckCell) viewFindViewByItemId).setChecked(z);
        }
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        ActionBar actionBar = this.actionBar;
        return actionBar == null ? super.isLightStatusBar() : ChatHeaderUiHelper.isLightChatStatusBar(actionBar, getThemedColor(Theme.key_windowBackgroundGray), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        String firstSettingLink = SettingsRegistry.getInstance().getFirstSettingLink(getClass(), item);
        if (firstSettingLink == null) {
            return false;
        }
        showCopyLinkOptions(view, firstSettingLink);
        return true;
    }

    public final void showCopyLinkOptions(View view, final String settingLink) {
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.setLongPressSelectionEnabled(false);
        itemOptionsMakeOptions.add(C2665R.drawable.msg_copy, LocaleController.getString(C2665R.string.CopyLink), new Runnable() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                BasePreferencesActivity.m2707$r8$lambda$vJl1gTG8BK9M2VG8YWhm5C9OQc(settingLink, this);
            }
        });
        itemOptionsMakeOptions.add(C2665R.drawable.msg_share, LocaleController.getString(C2665R.string.ShareLink), new Runnable() { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                BasePreferencesActivity.$r8$lambda$Ij3MPNxngjiBZQnGGMNJHMrKwXI(this.f$0, itemOptionsMakeOptions, settingLink);
            }
        });
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$vJl1gTG8-BK9M2VG8YWhm5C9OQc, reason: not valid java name */
    public static void m2707$r8$lambda$vJl1gTG8BK9M2VG8YWhm5C9OQc(String str, BasePreferencesActivity basePreferencesActivity) {
        if (AndroidUtilities.addToClipboard(str)) {
            BulletinFactory.of(basePreferencesActivity).createCopyBulletin(LocaleController.getString(C2665R.string.LinkCopied)).show();
        }
    }

    public static void $r8$lambda$Ij3MPNxngjiBZQnGGMNJHMrKwXI(final BasePreferencesActivity basePreferencesActivity, ItemOptions itemOptions, final String str) {
        final Context context = itemOptions.getContext();
        final Theme.ResourcesProvider resourcesProvider = basePreferencesActivity.resourceProvider;
        basePreferencesActivity.showDialog(new ShareAlert(str, basePreferencesActivity, context, resourcesProvider) { // from class: com.exteragram.messenger.preferences.BasePreferencesActivity$showCopyLinkOptions$1$2$1
            final /* synthetic */ BasePreferencesActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(context, null, str, false, str, false, resourcesProvider);
                this.this$0 = basePreferencesActivity;
            }

            @Override // org.telegram.ui.Components.ShareAlert
            public void onSend(LongSparseArray<TLRPC.Dialog> dialogIds, int count, TLRPC.TL_forumTopic topic, boolean showToast) {
                String string;
                if (showToast) {
                    if (dialogIds != null && dialogIds.size() == 1) {
                        long j = dialogIds.valueAt(0).id;
                        if (j == 0 || j == this.this$0.getUserConfig().clientUserId) {
                            string = LocaleController.getString(C2665R.string.SettingLinkToSavedMessages);
                        } else {
                            string = LocaleController.formatString(C2665R.string.SettingLinkToUser, this.this$0.getMessagesController().getPeerName(j, true));
                        }
                    } else {
                        string = LocaleController.formatString(C2665R.string.SettingLinkToChats, LocaleController.formatPluralString("Chats", count, new Object[0]));
                    }
                    Bulletin bulletinCreateSimpleBulletin = BulletinFactory.of(this.this$0).createSimpleBulletin(C2665R.raw.forward, string);
                    bulletinCreateSimpleBulletin.hideAfterBottomSheet = false;
                    bulletinCreateSimpleBulletin.show(true);
                }
            }
        });
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int left, int top, int right, int bottom) {
        UniversalRecyclerView listView$TMessagesProj = getListView$TMessagesProj();
        listView$TMessagesProj.setPadding(0, getListTopPadding(top), 0, bottom);
        listView$TMessagesProj.setClipToPadding(false);
    }

    public int getListTopPadding(int topInset) {
        return topInset + ActionBar.getCurrentActionBarHeight();
    }

    public static /* synthetic */ UItem uCheck$TMessagesProj$default(BasePreferencesActivity basePreferencesActivity, Enum r4, CharSequence charSequence, boolean z, CharSequence charSequence2, int i, boolean z2, String str, boolean z3, int i2, int i3, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: uCheck");
            return null;
        }
        if ((i3 & 8) != 0) {
            charSequence2 = null;
        }
        if ((i3 & 16) != 0) {
            i = 0;
        }
        if ((i3 & 32) != 0) {
            z2 = true;
        }
        if ((i3 & 64) != 0) {
            str = null;
        }
        if ((i3 & 128) != 0) {
            z3 = true;
        }
        if ((i3 & 256) != 0) {
            i2 = 0;
        }
        return basePreferencesActivity.uCheck$TMessagesProj((Enum<?>) r4, charSequence, z, charSequence2, i, z2, str, z3, i2);
    }

    public final UItem uCheck$TMessagesProj(Enum<?> enumEntry, CharSequence text, boolean checked, CharSequence subtext, int checkBoxIcon, boolean searchable, String linkAlias, boolean multiline, int icon) {
        return uCheck$TMessagesProj(enumEntry.ordinal() + 1, text, checked, subtext, checkBoxIcon, searchable, linkAlias, multiline, icon);
    }

    public static /* synthetic */ UItem uCheck$TMessagesProj$default(BasePreferencesActivity basePreferencesActivity, int i, CharSequence charSequence, boolean z, CharSequence charSequence2, int i2, boolean z2, String str, boolean z3, int i3, int i4, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: uCheck");
            return null;
        }
        if ((i4 & 8) != 0) {
            charSequence2 = null;
        }
        if ((i4 & 16) != 0) {
            i2 = 0;
        }
        if ((i4 & 32) != 0) {
            z2 = true;
        }
        if ((i4 & 64) != 0) {
            str = null;
        }
        if ((i4 & 128) != 0) {
            z3 = true;
        }
        if ((i4 & 256) != 0) {
            i3 = 0;
        }
        return basePreferencesActivity.uCheck$TMessagesProj(i, charSequence, z, charSequence2, i2, z2, str, z3, i3);
    }

    public final UItem uCheck$TMessagesProj(int id, CharSequence text, boolean checked, CharSequence subtext, int checkBoxIcon, boolean searchable, String linkAlias, boolean multiline, int icon) {
        UItem uItemAsCheck;
        if (subtext != null) {
            uItemAsCheck = UItem.asCheck(id, text, subtext, multiline);
        } else {
            uItemAsCheck = UItem.asCheck(id, text);
        }
        uItemAsCheck.setChecked(checked);
        if (icon != 0) {
            uItemAsCheck.iconResId = icon;
        }
        if (checkBoxIcon != 0) {
            uItemAsCheck.setCheckBoxIcon(checkBoxIcon);
        }
        if (searchable) {
            uItemAsCheck.setSearchable(this);
        }
        if (linkAlias != null) {
            uItemAsCheck.setLinkAlias(linkAlias, this);
        }
        return uItemAsCheck;
    }

    public static /* synthetic */ UItem uButton$TMessagesProj$default(BasePreferencesActivity basePreferencesActivity, Enum r3, CharSequence charSequence, int i, CharSequence charSequence2, CharSequence charSequence3, Boolean bool, boolean z, String str, boolean z2, boolean z3, Boolean bool2, int i2, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: uButton");
            return null;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        if ((i2 & 8) != 0) {
            charSequence2 = null;
        }
        if ((i2 & 16) != 0) {
            charSequence3 = null;
        }
        if ((i2 & 32) != 0) {
            bool = null;
        }
        if ((i2 & 64) != 0) {
            z = true;
        }
        if ((i2 & 128) != 0) {
            str = null;
        }
        if ((i2 & 256) != 0) {
            z2 = false;
        }
        if ((i2 & 512) != 0) {
            z3 = false;
        }
        if ((i2 & 1024) != 0) {
            bool2 = null;
        }
        return basePreferencesActivity.uButton$TMessagesProj((Enum<?>) r3, charSequence, i, charSequence2, charSequence3, bool, z, str, z2, z3, bool2);
    }

    public final UItem uButton$TMessagesProj(Enum<?> enumEntry, CharSequence text, int icon, CharSequence value, CharSequence subtext, Boolean showDivider, boolean searchable, String linkAlias, boolean red, boolean accent, Boolean prioritizeTitleOverValue) {
        return uButton$TMessagesProj(enumEntry.ordinal() + 1, text, icon, value, subtext, showDivider, searchable, linkAlias, red, accent, prioritizeTitleOverValue);
    }

    public static /* synthetic */ UItem uButton$TMessagesProj$default(BasePreferencesActivity basePreferencesActivity, int i, CharSequence charSequence, int i2, CharSequence charSequence2, CharSequence charSequence3, Boolean bool, boolean z, String str, boolean z2, boolean z3, Boolean bool2, int i3, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: uButton");
            return null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        if ((i3 & 8) != 0) {
            charSequence2 = null;
        }
        if ((i3 & 16) != 0) {
            charSequence3 = null;
        }
        if ((i3 & 32) != 0) {
            bool = null;
        }
        if ((i3 & 64) != 0) {
            z = true;
        }
        if ((i3 & 128) != 0) {
            str = null;
        }
        if ((i3 & 256) != 0) {
            z2 = false;
        }
        if ((i3 & 512) != 0) {
            z3 = false;
        }
        if ((i3 & 1024) != 0) {
            bool2 = null;
        }
        return basePreferencesActivity.uButton$TMessagesProj(i, charSequence, i2, charSequence2, charSequence3, bool, z, str, z2, z3, bool2);
    }

    public final UItem uButton$TMessagesProj(int id, CharSequence text, int icon, CharSequence value, CharSequence subtext, Boolean showDivider, boolean searchable, String linkAlias, boolean red, boolean accent, Boolean prioritizeTitleOverValue) {
        UItem uItemAsButton;
        if (subtext != null && subtext.length() != 0) {
            uItemAsButton = UItem.asButtonWithSubtext(id, icon, text, subtext, 64, 60);
        } else if (value != null && value.length() != 0 && icon != 0) {
            uItemAsButton = UItem.asButton(id, icon, text, value);
        } else if (value != null && value.length() != 0) {
            uItemAsButton = UItem.asButton(id, text, value);
        } else if (icon != 0) {
            uItemAsButton = UItem.asButton(id, icon, text);
        } else {
            uItemAsButton = UItem.asButton(id, text);
        }
        if (red) {
            uItemAsButton.red();
        }
        if (accent) {
            uItemAsButton.accent();
        }
        if (searchable) {
            uItemAsButton.setSearchable(this);
        }
        if (linkAlias != null) {
            uItemAsButton.setLinkAlias(linkAlias, this);
        }
        if (showDivider != null) {
            uItemAsButton.showDivider(showDivider.booleanValue());
        }
        if (prioritizeTitleOverValue != null) {
            uItemAsButton.prioritizeTitleOverValue(prioritizeTitleOverValue.booleanValue());
        }
        return uItemAsButton;
    }
}
