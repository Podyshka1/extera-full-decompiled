package com.exteragram.messenger.p008ai;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.exteragram.messenger.p008ai.data.Role;
import com.exteragram.messenger.p008ai.data.Service;
import com.exteragram.messenger.p008ai.data.Suggestions;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BulletinFactory;
import p022j$.util.Collection;
import p022j$.util.Comparator;
import p022j$.util.DesugarArrays;
import p022j$.util.DesugarCollections;
import p022j$.util.List;
import p022j$.util.Optional;
import p022j$.util.function.Function$CC;
import p022j$.util.function.Predicate$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class AiController {
    private final List roles = new ArrayList();
    private final List services = new ArrayList();

    private static class SingletonHolder {
        private static final AiController INSTANCE = new AiController();
    }

    public AiController() {
        loadRoles();
        loadServices();
    }

    public static void clearHistory(final BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, boolean z) {
        if (baseFragment == null) {
            return;
        }
        if (z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider);
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ClearConversationHistoryInfo)));
            builder.setTitle(LocaleController.getString(C2888R.string.ClearHistory));
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString(C2888R.string.ClearButton), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.ai.AiController$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    AiController.$r8$lambda$GAN7DJfLzfiCWdHz0lxFmu6o9ow(baseFragment, alertDialog, i);
                }
            });
            AlertDialog alertDialogCreate = builder.create();
            baseFragment.showDialog(alertDialogCreate);
            TextView textView = (TextView) alertDialogCreate.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                return;
            }
            return;
        }
        AiConfig.clearConversationHistory();
        BulletinFactory.m1246of(baseFragment).createSimpleBulletin(C2888R.raw.ic_delete, LocaleController.getString(C2888R.string.HistoryCleared)).show();
    }

    public static /* synthetic */ void $r8$lambda$GAN7DJfLzfiCWdHz0lxFmu6o9ow(BaseFragment baseFragment, AlertDialog alertDialog, int i) {
        AiConfig.clearConversationHistory();
        BulletinFactory.m1246of(baseFragment).createSimpleBulletin(C2888R.raw.ic_delete, LocaleController.getString(C2888R.string.HistoryCleared)).show();
    }

    public static void showErrorBulletin(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, int i) {
        showErrorBulletin(null, viewGroup, resourcesProvider, i);
    }

    public static void showErrorBulletin(BaseFragment baseFragment, int i) {
        showErrorBulletin(baseFragment, null, null, i);
    }

    private static void showErrorBulletin(BaseFragment baseFragment, ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, int i) {
        final int i2;
        final int i3;
        final int i4;
        final BulletinFactory bulletinFactoryM1246of;
        if (i == 408) {
            i2 = C2888R.string.AIError408;
            i3 = C2888R.string.AIError408Info;
            i4 = 5;
        } else if (i != 429) {
            i4 = 3;
            if (i == 502) {
                i2 = C2888R.string.AIError502;
                i3 = C2888R.string.AIError502Info;
            } else if (i != 503) {
                switch (i) {
                    case 400:
                        i2 = C2888R.string.AIError400;
                        i3 = C2888R.string.AIError400Info;
                        i4 = 2;
                        break;
                    case 401:
                        i2 = C2888R.string.AIError401;
                        i3 = C2888R.string.AIError401Info;
                        break;
                    case 402:
                        i2 = C2888R.string.AIError402;
                        i3 = C2888R.string.AIError402Info;
                        i4 = 8;
                        break;
                    case 403:
                        i2 = C2888R.string.AIError403;
                        i3 = C2888R.string.AIError403Info;
                        i4 = 9;
                        break;
                    default:
                        i2 = C2888R.string.AIError;
                        i3 = C2888R.string.AIErrorInfo;
                        break;
                }
            } else {
                i2 = C2888R.string.AIError503;
                i3 = C2888R.string.AIError503Info;
            }
        } else {
            i2 = C2888R.string.AIError429;
            i3 = C2888R.string.AIError429Info;
            i4 = 6;
        }
        if (viewGroup != null) {
            bulletinFactoryM1246of = BulletinFactory.m1245of((FrameLayout) viewGroup, resourcesProvider);
        } else {
            bulletinFactoryM1246of = baseFragment != null ? BulletinFactory.m1246of(baseFragment) : BulletinFactory.global();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.AiController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                bulletinFactoryM1246of.createSimpleBulletin(LocaleController.getString(i2), LocaleController.getString(i3), i4).show();
            }
        });
    }

    public static AiController getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public static boolean canUseAI() {
        return !TextUtils.isEmpty(getInstance().getSelected().getKey());
    }

    public void loadRoles() {
        ArrayList roles = AiConfig.getRoles();
        this.roles.clear();
        this.roles.addAll(roles);
        Collection.EL.removeIf(this.roles, new Predicate() { // from class: com.exteragram.messenger.ai.AiController$$ExternalSyntheticLambda3
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m222or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AiController.$r8$lambda$ml9V0PZBMdpgTeM8PwcrlItS8AE((Role) obj);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$ml9V0PZBMdpgTeM8PwcrlItS8AE(Role role) {
        return role == null || role.getName() == null || role.getPrompt() == null;
    }

    public List getRoles() {
        return DesugarCollections.unmodifiableList(this.roles);
    }

    public List getSuggestedRoles() {
        return (List) DesugarArrays.stream(Suggestions.values()).map(new Function() { // from class: com.exteragram.messenger.ai.AiController$$ExternalSyntheticLambda4
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Suggestions) obj).getRole();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).collect(Collectors.toList());
    }

    public boolean isCustomRole(Role role) {
        if (role == null) {
            return false;
        }
        return this.roles.contains(role);
    }

    public boolean isSuggestedRole(Role role) {
        if (role == null) {
            return false;
        }
        return getSuggestedRoles().contains(role);
    }

    public Role getSelectedRole() {
        for (Role role : this.roles) {
            if (role.isSelected()) {
                return role;
            }
        }
        for (Role role2 : getSuggestedRoles()) {
            if (role2.isSelected()) {
                return role2;
            }
        }
        return Suggestions.ASSISTANT.getRole();
    }

    public boolean addRole(Role role) {
        if (isSuggestedRole(role) || isCustomRole(role)) {
            return false;
        }
        boolean zAdd = this.roles.add(role);
        if (zAdd) {
            saveRoles();
        }
        return zAdd;
    }

    public boolean removeRole(Role role) {
        if (role == null) {
            return false;
        }
        boolean zRemove = this.roles.remove(role);
        if (zRemove) {
            saveRoles();
        }
        return zRemove;
    }

    public boolean updateRole(Role role, Role role2) {
        int iIndexOf = this.roles.indexOf(role);
        if (iIndexOf == -1) {
            return false;
        }
        if (isSuggestedRole(role2) && !role.equals(role2)) {
            return false;
        }
        this.roles.set(iIndexOf, role2);
        saveRoles();
        return true;
    }

    public void saveRoles() {
        try {
            Collections.sort(this.roles);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        AiConfig.saveRoles(new ArrayList(this.roles));
    }

    public void loadServices() {
        ArrayList services = AiConfig.getServices();
        this.services.clear();
        this.services.addAll(services);
    }

    public List getAll() {
        return DesugarCollections.unmodifiableList(this.services);
    }

    public boolean isServicesEmpty() {
        return this.services.isEmpty();
    }

    public boolean contains(Service service) {
        return this.services.contains(service);
    }

    public void addService(Service service) {
        if (this.services.contains(service)) {
            return;
        }
        this.services.add(service);
        saveServices();
    }

    public void updateService(Service service, Service service2) {
        int iIndexOf = this.services.indexOf(service);
        if (iIndexOf != -1) {
            this.services.set(iIndexOf, service2);
            saveServices();
        }
    }

    public boolean removeService(Service service) {
        boolean zRemove = this.services.remove(service);
        if (zRemove) {
            saveServices();
        }
        return zRemove;
    }

    public Service getSelected() {
        Optional optionalFindFirst = Collection.EL.stream(this.services).filter(new Predicate() { // from class: com.exteragram.messenger.ai.AiController$$ExternalSyntheticLambda2
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m221or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((Service) obj).isSelected();
            }
        }).findFirst();
        if (optionalFindFirst.isPresent()) {
            return (Service) optionalFindFirst.get();
        }
        return this.services.isEmpty() ? AiConfig.DEFAULT_SERVICE : (Service) this.services.get(0);
    }

    public void saveServices() {
        List.EL.sort(this.services, Comparator.CC.comparing(new Function() { // from class: com.exteragram.messenger.ai.AiController$$ExternalSyntheticLambda1
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Service) obj).getModel();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, Comparator.CC.nullsLast(Comparator.CC.naturalOrder())));
        AiConfig.saveServices(new ArrayList(this.services));
    }

    public static boolean canSendImage(MessageObject messageObject) {
        return messageObject != null && canSendImage(ChatUtils.getInstance().getPathToMessage(messageObject));
    }

    public static boolean canSendImage(String str) {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.endsWith(".png") || lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg") || lowerCase.endsWith(".webp") || lowerCase.endsWith(".heic") || lowerCase.endsWith(".heif");
    }
}
