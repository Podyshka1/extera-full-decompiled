package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.BuildVars;

/* JADX INFO: loaded from: classes.dex */
public class DefaultItemAnimator extends SimpleItemAnimator {
    private static final boolean DEBUG = BuildVars.DEBUG_VERSION;
    private static TimeInterpolator sDefaultInterpolator;
    private Runnable animationUpdatesListener;
    protected Interpolator translationInterpolator;
    protected ArrayList mPendingRemovals = new ArrayList();
    protected ArrayList mPendingAdditions = new ArrayList();
    protected ArrayList mPendingMoves = new ArrayList();
    protected ArrayList mPendingChanges = new ArrayList();
    ArrayList mAdditionsList = new ArrayList();
    ArrayList mMovesList = new ArrayList();
    ArrayList mChangesList = new ArrayList();
    ArrayList currentMoves = new ArrayList();
    ArrayList currentChanges = new ArrayList();
    protected ArrayList mAddAnimations = new ArrayList();
    protected ArrayList mMoveAnimations = new ArrayList();
    protected ArrayList mRemoveAnimations = new ArrayList();
    ArrayList mChangeAnimations = new ArrayList();
    protected boolean delayAnimations = true;
    private long delayIncrement = 0;

    protected void afterAnimateChangeImpl(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
    }

    protected void afterAnimateMoveImpl(RecyclerView.ViewHolder viewHolder) {
    }

    protected float animateByScale(View view) {
        return 0.0f;
    }

    protected void beforeAnimateChangeImpl(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
    }

    protected void beforeAnimateMoveImpl(RecyclerView.ViewHolder viewHolder) {
    }

    public void checkIsRunning() {
    }

    protected void onAddAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
    }

    protected void onAllAnimationsDone() {
    }

    protected void onChangeAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
    }

    protected void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
    }

    protected void onRemoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
    }

    public void setDelayIncrement(long j) {
        this.delayIncrement = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static class MoveInfo {
        public int fromX;
        public int fromY;
        public RecyclerView.ViewHolder holder;
        public int toX;
        public int toY;

        public MoveInfo(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
            this.holder = viewHolder;
            this.fromX = i;
            this.fromY = i2;
            this.toX = i3;
            this.toY = i4;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    protected static class ChangeInfo {
        public int fromX;
        public int fromY;
        public RecyclerView.ViewHolder newHolder;
        public RecyclerView.ViewHolder oldHolder;
        public int toX;
        public int toY;

        private ChangeInfo(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            this.oldHolder = viewHolder;
            this.newHolder = viewHolder2;
        }

        ChangeInfo(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
            this(viewHolder, viewHolder2);
            this.fromX = i;
            this.fromY = i2;
            this.toX = i3;
            this.toY = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.oldHolder + ", newHolder=" + this.newHolder + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + '}';
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void runPendingAnimations() {
        boolean zIsEmpty = this.mPendingRemovals.isEmpty();
        boolean zIsEmpty2 = this.mPendingMoves.isEmpty();
        boolean zIsEmpty3 = this.mPendingChanges.isEmpty();
        boolean zIsEmpty4 = this.mPendingAdditions.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        ArrayList arrayList = this.mPendingRemovals;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            animateRemoveImpl((RecyclerView.ViewHolder) obj);
        }
        this.mPendingRemovals.clear();
        if (!zIsEmpty2) {
            final ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(this.mPendingMoves);
            this.mMovesList.add(arrayList2);
            this.mPendingMoves.clear();
            Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList arrayList3 = arrayList2;
                    int size2 = arrayList3.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        Object obj2 = arrayList3.get(i2);
                        i2++;
                        MoveInfo moveInfo = (MoveInfo) obj2;
                        DefaultItemAnimator.this.animateMoveImpl(moveInfo.holder, moveInfo);
                        DefaultItemAnimator.this.currentMoves.add(moveInfo);
                    }
                    arrayList2.clear();
                    DefaultItemAnimator.this.mMovesList.remove(arrayList2);
                }
            };
            if (this.delayAnimations && !zIsEmpty) {
                ViewCompat.postOnAnimationDelayed(((MoveInfo) arrayList2.get(0)).holder.itemView, runnable, getMoveAnimationDelay());
            } else {
                runnable.run();
            }
        }
        if (!zIsEmpty3) {
            final ArrayList arrayList3 = new ArrayList();
            arrayList3.addAll(this.mPendingChanges);
            this.mChangesList.add(arrayList3);
            this.mPendingChanges.clear();
            Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.2
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList arrayList4 = arrayList3;
                    int size2 = arrayList4.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        Object obj2 = arrayList4.get(i2);
                        i2++;
                        ChangeInfo changeInfo = (ChangeInfo) obj2;
                        DefaultItemAnimator.this.animateChangeImpl(changeInfo);
                        DefaultItemAnimator.this.currentChanges.add(changeInfo);
                    }
                    arrayList3.clear();
                    DefaultItemAnimator.this.mChangesList.remove(arrayList3);
                }
            };
            if (this.delayAnimations && !zIsEmpty) {
                ViewCompat.postOnAnimationDelayed(((ChangeInfo) arrayList3.get(0)).oldHolder.itemView, runnable2, getRemoveDuration());
            } else {
                runnable2.run();
            }
        }
        if (zIsEmpty4) {
            return;
        }
        final ArrayList arrayList4 = new ArrayList();
        arrayList4.addAll(this.mPendingAdditions);
        this.mAdditionsList.add(arrayList4);
        this.mPendingAdditions.clear();
        Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.3
            @Override // java.lang.Runnable
            public void run() {
                int iMin = Integer.MAX_VALUE;
                for (int size2 = arrayList4.size() - 1; size2 >= 0; size2--) {
                    iMin = Math.min(iMin, ((RecyclerView.ViewHolder) arrayList4.get(size2)).getAdapterPosition());
                }
                for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
                    RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) arrayList4.get(size3);
                    DefaultItemAnimator.this.animateAddImpl(viewHolder, ((long) (viewHolder.getAdapterPosition() - iMin)) * DefaultItemAnimator.this.delayIncrement);
                }
                arrayList4.clear();
                DefaultItemAnimator.this.mAdditionsList.remove(arrayList4);
            }
        };
        if (this.delayAnimations && (!zIsEmpty || !zIsEmpty2 || !zIsEmpty3)) {
            ViewCompat.postOnAnimationDelayed(((RecyclerView.ViewHolder) arrayList4.get(0)).itemView, runnable3, getAddAnimationDelay(!zIsEmpty ? getRemoveDuration() : 0L, !zIsEmpty2 ? getMoveDuration() : 0L, zIsEmpty3 ? 0L : getChangeDuration()));
            return;
        }
        runnable3.run();
    }

    protected long getAddAnimationDelay(long j, long j2, long j3) {
        return j + Math.max(j2, j3);
    }

    protected long getMoveAnimationDelay() {
        return getRemoveDuration();
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateRemove(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        resetAnimation(viewHolder);
        this.mPendingRemovals.add(viewHolder);
        checkIsRunning();
        return true;
    }

    public void setDelayAnimations(boolean z) {
        this.delayAnimations = z;
    }

    protected void animateRemoveImpl(RecyclerView.ViewHolder viewHolder) {
        animateRemoveImpl(viewHolder, 0L);
    }

    public void animateRemoveImpl(final RecyclerView.ViewHolder viewHolder, long j) {
        final View view = viewHolder.itemView;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mRemoveAnimations.add(viewHolder);
        if (getRemoveDelay() > 0) {
            view.bringToFront();
        }
        viewPropertyAnimatorAnimate.setDuration(getRemoveDuration()).setStartDelay(getRemoveDelay() + j).setInterpolator(getRemoveInterpolator()).alpha(0.0f).scaleX(1.0f - animateByScale(view)).scaleY(1.0f - animateByScale(view));
        viewPropertyAnimatorAnimate.setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.DefaultItemAnimator$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateRemoveImpl$0(viewHolder, valueAnimator);
            }
        });
        viewPropertyAnimatorAnimate.setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DefaultItemAnimator.this.dispatchRemoveStarting(viewHolder);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                view.setAlpha(1.0f);
                if (DefaultItemAnimator.this.animateByScale(view) > 0.0f) {
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                }
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                DefaultItemAnimator.this.onRemoveAnimationUpdate(viewHolder);
                if (DefaultItemAnimator.this.animationUpdatesListener != null) {
                    DefaultItemAnimator.this.animationUpdatesListener.run();
                }
                DefaultItemAnimator.this.dispatchRemoveFinished(viewHolder);
                DefaultItemAnimator.this.mRemoveAnimations.remove(viewHolder);
                DefaultItemAnimator.this.dispatchFinishedWhenDone();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateRemoveImpl$0(RecyclerView.ViewHolder viewHolder, ValueAnimator valueAnimator) {
        onRemoveAnimationUpdate(viewHolder);
        Runnable runnable = this.animationUpdatesListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateAdd(RecyclerView.ViewHolder viewHolder) {
        resetAnimation(viewHolder);
        viewHolder.itemView.setAlpha(0.0f);
        if (animateByScale(viewHolder.itemView) > 0.0f) {
            View view = viewHolder.itemView;
            view.setScaleX(1.0f - animateByScale(view));
            View view2 = viewHolder.itemView;
            view2.setScaleY(1.0f - animateByScale(view2));
        }
        this.mPendingAdditions.add(viewHolder);
        checkIsRunning();
        return true;
    }

    public void animateAddImpl(final RecyclerView.ViewHolder viewHolder, long j) {
        final View view = viewHolder.itemView;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mAddAnimations.add(viewHolder);
        viewPropertyAnimatorAnimate.alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(getAddDuration()).setStartDelay(getAddDelay() + j).setInterpolator(getAddInterpolator());
        viewPropertyAnimatorAnimate.setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.DefaultItemAnimator$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateAddImpl$1(viewHolder, valueAnimator);
            }
        });
        viewPropertyAnimatorAnimate.setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DefaultItemAnimator.this.dispatchAddStarting(viewHolder);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
                if (DefaultItemAnimator.this.animateByScale(view) > 0.0f) {
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                DefaultItemAnimator.this.onAddAnimationUpdate(viewHolder);
                if (DefaultItemAnimator.this.animationUpdatesListener != null) {
                    DefaultItemAnimator.this.animationUpdatesListener.run();
                }
                DefaultItemAnimator.this.dispatchAddFinished(viewHolder);
                DefaultItemAnimator.this.mAddAnimations.remove(viewHolder);
                DefaultItemAnimator.this.dispatchFinishedWhenDone();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateAddImpl$1(RecyclerView.ViewHolder viewHolder, ValueAnimator valueAnimator) {
        onAddAnimationUpdate(viewHolder);
        Runnable runnable = this.animationUpdatesListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) viewHolder.itemView.getTranslationY());
        resetAnimation(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            dispatchMoveFinished(viewHolder);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.mPendingMoves.add(new MoveInfo(viewHolder, translationX, translationY, i3, i4));
        checkIsRunning();
        return true;
    }

    protected void animateMoveImpl(RecyclerView.ViewHolder viewHolder, MoveInfo moveInfo) {
        animateMoveImpl(viewHolder, moveInfo, 0L);
    }

    public void animateMoveImpl(final RecyclerView.ViewHolder viewHolder, MoveInfo moveInfo, long j) {
        int i = moveInfo.fromX;
        int i2 = moveInfo.fromY;
        int i3 = moveInfo.toX;
        int i4 = moveInfo.toY;
        final View view = viewHolder.itemView;
        final int i5 = i3 - i;
        final int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mMoveAnimations.add(viewHolder);
        viewPropertyAnimatorAnimate.setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.DefaultItemAnimator$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateMoveImpl$2(viewHolder, valueAnimator);
            }
        });
        Interpolator interpolator = this.translationInterpolator;
        if (interpolator != null) {
            viewPropertyAnimatorAnimate.setInterpolator(interpolator);
        } else {
            viewPropertyAnimatorAnimate.setInterpolator(getMoveInterpolator());
        }
        beforeAnimateMoveImpl(viewHolder);
        viewPropertyAnimatorAnimate.setDuration(getMoveDuration()).setStartDelay(getMoveDelay() + j).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DefaultItemAnimator.this.dispatchMoveStarting(viewHolder);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i5 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i6 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                DefaultItemAnimator.this.onMoveAnimationUpdate(viewHolder);
                if (DefaultItemAnimator.this.animationUpdatesListener != null) {
                    DefaultItemAnimator.this.animationUpdatesListener.run();
                }
                DefaultItemAnimator.this.dispatchMoveFinished(viewHolder);
                DefaultItemAnimator.this.mMoveAnimations.remove(viewHolder);
                DefaultItemAnimator.this.dispatchFinishedWhenDone();
                DefaultItemAnimator.this.afterAnimateMoveImpl(viewHolder);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateMoveImpl$2(RecyclerView.ViewHolder viewHolder, ValueAnimator valueAnimator) {
        onMoveAnimationUpdate(viewHolder);
        Runnable runnable = this.animationUpdatesListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, int i, int i2, int i3, int i4) {
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, itemHolderInfo, i, i2, i3, i4);
        }
        float translationX = viewHolder.itemView.getTranslationX();
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        resetAnimation(viewHolder);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        viewHolder.itemView.setTranslationX(translationX);
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        if (viewHolder2 != null) {
            resetAnimation(viewHolder2);
            viewHolder2.itemView.setTranslationX(-i5);
            viewHolder2.itemView.setTranslationY(-i6);
            viewHolder2.itemView.setAlpha(0.5f);
            if (animateByScale(viewHolder2.itemView) > 0.0f) {
                View view = viewHolder2.itemView;
                view.setScaleX(1.0f - animateByScale(view));
                View view2 = viewHolder2.itemView;
                view2.setScaleY(1.0f - animateByScale(view2));
            }
        }
        this.mPendingChanges.add(new ChangeInfo(viewHolder, viewHolder2, i, i2, i3, i4));
        checkIsRunning();
        return true;
    }

    public void animateChangeImpl(ChangeInfo changeInfo) {
        animateChangeImpl(changeInfo, 0L);
    }

    public void animateChangeImpl(final ChangeInfo changeInfo, long j) {
        RecyclerView.ViewHolder viewHolder = changeInfo.oldHolder;
        final View view = viewHolder == null ? null : viewHolder.itemView;
        RecyclerView.ViewHolder viewHolder2 = changeInfo.newHolder;
        final View view2 = viewHolder2 != null ? viewHolder2.itemView : null;
        beforeAnimateChangeImpl(viewHolder, viewHolder2);
        if (view != null) {
            final ViewPropertyAnimator startDelay = view.animate().setDuration(getChangeRemoveDuration()).setStartDelay(getChangeDelay());
            this.mChangeAnimations.add(changeInfo.oldHolder);
            startDelay.translationX(changeInfo.toX - changeInfo.fromX);
            startDelay.translationY(changeInfo.toY - changeInfo.fromY);
            startDelay.alpha(0.0f);
            if (animateByScale(view) > 0.0f) {
                startDelay.scaleX(1.0f - animateByScale(view)).scaleY(1.0f - animateByScale(view));
            }
            startDelay.setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.DefaultItemAnimator$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$animateChangeImpl$3(changeInfo, valueAnimator);
                }
            });
            startDelay.setStartDelay(j).setInterpolator(getChangeInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    DefaultItemAnimator.this.dispatchChangeStarting(changeInfo.oldHolder, true);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    startDelay.setListener(null);
                    view.setAlpha(1.0f);
                    if (DefaultItemAnimator.this.animateByScale(view) > 0.0f) {
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                    }
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    DefaultItemAnimator.this.onChangeAnimationUpdate(changeInfo.oldHolder);
                    if (DefaultItemAnimator.this.animationUpdatesListener != null) {
                        DefaultItemAnimator.this.animationUpdatesListener.run();
                    }
                    DefaultItemAnimator.this.dispatchChangeFinished(changeInfo.oldHolder, true);
                    DefaultItemAnimator.this.mChangeAnimations.remove(changeInfo.oldHolder);
                    DefaultItemAnimator.this.dispatchFinishedWhenDone();
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.mChangeAnimations.add(changeInfo.newHolder);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(getChangeAddDuration()).setStartDelay(getChangeDelay() + (getChangeDuration() - getChangeAddDuration()) + j).setInterpolator(getChangeInterpolator()).alpha(1.0f);
            if (animateByScale(view2) > 0.0f) {
                viewPropertyAnimatorAnimate.scaleX(1.0f).scaleY(1.0f);
            }
            viewPropertyAnimatorAnimate.setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.DefaultItemAnimator$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$animateChangeImpl$4(changeInfo, valueAnimator);
                }
            });
            viewPropertyAnimatorAnimate.setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    DefaultItemAnimator.this.dispatchChangeStarting(changeInfo.newHolder, false);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorAnimate.setListener(null);
                    view2.setAlpha(1.0f);
                    if (DefaultItemAnimator.this.animateByScale(view2) > 0.0f) {
                        view2.setScaleX(1.0f);
                        view2.setScaleY(1.0f);
                    }
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    DefaultItemAnimator.this.onChangeAnimationUpdate(changeInfo.newHolder);
                    if (DefaultItemAnimator.this.animationUpdatesListener != null) {
                        DefaultItemAnimator.this.animationUpdatesListener.run();
                    }
                    DefaultItemAnimator.this.dispatchChangeFinished(changeInfo.newHolder, false);
                    DefaultItemAnimator.this.mChangeAnimations.remove(changeInfo.newHolder);
                    DefaultItemAnimator.this.dispatchFinishedWhenDone();
                    DefaultItemAnimator defaultItemAnimator = DefaultItemAnimator.this;
                    ChangeInfo changeInfo2 = changeInfo;
                    defaultItemAnimator.afterAnimateChangeImpl(changeInfo2.oldHolder, changeInfo2.newHolder);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateChangeImpl$3(ChangeInfo changeInfo, ValueAnimator valueAnimator) {
        onChangeAnimationUpdate(changeInfo.oldHolder);
        Runnable runnable = this.animationUpdatesListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateChangeImpl$4(ChangeInfo changeInfo, ValueAnimator valueAnimator) {
        onChangeAnimationUpdate(changeInfo.newHolder);
        Runnable runnable = this.animationUpdatesListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    private void endChangeAnimation(List list, RecyclerView.ViewHolder viewHolder) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ChangeInfo changeInfo = (ChangeInfo) list.get(size);
            if (endChangeAnimationIfNecessary(changeInfo, viewHolder) && changeInfo.oldHolder == null && changeInfo.newHolder == null) {
                list.remove(changeInfo);
            }
        }
    }

    protected void endChangeAnimationIfNecessary(ChangeInfo changeInfo) {
        RecyclerView.ViewHolder viewHolder = changeInfo.oldHolder;
        if (viewHolder != null) {
            endChangeAnimationIfNecessary(changeInfo, viewHolder);
        }
        RecyclerView.ViewHolder viewHolder2 = changeInfo.newHolder;
        if (viewHolder2 != null) {
            endChangeAnimationIfNecessary(changeInfo, viewHolder2);
        }
    }

    protected boolean endChangeAnimationIfNecessary(ChangeInfo changeInfo, RecyclerView.ViewHolder viewHolder) {
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
        viewHolder.itemView.setAlpha(1.0f);
        if (animateByScale(viewHolder.itemView) > 0.0f) {
            viewHolder.itemView.setScaleX(1.0f);
            viewHolder.itemView.setScaleY(1.0f);
        }
        viewHolder.itemView.setTranslationX(0.0f);
        viewHolder.itemView.setTranslationY(0.0f);
        dispatchChangeFinished(viewHolder, z);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        view.animate().cancel();
        int size = this.mPendingMoves.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((MoveInfo) this.mPendingMoves.get(size)).holder == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchMoveFinished(viewHolder);
                this.mPendingMoves.remove(size);
            }
        }
        endChangeAnimation(this.mPendingChanges, viewHolder);
        if (this.mPendingRemovals.remove(viewHolder)) {
            view.setAlpha(1.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            dispatchRemoveFinished(viewHolder);
        }
        if (this.mPendingAdditions.remove(viewHolder)) {
            view.setAlpha(1.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            dispatchAddFinished(viewHolder);
        }
        for (int size2 = this.mChangesList.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = (ArrayList) this.mChangesList.get(size2);
            endChangeAnimation(arrayList, viewHolder);
            if (arrayList.isEmpty()) {
                this.mChangesList.remove(size2);
            }
        }
        for (int size3 = this.mMovesList.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList2 = (ArrayList) this.mMovesList.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((MoveInfo) arrayList2.get(size4)).holder == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(viewHolder);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.mMovesList.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.mAdditionsList.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList3 = (ArrayList) this.mAdditionsList.get(size5);
            if (arrayList3.remove(viewHolder)) {
                view.setAlpha(1.0f);
                if (animateByScale(view) > 0.0f) {
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                }
                dispatchAddFinished(viewHolder);
                if (arrayList3.isEmpty()) {
                    this.mAdditionsList.remove(size5);
                }
            }
        }
        if (this.mRemoveAnimations.remove(viewHolder) && BuildVars.DEBUG_VERSION) {
            throw new IllegalStateException("after animation is cancelled, item should not be in mRemoveAnimations list");
        }
        if (this.mAddAnimations.remove(viewHolder) && BuildVars.DEBUG_VERSION) {
            throw new IllegalStateException("after animation is cancelled, item should not be in mAddAnimations list");
        }
        if (this.mChangeAnimations.remove(viewHolder) && BuildVars.DEBUG_VERSION) {
            throw new IllegalStateException("after animation is cancelled, item should not be in mChangeAnimations list");
        }
        if (this.mMoveAnimations.remove(viewHolder) && BuildVars.DEBUG_VERSION) {
            throw new IllegalStateException("after animation is cancelled, item should not be in mMoveAnimations list");
        }
        dispatchFinishedWhenDone();
    }

    public void resetAnimation(RecyclerView.ViewHolder viewHolder) {
        if (sDefaultInterpolator == null) {
            sDefaultInterpolator = new ValueAnimator().getInterpolator();
        }
        viewHolder.itemView.animate().setInterpolator(sDefaultInterpolator);
        endAnimation(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean isRunning() {
        return (this.mPendingAdditions.isEmpty() && this.mPendingChanges.isEmpty() && this.mPendingMoves.isEmpty() && this.mPendingRemovals.isEmpty() && this.mMoveAnimations.isEmpty() && this.mRemoveAnimations.isEmpty() && this.mAddAnimations.isEmpty() && this.mChangeAnimations.isEmpty() && this.mMovesList.isEmpty() && this.mAdditionsList.isEmpty() && this.mChangesList.isEmpty()) ? false : true;
    }

    protected void dispatchFinishedWhenDone() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
        onAllAnimationsDone();
        this.currentMoves.clear();
        this.currentChanges.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimations() {
        int size = this.mPendingMoves.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            MoveInfo moveInfo = (MoveInfo) this.mPendingMoves.get(size);
            View view = moveInfo.holder.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(moveInfo.holder);
            this.mPendingMoves.remove(size);
        }
        for (int size2 = this.mPendingRemovals.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished((RecyclerView.ViewHolder) this.mPendingRemovals.get(size2));
            this.mPendingRemovals.remove(size2);
        }
        int size3 = this.mPendingAdditions.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) this.mPendingAdditions.get(size3);
            viewHolder.itemView.setAlpha(1.0f);
            if (animateByScale(viewHolder.itemView) > 0.0f) {
                viewHolder.itemView.setScaleX(1.0f);
                viewHolder.itemView.setScaleY(1.0f);
            }
            dispatchAddFinished(viewHolder);
            this.mPendingAdditions.remove(size3);
        }
        for (int size4 = this.mPendingChanges.size() - 1; size4 >= 0; size4--) {
            endChangeAnimationIfNecessary((ChangeInfo) this.mPendingChanges.get(size4));
        }
        this.mPendingChanges.clear();
        if (isRunning()) {
            for (int size5 = this.mMovesList.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList = (ArrayList) this.mMovesList.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    MoveInfo moveInfo2 = (MoveInfo) arrayList.get(size6);
                    View view2 = moveInfo2.holder.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    dispatchMoveFinished(moveInfo2.holder);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.mMovesList.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.mAdditionsList.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList2 = (ArrayList) this.mAdditionsList.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.ViewHolder viewHolder2 = (RecyclerView.ViewHolder) arrayList2.get(size8);
                    View view3 = viewHolder2.itemView;
                    view3.setAlpha(1.0f);
                    if (animateByScale(view3) > 0.0f) {
                        view3.setScaleX(1.0f);
                        view3.setScaleY(1.0f);
                    }
                    dispatchAddFinished(viewHolder2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.mAdditionsList.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.mChangesList.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList3 = (ArrayList) this.mChangesList.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    endChangeAnimationIfNecessary((ChangeInfo) arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.mChangesList.remove(arrayList3);
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

    void cancelAll(List list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ((RecyclerView.ViewHolder) list.get(size)).itemView.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean canReuseUpdatedViewHolder(RecyclerView.ViewHolder viewHolder, List list) {
        return !list.isEmpty() || super.canReuseUpdatedViewHolder(viewHolder, list);
    }

    public void setTranslationInterpolator(Interpolator interpolator) {
        this.translationInterpolator = interpolator;
    }
}
