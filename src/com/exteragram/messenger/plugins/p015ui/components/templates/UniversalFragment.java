package com.exteragram.messenger.plugins.p015ui.components.templates;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenu;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
public class UniversalFragment extends org.telegram.p029ui.Components.UniversalFragment {
    private UniversalFragmentDelegate delegate;

    public UniversalFragment(UniversalFragmentDelegate universalFragmentDelegate) {
        this.delegate = universalFragmentDelegate;
    }

    public UniversalFragmentDelegate getDelegate() {
        return this.delegate;
    }

    public void setDelegate(UniversalFragmentDelegate universalFragmentDelegate) {
        this.delegate = universalFragmentDelegate;
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewAfterCreateView;
        UniversalFragmentDelegate universalFragmentDelegate = this.delegate;
        View viewBeforeCreateView = universalFragmentDelegate != null ? universalFragmentDelegate.beforeCreateView() : null;
        if (viewBeforeCreateView != null) {
            return viewBeforeCreateView;
        }
        View viewCreateView = super.createView(context);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFragment.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (UniversalFragment.this.onBackPressed(true)) {
                        UniversalFragment.this.finishFragment();
                    }
                } else if (UniversalFragment.this.delegate != null) {
                    UniversalFragment.this.delegate.onMenuItemClick(i);
                }
            }
        });
        UniversalFragmentDelegate universalFragmentDelegate2 = this.delegate;
        return (universalFragmentDelegate2 == null || (viewAfterCreateView = universalFragmentDelegate2.afterCreateView(viewCreateView)) == null) ? viewCreateView : viewAfterCreateView;
    }

    public ActionBarMenu getActionBarMenu() {
        return this.actionBar.createMenu();
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected CharSequence getTitle() {
        UniversalFragmentDelegate universalFragmentDelegate = this.delegate;
        if (universalFragmentDelegate != null) {
            return universalFragmentDelegate.getTitle();
        }
        return null;
    }

    public void setTitle(CharSequence charSequence, boolean z, long j) {
        if (z) {
            ActionBar actionBar = this.actionBar;
            if (j <= 0) {
                j = 300;
            }
            actionBar.setTitleAnimated(charSequence, false, j);
            return;
        }
        this.actionBar.setTitle(charSequence);
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        UniversalFragmentDelegate universalFragmentDelegate = this.delegate;
        if (universalFragmentDelegate != null) {
            universalFragmentDelegate.fillItems(arrayList, universalAdapter);
        }
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        UniversalFragmentDelegate universalFragmentDelegate = this.delegate;
        if (universalFragmentDelegate != null) {
            universalFragmentDelegate.onClick(uItem, view, i, f, f2);
        }
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        UniversalFragmentDelegate universalFragmentDelegate = this.delegate;
        if (universalFragmentDelegate != null) {
            return universalFragmentDelegate.onLongClick(uItem, view, i, f, f2);
        }
        return false;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        UniversalFragmentDelegate universalFragmentDelegate = this.delegate;
        if (universalFragmentDelegate != null) {
            universalFragmentDelegate.onFragmentCreate();
        }
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        UniversalFragmentDelegate universalFragmentDelegate = this.delegate;
        if (universalFragmentDelegate != null) {
            universalFragmentDelegate.onFragmentDestroy();
        }
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        Boolean boolOnBackPressed;
        UniversalFragmentDelegate universalFragmentDelegate = this.delegate;
        if (universalFragmentDelegate != null && (boolOnBackPressed = universalFragmentDelegate.onBackPressed()) != null) {
            return !boolOnBackPressed.booleanValue();
        }
        return super.onBackPressed(z);
    }

    public interface UniversalFragmentDelegate {
        View afterCreateView(View view);

        View beforeCreateView();

        void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter);

        CharSequence getTitle();

        Boolean onBackPressed();

        void onClick(UItem uItem, View view, int i, float f, float f2);

        void onFragmentCreate();

        void onFragmentDestroy();

        boolean onLongClick(UItem uItem, View view, int i, float f, float f2);

        void onMenuItemClick(int i);

        /* JADX INFO: renamed from: com.exteragram.messenger.plugins.ui.components.templates.UniversalFragment$UniversalFragmentDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static View $default$beforeCreateView(UniversalFragmentDelegate universalFragmentDelegate) {
                return null;
            }

            public static View $default$afterCreateView(UniversalFragmentDelegate universalFragmentDelegate, View view) {
                return view;
            }

            public static void $default$onFragmentCreate(UniversalFragmentDelegate universalFragmentDelegate) {
            }

            public static void $default$onFragmentDestroy(UniversalFragmentDelegate universalFragmentDelegate) {
            }

            public static Boolean $default$onBackPressed(UniversalFragmentDelegate universalFragmentDelegate) {
                return null;
            }

            public static CharSequence $default$getTitle(UniversalFragmentDelegate universalFragmentDelegate) {
                return null;
            }

            public static void $default$fillItems(UniversalFragmentDelegate universalFragmentDelegate, ArrayList arrayList, UniversalAdapter universalAdapter) {
            }

            public static void $default$onClick(UniversalFragmentDelegate universalFragmentDelegate, UItem uItem, View view, int i, float f, float f2) {
            }

            public static boolean $default$onLongClick(UniversalFragmentDelegate universalFragmentDelegate, UItem uItem, View view, int i, float f, float f2) {
                return false;
            }

            public static void $default$onMenuItemClick(UniversalFragmentDelegate universalFragmentDelegate, int i) {
            }
        }
    }
}
