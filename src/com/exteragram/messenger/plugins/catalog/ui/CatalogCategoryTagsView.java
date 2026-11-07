package com.exteragram.messenger.plugins.catalog.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.plugins.catalog.PluginCategory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.Text;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0014\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u000bJ\b\u0010\u0011\u001a\u00020\u000eH\u0002J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0014J\b\u0010\u0016\u001a\u00020\u0014H\u0002J\u0010\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogCategoryTagsView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "<init>", "(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "paint", "Landroid/graphics/Paint;", "tags", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/catalog/ui/CatalogCategoryTagsView$Tag;", "setCategories", _UrlKt.FRAGMENT_ENCODE_SET, "categories", "Lcom/exteragram/messenger/plugins/catalog/PluginCategory;", "updateColors", "onMeasure", "widthMeasureSpec", _UrlKt.FRAGMENT_ENCODE_SET, "heightMeasureSpec", "totalWidth", "onDraw", "canvas", "Landroid/graphics/Canvas;", "Tag", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension({"SMAP\nCatalogCategoryTagsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogCategoryTagsView.kt\ncom/exteragram/messenger/plugins/catalog/ui/CatalogCategoryTagsView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1586#2:133\n1661#2,3:134\n1586#2:137\n1661#2,3:138\n1915#2,2:141\n1#3:143\n*S KotlinDebug\n*F\n+ 1 CatalogCategoryTagsView.kt\ncom/exteragram/messenger/plugins/catalog/ui/CatalogCategoryTagsView\n*L\n47#1:133\n47#1:134,3\n51#1:137\n51#1:138,3\n72#1:141,2\n*E\n"})
public final class CatalogCategoryTagsView extends View {
    private static final float GAP = 4.0f;
    public static final float HEIGHT = 18.0f;
    private static final float ICON_DRAW_SIZE = 16.0f;
    private static final float ICON_SIZE = 11.0f;
    private static final float PADDING_END = 6.0f;
    private static final float PADDING_START = 5.0f;
    private static final float RADIUS = 5.0f;
    private final Paint paint;
    private final Theme.ResourcesProvider resourcesProvider;
    private List<Tag> tags;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0013R\u0011\u0010\u001e\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0013¨\u0006 "}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/CatalogCategoryTagsView$Tag;", _UrlKt.FRAGMENT_ENCODE_SET, "category", "Lcom/exteragram/messenger/plugins/catalog/PluginCategory;", "text", "Lorg/telegram/ui/Components/Text;", "icon", "Landroid/graphics/drawable/Drawable;", "<init>", "(Lcom/exteragram/messenger/plugins/catalog/PluginCategory;Lorg/telegram/ui/Components/Text;Landroid/graphics/drawable/Drawable;)V", "getCategory", "()Lcom/exteragram/messenger/plugins/catalog/PluginCategory;", "getText", "()Lorg/telegram/ui/Components/Text;", "getIcon", "()Landroid/graphics/drawable/Drawable;", "color", _UrlKt.FRAGMENT_ENCODE_SET, "getColor", "()I", "setColor", "(I)V", "compact", _UrlKt.FRAGMENT_ENCODE_SET, "getCompact", "()Z", "setCompact", "(Z)V", "fullWidth", "getFullWidth", "width", "getWidth", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Tag {
        private final PluginCategory category;
        private int color;
        private boolean compact;
        private final int fullWidth;
        private final Drawable icon;
        private final Text text;

        public Tag(PluginCategory pluginCategory, Text text, Drawable drawable) {
            this.category = pluginCategory;
            this.text = text;
            this.icon = drawable;
            this.fullWidth = AndroidUtilities.dp(27.0f) + ((int) text.getCurrentWidth());
        }

        public final PluginCategory getCategory() {
            return this.category;
        }

        public final Drawable getIcon() {
            return this.icon;
        }

        public final Text getText() {
            return this.text;
        }

        public final int getColor() {
            return this.color;
        }

        public final void setColor(int i) {
            this.color = i;
        }

        public final boolean getCompact() {
            return this.compact;
        }

        public final void setCompact(boolean z) {
            this.compact = z;
        }

        public final int getFullWidth() {
            return this.fullWidth;
        }

        public final int getWidth() {
            return this.compact ? AndroidUtilities.dp(21.0f) : this.fullWidth;
        }
    }

    public CatalogCategoryTagsView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        this.paint = new Paint(1);
        this.tags = CollectionsKt.emptyList();
    }

    public final void setCategories(List<? extends PluginCategory> categories) {
        List<Tag> list = this.tags;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Tag) it.next()).getCategory());
        }
        if (Intrinsics.areEqual(arrayList, categories)) {
            updateColors();
            return;
        }
        List<? extends PluginCategory> list2 = categories;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (PluginCategory pluginCategory : list2) {
            Text text = new Text(LocaleController.getString(pluginCategory.getTitleRes()).toUpperCase(Locale.ROOT), 10.0f, AndroidUtilities.bold());
            Drawable drawable = ContextCompat.getDrawable(getContext(), pluginCategory.getIconRes());
            arrayList2.add(new Tag(pluginCategory, text, drawable != null ? drawable.mutate() : null));
        }
        this.tags = arrayList2;
        updateColors();
        requestLayout();
    }

    private final void updateColors() {
        for (Tag tag : this.tags) {
            tag.setColor(Theme.getColor(tag.getCategory().getColorKey(), this.resourcesProvider));
            Drawable icon = tag.getIcon();
            if (icon != null) {
                icon.setColorFilter(new PorterDuffColorFilter(tag.getColor(), PorterDuff.Mode.SRC_IN));
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        Iterator<T> it = this.tags.iterator();
        while (it.hasNext()) {
            ((Tag) it.next()).setCompact(false);
        }
        int size2 = this.tags.size() - 1;
        if (size2 >= 0) {
            while (true) {
                int i = size2 - 1;
                if (size2 == 0 || totalWidth() <= size) {
                    break;
                }
                this.tags.get(size2).setCompact(true);
                if (i < 0) {
                    break;
                } else {
                    size2 = i;
                }
            }
        }
        setMeasuredDimension(size, AndroidUtilities.dp(18.0f));
    }

    private final int totalWidth() {
        Iterator<T> it = this.tags.iterator();
        int width = 0;
        while (it.hasNext()) {
            width += ((Tag) it.next()).getWidth();
        }
        return width + (AndroidUtilities.dp(GAP) * RangesKt.coerceAtLeast(this.tags.size() - 1, 0));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float fDp;
        float f;
        int iDp;
        Canvas canvas2 = canvas;
        boolean z = LocaleController.isRTL;
        float fDp2 = AndroidUtilities.dp(18.0f);
        float f2 = 5.0f;
        float fDp3 = AndroidUtilities.dp(5.0f);
        boolean zIsCurrentThemeDark = Theme.isCurrentThemeDark();
        float measuredWidth = z ? getMeasuredWidth() : 0.0f;
        canvas2.save();
        canvas2.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight());
        for (Tag tag : this.tags) {
            int width = tag.getWidth();
            if (z) {
                measuredWidth -= width;
            }
            float f3 = measuredWidth;
            this.paint.setColor(Theme.multAlpha(tag.getColor(), zIsCurrentThemeDark ? 0.2f : 0.1f));
            RectF rectF = AndroidUtilities.rectTmp;
            float f4 = width;
            float f5 = f3 + f4;
            rectF.set(f3, 0.0f, f5, fDp2);
            canvas2.drawRoundRect(rectF, fDp3, fDp3, this.paint);
            if (tag.getCompact()) {
                fDp = (f4 / 2.0f) + f3;
            } else if (z) {
                fDp = (f5 - AndroidUtilities.dp(f2)) - (AndroidUtilities.dp(ICON_SIZE) / 2.0f);
            } else {
                fDp = AndroidUtilities.dp(f2) + f3 + (AndroidUtilities.dp(ICON_SIZE) / 2.0f);
            }
            Drawable icon = tag.getIcon();
            if (icon != null) {
                float fDp4 = AndroidUtilities.dp(ICON_DRAW_SIZE) / 2;
                f = 2.0f;
                float f6 = fDp2 / 2.0f;
                icon.setBounds((int) (fDp - fDp4), (int) (f6 - fDp4), (int) (fDp + fDp4), (int) (f6 + fDp4));
                icon.draw(canvas2);
            } else {
                f = 2.0f;
            }
            if (!tag.getCompact()) {
                if (z) {
                    iDp = AndroidUtilities.dp(PADDING_END);
                } else {
                    iDp = AndroidUtilities.dp(21.0f);
                }
                tag.getText().draw(canvas2, iDp + f3, fDp2 / f, tag.getColor(), 1.0f);
            }
            float fDp5 = AndroidUtilities.dp(GAP);
            measuredWidth = z ? f3 - fDp5 : f5 + fDp5;
            canvas2 = canvas;
            f2 = 5.0f;
        }
        canvas.restore();
    }
}
