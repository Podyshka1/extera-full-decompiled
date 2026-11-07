package com.exteragram.messenger.plugins.catalog.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.Layout;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.catalog.CatalogPlugin;
import com.exteragram.messenger.plugins.catalog.PluginCategory;
import com.exteragram.messenger.plugins.catalog.db.PluginMetadataEntity;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.ViewOutlineProviderImpl;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 D2\u00020\u0001:\u0004ABCDB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ \u0010#\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0005H\u0002J\u001c\u0010'\u001a\u00020(*\u00020\u00102\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0005H\u0002JJ\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00052\b\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020 2\u0006\u00100\u001a\u00020 2\u0006\u00101\u001a\u00020 2\b\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u00020 J\b\u00105\u001a\u00020(H\u0002J\u0010\u00106\u001a\u00020(2\u0006\u00107\u001a\u000208H\u0002J\b\u00109\u001a\u00020(H\u0002J\u0018\u0010:\u001a\u00020(2\u0006\u0010;\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0005H\u0014J\b\u0010=\u001a\u00020 H\u0002J\u0010\u0010>\u001a\u00020(2\u0006\u0010?\u001a\u00020@H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00060\u0014R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00060\u0016R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00060\u0016R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\"¨\u0006E"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "currentAccount", _UrlKt.FRAGMENT_ENCODE_SET, "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "<init>", "(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "iconRadius", "iconView", "Lorg/telegram/ui/Components/BackupImageView;", "placeholderView", "Landroid/widget/ImageView;", "titleView", "Landroid/widget/TextView;", "versionView", "newView", "titleRow", "Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell$TitleRow;", "descriptionView", "Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell$LinksTextView;", "authorView", "tagsView", "Lcom/exteragram/messenger/plugins/catalog/ui/CatalogCategoryTagsView;", "textColumn", "Landroid/widget/LinearLayout;", "deleteButton", "progressView", "Lorg/telegram/ui/Components/RadialProgressView;", "needDivider", _UrlKt.FRAGMENT_ENCODE_SET, "boundEntryId", "Ljava/lang/Integer;", "createTextView", "size", _UrlKt.FRAGMENT_ENCODE_SET, "colorKey", "setup", _UrlKt.FRAGMENT_ENCODE_SET, "set", "plugin", "Lcom/exteragram/messenger/plugins/catalog/CatalogPlugin;", "state", "versionLabel", _UrlKt.FRAGMENT_ENCODE_SET, "isNew", "loading", "detailsAvailable", "onDelete", "Landroid/view/View$OnClickListener;", PluginsConstants.Settings.TYPE_DIVIDER, "updateIconRadius", "loadIcon", "icon", _UrlKt.FRAGMENT_ENCODE_SET, "showPlaceholder", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "alignDescription", "onDraw", "canvas", "Landroid/graphics/Canvas;", "LinksTextView", "TitleRow", "Factory", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension({"SMAP\nCatalogPluginCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogPluginCell.kt\ncom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,439:1\n1#2:440\n297#3:441\n*S KotlinDebug\n*F\n+ 1 CatalogPluginCell.kt\ncom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell\n*L\n279#1:441\n*E\n"})
public final class CatalogPluginCell extends FrameLayout {
    private static final float AUTHOR_HEIGHT = 16.0f;
    private static final float BADGE_GAP = 4.0f;
    private static final float DESCRIPTION_LINE_HEIGHT = 18.5f;
    public static final float ICON_SIZE = 44.0f;
    public static final float PADDING = 12.0f;
    public static final int STATE_GET = 0;
    public static final int STATE_INSTALLED = 2;
    public static final int STATE_UPDATE = 1;
    public static final float TEXT_START = 68.0f;
    private static final float TITLE_BADGE_GAP = 8.0f;
    private static final float TITLE_HEIGHT = 20.0f;
    private final LinksTextView authorView;
    private Integer boundEntryId;
    private final int currentAccount;
    private final ImageView deleteButton;
    private final LinksTextView descriptionView;
    private int iconRadius;
    private final BackupImageView iconView;
    private boolean needDivider;
    private final TextView newView;
    private final ImageView placeholderView;
    private final RadialProgressView progressView;
    private final Theme.ResourcesProvider resourcesProvider;
    private final CatalogCategoryTagsView tagsView;
    private final LinearLayout textColumn;
    private final TitleRow titleRow;
    private final TextView titleView;
    private final TextView versionView;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Regex ICON_PATTERN = new Regex("^[a-zA-Z][a-zA-Z0-9_]*/\\d+$");

    public CatalogPluginCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setClipToOutline(true);
        backupImageView.getImageReceiver().setAutoRepeat(1);
        this.iconView = backupImageView;
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageResource(C2807R.drawable.plugins_filled);
        int color = Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
        int iDp = AndroidUtilities.dp(10.0f);
        imageView.setPadding(iDp, iDp, iDp, iDp);
        this.placeholderView = imageView;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        TextView textViewCreateTextView = createTextView(context, AUTHOR_HEIGHT, i2);
        textViewCreateTextView.setTypeface(AndroidUtilities.bold());
        textViewCreateTextView.setIncludeFontPadding(false);
        textViewCreateTextView.setGravity(textViewCreateTextView.getGravity() | 16);
        this.titleView = textViewCreateTextView;
        TextView textView = new TextView(context);
        textView.setTextSize(1, 12.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setSingleLine(true);
        textView.setGravity(17);
        textView.setPadding(AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f), 0);
        this.versionView = textView;
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 12.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setSingleLine(true);
        textView2.setGravity(17);
        textView2.setPadding(AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f), 0);
        textView2.setText(LocaleController.getString(C2807R.string.PluginCatalogNew));
        textView2.setVisibility(8);
        this.newView = textView2;
        TitleRow titleRow = new TitleRow(context);
        this.titleRow = titleRow;
        LinksTextView linksTextView = new LinksTextView(context);
        setup(linksTextView, 14.0f, i2);
        linksTextView.setLineSpacing(AndroidUtilities.dp(DESCRIPTION_LINE_HEIGHT) - linksTextView.getPaint().getFontMetricsInt(null), 1.0f);
        linksTextView.setIncludeFontPadding(false);
        linksTextView.setMaxLines(2);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        linksTextView.setEllipsize(truncateAt);
        this.descriptionView = linksTextView;
        LinksTextView linksTextView2 = new LinksTextView(context);
        setup(linksTextView2, 13.0f, Theme.key_windowBackgroundWhiteGrayText);
        linksTextView2.setSingleLine(true);
        linksTextView2.setIncludeFontPadding(false);
        linksTextView2.setGravity(linksTextView2.getGravity() | 16);
        linksTextView2.setEllipsize(truncateAt);
        this.authorView = linksTextView2;
        CatalogCategoryTagsView catalogCategoryTagsView = new CatalogCategoryTagsView(context, resourcesProvider);
        this.tagsView = catalogCategoryTagsView;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(titleRow, LayoutHelper.createLinear(-1, -2));
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 0.0f, BADGE_GAP, 0.0f, 0.0f));
        linearLayout.addView(linksTextView2, LayoutHelper.createLinear(-1, 16, 0.0f, 7.0f, 0.0f, 0.0f));
        linearLayout.addView(catalogCategoryTagsView, LayoutHelper.createLinear(-1, 18, 0.0f, 9.0f, 0.0f, 0.0f));
        this.textColumn = linearLayout;
        ImageView imageView2 = new ImageView(context);
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        imageView2.setImageResource(C2807R.drawable.msg_delete);
        int i3 = Theme.key_text_RedRegular;
        imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i3, resourcesProvider), mode));
        imageView2.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(Theme.getColor(i3, resourcesProvider), 0.12f), 1, AndroidUtilities.dp(TITLE_HEIGHT)));
        imageView2.setContentDescription(LocaleController.getString(C2807R.string.PluginDelete));
        imageView2.setVisibility(8);
        this.deleteButton = imageView2;
        RadialProgressView radialProgressView = new RadialProgressView(context, resourcesProvider);
        radialProgressView.setSize(AndroidUtilities.dp(TITLE_HEIGHT));
        radialProgressView.setProgressColor(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider));
        radialProgressView.setVisibility(8);
        this.progressView = radialProgressView;
        setWillNotDraw(false);
        boolean z = LocaleController.isRTL;
        int i4 = (z ? 5 : 3) | 48;
        addView(imageView, LayoutHelper.createFrame(44, 44.0f, i4, z ? 0.0f : 12.0f, 12.0f, z ? 12.0f : 0.0f, 0.0f));
        addView(backupImageView, LayoutHelper.createFrame(44, 44.0f, i4, z ? 0.0f : 12.0f, 12.0f, z ? 12.0f : 0.0f, 0.0f));
        addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, i4, z ? 12.0f : 68.0f, 12.0f, z ? 68.0f : 12.0f, 12.0f));
        addView(imageView2, LayoutHelper.createFrameRelatively(40.0f, 40.0f, 8388629, 0.0f, 0.0f, 12.0f, 0.0f));
        addView(radialProgressView, LayoutHelper.createFrameRelatively(40.0f, 40.0f, 8388629, 0.0f, 0.0f, 12.0f, 0.0f));
    }

    private final TextView createTextView(Context context, float size, int colorKey) {
        TextView textView = new TextView(context);
        textView.setTextSize(1, size);
        textView.setTextColor(Theme.getColor(colorKey, this.resourcesProvider));
        textView.setTypeface(AndroidUtilities.regular());
        textView.setSingleLine(true);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(LocaleController.isRTL ? 5 : 3);
        return textView;
    }

    private final void setup(TextView textView, float f, int i) {
        textView.setTextSize(1, f);
        textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        textView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, this.resourcesProvider));
        textView.setTypeface(AndroidUtilities.regular());
        textView.setGravity(LocaleController.isRTL ? 5 : 3);
    }

    public final void set(CatalogPlugin plugin, int state, CharSequence versionLabel, boolean isNew, boolean loading, boolean detailsAvailable, View.OnClickListener onDelete, boolean divider) {
        String icon;
        String strSubstringBeforeLast$default;
        CharSequence string;
        CharSequence fileSize;
        updateIconRadius();
        PluginMetadataEntity metadata = plugin.getMetadata();
        if (metadata == null || metadata.getError() != null) {
            metadata = null;
        }
        if (metadata == null || (icon = metadata.getIcon()) == null || !ICON_PATTERN.matches(icon)) {
            icon = null;
        }
        if (icon != null) {
            loadIcon(icon);
        } else {
            showPlaceholder();
        }
        TextView textView = this.titleView;
        if (metadata == null || (strSubstringBeforeLast$default = metadata.getName()) == null) {
            strSubstringBeforeLast$default = StringsKt.substringBeforeLast$default(plugin.getFileName(), '.', (String) null, 2, (Object) null);
        }
        textView.setText(strSubstringBeforeLast$default);
        this.versionView.setText(versionLabel);
        boolean z = false;
        this.versionView.setVisibility((versionLabel == null || versionLabel.length() == 0) ? 8 : 0);
        int color = Theme.getColor(state == 1 ? Theme.key_featuredStickers_addButton : Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider);
        this.versionView.setTextColor(color);
        this.versionView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(TITLE_BADGE_GAP), Theme.multAlpha(color, 0.12f)));
        this.newView.setVisibility(isNew ? 0 : 8);
        if (isNew) {
            this.newView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, this.resourcesProvider));
            this.newView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(TITLE_BADGE_GAP), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
        }
        LinksTextView linksTextView = this.descriptionView;
        if (metadata != null) {
            String description = metadata.getDescription();
            if (description == null) {
                description = LocaleController.getString(C2807R.string.PluginNoDescription);
            }
            string = LocaleUtils.fullyFormatText(description);
        } else if (plugin.isFailed()) {
            string = LocaleController.getString(C2807R.string.PluginCatalogInfoFailed);
        } else if (!detailsAvailable) {
            string = LocaleController.getString(C2807R.string.PluginCatalogInfoUnavailable);
        } else {
            string = LocaleController.getString(C2807R.string.PluginCatalogInfoLoading);
        }
        linksTextView.setText(string);
        List<PluginCategory> categories = plugin.getCategories();
        this.tagsView.setCategories(categories);
        this.tagsView.setVisibility(categories.isEmpty() ? 8 : 0);
        LinksTextView linksTextView2 = this.authorView;
        if (metadata != null) {
            String author = metadata.getAuthor();
            if (author == null) {
                author = LocaleController.getString(C2807R.string.PluginNoAuthor);
            }
            fileSize = LocaleUtils.formatWithUsernames(author);
        } else {
            fileSize = AndroidUtilities.formatFileSize(plugin.getSize());
        }
        linksTextView2.setText(fileSize);
        Integer num = this.boundEntryId;
        boolean z2 = num != null && num.intValue() == plugin.getEntryId();
        this.boundEntryId = Integer.valueOf(plugin.getEntryId());
        if (!loading && state != 0 && onDelete != null) {
            z = true;
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.deleteButton, z, 0.5f, true, z2);
        this.deleteButton.setOnClickListener(onDelete);
        AndroidUtilities.updateViewVisibilityAnimated(this.progressView, loading, 0.5f, true, z2);
        int iDp = AndroidUtilities.dp((z || loading) ? 56.0f : 12.0f);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textColumn.getLayoutParams();
        if (LocaleController.isRTL) {
            if (layoutParams.leftMargin != iDp) {
                layoutParams.leftMargin = iDp;
                this.textColumn.requestLayout();
            }
        } else if (layoutParams.rightMargin != iDp) {
            layoutParams.rightMargin = iDp;
            this.textColumn.requestLayout();
        }
        this.needDivider = divider;
        invalidate();
    }

    private final void updateIconRadius() {
        int iDp = AndroidUtilities.dp(INSTANCE.getIconRadius());
        if (this.iconRadius == iDp) {
            return;
        }
        this.iconRadius = iDp;
        this.iconView.setRoundRadius(iDp);
        this.iconView.setOutlineProvider(ViewOutlineProviderImpl.boundsWithRoundRect(iDp));
        this.iconView.invalidateOutline();
        this.placeholderView.setBackground(Theme.createRoundRectDrawable(iDp, Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
    }

    private final void loadIcon(String icon) {
        this.iconView.setVisibility(0);
        this.placeholderView.setVisibility(8);
        int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) icon, '/', 0, false, 6, (Object) null);
        String strSubstring = icon.substring(0, iLastIndexOf$default);
        final int i = Integer.parseInt(icon.substring(iLastIndexOf$default + 1));
        MediaDataController mediaDataController = MediaDataController.getInstance(this.currentAccount);
        mediaDataController.setPlaceholderImageByIndex(this.iconView, strSubstring, i, "100_100", this.resourcesProvider);
        final Object tag = this.iconView.getTag();
        TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
        tL_inputStickerSetShortName.short_name = strSubstring;
        mediaDataController.getStickerSet(tL_inputStickerSetShortName, 0, false, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.catalog.ui.CatalogPluginCell$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                CatalogPluginCell.$r8$lambda$2bQdU_AjA5NWvajHnyJ1Woez7Lc(this.f$0, tag, i, (TLRPC.TL_messages_stickerSet) obj);
            }
        });
    }

    public static void $r8$lambda$2bQdU_AjA5NWvajHnyJ1Woez7Lc(CatalogPluginCell catalogPluginCell, Object obj, int i, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        ArrayList<TLRPC.Document> arrayList;
        if (Intrinsics.areEqual(catalogPluginCell.iconView.getTag(), obj)) {
            if (((tL_messages_stickerSet == null || (arrayList = tL_messages_stickerSet.documents) == null) ? null : (TLRPC.Document) CollectionsKt.getOrNull(arrayList, i)) == null) {
                catalogPluginCell.showPlaceholder();
            }
        }
    }

    private final void showPlaceholder() {
        this.iconView.setTag(null);
        this.iconView.setImageDrawable(null);
        this.iconView.setVisibility(8);
        this.placeholderView.setVisibility(0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        super.onMeasure(widthMeasureSpec, iMakeMeasureSpec);
        if (alignDescription()) {
            super.onMeasure(widthMeasureSpec, iMakeMeasureSpec);
        }
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(Math.max(getMeasuredHeight(), AndroidUtilities.dp(68.0f)) + (this.needDivider ? 1 : 0), TLObject.FLAG_30));
    }

    private final boolean alignDescription() {
        Layout layout = this.descriptionView.getLayout();
        if (layout == null || this.descriptionView.getVisibility() == 8 || layout.getLineCount() == 0) {
            return false;
        }
        int iMax = Math.max(AndroidUtilities.dp(BADGE_GAP), (AndroidUtilities.dp(44.0f) - this.titleRow.getMeasuredHeight()) - (layout.getLineBaseline(0) + this.descriptionView.getPaint().getFontMetricsInt().descent));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.descriptionView.getLayoutParams();
        if (layoutParams.topMargin == iMax) {
            return false;
        }
        layoutParams.topMargin = iMax;
        return true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(68.0f), getMeasuredHeight() - 1.0f, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(68.0f) : 0.0f), getMeasuredHeight() - 1.0f, Theme.getThemePaint("paintDivider", this.resourcesProvider));
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0017¨\u0006\n"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell$LinksTextView;", "Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;", "context", "Landroid/content/Context;", "<init>", "(Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell;Landroid/content/Context;)V", "onTouchEvent", _UrlKt.FRAGMENT_ENCODE_SET, "event", "Landroid/view/MotionEvent;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public final class LinksTextView extends LinkSpanDrawable.LinksTextView {
        public LinksTextView(Context context) {
            super(context, CatalogPluginCell.this.resourcesProvider);
        }

        @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView, android.widget.TextView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent event) {
            ViewParent parent;
            if (event.getAction() == 0 && hit((int) event.getX(), (int) event.getY()) != null && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            return super.onTouchEvent(event);
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0014J0\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\rH\u0014R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell$TitleRow;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "<init>", "(Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell;Landroid/content/Context;)V", "badges", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/widget/TextView;", "[Landroid/widget/TextView;", "onMeasure", _UrlKt.FRAGMENT_ENCODE_SET, "widthMeasureSpec", _UrlKt.FRAGMENT_ENCODE_SET, "heightMeasureSpec", "onLayout", "changed", _UrlKt.FRAGMENT_ENCODE_SET, "left", "top", "right", "bottom", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCatalogPluginCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogPluginCell.kt\ncom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell$TitleRow\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,439:1\n297#2:440\n*S KotlinDebug\n*F\n+ 1 CatalogPluginCell.kt\ncom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell$TitleRow\n*L\n346#1:440\n*E\n"})
    public final class TitleRow extends FrameLayout {
        private final TextView[] badges;

        public TitleRow(Context context) {
            super(context);
            this.badges = new TextView[]{CatalogPluginCell.this.versionView, CatalogPluginCell.this.newView};
            addView(CatalogPluginCell.this.titleView, new FrameLayout.LayoutParams(-2, -2));
            addView(CatalogPluginCell.this.versionView, new FrameLayout.LayoutParams(-2, -2));
            addView(CatalogPluginCell.this.newView, new FrameLayout.LayoutParams(-2, -2));
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            int size = View.MeasureSpec.getSize(widthMeasureSpec);
            int measuredWidth = 0;
            for (TextView textView : this.badges) {
                if (textView.getVisibility() != 8) {
                    textView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(CatalogPluginCell.TITLE_HEIGHT), TLObject.FLAG_30));
                    measuredWidth += textView.getMeasuredWidth() + AndroidUtilities.dp(measuredWidth == 0 ? CatalogPluginCell.TITLE_BADGE_GAP : CatalogPluginCell.BADGE_GAP);
                }
            }
            CatalogPluginCell.this.titleView.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, size - measuredWidth), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(CatalogPluginCell.TITLE_HEIGHT), TLObject.FLAG_30));
            setMeasuredDimension(size, AndroidUtilities.dp(CatalogPluginCell.TITLE_HEIGHT));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean changed, int left, int top, int right, int bottom) {
            int i = bottom - top;
            int measuredHeight = (i - CatalogPluginCell.this.titleView.getMeasuredHeight()) / 2;
            int i2 = right - left;
            boolean z = LocaleController.isRTL;
            CatalogPluginCell catalogPluginCell = CatalogPluginCell.this;
            if (z) {
                catalogPluginCell.titleView.layout(i2 - CatalogPluginCell.this.titleView.getMeasuredWidth(), measuredHeight, i2, CatalogPluginCell.this.titleView.getMeasuredHeight() + measuredHeight);
            } else {
                catalogPluginCell.titleView.layout(0, measuredHeight, CatalogPluginCell.this.titleView.getMeasuredWidth(), CatalogPluginCell.this.titleView.getMeasuredHeight() + measuredHeight);
            }
            int measuredWidth = CatalogPluginCell.this.titleView.getMeasuredWidth() + AndroidUtilities.dp(CatalogPluginCell.TITLE_BADGE_GAP);
            for (TextView textView : this.badges) {
                if (textView.getVisibility() != 8) {
                    int measuredHeight2 = (i - textView.getMeasuredHeight()) / 2;
                    if (LocaleController.isRTL) {
                        int i3 = i2 - measuredWidth;
                        textView.layout(i3 - textView.getMeasuredWidth(), measuredHeight2, i3, textView.getMeasuredHeight() + measuredHeight2);
                    } else {
                        textView.layout(measuredWidth, measuredHeight2, textView.getMeasuredWidth() + measuredWidth, textView.getMeasuredHeight() + measuredHeight2);
                    }
                    measuredWidth += textView.getMeasuredWidth() + AndroidUtilities.dp(CatalogPluginCell.BADGE_GAP);
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J2\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J0\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u0019H\u0016J\u0019\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014H\u0096\u0002J\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014H\u0016¨\u0006\u001f"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell$Factory;", "Lorg/telegram/ui/Components/UItem$UItemFactory;", "Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell;", "<init>", "()V", "createView", "context", "Landroid/content/Context;", "listView", "Lorg/telegram/ui/Components/RecyclerListView;", "currentAccount", _UrlKt.FRAGMENT_ENCODE_SET, "classGuid", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "bindView", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.VIEW, "Landroid/view/View;", PluginsConstants.Settings.ITEM, "Lorg/telegram/ui/Components/UItem;", PluginsConstants.Settings.TYPE_DIVIDER, _UrlKt.FRAGMENT_ENCODE_SET, "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "Lorg/telegram/ui/Components/UniversalRecyclerView;", "equals", "a", "b", "contentsEquals", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory extends UItem.UItemFactory<CatalogPluginCell> {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public CatalogPluginCell createView(Context context, RecyclerListView listView, int currentAccount, int classGuid, Theme.ResourcesProvider resourcesProvider) {
            return new CatalogPluginCell(context, currentAccount, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem item, boolean divider, UniversalAdapter adapter, UniversalRecyclerView listView) {
            Object obj = item.object;
            CatalogPlugin catalogPlugin = obj instanceof CatalogPlugin ? (CatalogPlugin) obj : null;
            if (catalogPlugin == null) {
                return;
            }
            CatalogPluginCell catalogPluginCell = view instanceof CatalogPluginCell ? (CatalogPluginCell) view : null;
            if (catalogPluginCell != null) {
                catalogPluginCell.set(catalogPlugin, item.intValue, item.text, item.accent, item.checked, !item.locked, item.clickCallback, divider);
            }
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem a2, UItem b2) {
            return a2.id == b2.id;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem a2, UItem b2) {
            Object obj = a2.object;
            CatalogPlugin catalogPlugin = obj instanceof CatalogPlugin ? (CatalogPlugin) obj : null;
            if (catalogPlugin == null) {
                return false;
            }
            Object obj2 = b2.object;
            CatalogPlugin catalogPlugin2 = obj2 instanceof CatalogPlugin ? (CatalogPlugin) obj2 : null;
            return catalogPlugin2 != null && catalogPlugin.getDocumentId() == catalogPlugin2.getDocumentId() && Intrinsics.areEqual(catalogPlugin.getMetadata(), catalogPlugin2.getMetadata()) && a2.intValue == b2.intValue && TextUtils.equals(a2.text, b2.text) && a2.checked == b2.checked && a2.accent == b2.accent && a2.locked == b2.locked;
        }

        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JB\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¨\u0006\u0012"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell$Factory$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "of", "Lorg/telegram/ui/Components/UItem;", "plugin", "Lcom/exteragram/messenger/plugins/catalog/CatalogPlugin;", "state", _UrlKt.FRAGMENT_ENCODE_SET, "versionLabel", _UrlKt.FRAGMENT_ENCODE_SET, "isNew", _UrlKt.FRAGMENT_ENCODE_SET, "loading", "detailsAvailable", "onDelete", "Landroid/view/View$OnClickListener;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final UItem of(CatalogPlugin plugin, int state, CharSequence versionLabel, boolean isNew, boolean loading, boolean detailsAvailable, View.OnClickListener onDelete) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = Long.hashCode((plugin.getRepositoryId() * 31) + ((long) plugin.getEntryId()));
                uItemOfFactory.object = plugin;
                uItemOfFactory.intValue = state;
                uItemOfFactory.text = versionLabel;
                uItemOfFactory.accent = isNew;
                uItemOfFactory.checked = loading;
                uItemOfFactory.locked = !detailsAvailable;
                uItemOfFactory.clickCallback = onDelete;
                return uItemOfFactory;
            }
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0013\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogPluginCell$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "STATE_GET", _UrlKt.FRAGMENT_ENCODE_SET, "STATE_UPDATE", "STATE_INSTALLED", "TITLE_BADGE_GAP", _UrlKt.FRAGMENT_ENCODE_SET, "BADGE_GAP", "TITLE_HEIGHT", "AUTHOR_HEIGHT", "DESCRIPTION_LINE_HEIGHT", "PADDING", "ICON_SIZE", "TEXT_START", "ICON_PATTERN", "Lkotlin/text/Regex;", "getIconRadius", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final float getIconRadius() {
            return Math.max(ExteraConfig.getSectionRadiusDp() - 12.0f, CatalogPluginCell.TITLE_BADGE_GAP);
        }
    }
}
