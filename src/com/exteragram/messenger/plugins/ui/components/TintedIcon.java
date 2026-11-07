package com.exteragram.messenger.plugins.ui.components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/TintedIcon;", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "container", "Landroid/widget/FrameLayout;", "getContainer", "()Landroid/widget/FrameLayout;", "icon", "Landroid/widget/ImageView;", "getIcon", "()Landroid/widget/ImageView;", "value", _UrlKt.FRAGMENT_ENCODE_SET, "backgroundColor", "getBackgroundColor", "()I", "setBackgroundColor", "(I)V", "bind", _UrlKt.FRAGMENT_ENCODE_SET, "iconRes", "color", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginAnalysisCells.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginAnalysisCells.kt\ncom/exteragram/messenger/plugins/ui/components/TintedIcon\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,768:1\n1#2:769\n*E\n"})
final class TintedIcon {
    private int backgroundColor;
    private final FrameLayout container;
    private final ImageView icon;

    public TintedIcon(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.container = frameLayout;
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.icon = imageView;
        frameLayout.addView(imageView, LayoutHelper.createFrame(20, 20, 17));
    }

    public final FrameLayout getContainer() {
        return this.container;
    }

    public final ImageView getIcon() {
        return this.icon;
    }

    public final int getBackgroundColor() {
        return this.backgroundColor;
    }

    public final void setBackgroundColor(int i) {
        this.backgroundColor = i;
        this.container.setBackground(Theme.createRoundRectDrawable(PluginAnalysisCellsKt.analysisInnerRadius(), i));
    }

    public final void bind(int iconRes, int color) {
        setBackgroundColor(Theme.multAlpha(color, 0.15f));
        ImageView imageView = this.icon;
        if (iconRes == 0) {
            imageView.setImageDrawable(null);
        } else {
            imageView.setImageResource(iconRes);
            this.icon.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
    }
}
