package org.telegram.ui;
 class PhotoViewer$63 extends android.animation.AnimatorListenerAdapter {
    final synthetic org.telegram.ui.PhotoViewer this$0;
    final synthetic int val$mode;

    PhotoViewer$63(org.telegram.ui.PhotoViewer p1, int p2)
    {
        this.this$0 = p1;
        this.val$mode = p2;
        return;
    }

    public void onAnimationEnd(android.animation.Animator p10)
    {
        org.telegram.ui.PhotoViewer.-$$Nest$fputchangeModeAnimation(this.this$0, 0);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetpickerView(this.this$0).setVisibility(8);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetpickerViewSendButton(this.this$0).setVisibility(8);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetdoneButtonFullWidth(this.this$0).setVisibility(8);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetactionBar(this.this$0).setVisibility(8);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetmuteButton(this.this$0).setVisibility(8);
        org.telegram.ui.PhotoViewer.-$$Nest$fgeteditCoverButton(this.this$0).setVisibility(8);
        if (org.telegram.ui.PhotoViewer.-$$Nest$fgetphotoCropView(this.this$0) != null) {
            org.telegram.ui.PhotoViewer.-$$Nest$fgetphotoCropView(this.this$0).setVisibility(4);
        }
        org.telegram.ui.PhotoViewer.-$$Nest$fgetselectedPhotosListView(this.this$0).setVisibility(8);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetselectedPhotosListView(this.this$0).setAlpha(0);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetselectedPhotosListView(this.this$0).setTranslationY(((float) (- org.telegram.messenger.AndroidUtilities.dp(1092616192))));
        org.telegram.ui.PhotoViewer.-$$Nest$fgetphotosCounterView(this.this$0).setRotationX(0);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetselectedPhotosListView(this.this$0).setEnabled(0);
        org.telegram.ui.PhotoViewer.-$$Nest$fputisPhotosListViewVisible(this.this$0, 0);
        if (org.telegram.ui.PhotoViewer.-$$Nest$fgetneedCaptionLayout(this.this$0)) {
            org.telegram.ui.PhotoViewer.-$$Nest$fgetcaptionTextViewSwitcher(this.this$0).setVisibility(4);
        }
        if (((org.telegram.ui.PhotoViewer.-$$Nest$fgetsendPhotoType(this.this$0) == 0) || (org.telegram.ui.PhotoViewer.-$$Nest$fgetsendPhotoType(this.this$0) == 4)) || (((org.telegram.ui.PhotoViewer.-$$Nest$fgetsendPhotoType(this.this$0) == 2) || (org.telegram.ui.PhotoViewer.-$$Nest$fgetsendPhotoType(this.this$0) == 5)) && (org.telegram.ui.PhotoViewer.-$$Nest$fgetimagesArrLocals(this.this$0).size() > 1))) {
            org.telegram.ui.PhotoViewer.-$$Nest$fgetcheckImageView(this.this$0).setVisibility(8);
            org.telegram.ui.PhotoViewer.-$$Nest$fgetphotosCounterView(this.this$0).setVisibility(8);
            org.telegram.ui.PhotoViewer.-$$Nest$mupdateActionBarTitlePadding(this.this$0);
        }
        float v10_8 = this.this$0.centerImage.getBitmap();
        if (org.telegram.ui.PhotoViewer.-$$Nest$fgetsendPhotoType(this.this$0) == 11) {
            float v0_3 = this.this$0;
            org.telegram.ui.PhotoViewer.-$$Nest$fputsavedTy(v0_3, org.telegram.ui.PhotoViewer.-$$Nest$fgettranslationY(v0_3));
            float v0_4 = this.this$0;
            org.telegram.ui.PhotoViewer.-$$Nest$fputsavedTx(v0_4, org.telegram.ui.PhotoViewer.-$$Nest$fgettranslationX(v0_4));
            float v0_5 = this.this$0;
            org.telegram.ui.PhotoViewer.-$$Nest$fputsavedScale(v0_5, org.telegram.ui.PhotoViewer.-$$Nest$fgetscale(v0_5));
            float v0_6 = this.this$0;
            org.telegram.ui.PhotoViewer.-$$Nest$fputsavedRotation(v0_6, org.telegram.ui.PhotoViewer.-$$Nest$fgetrotate(v0_6));
            org.telegram.ui.PhotoViewer.-$$Nest$fputanimateToRotate(this.this$0, 0);
        }
        if (v10_8 != 0) {
            float v10_22;
            float v10_14 = ((float) this.this$0.centerImage.getBitmapWidth());
            float v0_11 = ((float) this.this$0.centerImage.getBitmapHeight());
            int v1_9 = Math.min((((float) org.telegram.ui.PhotoViewer.-$$Nest$mgetContainerViewWidth(this.this$0, 2)) / v10_14), (((float) org.telegram.ui.PhotoViewer.-$$Nest$mgetContainerViewHeight(this.this$0, 2)) / v0_11));
            if (org.telegram.ui.PhotoViewer.-$$Nest$fgetsendPhotoType(this.this$0) != 1) {
                int v8_2;
                if (!org.telegram.ui.PhotoViewer.-$$Nest$misStatusBarVisible(this.this$0)) {
                    v8_2 = 0;
                } else {
                    v8_2 = (org.telegram.messenger.AndroidUtilities.statusBarHeight / 2);
                }
                org.telegram.ui.PhotoViewer.-$$Nest$fputanimateToY(this.this$0, ((float) ((- org.telegram.messenger.AndroidUtilities.dp(1119485952)) + v8_2)));
                if ((org.telegram.ui.PhotoViewer.-$$Nest$fgeteditState(this.this$0).cropState == null) || ((org.telegram.ui.PhotoViewer.-$$Nest$fgeteditState(this.this$0).cropState.transformRotation != 90) && (org.telegram.ui.PhotoViewer.-$$Nest$fgeteditState(this.this$0).cropState.transformRotation != 270))) {
                    v10_22 = Math.min((((float) org.telegram.ui.PhotoViewer.-$$Nest$mgetContainerViewWidth(this.this$0)) / v10_14), (((float) org.telegram.ui.PhotoViewer.-$$Nest$mgetContainerViewHeight(this.this$0)) / v0_11));
                } else {
                    v10_22 = Math.min((((float) org.telegram.ui.PhotoViewer.-$$Nest$mgetContainerViewWidth(this.this$0)) / v0_11), (((float) org.telegram.ui.PhotoViewer.-$$Nest$mgetContainerViewHeight(this.this$0)) / v10_14));
                }
            } else {
                org.telegram.ui.PhotoViewer.-$$Nest$fputanimateToY(this.this$0, ((float) (- org.telegram.messenger.AndroidUtilities.dp(1108344832))));
                v10_22 = org.telegram.ui.PhotoViewer.-$$Nest$mgetCropFillScale(this.this$0, 0);
            }
            org.telegram.ui.PhotoViewer.-$$Nest$fputanimateToScale(this.this$0, (v1_9 / v10_22));
            float v10_26 = this.this$0;
            org.telegram.ui.PhotoViewer.-$$Nest$fputanimateToX(v10_26, ((float) ((org.telegram.ui.PhotoViewer.-$$Nest$mgetLeftInset(v10_26) / 2) - (org.telegram.ui.PhotoViewer.-$$Nest$mgetRightInset(this.this$0) / 2))));
            org.telegram.ui.PhotoViewer.-$$Nest$fputanimationStartTime(this.this$0, System.currentTimeMillis());
            org.telegram.ui.PhotoViewer.-$$Nest$fputzoomAnimation(this.this$0, 1);
        }
        org.telegram.ui.PhotoViewer.-$$Nest$fputimageMoveAnimation(this.this$0, new android.animation.AnimatorSet());
        float v10_32 = org.telegram.ui.PhotoViewer.-$$Nest$fgetimageMoveAnimation(this.this$0);
        float v6_26 = new float[2];
        v6_26 = {0, 1065353216};
        float v0_29 = android.animation.ObjectAnimator.ofFloat(this.this$0, org.telegram.ui.Components.AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, v6_26);
        int v1_17 = org.telegram.ui.PhotoViewer.-$$Nest$fgetphotoFilterView(this.this$0).getToolsView();
        int v8_4 = new float[2];
        v8_4[0] = ((float) org.telegram.messenger.AndroidUtilities.dp(1127874560));
        v8_4[1] = 0;
        int v1_18 = android.animation.ObjectAnimator.ofFloat(v1_17, android.view.View.TRANSLATION_Y, v8_4);
        android.animation.Animator[] v2_0 = new android.animation.Animator[2];
        v2_0[0] = v0_29;
        v2_0[1] = v1_18;
        v10_32.playTogether(v2_0);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetimageMoveAnimation(this.this$0).setDuration(200);
        org.telegram.ui.PhotoViewer.-$$Nest$fgetimageMoveAnimation(this.this$0).addListener(new org.telegram.ui.PhotoViewer$63$1(this));
        org.telegram.ui.PhotoViewer.-$$Nest$fgetimageMoveAnimation(this.this$0).start();
        return;
    }
}
