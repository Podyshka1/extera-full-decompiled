package com.exteragram.messenger.components.supporter;

import android.graphics.drawable.Drawable;
import android.view.View;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;

/* JADX INFO: loaded from: classes4.dex */
public final class SupporterEnterFrom {
    public final Drawable drawable;
    public final float scale;
    public final float screenX;
    public final float screenY;
    public final View view;

    private SupporterEnterFrom(View view, Drawable drawable, float f, float f2) {
        this.view = view;
        this.drawable = drawable;
        view.getLocationOnScreen(new int[2]);
        float scaleX = view.getScaleX();
        this.scale = scaleX;
        this.screenX = r4[0] + (f * scaleX);
        this.screenY = r4[1] + (f2 * view.getScaleY());
    }

    public static SupporterEnterFrom of(ChatMessageCell chatMessageCell) {
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable;
        if (chatMessageCell == null || (swapAnimatedEmojiDrawable = chatMessageCell.currentNameStatusDrawable) == null) {
            return null;
        }
        return new SupporterEnterFrom(chatMessageCell, swapAnimatedEmojiDrawable, chatMessageCell.getNameStatusX(), chatMessageCell.getNameStatusY());
    }

    public static SupporterEnterFrom ofSecondary(ChatMessageCell chatMessageCell) {
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable;
        if (chatMessageCell == null || (swapAnimatedEmojiDrawable = chatMessageCell.currentNameEmojiStatusDrawable) == null || swapAnimatedEmojiDrawable.getBounds().isEmpty()) {
            return null;
        }
        return new SupporterEnterFrom(chatMessageCell, chatMessageCell.currentNameEmojiStatusDrawable, r0.getBounds().centerX(), r0.getBounds().centerY());
    }

    public static SupporterEnterFrom of(SimpleTextView simpleTextView, Drawable drawable) {
        if (simpleTextView == null || drawable == null) {
            return null;
        }
        if (simpleTextView.getRightDrawable() == drawable) {
            return new SupporterEnterFrom(simpleTextView, drawable, simpleTextView.rightDrawableX, simpleTextView.rightDrawableY);
        }
        if (simpleTextView.getRightDrawable2() == drawable) {
            return new SupporterEnterFrom(simpleTextView, drawable, simpleTextView.rightDrawable2X, simpleTextView.rightDrawable2Y);
        }
        return null;
    }

    public void invalidate() {
        View view = this.view;
        if (view instanceof ChatMessageCell) {
            ((ChatMessageCell) view).invalidateOutbounds();
        } else {
            view.invalidate();
        }
    }
}
