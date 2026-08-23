package org.telegram.ui;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ChatActivityContainer extends FrameLayout {
    public final ChatActivity chatActivity;
    private View fragmentView;
    private boolean isActive;
    private final INavigationLayout parentLayout;
    private int topPadding;

    public void onSearchLoadingUpdate(boolean z) {
    }

    public ChatActivityContainer(Context context, INavigationLayout iNavigationLayout, Bundle bundle) {
        super(context);
        this.isActive = true;
        this.parentLayout = iNavigationLayout;
        ChatActivity chatActivity = new ChatActivity(bundle) { // from class: org.telegram.ui.ChatActivityContainer.1
            @Override // org.telegram.ui.ChatActivity, org.telegram.ui.ActionBar.BaseFragment
            public void setNavigationBarColor(int i) {
            }

            @Override // org.telegram.ui.ChatActivity
            public void onSearchLoadingUpdate(boolean z) {
                ChatActivityContainer.this.onSearchLoadingUpdate(z);
            }
        };
        this.chatActivity = chatActivity;
        chatActivity.isInsideContainer = true;
    }

    public void setTopPadding(int i) {
        this.topPadding = i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        initChatActivity();
    }

    public void initChatActivity() {
        if (this.chatActivity.onFragmentCreate()) {
            ChatActivity chatActivity = this.chatActivity;
            this.fragmentView = chatActivity.fragmentView;
            chatActivity.setParentLayout(this.parentLayout);
            View view = this.fragmentView;
            if (view == null) {
                this.fragmentView = this.chatActivity.createView(getContext());
            } else {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    this.chatActivity.onRemoveFromParent();
                    viewGroup.removeView(this.fragmentView);
                }
            }
            if (this.chatActivity.getChatListView() != null && this.topPadding != 0) {
                this.chatActivity.getChatListView().setPadding(0, this.topPadding, 0, 0);
            }
            this.chatActivity.openedInstantly();
            addView(this.fragmentView, LayoutHelper.createFrame(-1, -1.0f));
            if (this.isActive) {
                this.chatActivity.onResume();
            }
        }
    }

    public void onPause() {
        if (this.isActive) {
            this.isActive = false;
            if (this.fragmentView != null) {
                this.chatActivity.onPause();
            }
        }
    }

    public void onResume() {
        if (this.isActive) {
            return;
        }
        this.isActive = true;
        if (this.fragmentView != null) {
            this.chatActivity.onResume();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
