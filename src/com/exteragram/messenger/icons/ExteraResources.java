package com.exteragram.messenger.icons;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.exteragram.messenger.icons.ui.picker.IconObserver;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J(\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\f\u0010\u000e\u001a\b\u0018\u00010\u000fR\u00020\u0001H\u0016J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\n2\b\b\u0001\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/exteragram/messenger/icons/ExteraResources;", "Landroid/content/res/Resources;", "mResources", "<init>", "(Landroid/content/res/Resources;)V", "sourceAssets", "Landroid/content/res/AssetManager;", "getSourceAssets", "()Landroid/content/res/AssetManager;", "getDrawableForDensity", "Landroid/graphics/drawable/Drawable;", "id", _UrlKt.FRAGMENT_ENCODE_SET, "density", "theme", "Landroid/content/res/Resources$Theme;", "getOriginalDrawable", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class ExteraResources extends Resources {
    private final Resources mResources;
    private final AssetManager sourceAssets;

    public ExteraResources(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.mResources = resources;
        this.sourceAssets = resources.getAssets();
        IconManager.initialize$default(IconManager.INSTANCE, false, 1, null);
    }

    public final AssetManager getSourceAssets() {
        return this.sourceAssets;
    }

    @Override // android.content.res.Resources
    public Drawable getDrawableForDensity(int id, int density, Resources.Theme theme) {
        IconObserver.INSTANCE.log(id);
        IconManager iconManager = IconManager.INSTANCE;
        Drawable drawable = iconManager.getDrawable(id, density, theme, this);
        if (drawable != null) {
            return drawable;
        }
        try {
            id = iconManager.getIcon(id);
        } catch (Throwable th) {
            FileLog.m1040e(th);
        }
        return this.mResources.getDrawableForDensity(id, density, theme);
    }

    public final Drawable getOriginalDrawable(int id) {
        try {
            return this.mResources.getDrawable(id, null);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }
}
