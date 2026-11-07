package com.google.android.gms.cast.framework;

import android.content.Context;
import android.view.Menu;
import android.view.MenuItem;
import androidx.core.view.MenuItemCompat;
import androidx.mediarouter.app.MediaRouteActionProvider;
import androidx.mediarouter.app.MediaRouteButton;
import androidx.mediarouter.app.MediaRouteDialogFactory;
import androidx.mediarouter.media.MediaRouteSelector;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzpm;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class CastButtonFactory {
    public static final /* synthetic */ int zza = 0;
    private static final Logger zzb = new Logger("CastButtonFactory");
    private static final List zzc = new ArrayList();
    private static final Object zzd = new Object();
    private static final List zze = new ArrayList();
    private static final Object zzf = new Object();

    private CastButtonFactory() {
    }

    public static MenuItem setUpMediaRouteButton(Context context, Menu menu, int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(menu);
        MenuItem menuItemFindItem = menu.findItem(i);
        if (menuItemFindItem == null) {
            f$$ExternalSyntheticBUOutline1.m212m(String.format(Locale.ROOT, "menu doesn't contain a menu item whose ID is %d.", Integer.valueOf(i)));
            return null;
        }
        try {
            zzf(context, menuItemFindItem, null);
            synchronized (zzd) {
                zzc.add(new WeakReference(menuItemFindItem));
            }
            com.google.android.gms.internal.cast.zzr.zzb(zzpm.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
            return menuItemFindItem;
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "menu item with ID %d doesn't have a MediaRouteActionProvider.", Integer.valueOf(i)), e);
        }
    }

    public static void zza(Context context) {
        synchronized (zzd) {
            Iterator it = zzc.iterator();
            while (it.hasNext()) {
                MenuItem menuItem = (MenuItem) ((WeakReference) it.next()).get();
                if (menuItem != null) {
                    try {
                        zzf(context, menuItem, null);
                    } catch (IllegalArgumentException e) {
                        zzb.m294w("Unexpected exception when refreshing MediaRouteSelectors for Cast buttons", e);
                    }
                }
            }
        }
        synchronized (zzf) {
            try {
                Iterator it2 = zze.iterator();
                while (it2.hasNext()) {
                    MediaRouteButton mediaRouteButton = (MediaRouteButton) ((WeakReference) it2.next()).get();
                    if (mediaRouteButton != null) {
                        zzg(context, mediaRouteButton, null);
                    }
                }
            } finally {
            }
        }
    }

    public static /* synthetic */ void zzb(MediaRouteDialogFactory mediaRouteDialogFactory, MenuItem menuItem) {
        synchronized (zzd) {
            zzc.add(new WeakReference(menuItem));
        }
        com.google.android.gms.internal.cast.zzr.zzb(zzpm.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
    }

    public static /* synthetic */ void zzc(MediaRouteButton mediaRouteButton, MediaRouteDialogFactory mediaRouteDialogFactory, Void r3) {
        synchronized (zzf) {
            zze.add(new WeakReference(mediaRouteButton));
        }
        com.google.android.gms.internal.cast.zzr.zzb(zzpm.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
    }

    public static /* synthetic */ void zzd(MediaRouteActionProvider mediaRouteActionProvider, MediaRouteDialogFactory mediaRouteDialogFactory, TaskCompletionSource taskCompletionSource, MenuItem menuItem, CastContext castContext) {
        zzh(castContext, mediaRouteActionProvider, null);
        taskCompletionSource.setResult(menuItem);
    }

    public static /* synthetic */ void zze(MediaRouteButton mediaRouteButton, MediaRouteDialogFactory mediaRouteDialogFactory, TaskCompletionSource taskCompletionSource, CastContext castContext) {
        zzi(castContext, mediaRouteButton, null);
        taskCompletionSource.setResult(null);
    }

    private static void zzf(Context context, MenuItem menuItem, MediaRouteDialogFactory mediaRouteDialogFactory) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaRouteActionProvider mediaRouteActionProviderZzj = zzj(menuItem);
        if (mediaRouteActionProviderZzj != null) {
            zzh(CastContext.zza(context), mediaRouteActionProviderZzj, null);
        } else {
            f$$ExternalSyntheticBUOutline1.m212m("cannot refreshButtonSelector with null mediaRouteActionProvider");
        }
    }

    private static void zzg(Context context, MediaRouteButton mediaRouteButton, MediaRouteDialogFactory mediaRouteDialogFactory) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzi(CastContext.zza(context), mediaRouteButton, null);
    }

    private static void zzh(CastContext castContext, MediaRouteActionProvider mediaRouteActionProvider, MediaRouteDialogFactory mediaRouteDialogFactory) {
        MediaRouteSelector mergedSelector;
        if (castContext == null || (mergedSelector = castContext.getMergedSelector()) == null) {
            return;
        }
        mediaRouteActionProvider.setRouteSelector(mergedSelector);
    }

    private static void zzi(CastContext castContext, MediaRouteButton mediaRouteButton, MediaRouteDialogFactory mediaRouteDialogFactory) {
        MediaRouteSelector mergedSelector;
        if (castContext == null || (mergedSelector = castContext.getMergedSelector()) == null) {
            return;
        }
        mediaRouteButton.setRouteSelector(mergedSelector);
    }

    private static MediaRouteActionProvider zzj(MenuItem menuItem) {
        MediaRouteActionProvider mediaRouteActionProvider = (MediaRouteActionProvider) MenuItemCompat.getActionProvider(menuItem);
        if (mediaRouteActionProvider == null) {
            return null;
        }
        return mediaRouteActionProvider;
    }

    public static void setUpMediaRouteButton(Context context, MediaRouteButton mediaRouteButton) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (mediaRouteButton != null) {
            zzg(context, mediaRouteButton, null);
            synchronized (zzf) {
                zze.add(new WeakReference(mediaRouteButton));
            }
        }
        com.google.android.gms.internal.cast.zzr.zzb(zzpm.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
    }

    public static Task<MenuItem> setUpMediaRouteButton(Context context, Executor executor, Menu menu, int i) {
        Task task;
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(menu);
        final MenuItem menuItemFindItem = menu.findItem(i);
        if (menuItemFindItem != null) {
            try {
                Preconditions.checkMainThread("Must be called from the main thread.");
                final MediaRouteActionProvider mediaRouteActionProviderZzj = zzj(menuItemFindItem);
                final MediaRouteDialogFactory mediaRouteDialogFactory = null;
                if (mediaRouteActionProviderZzj == null) {
                    task = Tasks.forException(new IllegalArgumentException("cannot refreshButtonSelector with null mediaRouteActionProvider"));
                } else {
                    final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                    CastContext.getSharedInstance(context, executor).addOnSuccessListener(new OnSuccessListener(mediaRouteDialogFactory, taskCompletionSource, menuItemFindItem) { // from class: com.google.android.gms.cast.framework.zzb
                        private final /* synthetic */ TaskCompletionSource zzb;
                        private final /* synthetic */ MenuItem zzc;

                        {
                            this.zzb = taskCompletionSource;
                            this.zzc = menuItemFindItem;
                        }

                        @Override // com.google.android.gms.tasks.OnSuccessListener
                        public final /* synthetic */ void onSuccess(Object obj) {
                            CastButtonFactory.zzd(this.zza, null, this.zzb, this.zzc, (CastContext) obj);
                        }
                    }).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.cast.framework.zzc
                        @Override // com.google.android.gms.tasks.OnFailureListener
                        public final /* synthetic */ void onFailure(Exception exc) {
                            int i2 = CastButtonFactory.zza;
                            taskCompletionSource.setException(exc);
                        }
                    });
                    task = taskCompletionSource.getTask();
                }
                return task.addOnSuccessListener(new OnSuccessListener(mediaRouteDialogFactory) { // from class: com.google.android.gms.cast.framework.zze
                    @Override // com.google.android.gms.tasks.OnSuccessListener
                    public final /* synthetic */ void onSuccess(Object obj) {
                        CastButtonFactory.zzb(null, (MenuItem) obj);
                    }
                });
            } catch (IllegalArgumentException e) {
                return Tasks.forException(new IllegalArgumentException(String.format(Locale.ROOT, "menu item with ID %d doesn't have a MediaRouteActionProvider.", Integer.valueOf(i)), e));
            }
        }
        return Tasks.forException(new IllegalArgumentException(String.format(Locale.ROOT, "menu doesn't contain a menu item whose ID is %d.", Integer.valueOf(i))));
    }

    public static Task<Void> setUpMediaRouteButton(Context context, Executor executor, final MediaRouteButton mediaRouteButton) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        final MediaRouteDialogFactory mediaRouteDialogFactory = null;
        if (mediaRouteButton == null) {
            com.google.android.gms.internal.cast.zzr.zzb(zzpm.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
            return Tasks.forResult(null);
        }
        Preconditions.checkMainThread("Must be called from the main thread.");
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        CastContext.getSharedInstance(context, executor).addOnSuccessListener(new OnSuccessListener(mediaRouteDialogFactory, taskCompletionSource) { // from class: com.google.android.gms.cast.framework.zzd
            private final /* synthetic */ TaskCompletionSource zzb;

            {
                this.zzb = taskCompletionSource;
            }

            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final /* synthetic */ void onSuccess(Object obj) {
                CastButtonFactory.zze(this.zza, null, this.zzb, (CastContext) obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.cast.framework.zzf
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final /* synthetic */ void onFailure(Exception exc) {
                taskCompletionSource.setException(exc);
            }
        });
        return taskCompletionSource.getTask().addOnSuccessListener(new OnSuccessListener(mediaRouteDialogFactory) { // from class: com.google.android.gms.cast.framework.zza
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final /* synthetic */ void onSuccess(Object obj) {
                CastButtonFactory.zzc(this.zza, null, (Void) obj);
            }
        });
    }
}
