package com.exteragram.messenger.plugins.catalog;

import android.app.Activity;
import android.net.Uri;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.catalog.db.PluginRepositoryEntity;
import com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.BulletinFactory;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\n2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J*\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u00052\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u0012J\u0016\u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0005J \u0010\u0014\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002¨\u0006\u0019"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/PluginRepositoryLinks;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "build", _UrlKt.FRAGMENT_ENCODE_SET, "username", "buildGit", "url", "repository", "Lcom/exteragram/messenger/plugins/catalog/db/PluginRepositoryEntity;", "openGit", _UrlKt.FRAGMENT_ENCODE_SET, "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", PluginsConstants.Settings.TYPE_INPUT, "addGit", "onAdded", "Lkotlin/Function1;", "open", "showAddAlert", "controller", "Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController;", "chat", "Lorg/telegram/tgnet/TLRPC$Chat;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginRepositoryLinks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginRepositoryLinks.kt\ncom/exteragram/messenger/plugins/catalog/PluginRepositoryLinks\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1#2:131\n296#3,2:132\n1807#3,3:134\n*S KotlinDebug\n*F\n+ 1 PluginRepositoryLinks.kt\ncom/exteragram/messenger/plugins/catalog/PluginRepositoryLinks\n*L\n48#1:132,2\n103#1:134,3\n*E\n"})
public final class PluginRepositoryLinks {
    public static final PluginRepositoryLinks INSTANCE = new PluginRepositoryLinks();

    private PluginRepositoryLinks() {
    }

    public final String build(String username) {
        return "https://t.me/exteraPluginRepo?c=" + username;
    }

    public final String buildGit(String url) {
        return "https://t.me/exteraPluginRepo?git=" + Uri.encode(url);
    }

    public final String build(PluginRepositoryEntity repository, String username) {
        String strBuildGit;
        String url = repository.getUrl();
        if (url != null && (strBuildGit = buildGit(url)) != null) {
            return strBuildGit;
        }
        if (username != null) {
            if (username.length() <= 0) {
                username = null;
            }
            if (username != null) {
                return build(username);
            }
        }
        return null;
    }

    public final void openGit(final BaseFragment fragment, String input) {
        final Activity parentActivity = fragment.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        final String strNormalizeUrl = GitPluginRepository.INSTANCE.normalizeUrl(input);
        if (strNormalizeUrl == null) {
            BulletinFactory.of(fragment).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.PluginCatalogGitLoadFailed)).show();
        } else {
            PluginCatalogController.INSTANCE.getInstance(fragment.getCurrentAccount()).loadRepositories(new Function1() { // from class: com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PluginRepositoryLinks.$r8$lambda$K0ljx39BTc0BpJyCWpmh7JOU99M(fragment, parentActivity, strNormalizeUrl, (List) obj);
                }
            });
        }
    }

    public static Unit $r8$lambda$K0ljx39BTc0BpJyCWpmh7JOU99M(final BaseFragment baseFragment, Activity activity, final String str, List list) {
        Object next;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((PluginRepositoryEntity) next).getUrl(), str)) {
                break;
            }
        }
        PluginRepositoryEntity pluginRepositoryEntity = (PluginRepositoryEntity) next;
        if (pluginRepositoryEntity != null) {
            baseFragment.presentFragment(new PluginCatalogActivity(pluginRepositoryEntity.getRepositoryId()));
            return Unit.INSTANCE;
        }
        baseFragment.showDialog(new AlertDialog.Builder(activity, baseFragment.getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.PluginCatalogAddRepository)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.PluginCatalogAddRepositoryConfirm, StringsKt.removePrefix(str, (CharSequence) "https://")))).setPositiveButton(LocaleController.getString(C2807R.string.Add), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                BaseFragment baseFragment2 = baseFragment;
                PluginRepositoryLinks.INSTANCE.addGit(baseFragment2, str, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PluginRepositoryLinks.$r8$lambda$WXREOfSWwwPRanEKdrQCv4f5JQY(baseFragment2, (PluginRepositoryEntity) obj);
                    }
                });
            }
        }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).create());
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$WXREOfSWwwPRanEKdrQCv4f5JQY(BaseFragment baseFragment, PluginRepositoryEntity pluginRepositoryEntity) {
        baseFragment.presentFragment(new PluginCatalogActivity(pluginRepositoryEntity.getRepositoryId()));
        return Unit.INSTANCE;
    }

    public final void addGit(final BaseFragment fragment, String url, final Function1<? super PluginRepositoryEntity, Unit> onAdded) {
        Activity parentActivity = fragment.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(parentActivity, 3);
        alertDialog.showDelayed(300L);
        PluginCatalogController.INSTANCE.getInstance(fragment.getCurrentAccount()).addGitRepository(url, new Function2() { // from class: com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return PluginRepositoryLinks.m3080$r8$lambda$73P8hDzsZ5IbXQoxYO5qXMg1w(alertDialog, fragment, onAdded, ((Integer) obj).intValue(), (PluginRepositoryEntity) obj2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$73-P8hDzsZ5IbXQoxYO5-qXMg1w, reason: not valid java name */
    public static Unit m3080$r8$lambda$73P8hDzsZ5IbXQoxYO5qXMg1w(AlertDialog alertDialog, BaseFragment baseFragment, Function1 function1, int i, PluginRepositoryEntity pluginRepositoryEntity) {
        int i2;
        alertDialog.dismiss();
        if (baseFragment.fragmentView == null) {
            return Unit.INSTANCE;
        }
        if (pluginRepositoryEntity != null) {
            function1.invoke(pluginRepositoryEntity);
            return Unit.INSTANCE;
        }
        if (i == 1) {
            i2 = C2807R.string.PluginCatalogRepositoryExists;
        } else if (i == 3) {
            i2 = C2807R.string.PluginCatalogGitUnsupported;
        } else {
            i2 = C2807R.string.PluginCatalogGitLoadFailed;
        }
        BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(i2)).show();
        return Unit.INSTANCE;
    }

    public final void open(final BaseFragment fragment, String username) {
        Activity parentActivity = fragment.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(parentActivity, 3);
        alertDialog.showDelayed(300L);
        final MessagesController messagesController = fragment.getMessagesController();
        messagesController.getUserNameResolver().resolve(username, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PluginRepositoryLinks.$r8$lambda$F3A2GMfw7M7x826Ue___JD2qaOU(alertDialog, messagesController, fragment, (Long) obj);
            }
        });
    }

    public static void $r8$lambda$F3A2GMfw7M7x826Ue___JD2qaOU(AlertDialog alertDialog, MessagesController messagesController, final BaseFragment baseFragment, Long l) {
        alertDialog.dismiss();
        final TLRPC.Chat chat = (l == null || l.longValue() >= 0) ? null : messagesController.getChat(Long.valueOf(-l.longValue()));
        if (chat == null || !ChatObject.isChannel(chat)) {
            BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.PluginCatalogChannelNotFound)).show();
        } else {
            final PluginCatalogController companion = PluginCatalogController.INSTANCE.getInstance(baseFragment.getCurrentAccount());
            companion.loadRepositories(new Function1() { // from class: com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PluginRepositoryLinks.m3084$r8$lambda$zX2fX8wZrmP7xWRife8W2YpoS4(baseFragment, chat, companion, (List) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$zX2fX8wZrmP7xWRi-fe8W2YpoS4, reason: not valid java name */
    public static Unit m3084$r8$lambda$zX2fX8wZrmP7xWRife8W2YpoS4(BaseFragment baseFragment, TLRPC.Chat chat, PluginCatalogController pluginCatalogController, List list) {
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            INSTANCE.showAddAlert(baseFragment, pluginCatalogController, chat);
        } else {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (((PluginRepositoryEntity) it.next()).getRepositoryId() == chat.id) {
                    baseFragment.presentFragment(new PluginCatalogActivity(chat.id));
                    break;
                }
            }
            INSTANCE.showAddAlert(baseFragment, pluginCatalogController, chat);
        }
        return Unit.INSTANCE;
    }

    private final void showAddAlert(final BaseFragment fragment, final PluginCatalogController controller, final TLRPC.Chat chat) {
        Activity parentActivity = fragment.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        fragment.showDialog(new AlertDialog.Builder(parentActivity, fragment.getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.PluginCatalogAddRepository)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.PluginCatalogAddRepositoryConfirm, chat.title))).setPositiveButton(LocaleController.getString(C2807R.string.Add), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                PluginCatalogController pluginCatalogController = controller;
                TLRPC.Chat chat2 = chat;
                pluginCatalogController.addRepository(chat2, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PluginRepositoryLinks.m3081$r8$lambda$AoUJ2L3bZeLfCxACeEIP13HTfU(pluginCatalogController, chat2, baseFragment, ((Boolean) obj).booleanValue());
                    }
                });
            }
        }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).create());
    }

    /* JADX INFO: renamed from: $r8$lambda$AoUJ2L3bZeLfCxACeEI-P13HTfU, reason: not valid java name */
    public static Unit m3081$r8$lambda$AoUJ2L3bZeLfCxACeEIP13HTfU(PluginCatalogController pluginCatalogController, TLRPC.Chat chat, BaseFragment baseFragment, boolean z) {
        if (z) {
            PluginCatalogController.syncRepository$default(pluginCatalogController, chat.id, true, false, null, 8, null);
        }
        baseFragment.presentFragment(new PluginCatalogActivity(chat.id));
        return Unit.INSTANCE;
    }
}
