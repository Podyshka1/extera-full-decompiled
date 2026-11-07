package com.exteragram.messenger.utils.ui;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.CombinedDrawable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\u0005\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0012\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/exteragram/messenger/utils/ui/AddButtonDrawable;", "Lorg/telegram/ui/Components/CombinedDrawable;", "circle", "Landroid/graphics/drawable/Drawable;", "plus", "<init>", "(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "updateColors", _UrlKt.FRAGMENT_ENCODE_SET, "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "setColorFilter", "colorFilter", "Landroid/graphics/ColorFilter;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class AddButtonDrawable extends CombinedDrawable {
    private final Drawable circle;
    private final Drawable plus;

    @Override // org.telegram.ui.Components.CombinedDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    private AddButtonDrawable(Drawable drawable, Drawable drawable2) {
        super(drawable, drawable2);
        this.circle = drawable;
        this.plus = drawable2;
        this.translateX = AndroidUtilities.dp(2.0f);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AddButtonDrawable(Context context) {
        Drawable drawable = ContextCompat.getDrawable(context, C2807R.drawable.poll_add_circle);
        if (drawable == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Required value was null.");
            throw null;
        }
        Drawable drawableMutate = drawable.mutate();
        Drawable drawable2 = ContextCompat.getDrawable(context, C2807R.drawable.poll_add_plus);
        if (drawable2 != null) {
            this(drawableMutate, drawable2.mutate());
        } else {
            f$$ExternalSyntheticBUOutline1.m215m("Required value was null.");
            throw null;
        }
    }

    public final void updateColors(Theme.ResourcesProvider resourcesProvider) {
        Drawable drawable = this.circle;
        int color = Theme.getColor(Theme.key_switchTrackChecked, resourcesProvider);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawable.setColorFilter(new PorterDuffColorFilter(color, mode));
        this.plus.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck, resourcesProvider), mode));
    }
}
