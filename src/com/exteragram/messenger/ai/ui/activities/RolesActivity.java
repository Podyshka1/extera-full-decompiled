package com.exteragram.messenger.ai.ui.activities;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.data.Role;
import com.exteragram.messenger.ai.ui.components.RoleCell;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AIEditorAlert;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 -2\u00020\u00012\u00020\u0002:\u0001-B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J5\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0016\u0010\r\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000f0\u000e\"\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0006H\u0014J\u001e\u0010\u0018\u001a\u00020\b2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J0\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0014J0\u0010%\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0014J\u0010\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020\b2\u0006\u0010'\u001a\u00020(H\u0002J\u0010\u0010*\u001a\u00020\b2\u0006\u0010'\u001a\u00020(H\u0002J\u0012\u0010+\u001a\u00020\b2\b\u0010'\u001a\u0004\u0018\u00010(H\u0002J\u0010\u0010,\u001a\u00020\b2\u0006\u0010'\u001a\u00020(H\u0002¨\u0006."}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", "onFragmentCreate", _UrlKt.FRAGMENT_ENCODE_SET, "onFragmentDestroy", _UrlKt.FRAGMENT_ENCODE_SET, "didReceivedNotification", "id", _UrlKt.FRAGMENT_ENCODE_SET, "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "needHideTitle", "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onLongClick", "confirmDeleteRole", "role", "Lcom/exteragram/messenger/ai/data/Role;", "deleteRole", "selectRole", "showRoleAlert", "showRolePreview", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRolesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RolesActivity.kt\ncom/exteragram/messenger/ai/ui/activities/RolesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1915#2,2:192\n1915#2,2:194\n*S KotlinDebug\n*F\n+ 1 RolesActivity.kt\ncom/exteragram/messenger/ai/ui/activities/RolesActivity\n*L\n84#1:192,2\n92#1:194,2\n*E\n"})
public final class RolesActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean needHideTitle() {
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.rolesUpdated);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.rolesUpdated);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        UniversalAdapter universalAdapter;
        if (id != NotificationCenter.rolesUpdated || (universalAdapter = getListView$TMessagesProj().adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        this.actionBar.createMenu().addItem(0, C2807R.drawable.msg_add);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity.createView.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int id) {
                if (id == -1) {
                    RolesActivity.this.finishFragment();
                } else {
                    if (id != 0) {
                        return;
                    }
                    RolesActivity.this.showRoleAlert(null);
                }
            }
        });
        return viewCreateView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.Roles);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        items.add(UItem.asTopView(getTitle(), LocaleController.getString(C2807R.string.RolesInfo), "exteraGramPlaceholders", "🎭"));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.Suggestions)));
        for (final Role role : AiController.getInstance().getSuggestedRoles()) {
            items.add(RoleCell.Factory.asRoleCell(role, new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.selectRole(role);
                }
            }));
        }
        items.add(UItem.asShadow(null));
        List<Role> roles = AiController.getInstance().getRoles();
        if (roles.isEmpty()) {
            return;
        }
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.Roles)));
        for (final Role role2 : roles) {
            items.add(RoleCell.Factory.asRoleCell(role2, new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.selectRole(role2);
                }
            }));
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        Role role = obj instanceof Role ? (Role) obj : null;
        if (role == null) {
            return;
        }
        if (role.isSuggestion()) {
            showRolePreview(role);
        } else {
            showRoleAlert(role);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        final Role role = obj instanceof Role ? (Role) obj : null;
        if (role == null || role.isSuggestion()) {
            return false;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.add(C2807R.drawable.msg_edit, LocaleController.getString(C2807R.string.Edit), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.showRoleAlert(role);
            }
        });
        itemOptionsMakeOptions.add(C2807R.drawable.msg_copy, LocaleController.getString(C2807R.string.Copy), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RolesActivity.$r8$lambda$y0aGRp8REUtt26t0n_9jHeDKEwQ(role, this);
            }
        });
        itemOptionsMakeOptions.add(C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.Delete), true, new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.confirmDeleteRole(role);
            }
        });
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.setGravity(LocaleController.isRTL ? 3 : 5);
        itemOptionsMakeOptions.setDismissOnMoveOutside(true);
        itemOptionsMakeOptions.show();
        return true;
    }

    public static void $r8$lambda$y0aGRp8REUtt26t0n_9jHeDKEwQ(Role role, RolesActivity rolesActivity) {
        if (AndroidUtilities.addToClipboard(role.getName() + "\n" + role.getPrompt())) {
            BulletinFactory.of(rolesActivity).createCopyBulletin(LocaleController.getString(C2807R.string.TextCopied)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void confirmDeleteRole(final Role role) {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(parentActivity).setTitle(LocaleController.getString(C2807R.string.Delete)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.DeleteRoleInfo, role.getName()))).setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.deleteRole(role);
            }
        }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).create();
        showDialog(alertDialogCreate);
        View button = alertDialogCreate.getButton(-1);
        TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteRole(Role role) {
        boolean zIsSelected = role.isSelected();
        if (AiController.getInstance().removeRole(role)) {
            if (zIsSelected) {
                AiConfig.setSelectedAiRole(AiController.getInstance().getSuggestedRoles().get(0));
            }
            UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
            if (universalAdapter != null) {
                universalAdapter.update(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectRole(Role role) {
        if (role.isSelected()) {
            return;
        }
        AiConfig.setSelectedAiRole(role);
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showRoleAlert(final Role role) {
        String name;
        String prompt;
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        AIEditorAlert.CreateAiStyleAlert createAiStyleAlert = new AIEditorAlert.CreateAiStyleAlert(parentActivity, this.resourceProvider);
        if (role == null || (name = role.getName()) == null) {
            name = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (role == null || (prompt = role.getPrompt()) == null) {
            prompt = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        createAiStyleAlert.setLocalStyle(name, prompt, role != null ? role.getEmojiId() : 0L, (role == null || role.isSuggestion()) ? false : true, 64, 1024, new Utilities.Callback3Return() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback3Return
            public final Object run(Object obj, Object obj2, Object obj3) {
                return RolesActivity.m2225$r8$lambda$srPp9OP6XUqRCfRYkVYSV_y27Y(role, this, (String) obj, (String) obj2, (Long) obj3);
            }
        }).show();
    }

    /* JADX INFO: renamed from: $r8$lambda$srPp-9OP6XUqRCfRYkVYSV_y27Y, reason: not valid java name */
    public static Boolean m2225$r8$lambda$srPp9OP6XUqRCfRYkVYSV_y27Y(Role role, RolesActivity rolesActivity, String str, String str2, Long l) {
        boolean zAddRole;
        Role emojiId = new Role(str, str2).setEmojiId(l != null ? l.longValue() : 0L);
        boolean z = role != null && role.isSelected();
        if (role != null && !role.isSuggestion()) {
            zAddRole = AiController.getInstance().updateRole(role, emojiId);
        } else {
            zAddRole = AiController.getInstance().addRole(emojiId);
        }
        if (zAddRole) {
            if (z) {
                AiConfig.setSelectedAiRole(emojiId);
            }
            rolesActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.rolesUpdated, new Object[0]);
        }
        return Boolean.valueOf(zAddRole);
    }

    private final void showRolePreview(Role role) {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        new AIEditorAlert.CreateAiStyleAlert(parentActivity, this.resourceProvider).setLocalStylePreview(role.getName(), role.getPrompt(), role.getEmojiId(), 64, 1024).show();
    }
}
