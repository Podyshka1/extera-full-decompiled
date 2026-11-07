package com.exteragram.messenger.utils.ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.utils.chats.FolderRoles;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.GroupCreateUserCell;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/exteragram/messenger/utils/ui/FolderRolesUiHelper;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "owner", "Landroid/graphics/drawable/Drawable;", "getAvatarIcon", "(Z)Landroid/graphics/drawable/Drawable;", _UrlKt.FRAGMENT_ENCODE_SET, "chatType", "getName", "(Ljava/lang/String;)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "mode", "getChipText", "(I)Ljava/lang/String;", "getPickerHeader", "()Ljava/lang/String;", "Lorg/telegram/ui/Cells/GroupCreateUserCell;", "cell", "row", "pickerFlags", _UrlKt.FRAGMENT_ENCODE_SET, "bindPickerRow", "(Lorg/telegram/ui/Cells/GroupCreateUserCell;II)V", "ownerIcon", "Landroid/graphics/drawable/Drawable;", "adminIcon", "iconKey", "I", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class FolderRolesUiHelper {
    public static final FolderRolesUiHelper INSTANCE = new FolderRolesUiHelper();
    private static Drawable adminIcon;
    private static int iconKey;
    private static Drawable ownerIcon;

    private FolderRolesUiHelper() {
    }

    @JvmStatic
    public static final Drawable getAvatarIcon(boolean owner) {
        Context context = LaunchActivity.instance;
        if (context == null) {
            context = ApplicationLoader.applicationContext;
        }
        int color = Theme.getColor(Theme.key_avatar_text);
        Integer numValueOf = Integer.valueOf(color);
        Integer numValueOf2 = Integer.valueOf(System.identityHashCode(context.getResources()));
        IconManager iconManager = IconManager.INSTANCE;
        int iHash = Objects.hash(numValueOf, numValueOf2, Integer.valueOf(iconManager.getIcon(C2807R.drawable.filled_owner)), Integer.valueOf(iconManager.getIcon(C2807R.drawable.filled_admins)));
        if (ownerIcon == null || adminIcon == null || iconKey != iHash) {
            Drawable drawable = ContextCompat.getDrawable(context, C2807R.drawable.filled_owner);
            ownerIcon = drawable != null ? drawable.mutate() : null;
            Drawable drawable2 = ContextCompat.getDrawable(context, C2807R.drawable.filled_admins);
            adminIcon = drawable2 != null ? drawable2.mutate() : null;
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN);
            Drawable drawable3 = ownerIcon;
            if (drawable3 != null) {
                drawable3.setColorFilter(porterDuffColorFilter);
            }
            Drawable drawable4 = adminIcon;
            if (drawable4 != null) {
                drawable4.setColorFilter(porterDuffColorFilter);
            }
            iconKey = iHash;
        }
        return owner ? ownerIcon : adminIcon;
    }

    @JvmStatic
    public static final String getName(String chatType) {
        return LocaleController.getString(FolderRoles.INSTANCE.modeOf(chatType) == 1 ? C2807R.string.ChannelCreator : C2807R.string.FolderRolesAdmin);
    }

    @JvmStatic
    public static final String getChipText(int mode) {
        return LocaleController.getString(mode == 1 ? C2807R.string.FolderRolesOwnerOnly : C2807R.string.FolderRolesAdminOnly);
    }

    @JvmStatic
    public static final String getPickerHeader() {
        return LocaleController.getString(C2807R.string.FolderRolesHeader);
    }

    @JvmStatic
    public static final void bindPickerRow(GroupCreateUserCell cell, int row, int pickerFlags) {
        int i = row == 0 ? 1 : 2;
        FolderRoles.Companion companion = FolderRoles.INSTANCE;
        String strChatTypeOf = companion.chatTypeOf(i);
        cell.setAlpha(companion.supportsFlags(pickerFlags) ? 1.0f : 0.5f);
        cell.setObject(strChatTypeOf, getName(strChatTypeOf), null);
        cell.setChecked(companion.fromPickerFlags(pickerFlags) == i, false);
        cell.setCheckBoxEnabled(true);
    }
}
