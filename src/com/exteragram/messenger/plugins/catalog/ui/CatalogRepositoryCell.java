package com.exteragram.messenger.plugins.catalog.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.catalog.db.PluginRepositoryEntity;
import com.google.android.gms.cast.MediaTrack;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0002,-B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0015J\u0018\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0014J\b\u0010 \u001a\u00020\u0017H\u0014J\b\u0010!\u001a\u00020\u0017H\u0014J5\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0016\u0010%\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010'0&\"\u0004\u0018\u00010'H\u0016¢\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogRepositoryCell;", "Landroid/widget/FrameLayout;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "context", "Landroid/content/Context;", "currentAccount", _UrlKt.FRAGMENT_ENCODE_SET, "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "<init>", "(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "avatarDrawable", "Lorg/telegram/ui/Components/AvatarDrawable;", "avatarView", "Lorg/telegram/ui/Components/BackupImageView;", "titleView", "Lorg/telegram/ui/ActionBar/SimpleTextView;", "subtitleView", "badge", "Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;", "needDivider", _UrlKt.FRAGMENT_ENCODE_SET, "set", _UrlKt.FRAGMENT_ENCODE_SET, "repository", "Lcom/exteragram/messenger/plugins/catalog/db/PluginRepositoryEntity;", MediaTrack.ROLE_SUBTITLE, _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.TYPE_DIVIDER, "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onAttachedToWindow", "onDetachedFromWindow", "didReceivedNotification", "id", "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "onDraw", "canvas", "Landroid/graphics/Canvas;", "Companion", "Factory", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension({"SMAP\nCatalogRepositoryCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogRepositoryCell.kt\ncom/exteragram/messenger/plugins/catalog/ui/CatalogRepositoryCell\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"})
public final class CatalogRepositoryCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final float AVATAR_SIZE = 44.0f;
    private final AvatarDrawable avatarDrawable;
    private final BackupImageView avatarView;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable badge;
    private final int currentAccount;
    private boolean needDivider;
    private final Theme.ResourcesProvider resourcesProvider;
    private final SimpleTextView subtitleView;
    private final SimpleTextView titleView;

    public CatalogRepositoryCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarView = backupImageView;
        SimpleTextView simpleTextView = new SimpleTextView(context);
        simpleTextView.setTextSize(16);
        simpleTextView.setTypeface(AndroidUtilities.bold());
        simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        simpleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        simpleTextView.setDrawablePadding(AndroidUtilities.dp(4.0f));
        this.titleView = simpleTextView;
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        simpleTextView2.setTextSize(14);
        simpleTextView2.setGravity(LocaleController.isRTL ? 5 : 3);
        simpleTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        this.subtitleView = simpleTextView2;
        this.badge = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(simpleTextView, AndroidUtilities.dp(20.0f));
        setWillNotDraw(false);
        boolean z = LocaleController.isRTL;
        int i2 = (z ? 5 : 3) | 48;
        addView(backupImageView, LayoutHelper.createFrame(44, 44.0f, i2, z ? 0.0f : 12.0f, 12.0f, z ? 12.0f : 0.0f, 0.0f));
        boolean z2 = LocaleController.isRTL;
        addView(simpleTextView, LayoutHelper.createFrame(-1, 20.0f, i2, z2 ? 12.0f : 68.0f, 12.0f, z2 ? 68.0f : 12.0f, 0.0f));
        boolean z3 = LocaleController.isRTL;
        addView(simpleTextView2, LayoutHelper.createFrame(-1, 20.0f, i2, z3 ? 12.0f : 68.0f, 36.0f, z3 ? 68.0f : 12.0f, 0.0f));
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void set(PluginRepositoryEntity repository, CharSequence subtitle, boolean divider) {
        String title;
        Long lValueOf;
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(repository.getRepositoryId()));
        this.avatarView.setRoundRadius(ExteraConfig.getAvatarCorners$default(44.0f, false, false, 6, null));
        AvatarDrawable avatarDrawable = this.avatarDrawable;
        if (chat != null) {
            avatarDrawable.setInfo(this.currentAccount, chat);
            this.avatarView.setForUserOrChat(chat, this.avatarDrawable);
        } else {
            avatarDrawable.setInfo(repository.getRepositoryId(), repository.getTitle(), null);
            this.avatarView.setImageDrawable(this.avatarDrawable);
        }
        SimpleTextView simpleTextView = this.titleView;
        if ((chat == null || (title = chat.title) == null) && (title = repository.getTitle()) == null && (title = repository.getUsername()) == null) {
            title = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        simpleTextView.setText(Emoji.replaceEmoji(title, this.titleView.getPaint().getFontMetricsInt(), false));
        if (chat != null) {
            BadgeDTO badge = BadgesController.INSTANCE.getBadge(chat);
            lValueOf = badge != null ? Long.valueOf(badge.getDocumentId()) : null;
        } else {
            BadgesController badgesController = BadgesController.INSTANCE;
            Long lValueOf2 = Long.valueOf(badgesController.getTRUSTED_BADGE().getDocumentId());
            if (badgesController.isTrusted(repository.getRepositoryId())) {
                lValueOf = lValueOf2;
            }
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.badge;
        if (lValueOf != null) {
            swapAnimatedEmojiDrawable.set(lValueOf.longValue(), false);
            this.badge.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
            this.titleView.setRightDrawable(this.badge);
        } else {
            swapAnimatedEmojiDrawable.set((TLRPC.Document) null, false);
            this.titleView.setRightDrawable((Drawable) null);
        }
        this.subtitleView.setText(subtitle);
        this.needDivider = divider;
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(68.0f) + (this.needDivider ? 1 : 0), TLObject.FLAG_30));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.badge.attach();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.badge.detach();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.emojiLoaded) {
            this.titleView.invalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(68.0f), getMeasuredHeight() - 1.0f, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(68.0f) : 0.0f), getMeasuredHeight() - 1.0f, Theme.getThemePaint("paintDivider", this.resourcesProvider));
        }
    }

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J2\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J0\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u0019H\u0016J\u0019\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014H\u0096\u0002J\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014H\u0016¨\u0006\u001f"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogRepositoryCell$Factory;", "Lorg/telegram/ui/Components/UItem$UItemFactory;", "Lcom/exteragram/messenger/plugins/catalog/ui/CatalogRepositoryCell;", "<init>", "()V", "createView", "context", "Landroid/content/Context;", "listView", "Lorg/telegram/ui/Components/RecyclerListView;", "currentAccount", _UrlKt.FRAGMENT_ENCODE_SET, "classGuid", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "bindView", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.VIEW, "Landroid/view/View;", PluginsConstants.Settings.ITEM, "Lorg/telegram/ui/Components/UItem;", PluginsConstants.Settings.TYPE_DIVIDER, _UrlKt.FRAGMENT_ENCODE_SET, "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "Lorg/telegram/ui/Components/UniversalRecyclerView;", "equals", "a", "b", "contentsEquals", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory extends UItem.UItemFactory<CatalogRepositoryCell> {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public CatalogRepositoryCell createView(Context context, RecyclerListView listView, int currentAccount, int classGuid, Theme.ResourcesProvider resourcesProvider) {
            return new CatalogRepositoryCell(context, currentAccount, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem item, boolean divider, UniversalAdapter adapter, UniversalRecyclerView listView) {
            Object obj = item.object;
            PluginRepositoryEntity pluginRepositoryEntity = obj instanceof PluginRepositoryEntity ? (PluginRepositoryEntity) obj : null;
            if (pluginRepositoryEntity == null) {
                return;
            }
            CatalogRepositoryCell catalogRepositoryCell = view instanceof CatalogRepositoryCell ? (CatalogRepositoryCell) view : null;
            if (catalogRepositoryCell != null) {
                CharSequence charSequence = item.subtext;
                if (charSequence == null) {
                    charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                catalogRepositoryCell.set(pluginRepositoryEntity, charSequence, divider);
            }
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem a2, UItem b2) {
            return a2.id == b2.id;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem a2, UItem b2) {
            if (!Intrinsics.areEqual(a2.object, b2.object)) {
                return false;
            }
            CharSequence charSequence = a2.subtext;
            String string = charSequence != null ? charSequence.toString() : null;
            CharSequence charSequence2 = b2.subtext;
            return Intrinsics.areEqual(string, charSequence2 != null ? charSequence2.toString() : null);
        }

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogRepositoryCell$Factory$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "of", "Lorg/telegram/ui/Components/UItem;", "repository", "Lcom/exteragram/messenger/plugins/catalog/db/PluginRepositoryEntity;", MediaTrack.ROLE_SUBTITLE, _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final UItem of(PluginRepositoryEntity repository, CharSequence subtitle) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = Long.hashCode(repository.getRepositoryId());
                uItemOfFactory.object = repository;
                uItemOfFactory.subtext = subtitle;
                return uItemOfFactory;
            }
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }
    }
}
