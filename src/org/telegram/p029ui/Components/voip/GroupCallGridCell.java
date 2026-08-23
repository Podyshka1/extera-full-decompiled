package org.telegram.p029ui.Components.voip;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.p029ui.GroupCallActivity;
import org.telegram.p029ui.GroupCallTabletGridAdapter;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public abstract class GroupCallGridCell extends FrameLayout {
    public boolean attached;
    public GroupCallTabletGridAdapter gridAdapter;
    private final boolean isTabletGrid;
    ChatObject.VideoParticipant participant;
    public int position;
    GroupCallMiniTextureView renderer;
    public int spanCount;

    public GroupCallGridCell(Context context, boolean z) {
        super(context);
        this.isTabletGrid = z;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.isTabletGrid) {
            ((View) getParent()).getMeasuredWidth();
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.gridAdapter.getItemHeight(this.position), TLObject.FLAG_30));
        } else {
            float f = GroupCallActivity.isLandscapeMode ? 3.0f : 2.0f;
            float fM1124dp = (AndroidUtilities.displaySize.x - (AndroidUtilities.m1124dp(14.0f) * 2)) + (GroupCallActivity.isLandscapeMode ? -AndroidUtilities.m1124dp(90.0f) : 0);
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((int) ((GroupCallActivity.isTabletMode ? fM1124dp / 2.0f : fM1124dp / f) + AndroidUtilities.m1124dp(4.0f)), TLObject.FLAG_30));
        }
    }

    public void setData(AccountInstance accountInstance, ChatObject.VideoParticipant videoParticipant, ChatObject.Call call, long j) {
        this.participant = videoParticipant;
    }

    public ChatObject.VideoParticipant getParticipant() {
        return this.participant;
    }

    public void setRenderer(GroupCallMiniTextureView groupCallMiniTextureView) {
        this.renderer = groupCallMiniTextureView;
    }

    public GroupCallMiniTextureView getRenderer() {
        return this.renderer;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
    }

    public float getItemHeight() {
        int measuredHeight;
        GroupCallTabletGridAdapter groupCallTabletGridAdapter = this.gridAdapter;
        if (groupCallTabletGridAdapter != null) {
            measuredHeight = groupCallTabletGridAdapter.getItemHeight(this.position);
        } else {
            measuredHeight = getMeasuredHeight();
        }
        return measuredHeight;
    }
}
