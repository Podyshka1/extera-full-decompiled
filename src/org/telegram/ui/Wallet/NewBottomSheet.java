package org.telegram.ui.Wallet;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.ViewGroup;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes8.dex */
public class NewBottomSheet extends BottomSheetWithRecyclerListView implements Theme.Colorable {
    private UniversalAdapter adapter;
    private ViewGroup container;
    private final Paint navigationBarPaint;
    private float sheetTop;
    private CharSequence title;

    public NewBottomSheet(Context context, ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider) {
        super(context, null, true, false, false, resourcesProvider);
        this.navigationBarPaint = new Paint();
        this.topPadding = 0.1f;
        this.container = viewGroup;
        RecyclerListView recyclerListView = this.recyclerListView;
        int i = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i, 0, i, 0);
        updateColors();
        this.adapter.update(false);
    }

    public int getSheetBackgroundColor() {
        return getThemedColor(Theme.key_windowBackgroundGray);
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        int sheetBackgroundColor = getSheetBackgroundColor();
        this.navigationBarPaint.setColor(sheetBackgroundColor);
        setBackgroundColor(sheetBackgroundColor);
        fixNavigationBar(sheetBackgroundColor);
        ViewGroup viewGroup = this.container;
        if (viewGroup != null) {
            viewGroup.invalidate();
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public void onSheetTop(float f) {
        super.onSheetTop(f);
        this.sheetTop = f;
        if (this.topBulletinContainer != null) {
            this.topBulletinContainer.setTranslationY(Math.max((this.containerView.getY() + f) + this.backgroundPaddingTop, (AndroidUtilities.statusBarHeight + AndroidUtilities.dp(56.0f)) + this.topBulletinContainer.getHeight()) - this.topBulletinContainer.getBottom());
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void mainContainerDispatchDraw(Canvas canvas) {
        float height = getContainer().getHeight();
        float fMax = Math.max(height - AndroidUtilities.navigationBarHeight, this.containerView.getY() + this.sheetTop + this.backgroundPaddingTop);
        if (fMax >= height) {
            return;
        }
        boolean z = this.containerView.getWidth() < getContainer().getWidth();
        canvas.drawRect(z ? this.containerView.getX() + this.backgroundPaddingLeft : 0.0f, fMax, z ? (this.containerView.getX() + this.containerView.getWidth()) - this.backgroundPaddingLeft : getContainer().getWidth(), height, this.navigationBarPaint);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void setOverlayNavBarColor(int i) {
        super.setOverlayNavBarColor(i);
        AndroidUtilities.setNavigationBarColor((Dialog) this, 0, false);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        if (getWindow() != null) {
            AndroidUtilities.enableEdgeToEdge(getWindow());
        }
        super.show();
        int sheetBackgroundColor = getSheetBackgroundColor();
        setOverlayNavBarColor(sheetBackgroundColor);
        AndroidUtilities.setLightNavigationBar(this, AndroidUtilities.computePerceivedBrightness(sheetBackgroundColor) > 0.721f);
        if (getWindow() != null) {
            getWindow().getDecorView().requestApplyInsets();
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        return this.title;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.NewBottomSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(this.container));
    }
}
