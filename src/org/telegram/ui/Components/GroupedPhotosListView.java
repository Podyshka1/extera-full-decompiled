package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;

/* JADX INFO: loaded from: classes7.dex */
public class GroupedPhotosListView extends View implements GestureDetector.OnGestureListener {
    private boolean animateAllLine;
    private boolean animateBackground;
    private int animateToDX;
    private int animateToDXStart;
    private int animateToItem;
    private boolean animateToItemFast;
    private boolean animationsEnabled;
    private Paint backgroundPaint;
    private long currentGroupId;
    private int currentImage;
    private float currentItemProgress;
    private ArrayList<Object> currentObjects;
    public ArrayList<ImageLocation> currentPhotos;
    private GroupedPhotosListViewDelegate delegate;
    private float drawAlpha;
    private int drawDx;
    private GestureDetector gestureDetector;
    private boolean hasPhotos;
    private ValueAnimator hideAnimator;
    private boolean ignoreChanges;
    private ArrayList<ImageReceiver> imagesToDraw;
    private int itemHeight;
    private int itemSpacing;
    private int itemWidth;
    private int itemY;
    private long lastUpdateTime;
    private float moveLineProgress;
    private boolean moving;
    private int nextImage;
    private float nextItemProgress;
    private int nextPhotoScrolling;
    private android.widget.Scroller scroll;
    private boolean scrolling;
    private ValueAnimator showAnimator;
    private boolean stopedScrolling;
    private ArrayList<ImageReceiver> unusedReceivers;

    public interface GroupedPhotosListViewDelegate {
        boolean forceAll();

        long getAvatarsDialogId();

        int getCurrentAccount();

        int getCurrentIndex();

        ArrayList<MessageObject> getImagesArr();

        ArrayList<ImageLocation> getImagesArrLocations();

        List<TL_iv.PageBlock> getPageBlockArr();

        Object getParentObject();

        int getSlideshowMessageId();

        void onShowAnimationStart();

        void onStopScrolling();

        void setCurrentIndex(int i);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    public GroupedPhotosListView(Context context, int i) {
        super(context);
        this.backgroundPaint = new Paint();
        this.unusedReceivers = new ArrayList<>();
        this.imagesToDraw = new ArrayList<>();
        this.currentPhotos = new ArrayList<>();
        this.currentObjects = new ArrayList<>();
        this.currentItemProgress = 1.0f;
        this.nextItemProgress = 0.0f;
        this.animateToItem = -1;
        this.animationsEnabled = true;
        this.nextPhotoScrolling = -1;
        this.animateBackground = true;
        this.gestureDetector = new GestureDetector(context, this);
        this.scroll = new android.widget.Scroller(context);
        this.itemWidth = AndroidUtilities.dp(42.0f);
        this.itemHeight = AndroidUtilities.dp(56.0f);
        this.itemSpacing = AndroidUtilities.dp(1.0f);
        this.itemY = i;
        this.backgroundPaint.setColor(2130706432);
    }

    public void clear() {
        this.currentPhotos.clear();
        this.currentObjects.clear();
        this.imagesToDraw.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0287  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillList() {
        char c2;
        ArrayList<ImageLocation> arrayList;
        long j;
        Object obj;
        int i;
        boolean z;
        TL_iv.PageBlock pageBlock;
        int i2;
        boolean z2;
        boolean z3;
        char c3 = 0;
        if (this.ignoreChanges) {
            this.ignoreChanges = false;
            return;
        }
        int currentIndex = this.delegate.getCurrentIndex();
        ArrayList<ImageLocation> imagesArrLocations = this.delegate.getImagesArrLocations();
        ArrayList<MessageObject> imagesArr = this.delegate.getImagesArr();
        List<TL_iv.PageBlock> pageBlockArr = this.delegate.getPageBlockArr();
        int slideshowMessageId = this.delegate.getSlideshowMessageId();
        this.delegate.getCurrentAccount();
        this.hasPhotos = false;
        long j2 = 0;
        if (imagesArrLocations != null && !imagesArrLocations.isEmpty()) {
            if (currentIndex >= imagesArrLocations.size()) {
                currentIndex = imagesArrLocations.size() - 1;
            }
            ImageLocation imageLocation = imagesArrLocations.get(currentIndex);
            int size = imagesArrLocations.size();
            this.hasPhotos = true;
            c2 = 0;
            arrayList = imagesArrLocations;
            j = 0;
            i = size;
            z = false;
            obj = imageLocation;
        } else if (imagesArr != null && !imagesArr.isEmpty()) {
            if (currentIndex >= imagesArr.size()) {
                currentIndex = imagesArr.size() - 1;
            }
            MessageObject messageObject = imagesArr.get(currentIndex);
            long groupIdForUse = messageObject.getGroupIdForUse();
            if (groupIdForUse != this.currentGroupId) {
                this.currentGroupId = groupIdForUse;
                z = true;
            } else {
                z = false;
            }
            boolean z4 = imagesArr.size() > 1 && this.delegate.forceAll();
            if (this.currentGroupId != 0 || z4) {
                this.hasPhotos = true;
                int iMin = Math.min(currentIndex + 10, imagesArr.size());
                int i3 = currentIndex;
                i2 = 0;
                while (true) {
                    if (i3 >= iMin) {
                        j = j2;
                        break;
                    }
                    MessageObject messageObject2 = imagesArr.get(i3);
                    if (slideshowMessageId == 0 && !z4) {
                        j = j2;
                        if (messageObject2.getGroupIdForUse() != this.currentGroupId) {
                            break;
                        }
                    } else {
                        j = j2;
                    }
                    i2++;
                    i3++;
                    j2 = j;
                }
                int iMax = Math.max(currentIndex - 10, 0);
                int i4 = currentIndex - 1;
                while (true) {
                    if (i4 < iMax) {
                        c2 = c3;
                        arrayList = imagesArrLocations;
                        break;
                    }
                    MessageObject messageObject3 = imagesArr.get(i4);
                    if (slideshowMessageId == 0 && !z4) {
                        c2 = c3;
                        arrayList = imagesArrLocations;
                        if (messageObject3.getGroupIdForUse() != this.currentGroupId) {
                            break;
                        }
                    } else {
                        c2 = c3;
                        arrayList = imagesArrLocations;
                    }
                    i2++;
                    i4--;
                    c3 = c2;
                    imagesArrLocations = arrayList;
                }
            } else {
                i2 = 0;
                c2 = 0;
                arrayList = imagesArrLocations;
                j = 0;
            }
            i = i2;
            obj = messageObject;
        } else {
            c2 = 0;
            arrayList = imagesArrLocations;
            j = 0;
            if (pageBlockArr == null || pageBlockArr.isEmpty()) {
                obj = null;
                i = 0;
                z = false;
            } else {
                TL_iv.PageBlock pageBlock2 = pageBlockArr.get(currentIndex);
                int i5 = pageBlock2.groupId;
                if (i5 != this.currentGroupId) {
                    this.currentGroupId = i5;
                    z = true;
                } else {
                    z = false;
                }
                if (this.currentGroupId != 0) {
                    this.hasPhotos = true;
                    int size2 = pageBlockArr.size();
                    int i6 = currentIndex;
                    i = 0;
                    TL_iv.PageBlock pageBlock3 = pageBlock2;
                    while (true) {
                        if (i6 >= size2) {
                            pageBlock = pageBlock3;
                            break;
                        }
                        pageBlock = pageBlock3;
                        if (pageBlockArr.get(i6).groupId != this.currentGroupId) {
                            break;
                        }
                        i++;
                        i6++;
                        pageBlock3 = pageBlock;
                    }
                    for (int i7 = currentIndex - 1; i7 >= 0 && pageBlockArr.get(i7).groupId == this.currentGroupId; i7--) {
                        i++;
                    }
                    obj = pageBlock;
                } else {
                    i = 0;
                    obj = pageBlock2;
                }
            }
        }
        if (obj == null) {
            return;
        }
        if (this.animationsEnabled) {
            if (!this.hasPhotos) {
                ValueAnimator valueAnimator = this.showAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.showAnimator = null;
                }
                if (this.drawAlpha > 0.0f && this.currentPhotos.size() > 1) {
                    if (this.hideAnimator == null) {
                        float[] fArr = new float[2];
                        fArr[c2] = this.drawAlpha;
                        fArr[1] = 0.0f;
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
                        this.hideAnimator = valueAnimatorOfFloat;
                        valueAnimatorOfFloat.setDuration((long) (this.drawAlpha * 200.0f));
                        this.hideAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.GroupedPhotosListView.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (GroupedPhotosListView.this.hideAnimator == animator) {
                                    GroupedPhotosListView.this.hideAnimator = null;
                                    GroupedPhotosListView.this.fillList();
                                }
                            }
                        });
                        this.hideAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.GroupedPhotosListView$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                this.f$0.lambda$fillList$0(valueAnimator2);
                            }
                        });
                        this.hideAnimator.start();
                        return;
                    }
                    return;
                }
            } else {
                ValueAnimator valueAnimator2 = this.hideAnimator;
                if (valueAnimator2 != null) {
                    this.hideAnimator = null;
                    valueAnimator2.cancel();
                }
                float f = this.drawAlpha;
                if (f < 1.0f && this.showAnimator == null) {
                    float[] fArr2 = new float[2];
                    fArr2[c2] = f;
                    fArr2[1] = 1.0f;
                    ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(fArr2);
                    this.showAnimator = valueAnimatorOfFloat2;
                    valueAnimatorOfFloat2.setDuration((long) ((1.0f - this.drawAlpha) * 200.0f));
                    this.showAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.GroupedPhotosListView.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            if (GroupedPhotosListView.this.delegate != null) {
                                GroupedPhotosListView.this.delegate.onShowAnimationStart();
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (GroupedPhotosListView.this.showAnimator == animator) {
                                GroupedPhotosListView.this.showAnimator = null;
                            }
                        }
                    });
                    this.showAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.GroupedPhotosListView$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            this.f$0.lambda$fillList$1(valueAnimator3);
                        }
                    });
                }
            }
        }
        if (z) {
            z2 = c2;
        } else if (i == this.currentPhotos.size() && this.currentObjects.contains(obj)) {
            int iIndexOf = this.currentObjects.indexOf(obj);
            int i8 = this.currentImage;
            if (i8 != iIndexOf && iIndexOf != -1) {
                boolean z5 = this.animateAllLine;
                if (!z5 && !this.moving && (iIndexOf == i8 - 1 || iIndexOf == i8 + 1)) {
                    this.animateToItemFast = true;
                    z5 = true;
                }
                if (z5) {
                    this.animateToItem = iIndexOf;
                    this.nextImage = iIndexOf;
                    this.animateToDX = (i8 - iIndexOf) * (this.itemWidth + this.itemSpacing);
                    this.moving = true;
                    this.animateAllLine = c2;
                    this.lastUpdateTime = System.currentTimeMillis();
                    invalidate();
                    z3 = false;
                } else {
                    fillImages(true, (i8 - iIndexOf) * (this.itemWidth + this.itemSpacing));
                    this.currentImage = iIndexOf;
                    z3 = false;
                    this.moving = false;
                }
                this.drawDx = z3 ? 1 : 0;
                z2 = z3;
            }
        } else {
            z2 = c2;
            z = true;
        }
        if (z) {
            int size3 = this.currentPhotos.size();
            this.animateAllLine = z2;
            this.currentPhotos.clear();
            this.currentObjects.clear();
            if (arrayList != null && !arrayList.isEmpty()) {
                ArrayList<ImageLocation> arrayList2 = arrayList;
                this.currentObjects.addAll(arrayList2);
                this.currentPhotos.addAll(arrayList2);
                this.currentImage = currentIndex;
                this.animateToItem = -1;
                this.animateToItemFast = false;
            } else if (imagesArr != null && !imagesArr.isEmpty()) {
                boolean z6 = this.delegate.forceAll() && imagesArr.size() > 1;
                if (this.currentGroupId != j || z6 || slideshowMessageId != 0) {
                    int iMin2 = Math.min(currentIndex + 10, imagesArr.size());
                    for (int i9 = currentIndex; i9 < iMin2; i9++) {
                        MessageObject messageObject4 = imagesArr.get(i9);
                        if (slideshowMessageId == 0 && !z6 && messageObject4.getGroupIdForUse() != this.currentGroupId) {
                            break;
                        }
                        this.currentObjects.add(messageObject4);
                        this.currentPhotos.add(ImageLocation.getForObject(FileLoader.getClosestPhotoSizeWithSize(messageObject4.photoThumbs, 56, true), messageObject4.photoThumbsObject));
                    }
                    this.currentImage = 0;
                    this.animateToItem = -1;
                    this.animateToItemFast = false;
                    int iMax2 = Math.max(currentIndex - 10, 0);
                    for (int i10 = currentIndex - 1; i10 >= iMax2; i10--) {
                        MessageObject messageObject5 = imagesArr.get(i10);
                        if (slideshowMessageId == 0 && !z6 && messageObject5.getGroupIdForUse() != this.currentGroupId) {
                            break;
                        }
                        this.currentObjects.add(0, messageObject5);
                        this.currentPhotos.add(0, ImageLocation.getForObject(FileLoader.getClosestPhotoSizeWithSize(messageObject5.photoThumbs, 56, true), messageObject5.photoThumbsObject));
                        this.currentImage++;
                    }
                }
            } else if (pageBlockArr != null && !pageBlockArr.isEmpty() && this.currentGroupId != j) {
                int size4 = pageBlockArr.size();
                for (int i11 = currentIndex; i11 < size4; i11++) {
                    TL_iv.PageBlock pageBlock4 = pageBlockArr.get(i11);
                    if (pageBlock4.groupId != this.currentGroupId) {
                        break;
                    }
                    this.currentObjects.add(pageBlock4);
                    this.currentPhotos.add(ImageLocation.getForObject(pageBlock4.thumb, pageBlock4.thumbObject));
                }
                this.currentImage = 0;
                this.animateToItem = -1;
                this.animateToItemFast = false;
                for (int i12 = currentIndex - 1; i12 >= 0; i12--) {
                    TL_iv.PageBlock pageBlock5 = pageBlockArr.get(i12);
                    if (pageBlock5.groupId != this.currentGroupId) {
                        break;
                    }
                    this.currentObjects.add(0, pageBlock5);
                    this.currentPhotos.add(0, ImageLocation.getForObject(pageBlock5.thumb, pageBlock5.thumbObject));
                    this.currentImage++;
                }
            }
            if (this.currentPhotos.size() == 1) {
                this.currentPhotos.clear();
                this.currentObjects.clear();
            }
            if (this.currentPhotos.size() != size3) {
                requestLayout();
            }
            fillImages(false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillList$0(ValueAnimator valueAnimator) {
        this.drawAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillList$1(ValueAnimator valueAnimator) {
        this.drawAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public int getCount() {
        return this.currentPhotos.size();
    }

    public int getIndex() {
        return this.currentImage;
    }

    public void setMoveProgress(float f) {
        if (this.scrolling || this.animateToItem >= 0) {
            return;
        }
        int i = this.currentImage;
        if (f > 0.0f) {
            this.nextImage = i - 1;
        } else {
            this.nextImage = i + 1;
        }
        int i2 = this.nextImage;
        if (i2 >= 0 && i2 < this.currentPhotos.size()) {
            this.currentItemProgress = 1.0f - Math.abs(f);
        } else {
            this.currentItemProgress = 1.0f;
        }
        this.nextItemProgress = 1.0f - this.currentItemProgress;
        this.moving = f != 0.0f;
        invalidate();
        if (this.currentPhotos.isEmpty()) {
            return;
        }
        if (f >= 0.0f || this.currentImage != this.currentPhotos.size() - 1) {
            if (f <= 0.0f || this.currentImage != 0) {
                int i3 = (int) (f * (this.itemWidth + this.itemSpacing));
                this.drawDx = i3;
                fillImages(true, i3);
            }
        }
    }

    private ImageReceiver getFreeReceiver() {
        ImageReceiver imageReceiver;
        if (this.unusedReceivers.isEmpty()) {
            imageReceiver = new ImageReceiver(this);
            imageReceiver.setAllowLoadingOnAttachedOnly(false);
        } else {
            imageReceiver = this.unusedReceivers.get(0);
            this.unusedReceivers.remove(0);
        }
        this.imagesToDraw.add(imageReceiver);
        imageReceiver.setCurrentAccount(this.delegate.getCurrentAccount());
        return imageReceiver;
    }

    private void fillImages(boolean z, int i) {
        int iMax;
        int iMin;
        Object parentObject;
        Object parentObject2;
        if (!z && !this.imagesToDraw.isEmpty()) {
            this.unusedReceivers.addAll(this.imagesToDraw);
            this.imagesToDraw.clear();
            this.moving = false;
            this.moveLineProgress = 1.0f;
            this.currentItemProgress = 1.0f;
            this.nextItemProgress = 0.0f;
        }
        invalidate();
        if (getMeasuredWidth() == 0 || this.currentPhotos.isEmpty()) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = (getMeasuredWidth() / 2) - (this.itemWidth / 2);
        if (z) {
            int size = this.imagesToDraw.size();
            int i2 = 0;
            iMin = Integer.MAX_VALUE;
            iMax = Integer.MIN_VALUE;
            while (i2 < size) {
                ImageReceiver imageReceiver = this.imagesToDraw.get(i2);
                int param = imageReceiver.getParam();
                int i3 = param - this.currentImage;
                int i4 = this.itemWidth;
                int i5 = (i3 * (this.itemSpacing + i4)) + measuredWidth2 + i;
                if (i5 > measuredWidth || i5 + i4 < 0) {
                    this.unusedReceivers.add(imageReceiver);
                    this.imagesToDraw.remove(i2);
                    size--;
                    i2--;
                }
                iMin = Math.min(iMin, param - 1);
                iMax = Math.max(iMax, param + 1);
                i2++;
            }
        } else {
            iMax = this.currentImage;
            iMin = iMax - 1;
        }
        if (iMax != Integer.MIN_VALUE) {
            int size2 = this.currentPhotos.size();
            while (iMax < size2) {
                int i6 = ((iMax - this.currentImage) * (this.itemWidth + this.itemSpacing)) + measuredWidth2 + i;
                if (i6 >= measuredWidth) {
                    break;
                }
                ImageLocation imageLocation = this.currentPhotos.get(iMax);
                ImageReceiver freeReceiver = getFreeReceiver();
                freeReceiver.setImageCoords(i6, this.itemY, this.itemWidth, this.itemHeight);
                boolean z2 = this.currentObjects.get(0) instanceof MessageObject;
                ArrayList<Object> arrayList = this.currentObjects;
                if (z2) {
                    parentObject2 = arrayList.get(iMax);
                } else {
                    boolean z3 = arrayList.get(0) instanceof TL_iv.PageBlock;
                    GroupedPhotosListViewDelegate groupedPhotosListViewDelegate = this.delegate;
                    if (z3) {
                        parentObject2 = groupedPhotosListViewDelegate.getParentObject();
                    } else {
                        parentObject2 = "avatar_" + groupedPhotosListViewDelegate.getAvatarsDialogId();
                    }
                }
                freeReceiver.setImage(null, null, imageLocation, "80_80", 0L, null, parentObject2, 1);
                freeReceiver.setParam(iMax);
                iMax++;
            }
        }
        if (iMin != Integer.MAX_VALUE) {
            while (iMin >= 0) {
                int i7 = iMin - this.currentImage;
                int i8 = this.itemWidth;
                int i9 = (i7 * (this.itemSpacing + i8)) + measuredWidth2 + i + i8;
                if (i9 <= 0) {
                    break;
                }
                ImageLocation imageLocation2 = this.currentPhotos.get(iMin);
                ImageReceiver freeReceiver2 = getFreeReceiver();
                freeReceiver2.setImageCoords(i9, this.itemY, this.itemWidth, this.itemHeight);
                boolean z4 = this.currentObjects.get(0) instanceof MessageObject;
                ArrayList<Object> arrayList2 = this.currentObjects;
                if (z4) {
                    parentObject = arrayList2.get(iMin);
                } else {
                    boolean z5 = arrayList2.get(0) instanceof TL_iv.PageBlock;
                    GroupedPhotosListViewDelegate groupedPhotosListViewDelegate2 = this.delegate;
                    if (z5) {
                        parentObject = groupedPhotosListViewDelegate2.getParentObject();
                    } else {
                        parentObject = "avatar_" + groupedPhotosListViewDelegate2.getAvatarsDialogId();
                    }
                }
                freeReceiver2.setImage(null, null, imageLocation2, "80_80", 0L, null, parentObject, 1);
                freeReceiver2.setParam(iMin);
                iMin--;
            }
        }
        ValueAnimator valueAnimator = this.showAnimator;
        if (valueAnimator == null || valueAnimator.isStarted()) {
            return;
        }
        this.showAnimator.start();
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        if (!this.scroll.isFinished()) {
            this.scroll.abortAnimation();
        }
        this.animateToItem = -1;
        this.animateToItemFast = false;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        int currentIndex = this.delegate.getCurrentIndex();
        ArrayList<ImageLocation> imagesArrLocations = this.delegate.getImagesArrLocations();
        ArrayList<MessageObject> imagesArr = this.delegate.getImagesArr();
        List<TL_iv.PageBlock> pageBlockArr = this.delegate.getPageBlockArr();
        stopScrolling();
        int size = this.imagesToDraw.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            ImageReceiver imageReceiver = this.imagesToDraw.get(i);
            if (imageReceiver.isInsideImage(motionEvent.getX(), motionEvent.getY())) {
                int param = imageReceiver.getParam();
                if (param < 0 || param >= this.currentObjects.size()) {
                    return true;
                }
                if (imagesArr != null && !imagesArr.isEmpty()) {
                    int iIndexOf = imagesArr.indexOf((MessageObject) this.currentObjects.get(param));
                    if (currentIndex == iIndexOf) {
                        return true;
                    }
                    this.moveLineProgress = 1.0f;
                    this.animateAllLine = true;
                    this.delegate.setCurrentIndex(iIndexOf);
                } else if (pageBlockArr != null && !pageBlockArr.isEmpty()) {
                    int iIndexOf2 = pageBlockArr.indexOf((TL_iv.PageBlock) this.currentObjects.get(param));
                    if (currentIndex == iIndexOf2) {
                        return true;
                    }
                    this.moveLineProgress = 1.0f;
                    this.animateAllLine = true;
                    this.delegate.setCurrentIndex(iIndexOf2);
                } else if (imagesArrLocations != null && !imagesArrLocations.isEmpty()) {
                    int iIndexOf3 = imagesArrLocations.indexOf((ImageLocation) this.currentObjects.get(param));
                    if (currentIndex == iIndexOf3) {
                        return true;
                    }
                    this.moveLineProgress = 1.0f;
                    this.animateAllLine = true;
                    this.delegate.setCurrentIndex(iIndexOf3);
                }
            } else {
                i++;
            }
        }
        return false;
    }

    private void updateAfterScroll() {
        int i;
        int i2;
        int i3;
        int i4 = this.drawDx;
        int iAbs = Math.abs(i4);
        int i5 = this.itemWidth;
        int i6 = this.itemSpacing;
        int iIndexOf = -1;
        if (iAbs > (i5 / 2) + i6) {
            if (i4 > 0) {
                i2 = i4 - ((i5 / 2) + i6);
                i3 = 1;
            } else {
                i2 = i4 + (i5 / 2) + i6;
                i3 = -1;
            }
            i = i3 + (i2 / (i5 + (i6 * 2)));
        } else {
            i = 0;
        }
        this.nextPhotoScrolling = this.currentImage - i;
        int currentIndex = this.delegate.getCurrentIndex();
        ArrayList<ImageLocation> imagesArrLocations = this.delegate.getImagesArrLocations();
        ArrayList<MessageObject> imagesArr = this.delegate.getImagesArr();
        List<TL_iv.PageBlock> pageBlockArr = this.delegate.getPageBlockArr();
        int i7 = this.nextPhotoScrolling;
        if (currentIndex != i7 && i7 >= 0 && i7 < this.currentPhotos.size()) {
            Object obj = this.currentObjects.get(this.nextPhotoScrolling);
            if (imagesArr != null && !imagesArr.isEmpty()) {
                iIndexOf = imagesArr.indexOf((MessageObject) obj);
            } else if (pageBlockArr != null && !pageBlockArr.isEmpty()) {
                iIndexOf = pageBlockArr.indexOf((TL_iv.PageBlock) obj);
            } else if (imagesArrLocations != null && !imagesArrLocations.isEmpty()) {
                iIndexOf = imagesArrLocations.indexOf((ImageLocation) obj);
            }
            if (iIndexOf >= 0) {
                this.ignoreChanges = true;
                this.delegate.setCurrentIndex(iIndexOf);
            }
        }
        if (!this.scrolling) {
            this.scrolling = true;
            this.stopedScrolling = false;
        }
        fillImages(true, this.drawDx);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.drawDx = (int) (this.drawDx - f);
        int minScrollX = getMinScrollX();
        int maxScrollX = getMaxScrollX();
        int i = this.drawDx;
        if (i < minScrollX) {
            this.drawDx = minScrollX;
        } else if (i > maxScrollX) {
            this.drawDx = maxScrollX;
        }
        updateAfterScroll();
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.scroll.abortAnimation();
        if (this.currentPhotos.size() < 10) {
            return false;
        }
        this.scroll.fling(this.drawDx, 0, Math.round(f), 0, getMinScrollX(), getMaxScrollX(), 0, 0);
        return false;
    }

    private void stopScrolling() {
        this.scrolling = false;
        if (!this.scroll.isFinished()) {
            this.scroll.abortAnimation();
        }
        int i = this.nextPhotoScrolling;
        if (i >= 0 && i < this.currentObjects.size()) {
            this.stopedScrolling = true;
            this.animateToItemFast = false;
            int i2 = this.nextPhotoScrolling;
            this.animateToItem = i2;
            this.nextImage = i2;
            this.animateToDX = (this.currentImage - i2) * (this.itemWidth + this.itemSpacing);
            this.animateToDXStart = this.drawDx;
            this.moveLineProgress = 1.0f;
            this.nextPhotoScrolling = -1;
            GroupedPhotosListViewDelegate groupedPhotosListViewDelegate = this.delegate;
            if (groupedPhotosListViewDelegate != null) {
                groupedPhotosListViewDelegate.onStopScrolling();
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.currentPhotos.isEmpty() && getAlpha() == 1.0f) {
            z = this.gestureDetector.onTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
            if (this.scrolling && motionEvent.getAction() == 1 && this.scroll.isFinished()) {
                stopScrolling();
            }
        }
        return z;
    }

    private int getMinScrollX() {
        return (-((this.currentPhotos.size() - this.currentImage) - 1)) * (this.itemWidth + (this.itemSpacing * 2));
    }

    private int getMaxScrollX() {
        return this.currentImage * (this.itemWidth + (this.itemSpacing * 2));
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        fillImages(false, 0);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int iMax;
        int iMax2;
        TLRPC.PhotoSize photoSize;
        TLRPC.PhotoSize photoSize2;
        if (this.hasPhotos || !this.imagesToDraw.isEmpty()) {
            float f = this.drawAlpha;
            if (!this.animateBackground) {
                f = this.hasPhotos ? 1.0f : 0.0f;
            }
            this.backgroundPaint.setAlpha((int) (f * 127.0f));
            canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.backgroundPaint);
            if (this.imagesToDraw.isEmpty()) {
                return;
            }
            int size = this.imagesToDraw.size();
            int i = this.drawDx;
            int i2 = (int) (this.itemWidth * 2.0f);
            int iDp = AndroidUtilities.dp(8.0f);
            ImageLocation imageLocation = this.currentPhotos.get(this.currentImage);
            if (imageLocation != null && (photoSize2 = imageLocation.photoSize) != null) {
                iMax = Math.max(this.itemWidth, (int) (photoSize2.f1019w * (this.itemHeight / photoSize2.f1018h)));
            } else {
                iMax = this.itemHeight;
            }
            int iMin = Math.min(i2, iMax);
            float f2 = iDp * 2;
            float f3 = this.currentItemProgress;
            int i3 = (int) (f2 * f3);
            int i4 = this.itemWidth + ((int) ((iMin - r11) * f3)) + i3;
            int i5 = this.nextImage;
            if (i5 >= 0 && i5 < this.currentPhotos.size()) {
                ImageLocation imageLocation2 = this.currentPhotos.get(this.nextImage);
                if (imageLocation2 != null && (photoSize = imageLocation2.photoSize) != null) {
                    iMax2 = Math.max(this.itemWidth, (int) (photoSize.f1019w * (this.itemHeight / photoSize.f1018h)));
                } else {
                    iMax2 = this.itemHeight;
                }
            } else {
                iMax2 = this.itemWidth;
            }
            int iMin2 = Math.min(i2, iMax2);
            float f4 = this.nextItemProgress;
            int i6 = (int) (f2 * f4);
            float f5 = i;
            int i7 = (int) (f5 + ((((iMin2 + i6) - r12) / 2) * f4 * (this.nextImage > this.currentImage ? -1 : 1)));
            int i8 = this.itemWidth + ((int) ((iMin2 - r12) * f4)) + i6;
            int measuredWidth = (getMeasuredWidth() - i4) / 2;
            for (int i9 = 0; i9 < size; i9++) {
                ImageReceiver imageReceiver = this.imagesToDraw.get(i9);
                int param = imageReceiver.getParam();
                int i10 = this.currentImage;
                if (param == i10) {
                    imageReceiver.setImageX(measuredWidth + i7 + (i3 / 2));
                    imageReceiver.setImageWidth(i4 - i3);
                } else {
                    int i11 = this.nextImage;
                    if (i11 < i10) {
                        if (param >= i10) {
                            imageReceiver.setImageX(measuredWidth + i4 + this.itemSpacing + (((imageReceiver.getParam() - this.currentImage) - 1) * (this.itemWidth + this.itemSpacing)) + i7);
                        } else if (param <= i11) {
                            int param2 = (imageReceiver.getParam() - this.currentImage) + 1;
                            int i12 = this.itemWidth;
                            int i13 = this.itemSpacing;
                            imageReceiver.setImageX((((param2 * (i12 + i13)) + measuredWidth) - (i13 + i8)) + i7);
                        } else {
                            imageReceiver.setImageX(((imageReceiver.getParam() - this.currentImage) * (this.itemWidth + this.itemSpacing)) + measuredWidth + i7);
                        }
                    } else if (param < i10) {
                        imageReceiver.setImageX(((imageReceiver.getParam() - this.currentImage) * (this.itemWidth + this.itemSpacing)) + measuredWidth + i7);
                    } else {
                        int i14 = this.itemSpacing;
                        if (param <= i11) {
                            imageReceiver.setImageX(measuredWidth + i4 + i14 + (((imageReceiver.getParam() - this.currentImage) - 1) * (this.itemWidth + this.itemSpacing)) + i7);
                        } else {
                            int i15 = measuredWidth + i4 + i14;
                            int param3 = (imageReceiver.getParam() - this.currentImage) - 2;
                            int i16 = this.itemWidth;
                            int i17 = this.itemSpacing;
                            imageReceiver.setImageX(i15 + (param3 * (i16 + i17)) + i17 + i8 + i7);
                        }
                    }
                    if (param == this.nextImage) {
                        imageReceiver.setImageWidth(i8 - i6);
                        imageReceiver.setImageX((int) (imageReceiver.getImageX() + (i6 / 2)));
                    } else {
                        imageReceiver.setImageWidth(this.itemWidth);
                    }
                }
                imageReceiver.setAlpha(this.drawAlpha);
                imageReceiver.setRoundRadius(AndroidUtilities.dp(2.0f));
                imageReceiver.draw(canvas);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = jCurrentTimeMillis - this.lastUpdateTime;
            if (j > 17) {
                j = 17;
            }
            this.lastUpdateTime = jCurrentTimeMillis;
            int i18 = this.animateToItem;
            if (i18 >= 0) {
                float f6 = this.moveLineProgress;
                if (f6 > 0.0f) {
                    float f7 = j;
                    float f8 = f6 - (f7 / (this.animateToItemFast ? 100.0f : 200.0f));
                    this.moveLineProgress = f8;
                    if (i18 == this.currentImage) {
                        float f9 = this.currentItemProgress;
                        if (f9 < 1.0f) {
                            float f10 = f9 + (f7 / 200.0f);
                            this.currentItemProgress = f10;
                            if (f10 > 1.0f) {
                                this.currentItemProgress = 1.0f;
                            }
                        }
                        this.drawDx = this.animateToDXStart + ((int) Math.ceil(this.currentItemProgress * (this.animateToDX - r1)));
                    } else {
                        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
                        this.nextItemProgress = cubicBezierInterpolator.getInterpolation(1.0f - f8);
                        if (this.stopedScrolling) {
                            float f11 = this.currentItemProgress;
                            if (f11 > 0.0f) {
                                float f12 = f11 - (f7 / 200.0f);
                                this.currentItemProgress = f12;
                                if (f12 < 0.0f) {
                                    this.currentItemProgress = 0.0f;
                                }
                            }
                            this.drawDx = this.animateToDXStart + ((int) Math.ceil(r6 * (this.animateToDX - r1)));
                        } else {
                            this.currentItemProgress = cubicBezierInterpolator.getInterpolation(this.moveLineProgress);
                            this.drawDx = (int) Math.ceil(this.nextItemProgress * this.animateToDX);
                        }
                    }
                    if (this.moveLineProgress <= 0.0f) {
                        this.currentImage = this.animateToItem;
                        this.moveLineProgress = 1.0f;
                        this.currentItemProgress = 1.0f;
                        this.nextItemProgress = 0.0f;
                        this.moving = false;
                        this.stopedScrolling = false;
                        this.drawDx = 0;
                        this.animateToItem = -1;
                        this.animateToItemFast = false;
                    }
                }
                fillImages(true, this.drawDx);
                invalidate();
            }
            if (this.scrolling) {
                float f13 = this.currentItemProgress;
                if (f13 > 0.0f) {
                    float f14 = f13 - (j / 200.0f);
                    this.currentItemProgress = f14;
                    if (f14 < 0.0f) {
                        this.currentItemProgress = 0.0f;
                    }
                    invalidate();
                }
            }
            if (this.scroll.isFinished()) {
                return;
            }
            if (this.scroll.computeScrollOffset()) {
                this.drawDx = this.scroll.getCurrX();
                updateAfterScroll();
                invalidate();
            }
            if (this.scroll.isFinished()) {
                stopScrolling();
            }
        }
    }

    public void setDelegate(GroupedPhotosListViewDelegate groupedPhotosListViewDelegate) {
        this.delegate = groupedPhotosListViewDelegate;
    }

    public boolean hasPhotos() {
        if (!this.hasPhotos || this.hideAnimator != null) {
            return false;
        }
        if (this.drawAlpha > 0.0f || !this.animateBackground) {
            return true;
        }
        ValueAnimator valueAnimator = this.showAnimator;
        return valueAnimator != null && valueAnimator.isStarted();
    }

    public void setAnimationsEnabled(boolean z) {
        if (this.animationsEnabled != z) {
            this.animationsEnabled = z;
            if (z) {
                return;
            }
            ValueAnimator valueAnimator = this.showAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.showAnimator = null;
            }
            ValueAnimator valueAnimator2 = this.hideAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.hideAnimator = null;
            }
            this.drawAlpha = 0.0f;
            invalidate();
        }
    }

    public void setAnimateBackground(boolean z) {
        this.animateBackground = z;
    }

    public void reset() {
        this.hasPhotos = false;
        if (this.animationsEnabled) {
            this.drawAlpha = 0.0f;
        }
    }
}
