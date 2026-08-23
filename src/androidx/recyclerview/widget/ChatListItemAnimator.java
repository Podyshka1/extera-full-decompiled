package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.util.LongSparseArray;
import android.util.Property;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.BotHelpCell;
import org.telegram.p029ui.Cells.ChatActionCell;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Cells.UserInfoCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.ChatGreetingsView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ThanosEffect;
import org.telegram.p029ui.TextMessageEnterTransition;
import org.telegram.p029ui.VoiceMessageEnterTransition;

/* JADX INFO: loaded from: classes.dex */
public abstract class ChatListItemAnimator extends DefaultItemAnimator {
    public static final Interpolator DEFAULT_INTERPOLATOR = new CubicBezierInterpolator(0.19919472913616398d, 0.010644531250000006d, 0.27920937042459737d, 0.91025390625d);
    private final ChatActivity activity;
    long alphaEnterDelay;
    private ChatGreetingsView chatGreetingsView;
    private Utilities.Callback0Return getThanosEffectContainer;
    private RecyclerView.ViewHolder greetingsSticker;
    private final RecyclerListView recyclerListView;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean reversePositions;
    private boolean shouldAnimateEnterFromBottom;
    private Utilities.Callback0Return supportsThanosEffectContainer;
    private HashMap willRemovedGroup = new HashMap();
    private ArrayList willChangedGroups = new ArrayList();
    HashMap animators = new HashMap();
    ArrayList thanosViews = new ArrayList();
    ArrayList runOnAnimationsEnd = new ArrayList();
    HashMap groupIdToEnterDelay = new HashMap();
    private final ArrayList toBeSnapped = new ArrayList();

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public long getChangeDuration() {
        return 250L;
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    protected long getMoveAnimationDelay() {
        return 0L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public long getMoveDuration() {
        return 250L;
    }

    public void onAnimationStart() {
    }

    public ChatListItemAnimator(ChatActivity chatActivity, RecyclerListView recyclerListView, Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
        this.activity = chatActivity;
        this.recyclerListView = recyclerListView;
        this.translationInterpolator = DEFAULT_INTERPOLATOR;
        this.alwaysCreateMoveAnimationIfPossible = true;
        setSupportsChangeAnimations(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0067  */
    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void runPendingAnimations() {
        boolean zIsEmpty = this.mPendingRemovals.isEmpty();
        boolean zIsEmpty2 = this.mPendingMoves.isEmpty();
        boolean zIsEmpty3 = this.mPendingChanges.isEmpty();
        boolean zIsEmpty4 = this.mPendingAdditions.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        boolean z = false;
        if (this.shouldAnimateEnterFromBottom) {
            boolean z2 = false;
            for (int i = 0; i < this.mPendingAdditions.size(); i++) {
                if (this.reversePositions) {
                    if (((RecyclerView.ViewHolder) this.mPendingAdditions.get(i)).getLayoutPosition() == (this.recyclerListView.getAdapter() == null ? 0 : this.recyclerListView.getAdapter().getItemCount()) - 1) {
                        z2 = true;
                    }
                } else if (((RecyclerView.ViewHolder) this.mPendingAdditions.get(i)).getLayoutPosition() == 0) {
                }
            }
            z = z2;
        }
        onAnimationStart();
        if (z) {
            runMessageEnterTransition();
        } else {
            runAlphaEnterTransition();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$runPendingAnimations$0(valueAnimator);
            }
        });
        valueAnimatorOfFloat.setDuration(getRemoveDuration() + getMoveDuration());
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runPendingAnimations$0(ValueAnimator valueAnimator) {
        ChatActivity chatActivity = this.activity;
        if (chatActivity != null) {
            chatActivity.onListItemAnimatorTick();
        } else {
            this.recyclerListView.invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void runAlphaEnterTransition() {
        final boolean z;
        MessageObject.GroupedMessages currentMessagesGroup;
        MessageObject messageObject;
        Utilities.Callback0Return callback0Return;
        boolean zIsEmpty = this.mPendingRemovals.isEmpty();
        boolean zIsEmpty2 = this.mPendingMoves.isEmpty();
        boolean zIsEmpty3 = this.mPendingChanges.isEmpty();
        boolean zIsEmpty4 = this.mPendingAdditions.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        int i = 0;
        boolean z2 = (this.getThanosEffectContainer == null || (callback0Return = this.supportsThanosEffectContainer) == null || !((Boolean) callback0Return.run()).booleanValue()) ? false : true;
        if (z2) {
            LongSparseArray longSparseArray = null;
            int i2 = 0;
            while (i2 < this.mPendingRemovals.size()) {
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) this.mPendingRemovals.get(i2);
                if (this.toBeSnapped.contains(viewHolder)) {
                    View view = viewHolder.itemView;
                    if ((view instanceof ChatMessageCell) && ((ChatMessageCell) view).getCurrentMessagesGroup() != null && (messageObject = ((ChatMessageCell) viewHolder.itemView).getMessageObject()) != null && messageObject.getGroupId() != 0) {
                        if (longSparseArray == null) {
                            longSparseArray = new LongSparseArray();
                        }
                        ArrayList arrayList = (ArrayList) longSparseArray.get(messageObject.getGroupId());
                        if (arrayList == null) {
                            long groupId = messageObject.getGroupId();
                            ArrayList arrayList2 = new ArrayList();
                            longSparseArray.put(groupId, arrayList2);
                            arrayList = arrayList2;
                        }
                        this.toBeSnapped.remove(viewHolder);
                        this.mPendingRemovals.remove(i2);
                        i2--;
                        arrayList.add(viewHolder);
                    }
                }
                i2++;
            }
            if (longSparseArray != null) {
                z = false;
                for (int i3 = 0; i3 < longSparseArray.size(); i3++) {
                    ArrayList arrayList3 = (ArrayList) longSparseArray.valueAt(i3);
                    if (arrayList3.size() > 0) {
                        View view2 = ((RecyclerView.ViewHolder) arrayList3.get(0)).itemView;
                        if ((view2 instanceof ChatMessageCell) && (currentMessagesGroup = ((ChatMessageCell) view2).getCurrentMessagesGroup()) != null && currentMessagesGroup.messages.size() > arrayList3.size()) {
                            this.mPendingRemovals.addAll(arrayList3);
                        } else {
                            animateRemoveGroupImpl(arrayList3);
                            z = true;
                        }
                    }
                }
            } else {
                z = false;
            }
        }
        ArrayList arrayList4 = this.mPendingRemovals;
        int size = arrayList4.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList4.get(i4);
            i4++;
            RecyclerView.ViewHolder viewHolder2 = (RecyclerView.ViewHolder) obj;
            boolean z3 = this.toBeSnapped.remove(viewHolder2) && z2;
            animateRemoveImpl(viewHolder2, z3);
            if (z3) {
                z = true;
            }
        }
        this.mPendingRemovals.clear();
        if (!zIsEmpty2) {
            final ArrayList arrayList5 = new ArrayList();
            arrayList5.addAll(this.mPendingMoves);
            this.mMovesList.add(arrayList5);
            this.mPendingMoves.clear();
            Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.1
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList arrayList6 = arrayList5;
                    int size2 = arrayList6.size();
                    int i5 = 0;
                    while (i5 < size2) {
                        Object obj2 = arrayList6.get(i5);
                        i5++;
                        DefaultItemAnimator.MoveInfo moveInfo = (DefaultItemAnimator.MoveInfo) obj2;
                        ChatListItemAnimator.this.animateMoveImpl(moveInfo.holder, moveInfo, z);
                    }
                    arrayList5.clear();
                    ChatListItemAnimator.this.mMovesList.remove(arrayList5);
                }
            };
            if (this.delayAnimations && !zIsEmpty) {
                ViewCompat.postOnAnimationDelayed(((DefaultItemAnimator.MoveInfo) arrayList5.get(0)).holder.itemView, runnable, z ? 0L : getMoveAnimationDelay());
            } else {
                runnable.run();
            }
        }
        if (!zIsEmpty3) {
            final ArrayList arrayList6 = new ArrayList();
            arrayList6.addAll(this.mPendingChanges);
            this.mChangesList.add(arrayList6);
            this.mPendingChanges.clear();
            Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.2
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList arrayList7 = arrayList6;
                    int size2 = arrayList7.size();
                    int i5 = 0;
                    while (i5 < size2) {
                        Object obj2 = arrayList7.get(i5);
                        i5++;
                        ChatListItemAnimator.this.animateChangeImpl((DefaultItemAnimator.ChangeInfo) obj2);
                    }
                    arrayList6.clear();
                    ChatListItemAnimator.this.mChangesList.remove(arrayList6);
                }
            };
            if (this.delayAnimations && !zIsEmpty) {
                ViewCompat.postOnAnimationDelayed(((DefaultItemAnimator.ChangeInfo) arrayList6.get(0)).oldHolder.itemView, runnable2, 0L);
            } else {
                runnable2.run();
            }
        }
        if (zIsEmpty4) {
            return;
        }
        ArrayList arrayList7 = new ArrayList();
        arrayList7.addAll(this.mPendingAdditions);
        this.mPendingAdditions.clear();
        this.alphaEnterDelay = 0L;
        Collections.sort(arrayList7, new Comparator() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda7
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ChatListItemAnimator.m2138$r8$lambda$ZhmpZsu8pZI6IPqdJ0RRLbxS2o((RecyclerView.ViewHolder) obj2, (RecyclerView.ViewHolder) obj3);
            }
        });
        int size2 = arrayList7.size();
        while (i < size2) {
            Object obj2 = arrayList7.get(i);
            i++;
            animateAddImpl((RecyclerView.ViewHolder) obj2);
        }
        arrayList7.clear();
    }

    /* JADX INFO: renamed from: $r8$lambda$ZhmpZs-u8pZI6IPqdJ0RRLbxS2o, reason: not valid java name */
    public static /* synthetic */ int m2138$r8$lambda$ZhmpZsu8pZI6IPqdJ0RRLbxS2o(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        return viewHolder2.itemView.getTop() - viewHolder.itemView.getTop();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void runMessageEnterTransition() {
        boolean zIsEmpty = this.mPendingRemovals.isEmpty();
        boolean zIsEmpty2 = this.mPendingMoves.isEmpty();
        boolean zIsEmpty3 = this.mPendingChanges.isEmpty();
        boolean zIsEmpty4 = this.mPendingAdditions.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        int i = 0;
        int height = 0;
        for (int i2 = 0; i2 < this.mPendingAdditions.size(); i2++) {
            View view = ((RecyclerView.ViewHolder) this.mPendingAdditions.get(i2)).itemView;
            if (view instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                if (chatMessageCell.getCurrentPosition() == null || (chatMessageCell.getCurrentPosition().flags & 1) != 0) {
                    height += ((RecyclerView.ViewHolder) this.mPendingAdditions.get(i2)).itemView.getHeight();
                }
            }
        }
        ArrayList arrayList = this.mPendingRemovals;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            animateRemoveImpl((RecyclerView.ViewHolder) obj);
        }
        this.mPendingRemovals.clear();
        if (!zIsEmpty2) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(this.mPendingMoves);
            this.mPendingMoves.clear();
            int size2 = arrayList2.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj2 = arrayList2.get(i4);
                i4++;
                DefaultItemAnimator.MoveInfo moveInfo = (DefaultItemAnimator.MoveInfo) obj2;
                animateMoveImpl(moveInfo.holder, moveInfo);
            }
            arrayList2.clear();
        }
        if (zIsEmpty4) {
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.addAll(this.mPendingAdditions);
        this.mPendingAdditions.clear();
        int size3 = arrayList3.size();
        while (i < size3) {
            Object obj3 = arrayList3.get(i);
            i++;
            animateAddImpl((RecyclerView.ViewHolder) obj3, height);
        }
        arrayList3.clear();
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean animateAppearance(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int height;
        boolean zAnimateAppearance = super.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2);
        if (zAnimateAppearance && this.shouldAnimateEnterFromBottom) {
            boolean z = false;
            for (int i = 0; i < this.mPendingAdditions.size(); i++) {
                if (((RecyclerView.ViewHolder) this.mPendingAdditions.get(i)).getLayoutPosition() == 0) {
                    z = true;
                }
            }
            if (z) {
                height = 0;
                for (int i2 = 0; i2 < this.mPendingAdditions.size(); i2++) {
                    height += ((RecyclerView.ViewHolder) this.mPendingAdditions.get(i2)).itemView.getHeight();
                }
            } else {
                height = 0;
            }
            for (int i3 = 0; i3 < this.mPendingAdditions.size(); i3++) {
                ((RecyclerView.ViewHolder) this.mPendingAdditions.get(i3)).itemView.setTranslationY(height);
            }
        }
        return zAnimateAppearance;
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateAdd(RecyclerView.ViewHolder viewHolder) {
        resetAnimation(viewHolder);
        viewHolder.itemView.setAlpha(0.0f);
        if (!this.shouldAnimateEnterFromBottom) {
            viewHolder.itemView.setScaleX(0.9f);
            viewHolder.itemView.setScaleY(0.9f);
        } else {
            View view = viewHolder.itemView;
            if (view instanceof ChatMessageCell) {
                ((ChatMessageCell) view).getTransitionParams().messageEntering = true;
            }
        }
        this.mPendingAdditions.add(viewHolder);
        return true;
    }

    public void animateAddImpl(final RecyclerView.ViewHolder viewHolder, int i) {
        final View view = viewHolder.itemView;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mAddAnimations.add(viewHolder);
        view.setTranslationY(i);
        viewHolder.itemView.setScaleX(1.0f);
        viewHolder.itemView.setScaleY(1.0f);
        View view2 = viewHolder.itemView;
        ChatMessageCell chatMessageCell = view2 instanceof ChatMessageCell ? (ChatMessageCell) view2 : null;
        if (chatMessageCell == null || !chatMessageCell.getTransitionParams().ignoreAlpha) {
            viewHolder.itemView.setAlpha(1.0f);
        }
        ChatActivity chatActivity = this.activity;
        if (chatActivity != null && chatMessageCell != null && chatActivity.animatingMessageObjects.contains(chatMessageCell.getMessageObject())) {
            this.activity.animatingMessageObjects.remove(chatMessageCell.getMessageObject());
            if (this.activity.getChatActivityEnterView().canShowMessageTransition()) {
                if (chatMessageCell.getMessageObject().isVoice()) {
                    if (Math.abs(view.getTranslationY()) < view.getMeasuredHeight() * 3.0f) {
                        new VoiceMessageEnterTransition(chatMessageCell, this.activity.getChatActivityEnterView(), this.recyclerListView, this.activity.messageEnterTransitionContainer, this.resourcesProvider).start();
                    }
                } else if (SharedConfig.getDevicePerformanceClass() != 0 && Math.abs(view.getTranslationY()) < this.recyclerListView.getMeasuredHeight()) {
                    ChatActivity chatActivity2 = this.activity;
                    new TextMessageEnterTransition(chatMessageCell, chatActivity2, this.recyclerListView, chatActivity2.messageEnterTransitionContainer, this.resourcesProvider).start();
                }
                this.activity.getChatActivityEnterView().startMessageTransition();
            }
        }
        viewPropertyAnimatorAnimate.translationY(0.0f).setDuration(getMoveDuration()).setInterpolator(this.translationInterpolator).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ChatListItemAnimator.this.dispatchAddStarting(viewHolder);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setTranslationY(0.0f);
                View view3 = view;
                if (view3 instanceof ChatMessageCell) {
                    ((ChatMessageCell) view3).getTransitionParams().messageEntering = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                View view3 = view;
                if (view3 instanceof ChatMessageCell) {
                    ((ChatMessageCell) view3).getTransitionParams().messageEntering = false;
                }
                viewPropertyAnimatorAnimate.setListener(null);
                if (ChatListItemAnimator.this.mAddAnimations.remove(viewHolder)) {
                    ChatListItemAnimator.this.dispatchAddFinished(viewHolder);
                    ChatListItemAnimator.this.dispatchFinishedWhenDone();
                }
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateRemove(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("animate remove");
        }
        boolean zAnimateRemove = super.animateRemove(viewHolder, itemHolderInfo);
        if (zAnimateRemove && itemHolderInfo != null) {
            int i = itemHolderInfo.top;
            int top = viewHolder.itemView.getTop();
            int left = viewHolder.itemView.getLeft() - itemHolderInfo.left;
            if (top - i != 0) {
                viewHolder.itemView.setTranslationY(-r2);
            }
            View view = viewHolder.itemView;
            if (view instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                if (left != 0) {
                    chatMessageCell.setAnimationOffsetX(-left);
                }
                if (itemHolderInfo instanceof ItemHolderInfoExtended) {
                    ItemHolderInfoExtended itemHolderInfoExtended = (ItemHolderInfoExtended) itemHolderInfo;
                    chatMessageCell.setImageCoords(itemHolderInfoExtended.imageX, itemHolderInfoExtended.imageY, itemHolderInfoExtended.imageWidth, itemHolderInfoExtended.imageHeight);
                    return zAnimateRemove;
                }
            } else if (left != 0) {
                view.setTranslationX(-left);
            }
        }
        return zAnimateRemove;
    }

    /* JADX WARN: Removed duplicated region for block: B:145:0x0339  */
    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean animateMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, int i, int i2, int i3, int i4) {
        int translationX;
        int topMediaOffset;
        ChatMessageCell chatMessageCell;
        ChatActionCell chatActionCell;
        float imageY;
        float imageWidth;
        float imageHeight;
        float f;
        ChatMessageCell chatMessageCell2;
        boolean z;
        float f2;
        MessageObject.GroupedMessages groupedMessages;
        ChatMessageCell chatMessageCell3;
        View view = viewHolder.itemView;
        if (view instanceof ChatMessageCell) {
            ChatMessageCell chatMessageCell4 = (ChatMessageCell) view;
            translationX = i + ((int) chatMessageCell4.getAnimationOffsetX());
            topMediaOffset = chatMessageCell4.getTransitionParams().lastTopOffset != chatMessageCell4.getTopMediaOffset() ? i2 + (chatMessageCell4.getTransitionParams().lastTopOffset - chatMessageCell4.getTopMediaOffset()) : i2;
            chatMessageCell = chatMessageCell4;
            chatActionCell = null;
        } else if (view instanceof ChatActionCell) {
            translationX = i + ((int) view.getTranslationX());
            topMediaOffset = i2;
            chatActionCell = (ChatActionCell) view;
            chatMessageCell = null;
        } else {
            translationX = i + ((int) view.getTranslationX());
            topMediaOffset = i2;
            chatMessageCell = null;
            chatActionCell = null;
        }
        int translationY = topMediaOffset + ((int) viewHolder.itemView.getTranslationY());
        int[] iArr = new int[4];
        if (chatMessageCell != null) {
            float imageX = chatMessageCell.getPhotoImage().getImageX();
            imageY = chatMessageCell.getPhotoImage().getImageY();
            imageWidth = chatMessageCell.getPhotoImage().getImageWidth();
            imageHeight = chatMessageCell.getPhotoImage().getImageHeight();
            for (int i5 = 0; i5 < 4; i5++) {
                iArr[i5] = chatMessageCell.getPhotoImage().getRoundRadius()[i5];
            }
            f = imageX;
        } else {
            imageY = 0.0f;
            imageWidth = 0.0f;
            imageHeight = 0.0f;
            f = 0.0f;
        }
        resetAnimation(viewHolder);
        int i6 = i3 - translationX;
        int i7 = i4 - translationY;
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        float f3 = imageWidth;
        float f4 = imageHeight;
        float f5 = imageY;
        MoveInfoExtended moveInfoExtended = new MoveInfoExtended(viewHolder, translationX, translationY, i3, i4);
        if (chatMessageCell != null) {
            ChatMessageCell.TransitionParams transitionParams = chatMessageCell.getTransitionParams();
            if (!transitionParams.supportChangeAnimation()) {
                if (i6 == 0 && i7 == 0) {
                    dispatchMoveFinished(viewHolder);
                    return false;
                }
                if (i6 != 0) {
                    view.setTranslationX(-i6);
                }
                this.mPendingMoves.add(moveInfoExtended);
                checkIsRunning();
                return true;
            }
            MessageObject.GroupedMessages currentMessagesGroup = chatMessageCell.getCurrentMessagesGroup();
            if (i6 != 0) {
                chatMessageCell.setAnimationOffsetX(-i6);
            }
            if (itemHolderInfo instanceof ItemHolderInfoExtended) {
                ImageReceiver photoImage = chatMessageCell.getPhotoImage();
                ItemHolderInfoExtended itemHolderInfoExtended = (ItemHolderInfoExtended) itemHolderInfo;
                boolean z2 = (!transitionParams.wasDraw || itemHolderInfoExtended.imageHeight == 0.0f || itemHolderInfoExtended.imageWidth == 0.0f) ? false : true;
                moveInfoExtended.animateImage = z2;
                if (z2) {
                    this.recyclerListView.setClipChildren(false);
                    this.recyclerListView.invalidate();
                    transitionParams.imageChangeBoundsTransition = true;
                    if (chatMessageCell.getMessageObject().isRoundVideo()) {
                        transitionParams.animateToImageX = f;
                        transitionParams.animateToImageY = f5;
                        transitionParams.animateToImageW = f3;
                        transitionParams.animateToImageH = f4;
                        transitionParams.animateToRadius = iArr;
                    } else {
                        transitionParams.animateToImageX = photoImage.getImageX();
                        transitionParams.animateToImageY = photoImage.getImageY();
                        transitionParams.animateToImageW = photoImage.getImageWidth();
                        transitionParams.animateToImageH = photoImage.getImageHeight();
                        transitionParams.animateToRadius = photoImage.getRoundRadius();
                    }
                    transitionParams.animateRadius = false;
                    int i8 = 0;
                    while (true) {
                        if (i8 >= 4) {
                            break;
                        }
                        if (transitionParams.imageRoundRadius[i8] != transitionParams.animateToRadius[i8]) {
                            transitionParams.animateRadius = true;
                            break;
                        }
                        i8++;
                    }
                    float f6 = transitionParams.animateToImageX;
                    float f7 = itemHolderInfoExtended.imageX;
                    if (f6 == f7 && transitionParams.animateToImageY == itemHolderInfoExtended.imageY && transitionParams.animateToImageH == itemHolderInfoExtended.imageHeight && transitionParams.animateToImageW == itemHolderInfoExtended.imageWidth && !transitionParams.animateRadius) {
                        transitionParams.imageChangeBoundsTransition = false;
                        moveInfoExtended.animateImage = false;
                    } else {
                        moveInfoExtended.imageX = f7;
                        moveInfoExtended.imageY = itemHolderInfoExtended.imageY;
                        moveInfoExtended.imageWidth = itemHolderInfoExtended.imageWidth;
                        moveInfoExtended.imageHeight = itemHolderInfoExtended.imageHeight;
                        if (currentMessagesGroup != null) {
                            boolean z3 = currentMessagesGroup.hasCaption;
                            MessageObject.GroupedMessages.TransitionParams transitionParams2 = currentMessagesGroup.transitionParams;
                            boolean z4 = transitionParams2.drawCaptionLayout;
                            if (z3 != z4) {
                                transitionParams2.captionEnterProgress = z4 ? 1.0f : 0.0f;
                            }
                        }
                        if (transitionParams.animateRadius) {
                            if (transitionParams.animateToRadius == photoImage.getRoundRadius()) {
                                transitionParams.animateToRadius = new int[4];
                                for (int i9 = 0; i9 < 4; i9++) {
                                    transitionParams.animateToRadius[i9] = photoImage.getRoundRadius()[i9];
                                }
                            }
                            photoImage.setRoundRadius(transitionParams.imageRoundRadius);
                        }
                        chatMessageCell.setImageCoords(moveInfoExtended.imageX, moveInfoExtended.imageY, moveInfoExtended.imageWidth, moveInfoExtended.imageHeight);
                    }
                }
                if (currentMessagesGroup == null && transitionParams.wasDraw) {
                    boolean zIsOutOwner = chatMessageCell.getMessageObject().isOutOwner();
                    boolean z5 = (zIsOutOwner && transitionParams.lastDrawingBackgroundRect.left != chatMessageCell.getBackgroundDrawableLeft()) || !(zIsOutOwner || transitionParams.lastDrawingBackgroundRect.right == chatMessageCell.getBackgroundDrawableRight());
                    if (z5 || transitionParams.lastDrawingBackgroundRect.top != chatMessageCell.getBackgroundDrawableTop() || transitionParams.lastDrawingBackgroundRect.bottom != chatMessageCell.getBackgroundDrawableBottom()) {
                        moveInfoExtended.deltaBottom = chatMessageCell.getBackgroundDrawableBottom() - transitionParams.lastDrawingBackgroundRect.bottom;
                        moveInfoExtended.deltaTop = chatMessageCell.getBackgroundDrawableTop() - transitionParams.lastDrawingBackgroundRect.top;
                        if (chatMessageCell.isSideMenuEnabled != transitionParams.lastDrawingSideMenuEnabled) {
                            moveInfoExtended.deltaLeft = chatMessageCell.getBackgroundDrawableLeft() - transitionParams.lastDrawingBackgroundRect.left;
                            moveInfoExtended.deltaRight = chatMessageCell.getBackgroundDrawableRight() - transitionParams.lastDrawingBackgroundRect.right;
                        } else if (zIsOutOwner) {
                            moveInfoExtended.deltaLeft = chatMessageCell.getBackgroundDrawableLeft() - transitionParams.lastDrawingBackgroundRect.left;
                        } else {
                            moveInfoExtended.deltaRight = chatMessageCell.getBackgroundDrawableRight() - transitionParams.lastDrawingBackgroundRect.right;
                        }
                        moveInfoExtended.animateBackgroundOnly = true;
                        transitionParams.animateBackgroundBoundsInner = true;
                        transitionParams.animateBackgroundWidth = z5;
                        transitionParams.deltaLeft = -moveInfoExtended.deltaLeft;
                        transitionParams.deltaRight = -moveInfoExtended.deltaRight;
                        transitionParams.deltaTop = -moveInfoExtended.deltaTop;
                        transitionParams.deltaBottom = -moveInfoExtended.deltaBottom;
                        this.recyclerListView.setClipChildren(false);
                        this.recyclerListView.invalidate();
                    }
                }
            }
            if (currentMessagesGroup == null || !this.willChangedGroups.contains(currentMessagesGroup)) {
                chatMessageCell2 = chatMessageCell;
            } else {
                this.willChangedGroups.remove(currentMessagesGroup);
                RecyclerListView recyclerListView = (RecyclerListView) viewHolder.itemView.getParent();
                MessageObject.GroupedMessages.TransitionParams transitionParams3 = currentMessagesGroup.transitionParams;
                boolean z6 = true;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                while (i10 < recyclerListView.getChildCount()) {
                    View childAt = recyclerListView.getChildAt(i10);
                    int i15 = i10;
                    if (childAt instanceof ChatMessageCell) {
                        ChatMessageCell chatMessageCell5 = (ChatMessageCell) childAt;
                        if (chatMessageCell5.getCurrentMessagesGroup() != currentMessagesGroup || chatMessageCell5.getMessageObject().deleted) {
                            groupedMessages = currentMessagesGroup;
                            chatMessageCell3 = chatMessageCell;
                        } else {
                            int left = chatMessageCell5.getLeft() + chatMessageCell5.getBackgroundDrawableLeft();
                            int left2 = chatMessageCell5.getLeft() + chatMessageCell5.getBackgroundDrawableRight();
                            groupedMessages = currentMessagesGroup;
                            int top = chatMessageCell5.getTop() + chatMessageCell5.getPaddingTop() + chatMessageCell5.getBackgroundDrawableTop();
                            chatMessageCell3 = chatMessageCell;
                            int top2 = chatMessageCell5.getTop() + chatMessageCell5.getPaddingTop() + chatMessageCell5.getBackgroundDrawableBottom();
                            if (i13 == 0 || left < i13) {
                                i13 = left;
                            }
                            if (i14 == 0 || left2 > i14) {
                                i14 = left2;
                            }
                            if (chatMessageCell5.getTransitionParams().wasDraw || transitionParams3.isNewGroup) {
                                if (i11 == 0 || top < i11) {
                                    i11 = top;
                                }
                                if (i12 == 0 || top2 > i12) {
                                    i12 = top2;
                                }
                                z6 = false;
                            }
                        }
                    }
                    i10 = i15 + 1;
                    currentMessagesGroup = groupedMessages;
                    chatMessageCell = chatMessageCell3;
                }
                chatMessageCell2 = chatMessageCell;
                transitionParams3.isNewGroup = false;
                if (i11 == 0 && i12 == 0 && i13 == 0 && i14 == 0) {
                    moveInfoExtended.animateChangeGroupBackground = false;
                    transitionParams3.backgroundChangeBounds = false;
                } else {
                    int i16 = (-i11) + transitionParams3.top;
                    moveInfoExtended.groupOffsetTop = i16;
                    int i17 = (-i12) + transitionParams3.bottom;
                    moveInfoExtended.groupOffsetBottom = i17;
                    int i18 = (-i13) + transitionParams3.left;
                    moveInfoExtended.groupOffsetLeft = i18;
                    int i19 = (-i14) + transitionParams3.right;
                    moveInfoExtended.groupOffsetRight = i19;
                    moveInfoExtended.animateChangeGroupBackground = true;
                    transitionParams3.backgroundChangeBounds = true;
                    transitionParams3.offsetTop = i16;
                    transitionParams3.offsetBottom = i17;
                    transitionParams3.offsetLeft = i18;
                    transitionParams3.offsetRight = i19;
                    transitionParams3.captionEnterProgress = transitionParams3.drawCaptionLayout ? 1.0f : 0.0f;
                    recyclerListView.setClipChildren(false);
                    recyclerListView.invalidate();
                }
                transitionParams3.drawBackgroundForDeletedItems = z6;
            }
            MessageObject.GroupedMessages groupedMessages2 = (MessageObject.GroupedMessages) this.willRemovedGroup.get(Integer.valueOf(chatMessageCell2.getMessageObject().getId()));
            if (groupedMessages2 != null) {
                MessageObject.GroupedMessages.TransitionParams transitionParams4 = groupedMessages2.transitionParams;
                this.willRemovedGroup.remove(Integer.valueOf(chatMessageCell2.getMessageObject().getId()));
                if (transitionParams.wasDraw) {
                    int left3 = chatMessageCell2.getLeft() + chatMessageCell2.getBackgroundDrawableLeft();
                    int left4 = chatMessageCell2.getLeft() + chatMessageCell2.getBackgroundDrawableRight();
                    int top3 = chatMessageCell2.getTop() + chatMessageCell2.getPaddingTop() + chatMessageCell2.getBackgroundDrawableTop();
                    int top4 = chatMessageCell2.getTop() + chatMessageCell2.getPaddingTop() + chatMessageCell2.getBackgroundDrawableBottom();
                    moveInfoExtended.animateRemoveGroup = true;
                    transitionParams.animateBackgroundBoundsInner = true;
                    moveInfoExtended.deltaLeft = left3 - transitionParams4.left;
                    moveInfoExtended.deltaRight = left4 - transitionParams4.right;
                    moveInfoExtended.deltaTop = top3 - transitionParams4.top;
                    moveInfoExtended.deltaBottom = top4 - transitionParams4.bottom;
                    moveInfoExtended.animateBackgroundOnly = false;
                    transitionParams.deltaLeft = (int) ((-r5) - chatMessageCell2.getAnimationOffsetX());
                    transitionParams.deltaRight = (int) ((-moveInfoExtended.deltaRight) - chatMessageCell2.getAnimationOffsetX());
                    transitionParams.deltaTop = (int) ((-moveInfoExtended.deltaTop) - chatMessageCell2.getTranslationY());
                    transitionParams.deltaBottom = (int) ((-moveInfoExtended.deltaBottom) - chatMessageCell2.getTranslationY());
                    z = true;
                    transitionParams.transformGroupToSingleMessage = true;
                    this.recyclerListView.setClipChildren(false);
                    this.recyclerListView.invalidate();
                } else {
                    z = true;
                    transitionParams4.drawBackgroundForDeletedItems = true;
                }
            } else {
                z = true;
            }
            if (transitionParams.drawPinnedBottomBackground != chatMessageCell2.isDrawPinnedBottom()) {
                moveInfoExtended.animatePinnedBottom = z;
                f2 = 0.0f;
                transitionParams.changePinnedBottomProgress = 0.0f;
            } else {
                f2 = 0.0f;
            }
            boolean zAnimateChange = transitionParams.animateChange();
            moveInfoExtended.animateChangeInternal = zAnimateChange;
            if (zAnimateChange) {
                transitionParams.animateChange = z;
                transitionParams.animateChangeProgress = f2;
            }
            if (i6 == 0 && i7 == 0 && !moveInfoExtended.animateImage && !moveInfoExtended.animateRemoveGroup && !moveInfoExtended.animateChangeGroupBackground && !moveInfoExtended.animatePinnedBottom && !moveInfoExtended.animateBackgroundOnly && !zAnimateChange) {
                dispatchMoveFinished(viewHolder);
                return false;
            }
        } else if (chatActionCell != null) {
            ChatActionCell.TransitionParams transitionParams5 = chatActionCell.getTransitionParams();
            if (!transitionParams5.supportChangeAnimation()) {
                if (i6 == 0 && i7 == 0) {
                    dispatchMoveFinished(viewHolder);
                    return false;
                }
                if (i6 != 0) {
                    view.setTranslationX(-i6);
                }
                this.mPendingMoves.add(moveInfoExtended);
                checkIsRunning();
                return true;
            }
            if (i6 != 0) {
                view.setTranslationX(-i6);
            }
            boolean zAnimateChange2 = transitionParams5.animateChange();
            moveInfoExtended.animateChangeInternal = zAnimateChange2;
            if (zAnimateChange2) {
                transitionParams5.animateChange = true;
                transitionParams5.animateChangeProgress = 0.0f;
            }
            if (i6 == 0 && i7 == 0 && !zAnimateChange2) {
                dispatchMoveFinished(viewHolder);
                return false;
            }
        } else {
            View view2 = viewHolder.itemView;
            if (view2 instanceof BotHelpCell) {
                ((BotHelpCell) view2).setAnimating(true);
            } else if (view2 instanceof UserInfoCell) {
                ((UserInfoCell) view2).setAnimating(true);
            } else {
                if (i6 == 0 && i7 == 0) {
                    dispatchMoveFinished(viewHolder);
                    return false;
                }
                if (i6 != 0) {
                    view.setTranslationX(-i6);
                }
            }
        }
        this.mPendingMoves.add(moveInfoExtended);
        checkIsRunning();
        return true;
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    protected void animateMoveImpl(RecyclerView.ViewHolder viewHolder, DefaultItemAnimator.MoveInfo moveInfo) {
        animateMoveImpl(viewHolder, moveInfo, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0061  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void animateMoveImpl(final RecyclerView.ViewHolder viewHolder, DefaultItemAnimator.MoveInfo moveInfo, boolean z) {
        final RecyclerView.ViewHolder viewHolder2;
        final MoveInfoExtended moveInfoExtended;
        int i;
        char c;
        final ChatMessageCell.TransitionParams transitionParams;
        final ChatMessageCell chatMessageCell;
        float f;
        boolean z2;
        ChatMessageCell.TransitionParams transitionParams2;
        final ChatMessageCell.TransitionParams transitionParams3;
        ValueAnimator valueAnimator;
        final boolean z3;
        int[] iArr;
        int i2 = moveInfo.fromX;
        int i3 = moveInfo.fromY;
        int i4 = moveInfo.toY;
        final View view = viewHolder.itemView;
        final int i5 = i4 - i3;
        AnimatorSet animatorSet = new AnimatorSet();
        if (i5 != 0) {
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, 0.0f));
        }
        this.mMoveAnimations.add(viewHolder);
        final MoveInfoExtended moveInfoExtended2 = (MoveInfoExtended) moveInfo;
        ChatActivity chatActivity = this.activity;
        if (chatActivity != null) {
            View view2 = viewHolder.itemView;
            if (view2 instanceof BotHelpCell) {
                final BotHelpCell botHelpCell = (BotHelpCell) view2;
                final float translationY = botHelpCell.getTranslationY();
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        float fFloatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        float measuredHeight = ((((ChatListItemAnimator.this.recyclerListView.getMeasuredHeight() - ChatListItemAnimator.this.activity.getChatListViewPadding()) - ChatListItemAnimator.this.activity.blurredViewBottomOffset) / 2.0f) - (botHelpCell.getMeasuredHeight() / 2.0f)) + ChatListItemAnimator.this.activity.getChatListViewPadding();
                        botHelpCell.setTranslationY((translationY * (1.0f - fFloatValue)) + ((((float) botHelpCell.getTop()) > measuredHeight ? measuredHeight - botHelpCell.getTop() : 0.0f) * fFloatValue));
                    }
                });
                animatorSet.playTogether(valueAnimatorOfFloat);
            } else {
                if (chatActivity != null) {
                    View view3 = viewHolder.itemView;
                    if (view3 instanceof UserInfoCell) {
                        final UserInfoCell userInfoCell = (UserInfoCell) view3;
                        final float translationY2 = userInfoCell.getTranslationY();
                        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
                        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.5
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                float fFloatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                                float measuredHeight = ((((ChatListItemAnimator.this.recyclerListView.getMeasuredHeight() - ChatListItemAnimator.this.activity.getChatListViewPadding()) - ChatListItemAnimator.this.activity.blurredViewBottomOffset) / 2.0f) - (userInfoCell.getMeasuredHeight() / 2.0f)) + ChatListItemAnimator.this.activity.getChatListViewPadding();
                                userInfoCell.setTranslationY((translationY2 * (1.0f - fFloatValue)) + ((((float) userInfoCell.getTop()) > measuredHeight ? measuredHeight - userInfoCell.getTop() : 0.0f) * fFloatValue));
                            }
                        });
                        animatorSet.playTogether(valueAnimatorOfFloat2);
                    }
                }
                View view4 = viewHolder.itemView;
                if (view4 instanceof ChatMessageCell) {
                    final ChatMessageCell chatMessageCell2 = (ChatMessageCell) view4;
                    ChatMessageCell.TransitionParams transitionParams4 = chatMessageCell2.getTransitionParams();
                    animatorSet.playTogether(ObjectAnimator.ofFloat(chatMessageCell2, (Property<ChatMessageCell, Float>) chatMessageCell2.ANIMATION_OFFSET_X, 0.0f));
                    if (moveInfoExtended2.animateImage) {
                        chatMessageCell2.setImageCoords(moveInfoExtended2.imageX, moveInfoExtended2.imageY, moveInfoExtended2.imageWidth, moveInfoExtended2.imageHeight);
                        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
                        final float f2 = chatMessageCell2.getCurrentMessagesGroup() == null ? transitionParams4.captionEnterProgress : chatMessageCell2.getCurrentMessagesGroup().transitionParams.captionEnterProgress;
                        final float fHasCaptionLayout = chatMessageCell2.getCurrentMessagesGroup() == null ? chatMessageCell2.hasCaptionLayout() : chatMessageCell2.getCurrentMessagesGroup().hasCaption;
                        if (f2 != fHasCaptionLayout) {
                            valueAnimator = valueAnimatorOfFloat3;
                            z3 = true;
                        } else {
                            valueAnimator = valueAnimatorOfFloat3;
                            z3 = false;
                        }
                        if (transitionParams4.animateRadius) {
                            c = 0;
                            iArr = new int[4];
                            for (int i6 = 0; i6 < 4; i6++) {
                                iArr[i6] = chatMessageCell2.getPhotoImage().getRoundRadius()[i6];
                            }
                        } else {
                            c = 0;
                            iArr = null;
                        }
                        transitionParams = transitionParams4;
                        final int[] iArr2 = iArr;
                        ValueAnimator valueAnimator2 = valueAnimator;
                        i = 2;
                        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                ChatListItemAnimator.$r8$lambda$q2tWCM9_t3HWHSWL2BYl63l1nLY(moveInfoExtended2, transitionParams, z3, f2, fHasCaptionLayout, chatMessageCell2, iArr2, viewHolder, valueAnimator3);
                            }
                        };
                        moveInfoExtended = moveInfoExtended2;
                        chatMessageCell = chatMessageCell2;
                        viewHolder2 = viewHolder;
                        valueAnimator2.addUpdateListener(animatorUpdateListener);
                        Animator[] animatorArr = new Animator[1];
                        animatorArr[c] = valueAnimator2;
                        animatorSet.playTogether(animatorArr);
                    } else {
                        moveInfoExtended = moveInfoExtended2;
                        i = 2;
                        viewHolder2 = viewHolder;
                        c = 0;
                        transitionParams = transitionParams4;
                        chatMessageCell = chatMessageCell2;
                    }
                    if (moveInfoExtended.deltaBottom != 0 || moveInfoExtended.deltaRight != 0 || moveInfoExtended.deltaTop != 0 || moveInfoExtended.deltaLeft != 0) {
                        f = 0.0f;
                        this.recyclerListView.setClipChildren(c);
                        this.recyclerListView.invalidate();
                        float[] fArr = new float[i];
                        // fill-array-data instruction
                        fArr[0] = 1.0f;
                        fArr[1] = 0.0f;
                        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(fArr);
                        if (moveInfoExtended.animateBackgroundOnly) {
                            transitionParams.toDeltaLeft = -moveInfoExtended.deltaLeft;
                            transitionParams.toDeltaRight = -moveInfoExtended.deltaRight;
                        } else {
                            transitionParams.toDeltaLeft = (-moveInfoExtended.deltaLeft) - chatMessageCell.getAnimationOffsetX();
                            transitionParams.toDeltaRight = (-moveInfoExtended.deltaRight) - chatMessageCell.getAnimationOffsetX();
                        }
                        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                ChatListItemAnimator.m2141$r8$lambda$qA9X7ovu6MzHoXlAlzncqZZGW4(moveInfoExtended, transitionParams, chatMessageCell, valueAnimator3);
                            }
                        });
                        z2 = 0;
                        animatorSet.playTogether(valueAnimatorOfFloat4);
                    } else {
                        f = 0.0f;
                        transitionParams.toDeltaLeft = 0.0f;
                        transitionParams.toDeltaRight = 0.0f;
                        z2 = c;
                    }
                    MessageObject.GroupedMessages currentMessagesGroup = chatMessageCell.getCurrentMessagesGroup();
                    if (currentMessagesGroup == null) {
                        moveInfoExtended.animateChangeGroupBackground = z2;
                    }
                    if (moveInfoExtended.animateChangeGroupBackground) {
                        float[] fArr2 = new float[i];
                        // fill-array-data instruction
                        fArr2[0] = 1.0f;
                        fArr2[1] = 0.0f;
                        ValueAnimator valueAnimatorOfFloat5 = ValueAnimator.ofFloat(fArr2);
                        float f3 = f;
                        final MessageObject.GroupedMessages.TransitionParams transitionParams5 = currentMessagesGroup.transitionParams;
                        final RecyclerListView recyclerListView = (RecyclerListView) viewHolder2.itemView.getParent();
                        final float f4 = currentMessagesGroup.transitionParams.captionEnterProgress;
                        final float f5 = currentMessagesGroup.hasCaption ? 1.0f : f3;
                        final boolean z4 = f4 != f5;
                        transitionParams2 = transitionParams;
                        valueAnimatorOfFloat5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda3
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                ChatListItemAnimator.$r8$lambda$YYecdgGZNsi0ivRcwpVm6roqNgs(transitionParams5, moveInfoExtended, z4, f4, f5, recyclerListView, valueAnimator3);
                            }
                        });
                        valueAnimatorOfFloat5.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.6
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                MessageObject.GroupedMessages.TransitionParams transitionParams6 = transitionParams5;
                                transitionParams6.backgroundChangeBounds = false;
                                transitionParams6.drawBackgroundForDeletedItems = false;
                            }
                        });
                        animatorSet.playTogether(valueAnimatorOfFloat5);
                    } else {
                        transitionParams2 = transitionParams;
                    }
                    if (moveInfoExtended.animatePinnedBottom) {
                        float[] fArr3 = new float[i];
                        // fill-array-data instruction
                        fArr3[0] = 0.0f;
                        fArr3[1] = 1.0f;
                        ValueAnimator valueAnimatorOfFloat6 = ValueAnimator.ofFloat(fArr3);
                        transitionParams3 = transitionParams2;
                        valueAnimatorOfFloat6.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda4
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                ChatListItemAnimator.m2137$r8$lambda$FBXPwnxBwHzEwANDozv1cOm6AU(transitionParams3, chatMessageCell, valueAnimator3);
                            }
                        });
                        animatorSet.playTogether(valueAnimatorOfFloat6);
                    } else {
                        transitionParams3 = transitionParams2;
                    }
                    if (moveInfoExtended.animateChangeInternal) {
                        float[] fArr4 = new float[i];
                        // fill-array-data instruction
                        fArr4[0] = 0.0f;
                        fArr4[1] = 1.0f;
                        ValueAnimator valueAnimatorOfFloat7 = ValueAnimator.ofFloat(fArr4);
                        transitionParams3.animateChange = true;
                        valueAnimatorOfFloat7.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda5
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                ChatListItemAnimator.m2140$r8$lambda$aRrFzpT1ocseHn5PxS5FEA7rNs(transitionParams3, chatMessageCell, valueAnimator3);
                            }
                        });
                        animatorSet.playTogether(valueAnimatorOfFloat7);
                    }
                } else {
                    viewHolder2 = viewHolder;
                    if (view4 instanceof ChatActionCell) {
                        final ChatActionCell chatActionCell = (ChatActionCell) view4;
                        final ChatActionCell.TransitionParams transitionParams6 = chatActionCell.getTransitionParams();
                        if (moveInfoExtended2.animateChangeInternal) {
                            ValueAnimator valueAnimatorOfFloat8 = ValueAnimator.ofFloat(0.0f, 1.0f);
                            transitionParams6.animateChange = true;
                            valueAnimatorOfFloat8.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda6
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                    ChatListItemAnimator.m2139$r8$lambda$_2wsYLNOJFHCLdCamOD89maqw(transitionParams6, chatActionCell, valueAnimator3);
                                }
                            });
                            animatorSet.playTogether(valueAnimatorOfFloat8);
                        }
                    }
                }
            }
            viewHolder2 = viewHolder;
        }
        if (z) {
            animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        } else {
            Interpolator interpolator = this.translationInterpolator;
            if (interpolator != null) {
                animatorSet.setInterpolator(interpolator);
            }
        }
        animatorSet.setDuration((long) (getMoveDuration() * (z ? 1.9f : 1.0f)));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ChatListItemAnimator.this.dispatchMoveStarting(viewHolder2);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i5 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.removeAllListeners();
                ChatListItemAnimator.this.restoreTransitionParams(viewHolder2.itemView);
                View view5 = viewHolder2.itemView;
                if (view5 instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell3 = (ChatMessageCell) view5;
                    if (chatMessageCell3.makeVisibleAfterChange) {
                        chatMessageCell3.makeVisibleAfterChange = false;
                        chatMessageCell3.setVisibility(0);
                    }
                    MessageObject.GroupedMessages currentMessagesGroup2 = chatMessageCell3.getCurrentMessagesGroup();
                    if (currentMessagesGroup2 != null) {
                        currentMessagesGroup2.transitionParams.reset();
                    }
                }
                if (ChatListItemAnimator.this.mMoveAnimations.remove(viewHolder2)) {
                    ChatListItemAnimator.this.dispatchMoveFinished(viewHolder2);
                    ChatListItemAnimator.this.dispatchFinishedWhenDone();
                }
            }
        });
        animatorSet.start();
        this.animators.put(viewHolder2, animatorSet);
    }

    public static /* synthetic */ void $r8$lambda$q2tWCM9_t3HWHSWL2BYl63l1nLY(MoveInfoExtended moveInfoExtended, ChatMessageCell.TransitionParams transitionParams, boolean z, float f, float f2, ChatMessageCell chatMessageCell, int[] iArr, RecyclerView.ViewHolder viewHolder, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f3 = 1.0f - fFloatValue;
        float f4 = (moveInfoExtended.imageX * f3) + (transitionParams.animateToImageX * fFloatValue);
        float f5 = (moveInfoExtended.imageY * f3) + (transitionParams.animateToImageY * fFloatValue);
        float f6 = (moveInfoExtended.imageWidth * f3) + (transitionParams.animateToImageW * fFloatValue);
        float f7 = (moveInfoExtended.imageHeight * f3) + (transitionParams.animateToImageH * fFloatValue);
        if (z) {
            float f8 = (f * f3) + (f2 * fFloatValue);
            transitionParams.captionEnterProgress = f8;
            if (chatMessageCell.getCurrentMessagesGroup() != null) {
                chatMessageCell.getCurrentMessagesGroup().transitionParams.captionEnterProgress = f8;
            }
        }
        if (transitionParams.animateRadius) {
            int[] iArr2 = transitionParams.animateToRadius;
            chatMessageCell.getPhotoImage().setRoundRadius((int) ((iArr[0] * f3) + (iArr2[0] * fFloatValue)), (int) ((iArr[1] * f3) + (iArr2[1] * fFloatValue)), (int) ((iArr[2] * f3) + (iArr2[2] * fFloatValue)), (int) ((iArr[3] * f3) + (iArr2[3] * fFloatValue)));
        }
        chatMessageCell.setImageCoords(f4, f5, f6, f7);
        viewHolder.itemView.invalidate();
    }

    /* JADX INFO: renamed from: $r8$lambda$qA9X7o-vu6MzHoXlAlzncqZZGW4, reason: not valid java name */
    public static /* synthetic */ void m2141$r8$lambda$qA9X7ovu6MzHoXlAlzncqZZGW4(MoveInfoExtended moveInfoExtended, ChatMessageCell.TransitionParams transitionParams, ChatMessageCell chatMessageCell, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (moveInfoExtended.animateBackgroundOnly) {
            transitionParams.deltaLeft = (-moveInfoExtended.deltaLeft) * fFloatValue;
            transitionParams.deltaRight = (-moveInfoExtended.deltaRight) * fFloatValue;
            transitionParams.deltaTop = (-moveInfoExtended.deltaTop) * fFloatValue;
            transitionParams.deltaBottom = (-moveInfoExtended.deltaBottom) * fFloatValue;
        } else {
            transitionParams.deltaLeft = ((-moveInfoExtended.deltaLeft) * fFloatValue) - chatMessageCell.getAnimationOffsetX();
            transitionParams.deltaRight = ((-moveInfoExtended.deltaRight) * fFloatValue) - chatMessageCell.getAnimationOffsetX();
            transitionParams.deltaTop = ((-moveInfoExtended.deltaTop) * fFloatValue) - chatMessageCell.getTranslationY();
            transitionParams.deltaBottom = ((-moveInfoExtended.deltaBottom) * fFloatValue) - chatMessageCell.getTranslationY();
        }
        chatMessageCell.invalidate();
    }

    public static /* synthetic */ void $r8$lambda$YYecdgGZNsi0ivRcwpVm6roqNgs(MessageObject.GroupedMessages.TransitionParams transitionParams, MoveInfoExtended moveInfoExtended, boolean z, float f, float f2, RecyclerListView recyclerListView, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        transitionParams.offsetTop = moveInfoExtended.groupOffsetTop * fFloatValue;
        transitionParams.offsetBottom = moveInfoExtended.groupOffsetBottom * fFloatValue;
        transitionParams.offsetLeft = moveInfoExtended.groupOffsetLeft * fFloatValue;
        transitionParams.offsetRight = moveInfoExtended.groupOffsetRight * fFloatValue;
        if (z) {
            transitionParams.captionEnterProgress = (f * fFloatValue) + (f2 * (1.0f - fFloatValue));
        }
        if (recyclerListView != null) {
            recyclerListView.invalidate();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$FBXPwnxBw-HzEwANDozv1cOm6AU, reason: not valid java name */
    public static /* synthetic */ void m2137$r8$lambda$FBXPwnxBwHzEwANDozv1cOm6AU(ChatMessageCell.TransitionParams transitionParams, ChatMessageCell chatMessageCell, ValueAnimator valueAnimator) {
        transitionParams.changePinnedBottomProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatMessageCell.invalidate();
    }

    /* JADX INFO: renamed from: $r8$lambda$aRrFzpT1ocseHn-5PxS5FEA7rNs, reason: not valid java name */
    public static /* synthetic */ void m2140$r8$lambda$aRrFzpT1ocseHn5PxS5FEA7rNs(ChatMessageCell.TransitionParams transitionParams, ChatMessageCell chatMessageCell, ValueAnimator valueAnimator) {
        transitionParams.animateChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatMessageCell.invalidate();
    }

    /* JADX INFO: renamed from: $r8$lambda$_2wsYLN-OJFHCLdCam-OD89maqw, reason: not valid java name */
    public static /* synthetic */ void m2139$r8$lambda$_2wsYLNOJFHCLdCamOD89maqw(ChatActionCell.TransitionParams transitionParams, ChatActionCell chatActionCell, ValueAnimator valueAnimator) {
        transitionParams.animateChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatActionCell.invalidate();
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, int i, int i2, int i3, int i4) {
        float translationX;
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, itemHolderInfo, i, i2, i3, i4);
        }
        View view = viewHolder.itemView;
        if (view instanceof ChatMessageCell) {
            translationX = ((ChatMessageCell) view).getAnimationOffsetX();
        } else {
            translationX = view.getTranslationX();
        }
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        resetAnimation(viewHolder);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        View view2 = viewHolder.itemView;
        if (view2 instanceof ChatMessageCell) {
            ((ChatMessageCell) view2).setAnimationOffsetX(translationX);
        } else {
            view2.setTranslationX(translationX);
        }
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        if (viewHolder2 != null) {
            resetAnimation(viewHolder2);
            View view3 = viewHolder2.itemView;
            if (view3 instanceof ChatMessageCell) {
                ((ChatMessageCell) view3).setAnimationOffsetX(-i5);
            } else {
                view3.setTranslationX(-i5);
            }
            viewHolder2.itemView.setTranslationY(-i6);
            viewHolder2.itemView.setAlpha(0.0f);
        }
        this.mPendingChanges.add(new DefaultItemAnimator.ChangeInfo(viewHolder, viewHolder2, i, i2, i3, i4));
        checkIsRunning();
        return true;
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    public void animateChangeImpl(final DefaultItemAnimator.ChangeInfo changeInfo) {
        RecyclerView.ViewHolder viewHolder = changeInfo.oldHolder;
        final View view = viewHolder == null ? null : viewHolder.itemView;
        RecyclerView.ViewHolder viewHolder2 = changeInfo.newHolder;
        final View view2 = viewHolder2 != null ? viewHolder2.itemView : null;
        if (view != null) {
            final ViewPropertyAnimator duration = view.animate().setDuration(getChangeDuration());
            this.mChangeAnimations.add(changeInfo.oldHolder);
            duration.translationX(changeInfo.toX - changeInfo.fromX);
            duration.translationY(changeInfo.toY - changeInfo.fromY);
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ChatListItemAnimator.this.dispatchChangeStarting(changeInfo.oldHolder, true);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setScaleX(1.0f);
                    view.setScaleX(1.0f);
                    View view3 = view;
                    if (view3 instanceof ChatMessageCell) {
                        ((ChatMessageCell) view3).setAnimationOffsetX(0.0f);
                    } else {
                        view3.setTranslationX(0.0f);
                    }
                    view.setTranslationY(0.0f);
                    if (ChatListItemAnimator.this.mChangeAnimations.remove(changeInfo.oldHolder)) {
                        ChatListItemAnimator.this.dispatchChangeFinished(changeInfo.oldHolder, true);
                        ChatListItemAnimator.this.dispatchFinishedWhenDone();
                    }
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.mChangeAnimations.add(changeInfo.newHolder);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ChatListItemAnimator.this.dispatchChangeStarting(changeInfo.newHolder, false);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorAnimate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setScaleX(1.0f);
                    view2.setScaleX(1.0f);
                    View view3 = view2;
                    if (view3 instanceof ChatMessageCell) {
                        ((ChatMessageCell) view3).setAnimationOffsetX(0.0f);
                    } else {
                        view3.setTranslationX(0.0f);
                    }
                    view2.setTranslationY(0.0f);
                    if (ChatListItemAnimator.this.mChangeAnimations.remove(changeInfo.newHolder)) {
                        ChatListItemAnimator.this.dispatchChangeFinished(changeInfo.newHolder, false);
                        ChatListItemAnimator.this.dispatchFinishedWhenDone();
                    }
                }
            }).start();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public RecyclerView.ItemAnimator.ItemHolderInfo recordPreLayoutInformation(RecyclerView.State state, RecyclerView.ViewHolder viewHolder, int i, List list) {
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfoRecordPreLayoutInformation = super.recordPreLayoutInformation(state, viewHolder, i, list);
        View view = viewHolder.itemView;
        if (!(view instanceof ChatMessageCell)) {
            return itemHolderInfoRecordPreLayoutInformation;
        }
        ItemHolderInfoExtended itemHolderInfoExtended = new ItemHolderInfoExtended();
        itemHolderInfoExtended.left = itemHolderInfoRecordPreLayoutInformation.left;
        itemHolderInfoExtended.top = itemHolderInfoRecordPreLayoutInformation.top;
        itemHolderInfoExtended.right = itemHolderInfoRecordPreLayoutInformation.right;
        itemHolderInfoExtended.bottom = itemHolderInfoRecordPreLayoutInformation.bottom;
        ChatMessageCell.TransitionParams transitionParams = ((ChatMessageCell) view).getTransitionParams();
        itemHolderInfoExtended.imageX = transitionParams.lastDrawingImageX;
        itemHolderInfoExtended.imageY = transitionParams.lastDrawingImageY;
        itemHolderInfoExtended.imageWidth = transitionParams.lastDrawingImageW;
        itemHolderInfoExtended.imageHeight = transitionParams.lastDrawingImageH;
        return itemHolderInfoExtended;
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    protected void onAllAnimationsDone() {
        super.onAllAnimationsDone();
        this.recyclerListView.setClipChildren(true);
        while (!this.runOnAnimationsEnd.isEmpty()) {
            ((Runnable) this.runOnAnimationsEnd.remove(0)).run();
        }
        cancelAnimators();
    }

    private void cancelAnimators() {
        ThanosEffect thanosEffect;
        ArrayList arrayList = new ArrayList(this.animators.values());
        this.animators.clear();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Animator animator = (Animator) obj;
            if (animator != null) {
                animator.cancel();
            }
        }
        if (this.thanosViews.isEmpty() || (thanosEffect = (ThanosEffect) this.getThanosEffectContainer.run()) == null) {
            return;
        }
        thanosEffect.kill();
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        ThanosEffect thanosEffect;
        Animator animator = (Animator) this.animators.remove(viewHolder);
        if (animator != null) {
            animator.cancel();
        }
        if (this.thanosViews.contains(viewHolder.itemView) && (thanosEffect = (ThanosEffect) this.getThanosEffectContainer.run()) != null) {
            thanosEffect.cancel(viewHolder.itemView);
        }
        super.endAnimation(viewHolder);
        restoreTransitionParams(viewHolder.itemView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreTransitionParams(View view) {
        view.setAlpha(1.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setTranslationY(0.0f);
        if (view instanceof BotHelpCell) {
            int measuredHeight = (this.recyclerListView.getMeasuredHeight() / 2) - (view.getMeasuredHeight() / 2);
            ((BotHelpCell) view).setAnimating(false);
            if (view.getTop() > measuredHeight) {
                view.setTranslationY(measuredHeight - view.getTop());
                return;
            } else {
                view.setTranslationY(0.0f);
                return;
            }
        }
        if (view instanceof UserInfoCell) {
            int measuredHeight2 = (this.recyclerListView.getMeasuredHeight() / 2) - (view.getMeasuredHeight() / 2);
            ((UserInfoCell) view).setAnimating(false);
            if (view.getTop() > measuredHeight2) {
                view.setTranslationY(measuredHeight2 - view.getTop());
                return;
            } else {
                view.setTranslationY(0.0f);
                return;
            }
        }
        if (view instanceof ChatMessageCell) {
            ChatMessageCell chatMessageCell = (ChatMessageCell) view;
            chatMessageCell.getTransitionParams().resetAnimation();
            chatMessageCell.setAnimationOffsetX(0.0f);
        } else if (view instanceof ChatActionCell) {
            ((ChatActionCell) view).getTransitionParams().resetAnimation();
        } else {
            view.setTranslationX(0.0f);
        }
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimations() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("end animations");
        }
        ArrayList arrayList = this.willChangedGroups;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((MessageObject.GroupedMessages) obj).transitionParams.isNewGroup = false;
        }
        this.willChangedGroups.clear();
        cancelAnimators();
        ChatGreetingsView chatGreetingsView = this.chatGreetingsView;
        if (chatGreetingsView != null) {
            chatGreetingsView.stickerToSendView.setAlpha(1.0f);
        }
        this.greetingsSticker = null;
        this.chatGreetingsView = null;
        for (int size2 = this.mPendingMoves.size() - 1; size2 >= 0; size2--) {
            DefaultItemAnimator.MoveInfo moveInfo = (DefaultItemAnimator.MoveInfo) this.mPendingMoves.get(size2);
            restoreTransitionParams(moveInfo.holder.itemView);
            dispatchMoveFinished(moveInfo.holder);
            this.mPendingMoves.remove(size2);
        }
        for (int size3 = this.mPendingRemovals.size() - 1; size3 >= 0; size3--) {
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) this.mPendingRemovals.get(size3);
            restoreTransitionParams(viewHolder.itemView);
            dispatchRemoveFinished(viewHolder);
            this.mPendingRemovals.remove(size3);
        }
        for (int size4 = this.mPendingAdditions.size() - 1; size4 >= 0; size4--) {
            RecyclerView.ViewHolder viewHolder2 = (RecyclerView.ViewHolder) this.mPendingAdditions.get(size4);
            restoreTransitionParams(viewHolder2.itemView);
            dispatchAddFinished(viewHolder2);
            this.mPendingAdditions.remove(size4);
        }
        for (int size5 = this.mPendingChanges.size() - 1; size5 >= 0; size5--) {
            endChangeAnimationIfNecessary((DefaultItemAnimator.ChangeInfo) this.mPendingChanges.get(size5));
        }
        this.mPendingChanges.clear();
        if (isRunning()) {
            for (int size6 = this.mMovesList.size() - 1; size6 >= 0; size6--) {
                ArrayList arrayList2 = (ArrayList) this.mMovesList.get(size6);
                for (int size7 = arrayList2.size() - 1; size7 >= 0; size7--) {
                    DefaultItemAnimator.MoveInfo moveInfo2 = (DefaultItemAnimator.MoveInfo) arrayList2.get(size7);
                    restoreTransitionParams(moveInfo2.holder.itemView);
                    dispatchMoveFinished(moveInfo2.holder);
                    arrayList2.remove(size7);
                    if (arrayList2.isEmpty()) {
                        this.mMovesList.remove(arrayList2);
                    }
                }
            }
            for (int size8 = this.mAdditionsList.size() - 1; size8 >= 0; size8--) {
                ArrayList arrayList3 = (ArrayList) this.mAdditionsList.get(size8);
                for (int size9 = arrayList3.size() - 1; size9 >= 0; size9--) {
                    RecyclerView.ViewHolder viewHolder3 = (RecyclerView.ViewHolder) arrayList3.get(size9);
                    restoreTransitionParams(viewHolder3.itemView);
                    dispatchAddFinished(viewHolder3);
                    arrayList3.remove(size9);
                    if (arrayList3.isEmpty()) {
                        this.mAdditionsList.remove(arrayList3);
                    }
                }
            }
            for (int size10 = this.mChangesList.size() - 1; size10 >= 0; size10--) {
                ArrayList arrayList4 = (ArrayList) this.mChangesList.get(size10);
                for (int size11 = arrayList4.size() - 1; size11 >= 0; size11--) {
                    endChangeAnimationIfNecessary((DefaultItemAnimator.ChangeInfo) arrayList4.get(size11));
                    if (arrayList4.isEmpty()) {
                        this.mChangesList.remove(arrayList4);
                    }
                }
            }
            cancelAll(this.mRemoveAnimations);
            cancelAll(this.mMoveAnimations);
            cancelAll(this.mAddAnimations);
            cancelAll(this.mChangeAnimations);
            dispatchAnimationsFinished();
        }
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    protected boolean endChangeAnimationIfNecessary(DefaultItemAnimator.ChangeInfo changeInfo, RecyclerView.ViewHolder viewHolder) {
        ThanosEffect thanosEffect;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("end change if necessary");
        }
        Animator animator = (Animator) this.animators.remove(viewHolder);
        if (animator != null) {
            animator.cancel();
        }
        if (this.thanosViews.contains(viewHolder.itemView) && (thanosEffect = (ThanosEffect) this.getThanosEffectContainer.run()) != null) {
            thanosEffect.cancel(viewHolder.itemView);
        }
        boolean z = false;
        if (changeInfo.newHolder == viewHolder) {
            changeInfo.newHolder = null;
        } else {
            if (changeInfo.oldHolder != viewHolder) {
                return false;
            }
            changeInfo.oldHolder = null;
            z = true;
        }
        restoreTransitionParams(viewHolder.itemView);
        dispatchChangeFinished(viewHolder, z);
        return true;
    }

    public void groupWillTransformToSingleMessage(MessageObject.GroupedMessages groupedMessages) {
        this.willRemovedGroup.put(Integer.valueOf(groupedMessages.messages.get(0).getId()), groupedMessages);
    }

    public void groupWillChanged(MessageObject.GroupedMessages groupedMessages) {
        if (groupedMessages == null) {
            return;
        }
        if (groupedMessages.messages.size() == 0) {
            groupedMessages.transitionParams.drawBackgroundForDeletedItems = true;
            return;
        }
        MessageObject.GroupedMessages.TransitionParams transitionParams = groupedMessages.transitionParams;
        if (transitionParams.top == 0 && transitionParams.bottom == 0 && transitionParams.left == 0 && transitionParams.right == 0) {
            int childCount = this.recyclerListView.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = this.recyclerListView.getChildAt(i);
                if (childAt instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                    MessageObject messageObject = chatMessageCell.getMessageObject();
                    if (chatMessageCell.getTransitionParams().wasDraw && groupedMessages.messages.contains(messageObject)) {
                        groupedMessages.transitionParams.top = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableTop();
                        groupedMessages.transitionParams.bottom = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableBottom();
                        groupedMessages.transitionParams.left = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableLeft();
                        groupedMessages.transitionParams.right = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableRight();
                        groupedMessages.transitionParams.drawCaptionLayout = chatMessageCell.hasCaptionLayout();
                        groupedMessages.transitionParams.pinnedTop = chatMessageCell.isPinnedTop();
                        groupedMessages.transitionParams.pinnedBotton = chatMessageCell.isPinnedBottom();
                        groupedMessages.transitionParams.isNewGroup = true;
                        break;
                    }
                }
                i++;
            }
        }
        this.willChangedGroups.add(groupedMessages);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x024e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void animateAddImpl(final RecyclerView.ViewHolder viewHolder) {
        char c;
        boolean z;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("animate add impl");
        }
        final View view = viewHolder.itemView;
        this.mAddAnimations.add(viewHolder);
        if (viewHolder == this.greetingsSticker) {
            view.setAlpha(1.0f);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        if (view instanceof ChatMessageCell) {
            ChatMessageCell chatMessageCell = (ChatMessageCell) view;
            if (chatMessageCell.getAnimationOffsetX() != 0.0f) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(chatMessageCell, (Property<ChatMessageCell, Float>) chatMessageCell.ANIMATION_OFFSET_X, chatMessageCell.getAnimationOffsetX(), 0.0f));
            }
            chatMessageCell.setPivotX(chatMessageCell.getBackgroundDrawableLeft() + ((chatMessageCell.getBackgroundDrawableRight() - chatMessageCell.getBackgroundDrawableLeft()) / 2.0f));
            view.animate().translationY(0.0f).setDuration(getAddDuration()).start();
        } else {
            view.animate().translationX(0.0f).translationY(0.0f).setDuration(getAddDuration()).start();
        }
        long jMax = (long) ((1.0f - Math.max(0.0f, Math.min(1.0f, view.getBottom() / this.recyclerListView.getMeasuredHeight()))) * 100.0f);
        if (view instanceof ChatMessageCell) {
            if (viewHolder == this.greetingsSticker) {
                ChatGreetingsView chatGreetingsView = this.chatGreetingsView;
                if (chatGreetingsView != null) {
                    chatGreetingsView.stickerToSendView.setAlpha(0.0f);
                }
                this.recyclerListView.setClipChildren(false);
                final ChatMessageCell chatMessageCell2 = (ChatMessageCell) view;
                View view2 = (View) this.chatGreetingsView.getParent();
                float x = this.chatGreetingsView.stickerToSendView.getX() + this.chatGreetingsView.getX() + view2.getX();
                float y = this.chatGreetingsView.stickerToSendView.getY() + this.chatGreetingsView.getY() + view2.getY();
                float imageX = chatMessageCell2.getPhotoImage().getImageX() + this.recyclerListView.getX() + chatMessageCell2.getX();
                float imageY = chatMessageCell2.getPhotoImage().getImageY() + this.recyclerListView.getY() + chatMessageCell2.getY();
                final float width = this.chatGreetingsView.stickerToSendView.getWidth();
                c = 0;
                final float height = this.chatGreetingsView.stickerToSendView.getHeight();
                final float imageWidth = chatMessageCell2.getPhotoImage().getImageWidth();
                final float imageHeight = chatMessageCell2.getPhotoImage().getImageHeight();
                final float f = x - imageX;
                final float f2 = y - imageY;
                final float imageX2 = chatMessageCell2.getPhotoImage().getImageX();
                final float imageY2 = chatMessageCell2.getPhotoImage().getImageY();
                chatMessageCell2.getTransitionParams().imageChangeBoundsTransition = true;
                chatMessageCell2.getTransitionParams().animateDrawingTimeAlpha = true;
                chatMessageCell2.getPhotoImage().setImageCoords(imageX2 + f, imageX2 + f2, width, height);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda8
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ChatListItemAnimator.$r8$lambda$KbxCrKnHJmMtgf00BJ3KTcoIZDE(chatMessageCell2, imageX2, f, imageY2, f2, width, imageWidth, height, imageHeight, valueAnimator);
                    }
                });
                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.10
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        chatMessageCell2.getTransitionParams().resetAnimation();
                        chatMessageCell2.getPhotoImage().setImageCoords(imageX2, imageY2, imageWidth, imageHeight);
                        if (ChatListItemAnimator.this.chatGreetingsView != null) {
                            ChatListItemAnimator.this.chatGreetingsView.stickerToSendView.setAlpha(1.0f);
                        }
                        chatMessageCell2.invalidate();
                    }
                });
                animatorSet.play(valueAnimatorOfFloat);
                jMax = jMax;
                z = false;
                view.setAlpha(0.0f);
                Property property = View.ALPHA;
                float[] fArr = new float[2];
                fArr[c] = view.getAlpha();
                fArr[1] = 1.0f;
                Animator[] animatorArr = new Animator[1];
                animatorArr[c] = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
                animatorSet.playTogether(animatorArr);
                if (z) {
                    view.setScaleX(0.9f);
                    view.setScaleY(0.9f);
                    Property property2 = View.SCALE_Y;
                    float[] fArr2 = new float[2];
                    fArr2[c] = view.getScaleY();
                    fArr2[1] = 1.0f;
                    Animator[] animatorArr2 = new Animator[1];
                    animatorArr2[c] = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
                    animatorSet.playTogether(animatorArr2);
                    Property property3 = View.SCALE_X;
                    float[] fArr3 = new float[2];
                    fArr3[c] = view.getScaleX();
                    fArr3[1] = 1.0f;
                    Animator[] animatorArr3 = new Animator[1];
                    animatorArr3[c] = ObjectAnimator.ofFloat(view, (Property<View, Float>) property3, fArr3);
                    animatorSet.playTogether(animatorArr3);
                } else {
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                }
                if (viewHolder == this.greetingsSticker) {
                    animatorSet.setDuration(350L);
                    animatorSet.setInterpolator(new OvershootInterpolator());
                } else {
                    animatorSet.setStartDelay(jMax);
                    animatorSet.setDuration(250L);
                }
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.11
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        ChatListItemAnimator.this.dispatchAddStarting(viewHolder);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        view.setAlpha(1.0f);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        animator.removeAllListeners();
                        view.setAlpha(1.0f);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setTranslationY(0.0f);
                        view.setTranslationY(0.0f);
                        if (ChatListItemAnimator.this.mAddAnimations.remove(viewHolder)) {
                            ChatListItemAnimator.this.dispatchAddFinished(viewHolder);
                            ChatListItemAnimator.this.dispatchFinishedWhenDone();
                        }
                    }
                });
                this.animators.put(viewHolder, animatorSet);
                animatorSet.start();
            }
            c = 0;
            MessageObject.GroupedMessages currentMessagesGroup = ((ChatMessageCell) view).getCurrentMessagesGroup();
            if (currentMessagesGroup != null) {
                Long l = (Long) this.groupIdToEnterDelay.get(Long.valueOf(currentMessagesGroup.groupId));
                if (l == null) {
                    this.groupIdToEnterDelay.put(Long.valueOf(currentMessagesGroup.groupId), Long.valueOf(jMax));
                    jMax = jMax;
                    if (currentMessagesGroup != null) {
                        animatorSet.setStartDelay(140L);
                    }
                } else {
                    jMax = l.longValue();
                    if (currentMessagesGroup != null) {
                    }
                }
            } else {
                jMax = jMax;
                if (currentMessagesGroup != null && currentMessagesGroup.transitionParams.backgroundChangeBounds) {
                    animatorSet.setStartDelay(140L);
                }
            }
            view.setAlpha(0.0f);
            Property property4 = View.ALPHA;
            float[] fArr4 = new float[2];
            fArr4[c] = view.getAlpha();
            fArr4[1] = 1.0f;
            Animator[] animatorArr4 = new Animator[1];
            animatorArr4[c] = ObjectAnimator.ofFloat(view, (Property<View, Float>) property4, fArr4);
            animatorSet.playTogether(animatorArr4);
            if (z) {
            }
            if (viewHolder == this.greetingsSticker) {
            }
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ChatListItemAnimator.this.dispatchAddStarting(viewHolder);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    view.setAlpha(1.0f);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animator.removeAllListeners();
                    view.setAlpha(1.0f);
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                    view.setTranslationY(0.0f);
                    view.setTranslationY(0.0f);
                    if (ChatListItemAnimator.this.mAddAnimations.remove(viewHolder)) {
                        ChatListItemAnimator.this.dispatchAddFinished(viewHolder);
                        ChatListItemAnimator.this.dispatchFinishedWhenDone();
                    }
                }
            });
            this.animators.put(viewHolder, animatorSet);
            animatorSet.start();
        }
        c = 0;
        z = true;
        view.setAlpha(0.0f);
        Property property42 = View.ALPHA;
        float[] fArr42 = new float[2];
        fArr42[c] = view.getAlpha();
        fArr42[1] = 1.0f;
        Animator[] animatorArr42 = new Animator[1];
        animatorArr42[c] = ObjectAnimator.ofFloat(view, (Property<View, Float>) property42, fArr42);
        animatorSet.playTogether(animatorArr42);
        if (z) {
        }
        if (viewHolder == this.greetingsSticker) {
        }
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ChatListItemAnimator.this.dispatchAddStarting(viewHolder);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.removeAllListeners();
                view.setAlpha(1.0f);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setTranslationY(0.0f);
                view.setTranslationY(0.0f);
                if (ChatListItemAnimator.this.mAddAnimations.remove(viewHolder)) {
                    ChatListItemAnimator.this.dispatchAddFinished(viewHolder);
                    ChatListItemAnimator.this.dispatchFinishedWhenDone();
                }
            }
        });
        this.animators.put(viewHolder, animatorSet);
        animatorSet.start();
    }

    public static /* synthetic */ void $r8$lambda$KbxCrKnHJmMtgf00BJ3KTcoIZDE(ChatMessageCell chatMessageCell, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatMessageCell.getTransitionParams().animateChangeProgress = fFloatValue;
        if (chatMessageCell.getTransitionParams().animateChangeProgress > 1.0f) {
            chatMessageCell.getTransitionParams().animateChangeProgress = 1.0f;
        }
        float f9 = 1.0f - fFloatValue;
        chatMessageCell.getPhotoImage().setImageCoords(f + (f2 * f9), f3 + (f4 * f9), (f5 * f9) + (f6 * fFloatValue), (f7 * f9) + (f8 * fFloatValue));
        chatMessageCell.invalidate();
    }

    protected void animateRemoveImpl(final RecyclerView.ViewHolder viewHolder, boolean z) {
        Utilities.Callback0Return callback0Return;
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            sb.append("animate remove impl ");
            sb.append(z ? " with thanos" : _UrlKt.FRAGMENT_ENCODE_SET);
            FileLog.m1133d(sb.toString());
        }
        final View view = viewHolder.itemView;
        this.mRemoveAnimations.add(viewHolder);
        if (z && (callback0Return = this.getThanosEffectContainer) != null) {
            ThanosEffect thanosEffect = (ThanosEffect) callback0Return.run();
            dispatchRemoveStarting(viewHolder);
            thanosEffect.animate(view, new Runnable() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$animateRemoveImpl$9(view, viewHolder);
                }
            });
            this.thanosViews.add(view);
        } else {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), 0.0f);
            dispatchRemoveStarting(viewHolder);
            objectAnimatorOfFloat.setDuration(getRemoveDuration());
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.12
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animator.removeAllListeners();
                    view.setAlpha(1.0f);
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    if (ChatListItemAnimator.this.mRemoveAnimations.remove(viewHolder)) {
                        ChatListItemAnimator.this.dispatchRemoveFinished(viewHolder);
                        ChatListItemAnimator.this.dispatchFinishedWhenDone();
                    }
                }
            });
            this.animators.put(viewHolder, objectAnimatorOfFloat);
            objectAnimatorOfFloat.start();
        }
        this.recyclerListView.stopScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateRemoveImpl$9(View view, RecyclerView.ViewHolder viewHolder) {
        view.setVisibility(0);
        if (this.mRemoveAnimations.remove(viewHolder)) {
            dispatchRemoveFinished(viewHolder);
            dispatchFinishedWhenDone();
        }
        this.thanosViews.remove(view);
    }

    private void animateRemoveGroupImpl(final ArrayList arrayList) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("animate remove group impl with thanos");
        }
        this.mRemoveAnimations.addAll(arrayList);
        ThanosEffect thanosEffect = (ThanosEffect) this.getThanosEffectContainer.run();
        for (int i = 0; i < arrayList.size(); i++) {
            dispatchRemoveStarting((RecyclerView.ViewHolder) arrayList.get(i));
        }
        final ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((RecyclerView.ViewHolder) arrayList.get(i2)).itemView);
        }
        thanosEffect.animateGroup(arrayList2, new Runnable() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$animateRemoveGroupImpl$10(arrayList2, arrayList);
            }
        });
        this.thanosViews.add((View) arrayList2.get(0));
        this.recyclerListView.stopScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateRemoveGroupImpl$10(ArrayList arrayList, ArrayList arrayList2) {
        for (int i = 0; i < arrayList.size(); i++) {
            ((View) arrayList.get(i)).setVisibility(0);
        }
        if (this.mRemoveAnimations.removeAll(arrayList2)) {
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                dispatchRemoveFinished((RecyclerView.ViewHolder) arrayList2.get(i2));
            }
            dispatchFinishedWhenDone();
        }
        this.thanosViews.removeAll(arrayList);
    }

    public void setShouldAnimateEnterFromBottom(boolean z) {
        this.shouldAnimateEnterFromBottom = z;
    }

    public void onDestroy() {
        onAllAnimationsDone();
    }

    public boolean willRemoved(View view) {
        RecyclerView.ViewHolder childViewHolder = this.recyclerListView.getChildViewHolder(view);
        if (childViewHolder != null) {
            return this.mPendingRemovals.contains(childViewHolder) || this.mRemoveAnimations.contains(childViewHolder);
        }
        return false;
    }

    public boolean willAddedFromAlpha(View view) {
        RecyclerView.ViewHolder childViewHolder;
        if (this.shouldAnimateEnterFromBottom || (childViewHolder = this.recyclerListView.getChildViewHolder(view)) == null) {
            return false;
        }
        return this.mPendingAdditions.contains(childViewHolder) || this.mAddAnimations.contains(childViewHolder);
    }

    public void onGreetingStickerTransition(RecyclerView.ViewHolder viewHolder, ChatGreetingsView chatGreetingsView) {
        this.greetingsSticker = viewHolder;
        this.chatGreetingsView = chatGreetingsView;
        this.shouldAnimateEnterFromBottom = false;
    }

    public void setReversePositions(boolean z) {
        this.reversePositions = z;
    }

    class MoveInfoExtended extends DefaultItemAnimator.MoveInfo {
        public boolean animateBackgroundOnly;
        public boolean animateChangeGroupBackground;
        public boolean animateChangeInternal;
        boolean animateImage;
        public boolean animatePinnedBottom;
        boolean animateRemoveGroup;
        int deltaBottom;
        int deltaLeft;
        int deltaRight;
        int deltaTop;
        public int groupOffsetBottom;
        public int groupOffsetLeft;
        public int groupOffsetRight;
        public int groupOffsetTop;
        float imageHeight;
        float imageWidth;
        float imageX;
        float imageY;

        MoveInfoExtended(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
            super(viewHolder, i, i2, i3, i4);
        }
    }

    class ItemHolderInfoExtended extends RecyclerView.ItemAnimator.ItemHolderInfo {
        float imageHeight;
        float imageWidth;
        float imageX;
        float imageY;

        ItemHolderInfoExtended() {
        }
    }

    public void prepareThanos(RecyclerView.ViewHolder viewHolder) {
        MessageObject messageObject;
        if (viewHolder == null) {
            return;
        }
        this.toBeSnapped.add(viewHolder);
        View view = viewHolder.itemView;
        if (!(view instanceof ChatMessageCell) || (messageObject = ((ChatMessageCell) view).getMessageObject()) == null) {
            return;
        }
        messageObject.deletedByThanos = true;
    }

    public void setOnSnapMessage(Utilities.Callback0Return callback0Return, Utilities.Callback0Return callback0Return2) {
        this.supportsThanosEffectContainer = callback0Return;
        this.getThanosEffectContainer = callback0Return2;
    }
}
