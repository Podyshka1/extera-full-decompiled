package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import me.vkryl.android.animator.ListAnimator;
import me.vkryl.core.lambda.Destroyable;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessagesController;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class AvatarsListDrawable extends Drawable {
    private boolean attached;
    private final int avatarOffset;
    private final int avatarSize;
    private final float avatarStroke;
    private final int currentAccount;
    private final View parent;
    private final ListAnimator<AvatarItem> animator = new ListAnimator<>(new ListAnimator.Callback() { // from class: org.telegram.ui.Components.AvatarsListDrawable.1
        @Override // me.vkryl.android.animator.ListAnimator.Callback
        public void onItemsChanged(ListAnimator<?> listAnimator) {
            AvatarsListDrawable.this.parent.invalidate();
        }
    }, CubicBezierInterpolator.EASE_OUT_QUINT, 380);
    private final ArrayList<AvatarItem> avatarItemsPool = new ArrayList<>();
    private int alpha = 255;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public AvatarsListDrawable(int i, View view, int i2, int i3, float f) {
        this.currentAccount = i;
        this.parent = view;
        this.avatarSize = i2;
        this.avatarOffset = i3;
        this.avatarStroke = f;
    }

    public void set(List<TLRPC.Peer> list, boolean z) {
        if (list == null || list.isEmpty()) {
            this.animator.clear(z);
            return;
        }
        if (!z) {
            this.animator.clear(false);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<TLRPC.Peer> it = list.iterator();
        while (it.hasNext()) {
            long peerDialogId = DialogObject.getPeerDialogId(it.next());
            AvatarItem avatarItemFind = find(peerDialogId);
            if (avatarItemFind == null) {
                avatarItemFind = find(0L);
            }
            if (avatarItemFind == null) {
                avatarItemFind = new AvatarItem(this.parent);
                this.avatarItemsPool.add(avatarItemFind);
            }
            avatarItemFind.set(this.currentAccount, peerDialogId);
            arrayList.add(avatarItemFind);
            if (this.attached) {
                avatarItemFind.attach();
            }
        }
        this.animator.reset(arrayList, z);
    }

    public void attach() {
        if (this.attached) {
            return;
        }
        this.attached = true;
        ArrayList<AvatarItem> arrayList = this.avatarItemsPool;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            AvatarItem avatarItem = arrayList.get(i);
            i++;
            AvatarItem avatarItem2 = avatarItem;
            if (avatarItem2.dialogId != 0) {
                avatarItem2.attach();
            }
        }
    }

    public void detach() {
        if (this.attached) {
            int i = 0;
            this.attached = false;
            ArrayList<AvatarItem> arrayList = this.avatarItemsPool;
            int size = arrayList.size();
            while (i < size) {
                AvatarItem avatarItem = arrayList.get(i);
                i++;
                avatarItem.detach();
            }
        }
    }

    private AvatarItem find(long j) {
        ArrayList<AvatarItem> arrayList = this.avatarItemsPool;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            AvatarItem avatarItem = arrayList.get(i);
            i++;
            AvatarItem avatarItem2 = avatarItem;
            if (avatarItem2.dialogId == j) {
                return avatarItem2;
            }
        }
        return null;
    }

    public class AvatarItem implements ListAnimator.Measurable, Destroyable {
        private boolean attached;
        private final AvatarDrawable avatarDrawable;
        private long dialogId;
        private final ImageReceiver imageReceiver;

        private AvatarItem(View view) {
            ImageReceiver imageReceiver = new ImageReceiver(view);
            this.imageReceiver = imageReceiver;
            imageReceiver.setRoundRadius(AvatarsListDrawable.this.avatarSize / 2);
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            this.avatarDrawable = avatarDrawable;
            avatarDrawable.setTextSize(AndroidUtilities.dp(22.0f));
        }

        public void set(int i, long j) {
            if (this.dialogId == j) {
                return;
            }
            this.dialogId = j;
            TLObject userOrChat = MessagesController.getInstance(i).getUserOrChat(j);
            AvatarDrawable avatarDrawable = this.avatarDrawable;
            if (userOrChat != null) {
                avatarDrawable.setInfo(i, userOrChat);
                this.imageReceiver.setForUserOrChat(userOrChat, this.avatarDrawable);
            } else {
                avatarDrawable.setInfo(j, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
                this.imageReceiver.clearImage();
            }
        }

        public void attach() {
            if (this.attached) {
                return;
            }
            this.attached = true;
            this.imageReceiver.onAttachedToWindow();
        }

        public void detach() {
            if (this.attached) {
                this.attached = false;
                this.imageReceiver.onDetachedFromWindow();
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof AvatarItem) && this.dialogId == ((AvatarItem) obj).dialogId;
        }

        @Override // me.vkryl.core.lambda.Destroyable
        public void performDestroy() {
            detach();
            this.dialogId = 0L;
        }

        @Override // me.vkryl.android.animator.ListAnimator.Measurable
        public int getSpacingStart(boolean z) {
            if (z) {
                return 0;
            }
            return -AvatarsListDrawable.this.avatarOffset;
        }

        @Override // me.vkryl.android.animator.ListAnimator.Measurable
        public int getWidth() {
            return AvatarsListDrawable.this.avatarSize;
        }

        @Override // me.vkryl.android.animator.ListAnimator.Measurable
        public int getHeight() {
            return AvatarsListDrawable.this.avatarSize;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        draw(canvas, null);
    }

    public void draw(Canvas canvas, Paint paint) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || this.alpha == 0) {
            return;
        }
        float f = bounds.left;
        float f2 = bounds.top;
        canvas.saveLayer(f, f2, f + this.animator.getMetadata().getTotalWidth(), f2 + this.avatarSize, null);
        for (int size = this.animator.size() - 1; size >= 0; size--) {
            ListAnimator.Entry<AvatarItem> entry = this.animator.getEntry(size);
            RectF rectF = entry.getRectF();
            float spacingStart = entry.getSpacingStart();
            float visibility = entry.getVisibility();
            float f3 = rectF.left + spacingStart;
            float fWidth = rectF.width() - spacingStart;
            float f4 = f + f3;
            float f5 = fWidth / 2.0f;
            float f6 = f4 + f5;
            float f7 = f2 + f5;
            canvas.save();
            canvas.scale(visibility, visibility, f6, f7);
            canvas.drawCircle(f6, f7, f5 + this.avatarStroke, Theme.PAINT_CLEAR);
            entry.item.imageReceiver.setImageCoords(f4, f2, fWidth, fWidth);
            entry.item.imageReceiver.setAlpha(entry.getVisibility() * (this.alpha / 255.0f));
            entry.item.imageReceiver.draw(canvas);
            canvas.restore();
        }
        canvas.restore();
    }

    public float getAnimatedWidth() {
        return this.animator.getMetadata().getTotalWidth();
    }

    public float getTotalVisibility() {
        return this.animator.getMetadata().getTotalVisibility();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }
}
