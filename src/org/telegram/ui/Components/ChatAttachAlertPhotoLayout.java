package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.system.SystemUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.camera.CameraController;
import org.telegram.messenger.camera.CameraSessionWrapper;
import org.telegram.messenger.camera.CameraView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.PhotoAttachCameraCell;
import org.telegram.ui.Cells.PhotoAttachPermissionCell;
import org.telegram.ui.Cells.PhotoAttachPhotoCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AvatarConstructorFragment;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.MessagePreviewView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.RecyclerViewItemRangeSelector;
import org.telegram.ui.Components.ShutterButton;
import org.telegram.ui.Components.ZoomControlView;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.capture.IBlur3Hash;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.recorder.AlbumButton;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ViewConstructor"})
public class ChatAttachAlertPhotoLayout extends ChatAttachAlert.AttachAlertLayout implements NotificationCenter.NotificationCenterDelegate {
    private static boolean mediaFromExternalCamera;
    private PhotoAttachAdapter adapter;
    float additionCloseCameraY;
    private Runnable afterCameraInitRunnable;
    private int alertOnlyOnce;
    private int[] animateCameraValues;
    float animationClipBottom;
    float animationClipLeft;
    float animationClipRight;
    float animationClipTop;
    private boolean cameraAnimationInProgress;
    private PhotoAttachAdapter cameraAttachAdapter;
    boolean cameraExpanded;
    private AnimatorSet cameraInitAnimation;
    private float cameraOpenProgress;
    public boolean cameraOpened;
    private FrameLayout cameraPanel;
    private LinearLayoutManager cameraPhotoLayoutManager;
    private RecyclerListView cameraPhotoRecyclerView;
    private boolean cameraPhotoRecyclerViewIgnoreLayout;
    protected CameraViewInternal cameraView;
    private final CameraViewItemDecoration cameraViewItemDecoration;
    private float[] cameraViewLocation;
    private float cameraViewOffsetBottomY;
    private float cameraViewOffsetX;
    private float cameraViewOffsetY;
    private float cameraZoom;
    private boolean canSaveCameraPreview;
    private boolean cancelTakingPhotos;
    public MessagePreviewView.ToggleButton captionItem;
    private boolean checkCameraWhenShown;
    private ActionBarMenuSubItem compressItem;
    private TextView counterTextView;
    public int currentItemTop;
    private float currentPanTranslationY;
    private int currentSelectedCount;
    boolean deviceHasGoodCamera;
    private boolean documentsEnabled;
    private boolean dragging;
    public TextView dropDown;
    private ArrayList<MediaController.AlbumEntry> dropDownAlbums;
    private ActionBarMenuItem dropDownContainer;
    private Drawable dropDownDrawable;
    private boolean flashAnimationInProgress;
    private ImageView[] flashModeButton;
    boolean forceDarkTheme;
    private MediaController.AlbumEntry galleryAlbumEntry;
    private int gridExtraSpace;
    public RecyclerListView gridView;
    private ViewPropertyAnimator headerAnimator;
    private Rect hitRect;
    private boolean ignoreLayout;
    private boolean includeVideosInGallery;
    private DecelerateInterpolator interpolator;
    private Boolean isCameraFrontfaceBeforeEnteringEditMode;
    private boolean isHidden;
    private RecyclerViewItemRangeSelector itemRangeSelector;
    private int itemSize;
    private int itemsPerRow;
    private int lastItemSize;
    private int lastNotifyWidth;
    private float lastY;
    private GridLayoutManager layoutManager;
    public int listAdditionalH;
    private boolean loading;
    private boolean maybeStartDraging;
    private boolean mediaEnabled;
    private final boolean needCamera;
    private boolean noCameraPermissions;
    private boolean noGalleryPermissions;
    private AnimationNotificationsLocker notificationsLocker;
    private boolean photoEnabled;
    public PhotoViewer.PhotoViewerProvider photoViewerProvider;
    private float pinchStartDistance;
    private boolean pressed;
    protected ActionBarMenuSubItem previewItem;
    private EmptyTextProgressView progressView;
    private ActionBarMenuSubItem qualityItem;
    private TextView recordTime;
    private boolean requestingPermissions;
    private MediaController.AlbumEntry selectedAlbumEntry;
    private boolean showAvatarConstructor;
    private ShutterButton shutterButton;
    private ActionBarMenuSubItem spoilerItem;
    private ActionBarMenuSubItem starsItem;
    private ImageView switchCameraButton;
    private boolean takingPhoto;
    private TextView tooltipTextView;
    private boolean videoEnabled;
    private Runnable videoRecordRunnable;
    private int videoRecordTime;
    private int[] viewPosition;
    private AnimatorSet zoomControlAnimation;
    private Runnable zoomControlHideRunnable;
    private ZoomControlView zoomControlView;
    private boolean zoomWas;
    private boolean zooming;
    private static ArrayList<Object> cameraPhotos = new ArrayList<>();
    public static HashMap<Object, Object> selectedPhotos = new HashMap<>();
    public static ArrayList<Object> selectedPhotosOrder = new ArrayList<>();
    public static int lastImageId = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public void onPhotoEditModeChanged(boolean z) {
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 1;
    }

    public void updateAvatarPicker() {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        this.showAvatarConstructor = (chatAttachAlert.avatarPicker == 0 || chatAttachAlert.isPhotoPicker) ? false : true;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class BasePhotoProvider extends PhotoViewer.EmptyPhotoViewerProvider {
        private BasePhotoProvider() {
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void spoilerPressed() {
            ChatAttachAlertPhotoLayout.this.onMenuItemClick(10);
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean isPhotoChecked(int i) {
            MediaController.PhotoEntry photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
            return photoEntryAtPosition != null && ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId));
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public int setPhotoChecked(int i, VideoEditedInfo videoEditedInfo) {
            MediaController.PhotoEntry photoEntryAtPosition;
            boolean z;
            boolean zIsPhotoChecked = isPhotoChecked(i);
            if ((ChatAttachAlertPhotoLayout.this.parentAlert.maxSelectedPhotos >= 0 && ChatAttachAlertPhotoLayout.selectedPhotos.size() >= ChatAttachAlertPhotoLayout.this.parentAlert.maxSelectedPhotos && !zIsPhotoChecked) || (photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i)) == null || ChatAttachAlertPhotoLayout.this.checkSendMediaEnabled(photoEntryAtPosition)) {
                return -1;
            }
            if (!zIsPhotoChecked && ChatAttachAlertPhotoLayout.selectedPhotos.size() + 1 > ChatAttachAlertPhotoLayout.this.maxCount()) {
                return -1;
            }
            int iAddToSelectedPhotos = ChatAttachAlertPhotoLayout.this.addToSelectedPhotos(photoEntryAtPosition, -1);
            if (iAddToSelectedPhotos == -1) {
                iAddToSelectedPhotos = ChatAttachAlertPhotoLayout.selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId));
                z = true;
            } else {
                photoEntryAtPosition.editedInfo = null;
                z = false;
            }
            photoEntryAtPosition.editedInfo = videoEditedInfo;
            int childCount = ChatAttachAlertPhotoLayout.this.gridView.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = ChatAttachAlertPhotoLayout.this.gridView.getChildAt(i2);
                if ((childAt instanceof PhotoAttachPhotoCell) && ((Integer) childAt.getTag()).intValue() == i) {
                    ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
                    if ((chatAttachAlert.baseFragment instanceof ChatActivity) && chatAttachAlert.allowOrder) {
                        ((PhotoAttachPhotoCell) childAt).setChecked(iAddToSelectedPhotos, z, false);
                    } else {
                        ((PhotoAttachPhotoCell) childAt).setChecked(-1, z, false);
                    }
                } else {
                    i2++;
                }
            }
            int childCount2 = ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount2) {
                    break;
                }
                View childAt2 = ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.getChildAt(i3);
                if ((childAt2 instanceof PhotoAttachPhotoCell) && ((Integer) childAt2.getTag()).intValue() == i) {
                    ChatAttachAlert chatAttachAlert2 = ChatAttachAlertPhotoLayout.this.parentAlert;
                    if ((chatAttachAlert2.baseFragment instanceof ChatActivity) && chatAttachAlert2.allowOrder) {
                        ((PhotoAttachPhotoCell) childAt2).setChecked(iAddToSelectedPhotos, z, false);
                    } else {
                        ((PhotoAttachPhotoCell) childAt2).setChecked(-1, z, false);
                    }
                } else {
                    i3++;
                }
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.updateCountButton(z ? 1 : 2);
            return iAddToSelectedPhotos;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public int getSelectedCount() {
            return ChatAttachAlertPhotoLayout.selectedPhotos.size();
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public ArrayList<Object> getSelectedPhotosOrder() {
            return ChatAttachAlertPhotoLayout.selectedPhotosOrder;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public HashMap<Object, Object> getSelectedPhotos() {
            return ChatAttachAlertPhotoLayout.selectedPhotos;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public int getPhotoIndex(int i) {
            MediaController.PhotoEntry photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
            if (photoEntryAtPosition == null) {
                return -1;
            }
            return ChatAttachAlertPhotoLayout.selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId));
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean allowLivePhotos() {
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            return chatAttachAlert != null && chatAttachAlert.allowLivePhotos;
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void updatedLivePhotos() {
            ChatAttachAlertPhotoLayout.this.updateCells();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentSpoilerVisible(int i, final boolean z) {
        PhotoViewer photoViewer = PhotoViewer.getInstance();
        if (i == -1) {
            i = photoViewer.getCurrentIndex();
        }
        List<Object> imagesArrLocals = photoViewer.getImagesArrLocals();
        if (imagesArrLocals == null || imagesArrLocals.isEmpty() || i >= imagesArrLocals.size() || !(imagesArrLocals.get(i) instanceof MediaController.PhotoEntry) || !((MediaController.PhotoEntry) imagesArrLocals.get(i)).hasSpoiler) {
            return;
        }
        final MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) imagesArrLocals.get(i);
        this.gridView.forAllChild(new Consumer() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda29
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$setCurrentSpoilerVisible$0(photoEntry, z, (View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCurrentSpoilerVisible$0(MediaController.PhotoEntry photoEntry, boolean z, View view) {
        if (view instanceof PhotoAttachPhotoCell) {
            PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) view;
            if (photoAttachPhotoCell.getPhotoEntry() == photoEntry) {
                photoAttachPhotoCell.setHasSpoiler(z, Float.valueOf(250.0f));
                photoAttachPhotoCell.setStarsPrice(getStarsPrice(), selectedPhotos.size() > 1);
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$1 */
    /* JADX INFO: loaded from: classes7.dex */
    public class C36251 extends BasePhotoProvider {
        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean cancelButtonPressed() {
            return false;
        }

        public C36251() {
            super();
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onOpen() {
            ChatAttachAlertPhotoLayout.this.pauseCameraPreview();
            ChatAttachAlertPhotoLayout.this.setCurrentSpoilerVisible(-1, true);
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onPreClose() {
            ChatAttachAlertPhotoLayout.this.setCurrentSpoilerVisible(-1, false);
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onClose() {
            ChatAttachAlertPhotoLayout.this.resumeCameraPreview();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onClose$0();
                }
            }, 150L);
            ChatAttachAlertPhotoLayout.this.onSelectedItemsCountChanged(getSelectedCount());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClose$0() {
            ChatAttachAlertPhotoLayout.this.setCurrentSpoilerVisible(-1, true);
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onEditModeChanged(boolean z) {
            ChatAttachAlertPhotoLayout.this.onPhotoEditModeChanged(z);
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i, boolean z, boolean z2) {
            Utilities.Callback0Return<PhotoViewer.PlaceProviderObject> callback0Return;
            PhotoViewer.PlaceProviderObject placeProviderObjectRun;
            if (z2 && (callback0Return = ChatAttachAlertPhotoLayout.this.parentAlert.avatarWithBulletin) != null && (placeProviderObjectRun = callback0Return.run()) != null) {
                return placeProviderObjectRun;
            }
            PhotoAttachPhotoCell cellForIndex = ChatAttachAlertPhotoLayout.this.getCellForIndex(i);
            if (cellForIndex == null) {
                return null;
            }
            int[] iArr = new int[2];
            cellForIndex.getImageView().getLocationInWindow(iArr);
            if (Build.VERSION.SDK_INT < 26) {
                iArr[0] = iArr[0] - ChatAttachAlertPhotoLayout.this.parentAlert.getLeftInset();
            }
            PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
            placeProviderObject.viewX = iArr[0];
            placeProviderObject.viewY = iArr[1];
            placeProviderObject.parentView = ChatAttachAlertPhotoLayout.this.gridView;
            ImageReceiver imageReceiver = cellForIndex.getImageView().getImageReceiver();
            placeProviderObject.imageReceiver = imageReceiver;
            placeProviderObject.thumb = imageReceiver.getBitmapSafe();
            placeProviderObject.scale = cellForIndex.getScale();
            placeProviderObject.clipBottomAddition = (int) ChatAttachAlertPhotoLayout.this.parentAlert.getClipLayoutBottom();
            cellForIndex.showCheck(false);
            return placeProviderObject;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void updatePhotoAtIndex(int i) {
            PhotoAttachPhotoCell cellForIndex = ChatAttachAlertPhotoLayout.this.getCellForIndex(i);
            if (cellForIndex != null) {
                cellForIndex.getImageView().setOrientation(0, true);
                MediaController.PhotoEntry photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
                if (photoEntryAtPosition == null) {
                    return;
                }
                if (photoEntryAtPosition.coverPath != null) {
                    cellForIndex.getImageView().setImage(photoEntryAtPosition.coverPath, null, Theme.chat_attachEmptyDrawable);
                    return;
                }
                if (photoEntryAtPosition.thumbPath != null) {
                    cellForIndex.getImageView().setImage(photoEntryAtPosition.thumbPath, null, Theme.chat_attachEmptyDrawable);
                    return;
                }
                if (photoEntryAtPosition.path != null) {
                    cellForIndex.getImageView().setOrientation(photoEntryAtPosition.orientation, photoEntryAtPosition.invert, true);
                    if (photoEntryAtPosition.isVideo) {
                        cellForIndex.getImageView().setImage("vthumb://" + photoEntryAtPosition.imageId + ":" + photoEntryAtPosition.path, null, Theme.chat_attachEmptyDrawable);
                        return;
                    }
                    cellForIndex.getImageView().setImage("thumb://" + photoEntryAtPosition.imageId + ":" + photoEntryAtPosition.path, null, Theme.chat_attachEmptyDrawable);
                    return;
                }
                cellForIndex.getImageView().setImageDrawable(Theme.chat_attachEmptyDrawable);
            }
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public ImageReceiver.BitmapHolder getThumbForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i) {
            PhotoAttachPhotoCell cellForIndex = ChatAttachAlertPhotoLayout.this.getCellForIndex(i);
            if (cellForIndex != null) {
                return cellForIndex.getImageView().getImageReceiver().getBitmapSafe();
            }
            return null;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void willSwitchFromPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i) {
            PhotoAttachPhotoCell cellForIndex = ChatAttachAlertPhotoLayout.this.getCellForIndex(i);
            if (cellForIndex != null) {
                cellForIndex.showCheck(true);
            }
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void willHidePhotoViewer() {
            int childCount = ChatAttachAlertPhotoLayout.this.gridView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ChatAttachAlertPhotoLayout.this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    ((PhotoAttachPhotoCell) childAt).showCheck(true);
                }
            }
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onApplyCaption(CharSequence charSequence) {
            CharSequence charSequence2;
            ArrayList<TLRPC.MessageEntity> arrayList;
            if (ChatAttachAlertPhotoLayout.selectedPhotos.size() <= 0 || ChatAttachAlertPhotoLayout.selectedPhotosOrder.size() <= 0) {
                return;
            }
            Object obj = ChatAttachAlertPhotoLayout.selectedPhotos.get(ChatAttachAlertPhotoLayout.selectedPhotosOrder.get(0));
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                charSequence2 = photoEntry.caption;
                arrayList = photoEntry.entities;
            } else {
                charSequence2 = null;
                arrayList = null;
            }
            if (obj instanceof MediaController.SearchImage) {
                MediaController.SearchImage searchImage = (MediaController.SearchImage) obj;
                charSequence2 = searchImage.caption;
                arrayList = searchImage.entities;
            }
            ArrayList<TLRPC.MessageEntity> arrayList2 = arrayList;
            if (charSequence2 != null && arrayList2 != null) {
                CharSequence spannableStringBuilder = !(charSequence2 instanceof Spannable) ? new SpannableStringBuilder(charSequence2) : charSequence2;
                MessageObject.addEntitiesToText(spannableStringBuilder, arrayList2, false, false, false, false);
                charSequence2 = spannableStringBuilder;
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.getCommentView().setText(AnimatedEmojiSpan.cloneSpans(charSequence2, 3));
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, final boolean z, final int i2, int i3, final boolean z2) {
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            chatAttachAlertPhotoLayout.parentAlert.sent = true;
            MediaController.PhotoEntry photoEntryAtPosition = chatAttachAlertPhotoLayout.getPhotoEntryAtPosition(i);
            if (photoEntryAtPosition != null) {
                photoEntryAtPosition.editedInfo = videoEditedInfo;
            }
            if (ChatAttachAlertPhotoLayout.selectedPhotos.isEmpty() && photoEntryAtPosition != null) {
                ChatAttachAlertPhotoLayout.this.addToSelectedPhotos(photoEntryAtPosition, -1);
            }
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            if (chatAttachAlert.checkCaption(chatAttachAlert.getCommentView().getText())) {
                return;
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.applyCaption();
            if (PhotoViewer.getInstance().hasCaptionForAllMedia) {
                HashMap<Object, Object> selectedPhotos = getSelectedPhotos();
                ArrayList<Object> selectedPhotosOrder = getSelectedPhotosOrder();
                if (!selectedPhotos.isEmpty()) {
                    for (int i4 = 0; i4 < selectedPhotosOrder.size(); i4++) {
                        Object obj = selectedPhotos.get(selectedPhotosOrder.get(i4));
                        if (obj instanceof MediaController.PhotoEntry) {
                            MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                            if (i4 == 0) {
                                CharSequence[] charSequenceArr = {PhotoViewer.getInstance().captionForAllMedia};
                                photoEntry.entities = MediaDataController.getInstance(UserConfig.selectedAccount).getEntities(charSequenceArr, false);
                                CharSequence charSequence = charSequenceArr[0];
                                photoEntry.caption = charSequence;
                                if (ChatAttachAlertPhotoLayout.this.parentAlert.checkCaption(charSequence)) {
                                    return;
                                }
                            } else {
                                photoEntry.caption = null;
                            }
                        }
                    }
                }
            }
            ChatAttachAlert chatAttachAlert2 = ChatAttachAlertPhotoLayout.this.parentAlert;
            if (chatAttachAlert2 != null) {
                chatAttachAlert2.setButtonPressed(false);
            }
            if (PhotoViewer.getInstance() != null) {
                PhotoViewer.getInstance().closePhotoAfterSelect = false;
                PhotoViewer.getInstance().doneButtonPressed = false;
            }
            ChatAttachAlert chatAttachAlert3 = ChatAttachAlertPhotoLayout.this.parentAlert;
            AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert3.currentAccount, chatAttachAlert3.getDialogId(), getSelectedPhotos().size() + ChatAttachAlertPhotoLayout.this.parentAlert.getAdditionalMessagesCount(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$1$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj2) {
                    this.f$0.lambda$sendButtonPressed$1(z, i2, z2, (Long) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendButtonPressed$1(boolean z, int i, boolean z2, Long l) {
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            if (chatAttachAlert != null) {
                chatAttachAlert.setButtonPressed(true);
            }
            ChatAttachAlert chatAttachAlert2 = ChatAttachAlertPhotoLayout.this.parentAlert;
            chatAttachAlert2.delegate.didPressedButton(7, true, z, i, 0, 0L, chatAttachAlert2.isCaptionAbove(), z2, l.longValue());
            ChatAttachAlertPhotoLayout.selectedPhotos.clear();
            ChatAttachAlertPhotoLayout.cameraPhotos.clear();
            ChatAttachAlertPhotoLayout.selectedPhotosOrder.clear();
            ChatAttachAlertPhotoLayout.selectedPhotos.clear();
            if (PhotoViewer.getInstance() != null) {
                PhotoViewer.getInstance().closePhoto(PhotoViewer.getInstance().closePhotoAfterSelectWithAnimation, false);
                PhotoViewer.getInstance().doneButtonPressed = true;
            }
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean allowCaption() {
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            return (chatAttachAlert.isPhotoPicker || chatAttachAlert.isPollAttach) ? false : true;
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public long getDialogId() {
            BaseFragment baseFragment = ChatAttachAlertPhotoLayout.this.parentAlert.baseFragment;
            if (baseFragment instanceof ChatActivity) {
                return ((ChatActivity) baseFragment).getDialogId();
            }
            return super.getDialogId();
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean canMoveCaptionAbove() {
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            return chatAttachAlert != null && (chatAttachAlert.baseFragment instanceof ChatActivity);
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean isCaptionAbove() {
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            return chatAttachAlert != null && chatAttachAlert.captionAbove;
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void moveCaptionAbove(boolean z) {
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            if (chatAttachAlert == null || chatAttachAlert.captionAbove == z) {
                return;
            }
            chatAttachAlert.setCaptionAbove(z);
            ChatAttachAlertPhotoLayout.this.captionItem.setState(!r2.parentAlert.captionAbove, true);
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean isEditingMessage() {
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            return (chatAttachAlert == null || chatAttachAlert.editingMessageObject == null) ? false : true;
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean isEditingMessageResend() {
            MessageObject messageObject;
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            return (chatAttachAlert == null || (messageObject = chatAttachAlert.editingMessageObject) == null || !messageObject.needResendWhenEdit()) ? false : true;
        }
    }

    public void updateCheckedPhotoIndices() {
        if (this.parentAlert.baseFragment instanceof ChatActivity) {
            int childCount = this.gridView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    MediaController.PhotoEntry photoEntryAtPosition = getPhotoEntryAtPosition(((Integer) photoAttachPhotoCell.getTag()).intValue());
                    if (photoEntryAtPosition != null) {
                        photoAttachPhotoCell.setNum(selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId)));
                    }
                }
            }
            int childCount2 = this.cameraPhotoRecyclerView.getChildCount();
            for (int i2 = 0; i2 < childCount2; i2++) {
                View childAt2 = this.cameraPhotoRecyclerView.getChildAt(i2);
                if (childAt2 instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell2 = (PhotoAttachPhotoCell) childAt2;
                    MediaController.PhotoEntry photoEntryAtPosition2 = getPhotoEntryAtPosition(((Integer) photoAttachPhotoCell2.getTag()).intValue());
                    if (photoEntryAtPosition2 != null) {
                        photoAttachPhotoCell2.setNum(selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition2.imageId)));
                    }
                }
            }
        }
    }

    public void updateCheckedPhotos() {
        if (this.parentAlert.baseFragment instanceof ChatActivity) {
            int childCount = this.gridView.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    int childAdapterPosition = this.gridView.getChildAdapterPosition(childAt);
                    if (this.adapter.hasCameraSpaceRow && childAdapterPosition > this.itemsPerRow) {
                        childAdapterPosition--;
                    }
                    if (this.adapter.needCamera && this.selectedAlbumEntry == this.galleryAlbumEntry && (!ExteraConfig.getHideCameraTile() || this.noCameraPermissions)) {
                        childAdapterPosition--;
                    }
                    MediaController.PhotoEntry photoEntryAtPosition = getPhotoEntryAtPosition(childAdapterPosition);
                    photoAttachPhotoCell.setHasSpoiler(photoEntryAtPosition != null && photoEntryAtPosition.hasSpoiler);
                    photoAttachPhotoCell.setHighQuality(photoEntryAtPosition != null && photoEntryAtPosition.isHighQuality());
                    ChatAttachAlert chatAttachAlert = this.parentAlert;
                    if ((chatAttachAlert.baseFragment instanceof ChatActivity) && chatAttachAlert.allowOrder) {
                        photoAttachPhotoCell.setChecked(photoEntryAtPosition != null ? selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId)) : -1, photoEntryAtPosition != null && selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), true);
                    } else {
                        photoAttachPhotoCell.setChecked(-1, photoEntryAtPosition != null && selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), true);
                    }
                }
                i++;
            }
            int childCount2 = this.cameraPhotoRecyclerView.getChildCount();
            for (int i2 = 0; i2 < childCount2; i2++) {
                View childAt2 = this.cameraPhotoRecyclerView.getChildAt(i2);
                if (childAt2 instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell2 = (PhotoAttachPhotoCell) childAt2;
                    int childAdapterPosition2 = this.cameraPhotoRecyclerView.getChildAdapterPosition(childAt2);
                    if (this.adapter.hasCameraSpaceRow && childAdapterPosition2 > this.itemsPerRow) {
                        childAdapterPosition2--;
                    }
                    if (this.adapter.needCamera && this.selectedAlbumEntry == this.galleryAlbumEntry && (!ExteraConfig.getHideCameraTile() || this.noCameraPermissions)) {
                        childAdapterPosition2--;
                    }
                    MediaController.PhotoEntry photoEntryAtPosition2 = getPhotoEntryAtPosition(childAdapterPosition2);
                    photoAttachPhotoCell2.setHasSpoiler(photoEntryAtPosition2 != null && photoEntryAtPosition2.hasSpoiler);
                    photoAttachPhotoCell2.setHighQuality(photoEntryAtPosition2 != null && photoEntryAtPosition2.isHighQuality());
                    ChatAttachAlert chatAttachAlert2 = this.parentAlert;
                    if ((chatAttachAlert2.baseFragment instanceof ChatActivity) && chatAttachAlert2.allowOrder) {
                        photoAttachPhotoCell2.setChecked(photoEntryAtPosition2 != null ? selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition2.imageId)) : -1, photoEntryAtPosition2 != null && selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition2.imageId)), true);
                    } else {
                        photoAttachPhotoCell2.setChecked(-1, photoEntryAtPosition2 != null && selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition2.imageId)), true);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaController.PhotoEntry getPhotoEntryAtPosition(int i) {
        if (i < 0) {
            return null;
        }
        int size = cameraPhotos.size();
        if (i < size) {
            return (MediaController.PhotoEntry) cameraPhotos.get(i);
        }
        int i2 = i - size;
        MediaController.AlbumEntry albumEntry = this.selectedAlbumEntry;
        if (albumEntry == null || i2 >= albumEntry.photos.size()) {
            return null;
        }
        return this.selectedAlbumEntry.photos.get(i2);
    }

    public ArrayList<Object> getAllPhotosArray() {
        if (this.selectedAlbumEntry != null) {
            if (!cameraPhotos.isEmpty()) {
                ArrayList<Object> arrayList = new ArrayList<>(this.selectedAlbumEntry.photos.size() + cameraPhotos.size());
                arrayList.addAll(cameraPhotos);
                arrayList.addAll(this.selectedAlbumEntry.photos);
                return arrayList;
            }
            return this.selectedAlbumEntry.photos;
        }
        if (!cameraPhotos.isEmpty()) {
            return cameraPhotos;
        }
        return new ArrayList<>(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChatAttachAlertPhotoLayout(ChatAttachAlert chatAttachAlert, Context context, boolean z, final boolean z2, final Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.flashModeButton = new ImageView[2];
        this.cameraViewLocation = new float[2];
        this.viewPosition = new int[2];
        this.animateCameraValues = new int[5];
        this.interpolator = new DecelerateInterpolator(1.5f);
        this.isCameraFrontfaceBeforeEnteringEditMode = null;
        this.hitRect = new Rect();
        int iDp = AndroidUtilities.dp(80.0f);
        this.itemSize = iDp;
        this.lastItemSize = iDp;
        this.itemsPerRow = 3;
        this.loading = true;
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.photoViewerProvider = new C36251();
        int i = 0;
        Object[] objArr = 0;
        this.currentItemTop = 0;
        this.forceDarkTheme = z;
        this.needCamera = z2;
        BottomSheet.ContainerView container = chatAttachAlert.getContainer();
        ChatAttachAlert chatAttachAlert2 = this.parentAlert;
        this.showAvatarConstructor = chatAttachAlert2.avatarPicker != 0;
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, chatAttachAlert2.actionBar.createMenu(), 0, 0, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.2
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem, android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setText(ChatAttachAlertPhotoLayout.this.dropDown.getText());
            }
        };
        this.dropDownContainer = actionBarMenuItem;
        actionBarMenuItem.setSubMenuOpenSide(1);
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-2, -1.0f, 51, 60.0f, 0.0f, 40.0f, 0.0f);
        layoutParamsCreateFrame.topMargin = AndroidUtilities.statusBarHeight;
        this.parentAlert.actionBar.addView(this.dropDownContainer, 0, layoutParamsCreateFrame);
        this.dropDownContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        TextView textView = new TextView(context);
        this.dropDown = textView;
        textView.setImportantForAccessibility(2);
        this.dropDown.setGravity(3);
        this.dropDown.setSingleLine(true);
        this.dropDown.setLines(1);
        this.dropDown.setMaxLines(1);
        this.dropDown.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView2 = this.dropDown;
        int i2 = Theme.key_dialogTextBlack;
        textView2.setTextColor(getThemedColor(i2));
        this.dropDown.setText(LocaleController.getString(C2665R.string.ChatGallery));
        this.dropDown.setTypeface(AndroidUtilities.bold());
        Drawable drawableMutate = context.getResources().getDrawable(C2665R.drawable.ic_arrow_drop_down).mutate();
        this.dropDownDrawable = drawableMutate;
        int themedColor = getThemedColor(i2);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        this.dropDown.setPadding(0, 0, AndroidUtilities.dp(10.0f), 0);
        this.dropDownContainer.addView(this.dropDown, LayoutHelper.createFrame(-2, -2.0f, 16, 16.0f, 0.0f, 0.0f, 0.0f));
        checkCamera(false);
        MessagePreviewView.ToggleButton toggleButton = new MessagePreviewView.ToggleButton(context, C2665R.raw.position_below, LocaleController.getString(C2665R.string.CaptionAbove), C2665R.raw.position_above, LocaleController.getString(C2665R.string.CaptionBelow), resourcesProvider);
        this.captionItem = toggleButton;
        toggleButton.setState(!this.parentAlert.captionAbove, false);
        this.previewItem = this.parentAlert.selectedMenuItem.addSubItem(7, C2665R.drawable.msg_view_file, LocaleController.getString(C2665R.string.AttachMediaPreviewButton));
        this.parentAlert.selectedMenuItem.addColoredGap(5);
        this.parentAlert.selectedMenuItem.addSubItem(4, C2665R.drawable.msg_openin, LocaleController.getString(C2665R.string.OpenInExternalApp));
        this.compressItem = this.parentAlert.selectedMenuItem.addSubItem(1, C2665R.drawable.msg_filehq, LocaleController.getString(C2665R.string.SendWithoutCompression));
        this.parentAlert.selectedMenuItem.addSubItem(0, C2665R.drawable.msg_ungroup, LocaleController.getString(C2665R.string.SendWithoutGrouping));
        this.parentAlert.selectedMenuItem.addColoredGap(6);
        this.spoilerItem = this.parentAlert.selectedMenuItem.addSubItem(3, C2665R.drawable.msg_spoiler, LocaleController.getString(C2665R.string.EnablePhotoSpoiler));
        this.qualityItem = this.parentAlert.selectedMenuItem.addSubItem(2, C2665R.drawable.menu_quality_hd, LocaleController.getString(C2665R.string.SendInHighQuality));
        this.parentAlert.selectedMenuItem.addSubItem(8, this.captionItem);
        this.starsItem = this.parentAlert.selectedMenuItem.addSubItem(9, C2665R.drawable.menu_feature_paid, LocaleController.getString(C2665R.string.PaidMediaButton));
        this.parentAlert.selectedMenuItem.setFitSubItems(true);
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.3
            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || motionEvent.getY() >= ChatAttachAlertPhotoLayout.this.parentAlert.scrollOffsetY[0] - AndroidUtilities.dp(80.0f)) {
                    return super.onTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || motionEvent.getY() >= ChatAttachAlertPhotoLayout.this.parentAlert.scrollOffsetY[0] - AndroidUtilities.dp(80.0f)) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z3, int i3, int i4, int i5, int i6) {
                super.onLayout(z3, i3, i4, i5, i6);
                PhotoViewer.getInstance().checkCurrentImageVisibility();
            }
        };
        this.gridView = recyclerListView;
        recyclerListView.setFastScrollEnabled(1);
        this.gridView.setFastScrollVisible(true);
        this.gridView.getFastScroll().setAlpha(0.0f);
        this.gridView.getFastScroll().usePadding = false;
        this.gridView.getFastScroll().topOffset = ActionBar.getCurrentActionBarHeight();
        RecyclerListView recyclerListView2 = this.gridView;
        PhotoAttachAdapter photoAttachAdapter = new PhotoAttachAdapter(context, z2);
        this.adapter = photoAttachAdapter;
        recyclerListView2.setAdapter(photoAttachAdapter);
        RecyclerListView recyclerListView3 = this.gridView;
        CameraViewItemDecoration cameraViewItemDecoration = new CameraViewItemDecoration(recyclerListView3);
        this.cameraViewItemDecoration = cameraViewItemDecoration;
        recyclerListView3.addItemDecoration(cameraViewItemDecoration);
        this.adapter.createCache();
        this.gridView.setClipToPadding(false);
        this.gridView.setItemAnimator(null);
        this.gridView.setLayoutAnimation(null);
        this.gridView.setVerticalScrollBarEnabled(false);
        this.gridView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        addView(this.gridView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, -48.0f));
        this.gridView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.4
            boolean parentPinnedToTop;

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                if (ChatAttachAlertPhotoLayout.this.gridView.getChildCount() <= 0) {
                    return;
                }
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                chatAttachAlertPhotoLayout.parentAlert.updateLayout(chatAttachAlertPhotoLayout, true, i4);
                if (ChatAttachAlertPhotoLayout.this.adapter.getTotalItemsCount() > 30) {
                    boolean z3 = this.parentPinnedToTop;
                    ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                    boolean z4 = chatAttachAlertPhotoLayout2.parentAlert.pinnedToTop;
                    if (z3 != z4) {
                        this.parentPinnedToTop = z4;
                        chatAttachAlertPhotoLayout2.gridView.getFastScroll().animate().alpha(this.parentPinnedToTop ? 1.0f : 0.0f).setDuration(100L).start();
                    }
                } else {
                    ChatAttachAlertPhotoLayout.this.gridView.getFastScroll().setAlpha(0.0f);
                }
                if (i4 != 0) {
                    ChatAttachAlertPhotoLayout.this.checkCameraViewPosition();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                RecyclerListView.Holder holder;
                if (i3 == 0) {
                    int iDp2 = AndroidUtilities.dp(13.0f);
                    ActionBarMenuItem actionBarMenuItem2 = ChatAttachAlertPhotoLayout.this.parentAlert.selectedMenuItem;
                    int iDp3 = iDp2 + (actionBarMenuItem2 != null ? AndroidUtilities.dp(actionBarMenuItem2.getAlpha() * 26.0f) : 0);
                    int backgroundPaddingTop = ChatAttachAlertPhotoLayout.this.parentAlert.getBackgroundPaddingTop();
                    if (((ChatAttachAlertPhotoLayout.this.parentAlert.scrollOffsetY[0] - backgroundPaddingTop) - iDp3) + backgroundPaddingTop >= ActionBar.getCurrentActionBarHeight() + (ChatAttachAlertPhotoLayout.this.parentAlert.topCommentContainer.getMeasuredHeight() * ChatAttachAlertPhotoLayout.this.parentAlert.topCommentContainer.getAlpha()) || (holder = (RecyclerListView.Holder) ChatAttachAlertPhotoLayout.this.gridView.findViewHolderForAdapterPosition(0)) == null || holder.itemView.getTop() <= ChatAttachAlertPhotoLayout.this.getTopScrollOffset()) {
                        return;
                    }
                    ChatAttachAlertPhotoLayout.this.gridView.smoothScrollBy(0, holder.itemView.getTop() - ChatAttachAlertPhotoLayout.this.getTopScrollOffset());
                }
            }
        });
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, this.itemSize) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.5
            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i3) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.5.1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateDyToMakeVisible(View view, int i4) {
                        return super.calculateDyToMakeVisible(view, i4) - (ChatAttachAlertPhotoLayout.this.gridView.getPaddingTop() - ChatAttachAlertPhotoLayout.this.getTopScrollOffset());
                    }

                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateTimeForDeceleration(int i4) {
                        return super.calculateTimeForDeceleration(i4) * 2;
                    }
                };
                linearSmoothScroller.setTargetPosition(i3);
                startSmoothScroll(linearSmoothScroller);
            }
        };
        this.layoutManager = gridLayoutManager;
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.6
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i3) {
                if (i3 == ChatAttachAlertPhotoLayout.this.adapter.itemsCount - 1 || ((ChatAttachAlertPhotoLayout.this.noGalleryPermissions || ChatAttachAlertPhotoLayout.this.noCameraPermissions) && i3 == 0)) {
                    return ChatAttachAlertPhotoLayout.this.layoutManager.getSpanCount();
                }
                if (ChatAttachAlertPhotoLayout.this.noCameraPermissions) {
                    i3--;
                }
                return ChatAttachAlertPhotoLayout.this.itemSize + (i3 % ChatAttachAlertPhotoLayout.this.itemsPerRow != ChatAttachAlertPhotoLayout.this.itemsPerRow + (-1) ? AndroidUtilities.dp(2.0f) : 0);
            }
        });
        this.gridView.setLayoutManager(this.layoutManager);
        this.gridView.setInstantClick(true);
        this.gridView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i3, float f, float f2) {
                this.f$0.lambda$new$3(z2, resourcesProvider, view, i3, f, f2);
            }
        });
        this.gridView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i3) {
                return this.f$0.lambda$new$4(view, i3);
            }
        });
        RecyclerViewItemRangeSelector recyclerViewItemRangeSelector = new RecyclerViewItemRangeSelector(new RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.7
            @Override // org.telegram.ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public int getItemCount() {
                return ChatAttachAlertPhotoLayout.this.adapter.getItemCount();
            }

            @Override // org.telegram.ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public void setSelected(View view, int i3, boolean z3) {
                if (isSelected(i3) == z3) {
                    return;
                }
                if (view instanceof PhotoAttachPhotoCell) {
                    ((PhotoAttachPhotoCell) view).callDelegate();
                } else {
                    ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                    chatAttachAlertPhotoLayout.photoViewerProvider.setPhotoChecked(chatAttachAlertPhotoLayout.adapter.getPhotoPosition(i3), null);
                }
            }

            @Override // org.telegram.ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public boolean isSelected(int i3) {
                MediaController.PhotoEntry photo = ChatAttachAlertPhotoLayout.this.adapter.getPhoto(i3);
                return photo != null && ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photo.imageId));
            }

            @Override // org.telegram.ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public boolean isIndexSelectable(int i3) {
                return ChatAttachAlertPhotoLayout.this.adapter.getItemViewType(i3) == 0;
            }

            @Override // org.telegram.ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public void onStartStopSelection(boolean z3) {
                ChatAttachAlertPhotoLayout.this.alertOnlyOnce = z3 ? 1 : 0;
                ChatAttachAlertPhotoLayout.this.gridView.hideSelector(true);
            }
        });
        this.itemRangeSelector = recyclerViewItemRangeSelector;
        this.gridView.addOnItemTouchListener(recyclerViewItemRangeSelector);
        RecyclerListView recyclerListView4 = this.gridView;
        this.iBlur3Capture = recyclerListView4;
        this.iBlur3CaptureView = recyclerListView4;
        this.occupyNavigationBar = true;
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context, null, resourcesProvider);
        this.progressView = emptyTextProgressView;
        emptyTextProgressView.setText(LocaleController.getString(C2665R.string.NoPhotos));
        this.progressView.setOnTouchListener(null);
        this.progressView.setTextSize(16);
        addView(this.progressView, LayoutHelper.createFrame(-1, -2.0f));
        boolean z3 = this.loading;
        EmptyTextProgressView emptyTextProgressView2 = this.progressView;
        if (z3) {
            emptyTextProgressView2.showProgress();
        } else {
            emptyTextProgressView2.showTextView();
        }
        final Paint paint = new Paint(1);
        paint.setColor(-2468275);
        TextView textView3 = new TextView(context) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.8
            float alpha = 0.0f;
            boolean isIncr;

            @Override // android.widget.TextView, android.view.View
            public void onDraw(Canvas canvas) {
                paint.setAlpha((int) ((this.alpha * 130.0f) + 125.0f));
                boolean z4 = this.isIncr;
                float f = this.alpha;
                if (!z4) {
                    float f2 = f - 0.026666667f;
                    this.alpha = f2;
                    if (f2 <= 0.0f) {
                        this.alpha = 0.0f;
                        this.isIncr = true;
                    }
                } else {
                    float f3 = f + 0.026666667f;
                    this.alpha = f3;
                    if (f3 >= 1.0f) {
                        this.alpha = 1.0f;
                        this.isIncr = false;
                    }
                }
                super.onDraw(canvas);
                canvas.drawCircle(AndroidUtilities.dp(14.0f), getMeasuredHeight() / 2, AndroidUtilities.dp(4.0f), paint);
                invalidate();
            }
        };
        this.recordTime = textView3;
        AndroidUtilities.updateViewVisibilityAnimated(textView3, false, 1.0f, false);
        this.recordTime.setBackgroundResource(C2665R.drawable.system);
        this.recordTime.getBackground().setColorFilter(new PorterDuffColorFilter(1711276032, mode));
        this.recordTime.setTextSize(1, 15.0f);
        this.recordTime.setTypeface(AndroidUtilities.bold());
        this.recordTime.setAlpha(0.0f);
        this.recordTime.setTextColor(-1);
        this.recordTime.setPadding(AndroidUtilities.dp(24.0f), AndroidUtilities.dp(5.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(5.0f));
        container.addView(this.recordTime, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 16.0f, 0.0f, 0.0f));
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.9
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z4, int i3, int i4, int i5, int i6) {
                int measuredWidth;
                int measuredHeight;
                int iDp2;
                int measuredHeight2;
                int measuredWidth2;
                int iDp3;
                if (getMeasuredWidth() == AndroidUtilities.dp(126.0f)) {
                    measuredWidth = getMeasuredWidth() / 2;
                    measuredHeight = getMeasuredHeight() / 2;
                    measuredWidth2 = getMeasuredWidth() / 2;
                    int i7 = measuredHeight / 2;
                    iDp3 = measuredHeight + i7 + AndroidUtilities.dp(17.0f);
                    measuredHeight2 = i7 - AndroidUtilities.dp(17.0f);
                    iDp2 = measuredWidth2;
                } else {
                    measuredWidth = getMeasuredWidth() / 2;
                    measuredHeight = (getMeasuredHeight() / 2) - AndroidUtilities.dp(13.0f);
                    int i8 = measuredWidth / 2;
                    int iDp4 = measuredWidth + i8 + AndroidUtilities.dp(17.0f);
                    iDp2 = i8 - AndroidUtilities.dp(17.0f);
                    measuredHeight2 = (getMeasuredHeight() / 2) - AndroidUtilities.dp(13.0f);
                    measuredWidth2 = iDp4;
                    iDp3 = measuredHeight2;
                }
                int measuredHeight3 = (getMeasuredHeight() - ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredHeight()) - AndroidUtilities.dp(12.0f);
                int measuredWidth3 = getMeasuredWidth();
                int iDp5 = AndroidUtilities.dp(126.0f);
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                if (measuredWidth3 == iDp5) {
                    chatAttachAlertPhotoLayout.tooltipTextView.layout(measuredWidth - (ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredWidth() / 2), getMeasuredHeight(), (ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredWidth() / 2) + measuredWidth, getMeasuredHeight() + ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredHeight());
                } else {
                    chatAttachAlertPhotoLayout.tooltipTextView.layout(measuredWidth - (ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredWidth() / 2), measuredHeight3, (ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredWidth() / 2) + measuredWidth, ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredHeight() + measuredHeight3);
                }
                ChatAttachAlertPhotoLayout.this.shutterButton.layout(measuredWidth - (ChatAttachAlertPhotoLayout.this.shutterButton.getMeasuredWidth() / 2), measuredHeight - (ChatAttachAlertPhotoLayout.this.shutterButton.getMeasuredHeight() / 2), measuredWidth + (ChatAttachAlertPhotoLayout.this.shutterButton.getMeasuredWidth() / 2), measuredHeight + (ChatAttachAlertPhotoLayout.this.shutterButton.getMeasuredHeight() / 2));
                ChatAttachAlertPhotoLayout.this.switchCameraButton.layout(measuredWidth2 - (ChatAttachAlertPhotoLayout.this.switchCameraButton.getMeasuredWidth() / 2), iDp3 - (ChatAttachAlertPhotoLayout.this.switchCameraButton.getMeasuredHeight() / 2), measuredWidth2 + (ChatAttachAlertPhotoLayout.this.switchCameraButton.getMeasuredWidth() / 2), iDp3 + (ChatAttachAlertPhotoLayout.this.switchCameraButton.getMeasuredHeight() / 2));
                for (int i9 = 0; i9 < 2; i9++) {
                    ChatAttachAlertPhotoLayout.this.flashModeButton[i9].layout(iDp2 - (ChatAttachAlertPhotoLayout.this.flashModeButton[i9].getMeasuredWidth() / 2), measuredHeight2 - (ChatAttachAlertPhotoLayout.this.flashModeButton[i9].getMeasuredHeight() / 2), (ChatAttachAlertPhotoLayout.this.flashModeButton[i9].getMeasuredWidth() / 2) + iDp2, (ChatAttachAlertPhotoLayout.this.flashModeButton[i9].getMeasuredHeight() / 2) + measuredHeight2);
                }
            }
        };
        this.cameraPanel = frameLayout;
        frameLayout.setVisibility(8);
        this.cameraPanel.setAlpha(0.0f);
        container.addView(this.cameraPanel, LayoutHelper.createFrame(-1, 126, 83));
        TextView textView4 = new TextView(context);
        this.counterTextView = textView4;
        textView4.setBackgroundResource(C2665R.drawable.photos_rounded);
        this.counterTextView.setVisibility(8);
        this.counterTextView.setTextColor(-1);
        this.counterTextView.setGravity(17);
        this.counterTextView.setPivotX(0.0f);
        this.counterTextView.setPivotY(0.0f);
        this.counterTextView.setTypeface(AndroidUtilities.bold());
        this.counterTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, C2665R.drawable.photos_arrow, 0);
        this.counterTextView.setCompoundDrawablePadding(AndroidUtilities.dp(4.0f));
        this.counterTextView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        container.addView(this.counterTextView, LayoutHelper.createFrame(-2, 38.0f, 51, 0.0f, 0.0f, 0.0f, 116.0f));
        this.counterTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$5(view);
            }
        });
        ZoomControlView zoomControlView = new ZoomControlView(context);
        this.zoomControlView = zoomControlView;
        zoomControlView.setVisibility(8);
        this.zoomControlView.setAlpha(0.0f);
        container.addView(this.zoomControlView, LayoutHelper.createFrame(-2, 50.0f, 51, 0.0f, 0.0f, 0.0f, 116.0f));
        this.zoomControlView.setDelegate(new ZoomControlView.ZoomControlViewDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda12
            @Override // org.telegram.ui.Components.ZoomControlView.ZoomControlViewDelegate
            public final void didSetZoom(float f) {
                this.f$0.lambda$new$6(f);
            }
        });
        ShutterButton shutterButton = new ShutterButton(context);
        this.shutterButton = shutterButton;
        this.cameraPanel.addView(shutterButton, LayoutHelper.createFrame(84, 84, 17));
        this.shutterButton.setDelegate(new AnonymousClass10(resourcesProvider, container));
        this.shutterButton.setFocusable(true);
        this.shutterButton.setContentDescription(LocaleController.getString(C2665R.string.AccDescrShutter));
        ImageView imageView = new ImageView(context);
        this.switchCameraButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.cameraPanel.addView(this.switchCameraButton, LayoutHelper.createFrame(48, 48, 21));
        this.switchCameraButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$7(view);
            }
        });
        this.switchCameraButton.setContentDescription(LocaleController.getString(C2665R.string.AccDescrSwitchCamera));
        for (int i3 = 0; i3 < 2; i3++) {
            this.flashModeButton[i3] = new ImageView(context);
            this.flashModeButton[i3].setScaleType(ImageView.ScaleType.CENTER);
            this.flashModeButton[i3].setVisibility(4);
            this.cameraPanel.addView(this.flashModeButton[i3], LayoutHelper.createFrame(48, 48, 51));
            this.flashModeButton[i3].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$8(view);
                }
            });
            this.flashModeButton[i3].setContentDescription("flash mode " + i3);
        }
        TextView textView5 = new TextView(context);
        this.tooltipTextView = textView5;
        textView5.setTextSize(1, 15.0f);
        this.tooltipTextView.setTextColor(-1);
        this.tooltipTextView.setText(LocaleController.getString(C2665R.string.TapForVideo));
        this.tooltipTextView.setShadowLayer(AndroidUtilities.dp(3.33333f), 0.0f, AndroidUtilities.dp(0.666f), 1275068416);
        this.tooltipTextView.setPadding(AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f), 0);
        this.cameraPanel.addView(this.tooltipTextView, LayoutHelper.createFrame(-2, -2.0f, 81, 0.0f, 0.0f, 0.0f, 16.0f));
        RecyclerListView recyclerListView5 = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.13
            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerViewIgnoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.cameraPhotoRecyclerView = recyclerListView5;
        recyclerListView5.setVerticalScrollBarEnabled(true);
        RecyclerListView recyclerListView6 = this.cameraPhotoRecyclerView;
        PhotoAttachAdapter photoAttachAdapter2 = new PhotoAttachAdapter(context, false);
        this.cameraAttachAdapter = photoAttachAdapter2;
        recyclerListView6.setAdapter(photoAttachAdapter2);
        this.cameraAttachAdapter.createCache();
        this.cameraPhotoRecyclerView.setClipToPadding(false);
        this.cameraPhotoRecyclerView.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
        this.cameraPhotoRecyclerView.setItemAnimator(null);
        this.cameraPhotoRecyclerView.setLayoutAnimation(null);
        this.cameraPhotoRecyclerView.setOverScrollMode(2);
        this.cameraPhotoRecyclerView.setVisibility(4);
        this.cameraPhotoRecyclerView.setAlpha(0.0f);
        container.addView(this.cameraPhotoRecyclerView, LayoutHelper.createFrame(-1, 80.0f));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, i, objArr == true ? 1 : 0) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.14
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        };
        this.cameraPhotoLayoutManager = linearLayoutManager;
        this.cameraPhotoRecyclerView.setLayoutManager(linearLayoutManager);
        this.cameraPhotoRecyclerView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda15
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i4) {
                ChatAttachAlertPhotoLayout.$r8$lambda$VklzUSeZPvZpHOoLP0Rq5PldOfI(view, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        this.dropDownContainer.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0222  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$3(boolean z, Theme.ResourcesProvider resourcesProvider, View view, int i, float f, float f2) {
        int i2;
        final ChatActivity chatActivity;
        final int i3;
        boolean z2;
        Object obj;
        Object obj2;
        int i4 = i;
        if (this.mediaEnabled) {
            ChatAttachAlert chatAttachAlert = this.parentAlert;
            if (chatAttachAlert.destroyed) {
                return;
            }
            BaseFragment lastFragment = chatAttachAlert.baseFragment;
            if (lastFragment == null) {
                lastFragment = LaunchActivity.getLastFragment();
            }
            final BaseFragment baseFragment = lastFragment;
            if (baseFragment == null || (view instanceof GalleryEmptyView)) {
                return;
            }
            if (this.adapter.needCamera && this.selectedAlbumEntry == this.galleryAlbumEntry && i4 == 0 && this.noCameraPermissions) {
                try {
                    baseFragment.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 18);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            if (this.noGalleryPermissions) {
                SystemUtils.requestImagesAndVideoPermission(baseFragment.getParentActivity());
                return;
            }
            if (this.adapter.hasCameraSpaceRow && i4 == this.itemsPerRow) {
                openCameraByClick();
                return;
            }
            if (i4 != 0 || !z || this.selectedAlbumEntry != this.galleryAlbumEntry || ExteraConfig.getHideCameraTile() || this.noCameraPermissions) {
                if (this.adapter.hasCameraSpaceRow && i4 > this.itemsPerRow) {
                    i4--;
                }
                if (this.selectedAlbumEntry == this.galleryAlbumEntry && z && (!ExteraConfig.getHideCameraTile() || this.noCameraPermissions)) {
                    i4--;
                }
                ChatActivity chatActivity2 = null;
                if (this.showAvatarConstructor) {
                    if (i4 == 0) {
                        if (!(view instanceof AvatarConstructorPreviewCell)) {
                            return;
                        }
                        showAvatarConstructorFragment((AvatarConstructorPreviewCell) view, null);
                        this.parentAlert.lambda$new$0();
                    }
                    i4--;
                }
                final int i5 = i4;
                final ArrayList<Object> allPhotosArray = getAllPhotosArray();
                if (i5 < 0 || i5 >= allPhotosArray.size()) {
                    return;
                }
                ChatAttachAlert.ChatAttachViewDelegate chatAttachViewDelegate = this.parentAlert.delegate;
                if (chatAttachViewDelegate != null && chatAttachViewDelegate.selectItemOnClicking() && (allPhotosArray.get(i5) instanceof MediaController.PhotoEntry)) {
                    MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) allPhotosArray.get(i5);
                    selectedPhotos.clear();
                    if (photoEntry != null) {
                        addToSelectedPhotos(photoEntry, -1);
                    }
                    this.parentAlert.applyCaption();
                    ChatAttachAlert chatAttachAlert2 = this.parentAlert;
                    chatAttachAlert2.delegate.didPressedButton(7, true, true, 0, 0, 0L, chatAttachAlert2.isCaptionAbove(), false, 0L);
                    selectedPhotos.clear();
                    cameraPhotos.clear();
                    selectedPhotosOrder.clear();
                    selectedPhotos.clear();
                    return;
                }
                PhotoViewer.getInstance().setParentActivity(baseFragment, resourcesProvider);
                PhotoViewer.getInstance().setParentAlert(this.parentAlert);
                PhotoViewer photoViewer = PhotoViewer.getInstance();
                ChatAttachAlert chatAttachAlert3 = this.parentAlert;
                photoViewer.setMaxSelectedPhotos(chatAttachAlert3.maxSelectedPhotos, chatAttachAlert3.allowOrder);
                ChatAttachAlert chatAttachAlert4 = this.parentAlert;
                if (chatAttachAlert4.isPhotoPicker && chatAttachAlert4.isStickerMode) {
                    BaseFragment baseFragment2 = chatAttachAlert4.baseFragment;
                    i2 = 11;
                    if (baseFragment2 instanceof ChatActivity) {
                        chatActivity2 = (ChatActivity) baseFragment2;
                    }
                } else {
                    if (chatAttachAlert4.avatarPicker != 0) {
                        chatActivity = null;
                        i3 = 1;
                    } else {
                        BaseFragment baseFragment3 = chatAttachAlert4.baseFragment;
                        if (baseFragment3 instanceof ChatActivity) {
                            chatActivity2 = (ChatActivity) baseFragment3;
                        } else if (!chatAttachAlert4.allowEnterCaption) {
                            i2 = 4;
                        }
                        chatActivity = chatActivity2;
                        i3 = 0;
                    }
                    if (!chatAttachAlert4.delegate.needEnterComment()) {
                        AndroidUtilities.hideKeyboard(baseFragment.getFragmentView().findFocus());
                        AndroidUtilities.hideKeyboard(this.parentAlert.getContainer().findFocus());
                    }
                    if (selectedPhotos.size() > 0 && selectedPhotosOrder.size() > 0) {
                        obj2 = selectedPhotos.get(selectedPhotosOrder.get(0));
                        if (obj2 instanceof MediaController.PhotoEntry) {
                            ((MediaController.PhotoEntry) obj2).caption = this.parentAlert.getCommentView().getText();
                        }
                        if (obj2 instanceof MediaController.SearchImage) {
                            ((MediaController.SearchImage) obj2).caption = this.parentAlert.getCommentView().getText();
                        }
                    }
                    if (this.parentAlert.getAvatarFor() != null) {
                        this.parentAlert.getAvatarFor().isVideo = allPhotosArray.get(i5) instanceof MediaController.PhotoEntry ? ((MediaController.PhotoEntry) allPhotosArray.get(i5)).isVideo : false;
                    }
                    z2 = !(allPhotosArray.get(i5) instanceof MediaController.PhotoEntry) && ((MediaController.PhotoEntry) allPhotosArray.get(i5)).hasSpoiler;
                    obj = allPhotosArray.get(i5);
                    if ((obj instanceof MediaController.PhotoEntry) || !checkSendMediaEnabled((MediaController.PhotoEntry) obj)) {
                        if (z2) {
                            setCurrentSpoilerVisible(i5, false);
                        }
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda27
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$new$2(i3, baseFragment, allPhotosArray, i5, chatActivity);
                            }
                        }, !z2 ? 250L : 0L);
                        return;
                    }
                    return;
                }
                i3 = i2;
                chatActivity = chatActivity2;
                if (!chatAttachAlert4.delegate.needEnterComment()) {
                }
                if (selectedPhotos.size() > 0) {
                    obj2 = selectedPhotos.get(selectedPhotosOrder.get(0));
                    if (obj2 instanceof MediaController.PhotoEntry) {
                    }
                    if (obj2 instanceof MediaController.SearchImage) {
                    }
                }
                if (this.parentAlert.getAvatarFor() != null) {
                }
                if (allPhotosArray.get(i5) instanceof MediaController.PhotoEntry) {
                }
                obj = allPhotosArray.get(i5);
                if (obj instanceof MediaController.PhotoEntry) {
                }
                if (z2) {
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda27
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$2(i3, baseFragment, allPhotosArray, i5, chatActivity);
                    }
                }, !z2 ? 250L : 0L);
                return;
            }
            openCameraByClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i, BaseFragment baseFragment, ArrayList arrayList, int i2, ChatActivity chatActivity) {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert.isPhotoPicker && !chatAttachAlert.isStickerMode) {
            PhotoViewer.getInstance().setParentActivity(baseFragment);
            PhotoViewer.getInstance().setMaxSelectedPhotos(0, false);
            i = 3;
        }
        if (this.parentAlert.isPollAttach) {
            i = 13;
        }
        PhotoViewer.getInstance().openPhotoForSelect(arrayList, i2, i, false, this.photoViewerProvider, this.parentAlert.isPollAttach ? null : chatActivity);
        PhotoViewer.getInstance().setAvatarFor(this.parentAlert.getAvatarFor());
        ChatAttachAlert chatAttachAlert2 = this.parentAlert;
        if (chatAttachAlert2.isPhotoPicker && !chatAttachAlert2.isStickerMode) {
            PhotoViewer.getInstance().closePhotoAfterSelect = false;
        } else if (chatAttachAlert2.avatarPicker != 0) {
            PhotoViewer.getInstance().closePhotoAfterSelect = true;
            PhotoViewer.getInstance().closePhotoAfterSelectWithAnimation = this.parentAlert.avatarWithBulletin != null;
        }
        if (this.parentAlert.isStickerMode) {
            PhotoViewer.getInstance().enableStickerMode(null, null, false, this.parentAlert.customStickerHandler);
        }
        if (captionForAllMedia()) {
            PhotoViewer.getInstance().setCaption(this.parentAlert.getCommentView().getText());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$4(View view, int i) {
        if (this.parentAlert.storyMediaPicker) {
            return false;
        }
        if (i == 0 && this.selectedAlbumEntry == this.galleryAlbumEntry && !ExteraConfig.getHideCameraTile() && !this.noCameraPermissions) {
            ChatAttachAlert chatAttachAlert = this.parentAlert;
            ChatAttachAlert.ChatAttachViewDelegate chatAttachViewDelegate = chatAttachAlert.delegate;
            if (chatAttachViewDelegate == null) {
                return true;
            }
            chatAttachViewDelegate.didPressedButton(0, false, true, 0, 0, 0L, chatAttachAlert.isCaptionAbove(), false, 0L);
            return true;
        }
        if (view instanceof PhotoAttachPhotoCell) {
            this.itemRangeSelector.startSelection(view, i);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        if (this.cameraView == null) {
            return;
        }
        openPhotoViewer(null, false, false);
        CameraController.getInstance().stopPreview(this.cameraView.getCameraSessionObject());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(float f) {
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            this.cameraZoom = f;
            cameraViewInternal.setZoom(f);
        }
        showZoomControls(true, true);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    public class AnonymousClass10 implements ShutterButton.ShutterButtonDelegate {
        private File outputFile;
        final /* synthetic */ FrameLayout val$container;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;
        private boolean zoomingWas;

        public AnonymousClass10(Theme.ResourcesProvider resourcesProvider, FrameLayout frameLayout) {
            this.val$resourcesProvider = resourcesProvider;
            this.val$container = frameLayout;
        }

        @Override // org.telegram.ui.Components.ShutterButton.ShutterButtonDelegate
        public boolean shutterLongPressed() {
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout;
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
            ChatAttachAlert chatAttachAlert = chatAttachAlertPhotoLayout2.parentAlert;
            if ((chatAttachAlert.avatarPicker == 2 || (chatAttachAlert.baseFragment instanceof ChatActivity)) && !chatAttachAlertPhotoLayout2.takingPhoto) {
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout3 = ChatAttachAlertPhotoLayout.this;
                ChatAttachAlert chatAttachAlert2 = chatAttachAlertPhotoLayout3.parentAlert;
                if (chatAttachAlert2.destroyed || chatAttachAlertPhotoLayout3.cameraView == null || chatAttachAlert2.isStickerMode) {
                    return false;
                }
                BaseFragment lastFragment = chatAttachAlert2.baseFragment;
                if (lastFragment == null) {
                    lastFragment = LaunchActivity.getLastFragment();
                }
                if (lastFragment != null && lastFragment.getParentActivity() != null) {
                    boolean z = ChatAttachAlertPhotoLayout.this.videoEnabled;
                    ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout4 = ChatAttachAlertPhotoLayout.this;
                    if (!z) {
                        BulletinFactory.of(chatAttachAlertPhotoLayout4.cameraView, this.val$resourcesProvider).createErrorBulletin(LocaleController.getString(C2665R.string.GlobalAttachVideoRestricted)).show();
                        return false;
                    }
                    if (chatAttachAlertPhotoLayout4.getContext().checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
                        ChatAttachAlertPhotoLayout.this.requestingPermissions = true;
                        lastFragment.getParentActivity().requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, 21);
                        return false;
                    }
                    int i = 0;
                    while (true) {
                        chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                        if (i >= 2) {
                            break;
                        }
                        chatAttachAlertPhotoLayout.flashModeButton[i].animate().alpha(0.0f).translationX(AndroidUtilities.dp(30.0f)).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                        i++;
                    }
                    ViewPropertyAnimator duration = chatAttachAlertPhotoLayout.switchCameraButton.animate().alpha(0.0f).translationX(-AndroidUtilities.dp(30.0f)).setDuration(150L);
                    CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                    duration.setInterpolator(cubicBezierInterpolator).start();
                    ChatAttachAlertPhotoLayout.this.tooltipTextView.animate().alpha(0.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
                    BaseFragment baseFragment = ChatAttachAlertPhotoLayout.this.parentAlert.baseFragment;
                    this.outputFile = AndroidUtilities.generateVideoPath((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).isSecretChat());
                    AndroidUtilities.updateViewVisibilityAnimated(ChatAttachAlertPhotoLayout.this.recordTime, true);
                    ChatAttachAlertPhotoLayout.this.recordTime.setText(AndroidUtilities.formatLongDuration(0));
                    ChatAttachAlertPhotoLayout.this.videoRecordTime = 0;
                    ChatAttachAlertPhotoLayout.this.videoRecordRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$shutterLongPressed$0();
                        }
                    };
                    AndroidUtilities.lockOrientation(lastFragment.getParentActivity());
                    CameraController.getInstance().recordVideo(ChatAttachAlertPhotoLayout.this.cameraView.getCameraSessionObject(), this.outputFile, ChatAttachAlertPhotoLayout.this.parentAlert.avatarPicker != 0, new CameraController.VideoTakeCallback() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2
                        @Override // org.telegram.messenger.camera.CameraController.VideoTakeCallback
                        public final void onFinishVideoRecording(String str, long j) {
                            this.f$0.lambda$shutterLongPressed$1(str, j);
                        }
                    }, new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$shutterLongPressed$2();
                        }
                    }, ChatAttachAlertPhotoLayout.this.cameraView);
                    ChatAttachAlertPhotoLayout.this.shutterButton.setState(ShutterButton.State.RECORDING, true);
                    ChatAttachAlertPhotoLayout.this.cameraView.runHaptic();
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shutterLongPressed$0() {
            if (ChatAttachAlertPhotoLayout.this.videoRecordRunnable == null) {
                return;
            }
            ChatAttachAlertPhotoLayout.this.videoRecordTime++;
            ChatAttachAlertPhotoLayout.this.recordTime.setText(AndroidUtilities.formatLongDuration(ChatAttachAlertPhotoLayout.this.videoRecordTime));
            AndroidUtilities.runOnUIThread(ChatAttachAlertPhotoLayout.this.videoRecordRunnable, 1000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shutterLongPressed$1(String str, long j) {
            int i;
            int i2;
            if (this.outputFile != null) {
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                if (chatAttachAlertPhotoLayout.parentAlert.destroyed || chatAttachAlertPhotoLayout.cameraView == null) {
                    return;
                }
                ChatAttachAlertPhotoLayout.mediaFromExternalCamera = false;
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(new File(str).getAbsolutePath(), options);
                    i = options.outWidth;
                    try {
                        i2 = options.outHeight;
                    } catch (Exception unused) {
                        i2 = 0;
                    }
                } catch (Exception unused2) {
                    i = 0;
                }
                int i3 = i;
                int i4 = ChatAttachAlertPhotoLayout.lastImageId;
                ChatAttachAlertPhotoLayout.lastImageId = i4 - 1;
                MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, i4, 0L, this.outputFile.getAbsolutePath(), 0, true, i3, i2, 0L);
                photoEntry.duration = (int) (j / 1000.0f);
                photoEntry.thumbPath = str;
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                if (chatAttachAlertPhotoLayout2.parentAlert.avatarPicker != 0 && chatAttachAlertPhotoLayout2.cameraView.isFrontface()) {
                    MediaController.CropState cropState = new MediaController.CropState();
                    photoEntry.cropState = cropState;
                    cropState.mirrored = true;
                    cropState.freeform = false;
                    cropState.lockedAspectRatio = 1.0f;
                }
                ChatAttachAlertPhotoLayout.this.openPhotoViewer(photoEntry, false, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shutterLongPressed$2() {
            AndroidUtilities.runOnUIThread(ChatAttachAlertPhotoLayout.this.videoRecordRunnable, 1000L);
        }

        @Override // org.telegram.ui.Components.ShutterButton.ShutterButtonDelegate
        public void shutterCancel() {
            File file = this.outputFile;
            if (file != null) {
                file.delete();
                this.outputFile = null;
            }
            ChatAttachAlertPhotoLayout.this.resetRecordState();
            CameraController.getInstance().stopVideoRecording(ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession(), true);
        }

        @Override // org.telegram.ui.Components.ShutterButton.ShutterButtonDelegate
        public void shutterReleased() {
            CameraViewInternal cameraViewInternal;
            if (ChatAttachAlertPhotoLayout.this.takingPhoto || (cameraViewInternal = ChatAttachAlertPhotoLayout.this.cameraView) == null || cameraViewInternal.getCameraSession() == null) {
                return;
            }
            ShutterButton.State state = ChatAttachAlertPhotoLayout.this.shutterButton.getState();
            ShutterButton.State state2 = ShutterButton.State.RECORDING;
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            if (state == state2) {
                chatAttachAlertPhotoLayout.resetRecordState();
                CameraController.getInstance().stopVideoRecording(ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession(), false);
                ChatAttachAlertPhotoLayout.this.shutterButton.setState(ShutterButton.State.DEFAULT, true);
                return;
            }
            boolean z = chatAttachAlertPhotoLayout.photoEnabled;
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
            if (!z) {
                BulletinFactory.of(chatAttachAlertPhotoLayout2.cameraView, this.val$resourcesProvider).createErrorBulletin(LocaleController.getString(C2665R.string.GlobalAttachPhotoRestricted)).show();
                return;
            }
            BaseFragment baseFragment = chatAttachAlertPhotoLayout2.parentAlert.baseFragment;
            final File fileGeneratePicturePath = AndroidUtilities.generatePicturePath((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).isSecretChat(), null);
            final boolean zIsSameTakePictureOrientation = ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession().isSameTakePictureOrientation();
            CameraSessionWrapper cameraSession = ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession();
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            cameraSession.setFlipFront((chatAttachAlert.baseFragment instanceof ChatActivity) || chatAttachAlert.avatarPicker == 2);
            ChatAttachAlertPhotoLayout.this.takingPhoto = CameraController.getInstance().takePicture(fileGeneratePicturePath, false, ChatAttachAlertPhotoLayout.this.cameraView.getCameraSessionObject(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$shutterReleased$3(fileGeneratePicturePath, zIsSameTakePictureOrientation, (Integer) obj);
                }
            });
            ChatAttachAlertPhotoLayout.this.cameraView.startTakePictureAnimation(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shutterReleased$3(File file, boolean z, Integer num) {
            int i;
            int i2;
            ChatAttachAlertPhotoLayout.this.takingPhoto = false;
            if (file == null || ChatAttachAlertPhotoLayout.this.parentAlert.destroyed) {
                return;
            }
            ChatAttachAlertPhotoLayout.mediaFromExternalCamera = false;
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(new File(file.getAbsolutePath()).getAbsolutePath(), options);
                i = options.outWidth;
                try {
                    i2 = options.outHeight;
                } catch (Exception unused) {
                    i2 = 0;
                }
            } catch (Exception unused2) {
                i = 0;
            }
            int i3 = i;
            int i4 = ChatAttachAlertPhotoLayout.lastImageId;
            ChatAttachAlertPhotoLayout.lastImageId = i4 - 1;
            MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, i4, 0L, file.getAbsolutePath(), num.intValue() == -1 ? 0 : num.intValue(), false, i3, i2, 0L);
            photoEntry.canDeleteAfter = true;
            ChatAttachAlertPhotoLayout.this.openPhotoViewer(photoEntry, z, false);
        }

        @Override // org.telegram.ui.Components.ShutterButton.ShutterButtonDelegate
        public boolean onTranslationChanged(float f, float f2) {
            boolean z = this.val$container.getWidth() < this.val$container.getHeight();
            float f3 = z ? f : f2;
            float f4 = z ? f2 : f;
            if (!this.zoomingWas && Math.abs(f3) > Math.abs(f4)) {
                return ChatAttachAlertPhotoLayout.this.zoomControlView.getTag() == null;
            }
            if (f4 < 0.0f) {
                ChatAttachAlertPhotoLayout.this.showZoomControls(true, true);
                ChatAttachAlertPhotoLayout.this.zoomControlView.setZoom((-f4) / AndroidUtilities.dp(200.0f), true);
                this.zoomingWas = true;
                return false;
            }
            if (this.zoomingWas) {
                ChatAttachAlertPhotoLayout.this.zoomControlView.setZoom(0.0f, true);
            }
            if (f == 0.0f && f2 == 0.0f) {
                this.zoomingWas = false;
            }
            return (this.zoomingWas || (f == 0.0f && f2 == 0.0f)) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(View view) {
        CameraViewInternal cameraViewInternal;
        if (this.takingPhoto || (cameraViewInternal = this.cameraView) == null || !cameraViewInternal.isInited()) {
            return;
        }
        this.canSaveCameraPreview = false;
        this.cameraView.switchCamera();
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.switchCameraButton, (Property<ImageView, Float>) View.SCALE_X, 0.0f).setDuration(100L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ImageView imageView = ChatAttachAlertPhotoLayout.this.switchCameraButton;
                CameraViewInternal cameraViewInternal2 = ChatAttachAlertPhotoLayout.this.cameraView;
                imageView.setImageResource((cameraViewInternal2 == null || !cameraViewInternal2.isFrontface()) ? C2665R.drawable.camera_revert2 : C2665R.drawable.camera_revert1);
                ObjectAnimator.ofFloat(ChatAttachAlertPhotoLayout.this.switchCameraButton, (Property<ImageView, Float>) View.SCALE_X, 1.0f).setDuration(100L).start();
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(final View view) {
        CameraViewInternal cameraViewInternal;
        if (this.flashAnimationInProgress || (cameraViewInternal = this.cameraView) == null || !cameraViewInternal.isInited() || !this.cameraOpened) {
            return;
        }
        String currentFlashMode = this.cameraView.getCameraSession().getCurrentFlashMode();
        String nextFlashMode = this.cameraView.getCameraSession().getNextFlashMode();
        if (currentFlashMode.equals(nextFlashMode)) {
            return;
        }
        this.cameraView.getCameraSession().setCurrentFlashMode(nextFlashMode);
        this.flashAnimationInProgress = true;
        ImageView[] imageViewArr = this.flashModeButton;
        final ImageView imageView = imageViewArr[0];
        if (imageView == view) {
            imageView = imageViewArr[1];
        }
        imageView.setVisibility(0);
        setCameraFlashModeIcon(imageView, nextFlashMode);
        AnimatorSet animatorSet = new AnimatorSet();
        Property property = View.TRANSLATION_Y;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, 0.0f, AndroidUtilities.dp(48.0f));
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) property, -AndroidUtilities.dp(48.0f), 0.0f);
        Property property2 = View.ALPHA;
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, 1.0f, 0.0f), ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) property2, 0.0f, 1.0f));
        animatorSet.setDuration(220L);
        animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatAttachAlertPhotoLayout.this.flashAnimationInProgress = false;
                view.setVisibility(4);
                imageView.sendAccessibilityEvent(8);
            }
        });
        animatorSet.start();
    }

    public static /* synthetic */ void $r8$lambda$VklzUSeZPvZpHOoLP0Rq5PldOfI(View view, int i) {
        if (view instanceof PhotoAttachPhotoCell) {
            ((PhotoAttachPhotoCell) view).callDelegate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestGalleryPermission() {
        try {
            int i = Build.VERSION.SDK_INT;
            ChatAttachAlert chatAttachAlert = this.parentAlert;
            if (i >= 33) {
                chatAttachAlert.baseFragment.getParentActivity().requestPermissions(new String[]{"android.permission.READ_MEDIA_VIDEO", "android.permission.READ_MEDIA_IMAGES"}, 4);
            } else {
                chatAttachAlert.baseFragment.getParentActivity().requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 4);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCameraWithPermissionCheck() {
        if (ContextCompat.checkSelfPermission(this.parentAlert.baseFragment.getParentActivity(), "android.permission.CAMERA") != 0) {
            try {
                this.parentAlert.baseFragment.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 18);
            } catch (Exception unused) {
            }
        } else {
            openCameraByClick();
        }
    }

    private void openCameraByClick() {
        if (SharedConfig.inAppCamera) {
            openCamera(true);
            return;
        }
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        ChatAttachAlert.ChatAttachViewDelegate chatAttachViewDelegate = chatAttachAlert.delegate;
        if (chatAttachViewDelegate != null) {
            chatAttachViewDelegate.didPressedButton(0, false, true, 0, 0, 0L, chatAttachAlert.isCaptionAbove(), false, 0L);
        }
    }

    public void showAvatarConstructorFragment(AvatarConstructorPreviewCell avatarConstructorPreviewCell, TLRPC.VideoSize videoSize) {
        showAvatarConstructorFragment(avatarConstructorPreviewCell, videoSize, 0L);
    }

    public void showAvatarConstructorFragment(AvatarConstructorPreviewCell avatarConstructorPreviewCell, TLRPC.VideoSize videoSize, long j) {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        final AvatarConstructorFragment avatarConstructorFragment = new AvatarConstructorFragment(chatAttachAlert.parentImageUpdater, chatAttachAlert.getAvatarFor());
        avatarConstructorFragment.finishOnDone = this.parentAlert.getAvatarFor() == null || this.parentAlert.getAvatarFor().type != 2;
        this.parentAlert.baseFragment.presentFragment(avatarConstructorFragment);
        if (avatarConstructorPreviewCell != null) {
            avatarConstructorFragment.startFrom(avatarConstructorPreviewCell);
        }
        if (videoSize != null) {
            avatarConstructorFragment.startFrom(videoSize);
        }
        if (j != 0) {
            avatarConstructorFragment.startFrom(j, this.parentAlert.forUser);
        }
        avatarConstructorFragment.setDelegate(new AvatarConstructorFragment.Delegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda30
            @Override // org.telegram.ui.Components.AvatarConstructorFragment.Delegate
            public final void onDone(AvatarConstructorFragment.BackgroundGradient backgroundGradient, long j2, TLRPC.Document document, AvatarConstructorFragment.PreviewView previewView) {
                this.f$0.lambda$showAvatarConstructorFragment$10(avatarConstructorFragment, backgroundGradient, j2, document, previewView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAvatarConstructorFragment$10(AvatarConstructorFragment avatarConstructorFragment, AvatarConstructorFragment.BackgroundGradient backgroundGradient, long j, TLRPC.Document document, AvatarConstructorFragment.PreviewView previewView) {
        MediaController.PhotoEntry photoEntry;
        selectedPhotos.clear();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(800, 800, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        GradientTools gradientTools = new GradientTools();
        if (backgroundGradient != null) {
            gradientTools.setColors(backgroundGradient.color1, backgroundGradient.color2, backgroundGradient.color3, backgroundGradient.color4);
        } else {
            int[] iArr = AvatarConstructorFragment.defaultColors[0];
            gradientTools.setColors(iArr[0], iArr[1], iArr[2], iArr[3]);
        }
        gradientTools.setBounds(0.0f, 0.0f, 800.0f, 800.0f);
        canvas.drawRect(0.0f, 0.0f, 800.0f, 800.0f, gradientTools.paint);
        File file = new File(FileLoader.getDirectory(4), SharedConfig.getLastLocalId() + "avatar_background.png");
        try {
            file.createNewFile();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(byteArray);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        ImageReceiver imageReceiver = previewView.getImageReceiver();
        if (imageReceiver.getAnimation() != null) {
            Bitmap firstFrame = imageReceiver.getAnimation().getFirstFrame(null);
            ImageReceiver imageReceiver2 = new ImageReceiver();
            imageReceiver2.setImageBitmap(firstFrame);
            imageReceiver2.setImageCoords(120.0f, 120.0f, 560.0f, 560.0f);
            imageReceiver2.setRoundRadius(72);
            imageReceiver2.draw(canvas);
            imageReceiver2.clearImage();
            firstFrame.recycle();
        } else {
            if (imageReceiver.getLottieAnimation() != null) {
                imageReceiver.getLottieAnimation().setCurrentFrame(0, false, true);
            }
            imageReceiver.setImageCoords(120.0f, 120.0f, 560.0f, 560.0f);
            imageReceiver.setRoundRadius(72);
            imageReceiver.draw(canvas);
        }
        File file2 = new File(FileLoader.getDirectory(4), SharedConfig.getLastLocalId() + "avatar_background.png");
        try {
            file2.createNewFile();
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream2);
            byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
            FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
            fileOutputStream2.write(byteArray2);
            fileOutputStream2.flush();
            fileOutputStream2.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        if (previewView.hasAnimation()) {
            photoEntry = new MediaController.PhotoEntry(0, 0, 0L, file.getPath(), 0, false, 0, 0, 0L);
            photoEntry.thumbPath = file2.getPath();
            if (previewView.documentId != 0) {
                TLRPC.TL_videoSizeEmojiMarkup tL_videoSizeEmojiMarkup = new TLRPC.TL_videoSizeEmojiMarkup();
                tL_videoSizeEmojiMarkup.emoji_id = previewView.documentId;
                tL_videoSizeEmojiMarkup.background_colors.add(Integer.valueOf(previewView.backgroundGradient.color1));
                int i = previewView.backgroundGradient.color2;
                if (i != 0) {
                    tL_videoSizeEmojiMarkup.background_colors.add(Integer.valueOf(i));
                }
                int i2 = previewView.backgroundGradient.color3;
                if (i2 != 0) {
                    tL_videoSizeEmojiMarkup.background_colors.add(Integer.valueOf(i2));
                }
                int i3 = previewView.backgroundGradient.color4;
                if (i3 != 0) {
                    tL_videoSizeEmojiMarkup.background_colors.add(Integer.valueOf(i3));
                }
                photoEntry.emojiMarkup = tL_videoSizeEmojiMarkup;
            } else if (previewView.document != null) {
                TLRPC.TL_videoSizeStickerMarkup tL_videoSizeStickerMarkup = new TLRPC.TL_videoSizeStickerMarkup();
                TLRPC.Document document2 = previewView.document;
                tL_videoSizeStickerMarkup.sticker_id = document2.id;
                tL_videoSizeStickerMarkup.stickerset = MessageObject.getInputStickerSet(document2);
                tL_videoSizeStickerMarkup.background_colors.add(Integer.valueOf(previewView.backgroundGradient.color1));
                int i4 = previewView.backgroundGradient.color2;
                if (i4 != 0) {
                    tL_videoSizeStickerMarkup.background_colors.add(Integer.valueOf(i4));
                }
                int i5 = previewView.backgroundGradient.color3;
                if (i5 != 0) {
                    tL_videoSizeStickerMarkup.background_colors.add(Integer.valueOf(i5));
                }
                int i6 = previewView.backgroundGradient.color4;
                if (i6 != 0) {
                    tL_videoSizeStickerMarkup.background_colors.add(Integer.valueOf(i6));
                }
                photoEntry.emojiMarkup = tL_videoSizeStickerMarkup;
            }
            VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
            photoEntry.editedInfo = videoEditedInfo;
            videoEditedInfo.originalPath = file.getPath();
            VideoEditedInfo videoEditedInfo2 = photoEntry.editedInfo;
            videoEditedInfo2.resultWidth = 800;
            videoEditedInfo2.resultHeight = 800;
            videoEditedInfo2.originalWidth = 800;
            videoEditedInfo2.originalHeight = 800;
            videoEditedInfo2.isPhoto = true;
            videoEditedInfo2.bitrate = -1;
            videoEditedInfo2.muted = true;
            videoEditedInfo2.startTime = 0L;
            videoEditedInfo2.start = 0.0f;
            videoEditedInfo2.endTime = previewView.getDuration();
            VideoEditedInfo videoEditedInfo3 = photoEntry.editedInfo;
            videoEditedInfo3.framerate = 30;
            videoEditedInfo3.avatarStartTime = 0L;
            long j2 = videoEditedInfo3.endTime;
            videoEditedInfo3.estimatedSize = (int) ((j2 / 1000.0f) * 115200.0f);
            videoEditedInfo3.estimatedDuration = j2;
            VideoEditedInfo.MediaEntity mediaEntity = new VideoEditedInfo.MediaEntity();
            mediaEntity.type = (byte) 0;
            TLRPC.Document documentFindDocument = document == null ? AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, j) : document;
            if (documentFindDocument == null) {
                return;
            }
            mediaEntity.viewWidth = 560;
            mediaEntity.viewHeight = 560;
            mediaEntity.width = 0.7f;
            mediaEntity.height = 0.7f;
            mediaEntity.f984x = 0.15f;
            mediaEntity.f985y = 0.15f;
            mediaEntity.document = documentFindDocument;
            mediaEntity.parentObject = null;
            mediaEntity.text = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(documentFindDocument, true).getAbsolutePath();
            mediaEntity.roundRadius = 0.13f;
            if (MessageObject.isAnimatedStickerDocument(documentFindDocument, true) || MessageObject.isVideoStickerDocument(documentFindDocument)) {
                mediaEntity.subType = (byte) (mediaEntity.subType | (MessageObject.isAnimatedStickerDocument(documentFindDocument, true) ? (byte) 1 : (byte) 4));
            }
            if (MessageObject.isTextColorEmoji(documentFindDocument)) {
                mediaEntity.color = -1;
                mediaEntity.subType = (byte) (mediaEntity.subType | 8);
            }
            photoEntry.editedInfo.mediaEntities = new ArrayList<>();
            photoEntry.editedInfo.mediaEntities.add(mediaEntity);
        } else {
            photoEntry = new MediaController.PhotoEntry(0, 0, 0L, file2.getPath(), 0, false, 0, 0, 0L);
        }
        selectedPhotos.put(-1, photoEntry);
        selectedPhotosOrder.add(-1);
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        chatAttachAlert.delegate.didPressedButton(7, true, false, 0, 0, 0L, chatAttachAlert.isCaptionAbove(), false, 0L);
        if (avatarConstructorFragment.finishOnDone) {
            return;
        }
        BaseFragment baseFragment = this.parentAlert.baseFragment;
        if (baseFragment != null) {
            baseFragment.removeSelfFromStack();
        }
        avatarConstructorFragment.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkSendMediaEnabled(MediaController.PhotoEntry photoEntry) {
        if (!this.videoEnabled && photoEntry.isVideo) {
            if (this.parentAlert.checkCanRemoveRestrictionsByBoosts()) {
                return true;
            }
            BulletinFactory.of(this.parentAlert.sizeNotifierFrameLayout, this.resourcesProvider).createErrorBulletin(LocaleController.getString(C2665R.string.GlobalAttachVideoRestricted)).show();
            return true;
        }
        if (this.photoEnabled || photoEntry.isVideo) {
            return false;
        }
        if (this.parentAlert.checkCanRemoveRestrictionsByBoosts()) {
            return true;
        }
        BulletinFactory.of(this.parentAlert.sizeNotifierFrameLayout, this.resourcesProvider).createErrorBulletin(LocaleController.getString(C2665R.string.GlobalAttachPhotoRestricted)).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int maxCount() {
        BaseFragment baseFragment = this.parentAlert.baseFragment;
        if ((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).getChatMode() == 5) {
            return this.parentAlert.baseFragment.getMessagesController().config.quickReplyMessagesLimit.get() - ((ChatActivity) this.parentAlert.baseFragment).messages.size();
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int addToSelectedPhotos(MediaController.PhotoEntry photoEntry, int i) {
        Integer numValueOf = Integer.valueOf(photoEntry.imageId);
        if (selectedPhotos.containsKey(numValueOf)) {
            photoEntry.starsAmount = 0L;
            photoEntry.hasSpoiler = false;
            photoEntry.discardLivePhoto = null;
            photoEntry.highQuality = null;
            selectedPhotos.remove(numValueOf);
            int iIndexOf = selectedPhotosOrder.indexOf(numValueOf);
            if (iIndexOf >= 0) {
                selectedPhotosOrder.remove(iIndexOf);
            }
            updatePhotosCounter(false);
            updateCheckedPhotoIndices();
            if (i >= 0) {
                photoEntry.reset();
                this.photoViewerProvider.updatePhotoAtIndex(i);
            }
            return iIndexOf;
        }
        photoEntry.starsAmount = getStarsPrice();
        photoEntry.hasSpoiler = getStarsPrice() > 0;
        photoEntry.isChatPreviewSpoilerRevealed = false;
        photoEntry.isAttachSpoilerRevealed = false;
        if (hasLivePhotos()) {
            photoEntry.discardLivePhoto = Boolean.valueOf(!areLivePhotosEnabled());
        }
        photoEntry.highQuality = Boolean.valueOf(photoEntry.isHighQuality());
        boolean zCheckSelectedCount = checkSelectedCount(true);
        selectedPhotos.put(numValueOf, photoEntry);
        selectedPhotosOrder.add(numValueOf);
        if (zCheckSelectedCount) {
            updateCheckedPhotos();
            return -1;
        }
        updatePhotosCounter(true);
        return -1;
    }

    private boolean checkSelectedCount(boolean z) {
        if (getStarsPrice() <= 0) {
            return false;
        }
        boolean z2 = false;
        while (selectedPhotos.size() > 10 - (z ? 1 : 0) && !selectedPhotosOrder.isEmpty()) {
            Object obj = selectedPhotos.get(selectedPhotosOrder.get(0));
            if (!(obj instanceof MediaController.PhotoEntry)) {
                break;
            }
            addToSelectedPhotos((MediaController.PhotoEntry) obj, -1);
            z2 = true;
        }
        return z2;
    }

    public long getStarsPrice() {
        Iterator<Map.Entry<Object, Object>> it = selectedPhotos.entrySet().iterator();
        if (it.hasNext()) {
            return ((MediaController.PhotoEntry) it.next().getValue()).starsAmount;
        }
        return 0L;
    }

    public void setStarsPrice(long j) {
        if (!selectedPhotos.isEmpty()) {
            Iterator<Map.Entry<Object, Object>> it = selectedPhotos.entrySet().iterator();
            while (it.hasNext()) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) it.next().getValue();
                photoEntry.starsAmount = j;
                photoEntry.hasSpoiler = j > 0;
                photoEntry.isChatPreviewSpoilerRevealed = false;
                photoEntry.isAttachSpoilerRevealed = false;
            }
        }
        onSelectedItemsCountChanged(getSelectedItemsCount());
        if (checkSelectedCount(false)) {
            updateCheckedPhotos();
        }
    }

    private void updatePhotoStarsPrice() {
        this.gridView.forAllChild(new Consumer() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ChatAttachAlertPhotoLayout.$r8$lambda$j7zm8n531tbC7FnGcqehqgZvv6o((View) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$j7zm8n531tbC7FnGcqehqgZvv6o(View view) {
        if (view instanceof PhotoAttachPhotoCell) {
            PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) view;
            photoAttachPhotoCell.setHasSpoiler(photoAttachPhotoCell.getPhotoEntry() != null && photoAttachPhotoCell.getPhotoEntry().hasSpoiler, Float.valueOf(250.0f));
            photoAttachPhotoCell.setHighQuality(photoAttachPhotoCell.getPhotoEntry() != null && photoAttachPhotoCell.getPhotoEntry().isHighQuality());
            photoAttachPhotoCell.setStarsPrice(photoAttachPhotoCell.getPhotoEntry() != null ? photoAttachPhotoCell.getPhotoEntry().starsAmount : 0L, selectedPhotos.size() > 1);
        }
    }

    public void clearSelectedPhotos() {
        this.spoilerItem.setText(LocaleController.getString(C2665R.string.EnablePhotoSpoiler));
        this.spoilerItem.setAnimatedIcon(C2665R.raw.photo_spoiler);
        this.parentAlert.selectedMenuItem.showSubItem(1);
        if (!selectedPhotos.isEmpty()) {
            Iterator<Map.Entry<Object, Object>> it = selectedPhotos.entrySet().iterator();
            while (it.hasNext()) {
                ((MediaController.PhotoEntry) it.next().getValue()).reset();
            }
            selectedPhotos.clear();
            selectedPhotosOrder.clear();
        }
        if (!cameraPhotos.isEmpty()) {
            int size = cameraPhotos.size();
            for (int i = 0; i < size; i++) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) cameraPhotos.get(i);
                new File(photoEntry.path).delete();
                if (photoEntry.imagePath != null) {
                    new File(photoEntry.imagePath).delete();
                }
                if (photoEntry.thumbPath != null) {
                    new File(photoEntry.thumbPath).delete();
                }
            }
            cameraPhotos.clear();
        }
        this.adapter.notifyDataSetChanged();
        this.cameraAttachAdapter.notifyDataSetChanged();
    }

    private void updateAlbumsDropDown() {
        final ArrayList<MediaController.AlbumEntry> arrayList;
        this.dropDownContainer.removeAllSubItems();
        if (this.mediaEnabled) {
            if (shouldLoadAllMedia()) {
                arrayList = MediaController.allMediaAlbums;
            } else {
                arrayList = MediaController.allPhotoAlbums;
            }
            ArrayList<MediaController.AlbumEntry> arrayList2 = new ArrayList<>(arrayList);
            this.dropDownAlbums = arrayList2;
            Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda3
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ChatAttachAlertPhotoLayout.m10755$r8$lambda$GQg7L31KvldWhCi96qPcDzTIG8(arrayList, (MediaController.AlbumEntry) obj, (MediaController.AlbumEntry) obj2);
                }
            });
        } else {
            this.dropDownAlbums = new ArrayList<>();
        }
        boolean zIsEmpty = this.dropDownAlbums.isEmpty();
        TextView textView = this.dropDown;
        if (zIsEmpty) {
            textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.dropDownDrawable, (Drawable) null);
        int size = this.dropDownAlbums.size();
        for (int i = 0; i < size; i++) {
            MediaController.AlbumEntry albumEntry = this.dropDownAlbums.get(i);
            AlbumButton albumButton = new AlbumButton(getContext(), albumEntry.coverPhoto, albumEntry.bucketName, albumEntry.photos.size(), this.resourcesProvider);
            this.dropDownContainer.getPopupLayout().addView(albumButton);
            final int i2 = i + 10;
            albumButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateAlbumsDropDown$13(i2, view);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$GQg-7L31KvldWhCi96qPcDzTIG8, reason: not valid java name */
    public static /* synthetic */ int m10755$r8$lambda$GQg7L31KvldWhCi96qPcDzTIG8(ArrayList arrayList, MediaController.AlbumEntry albumEntry, MediaController.AlbumEntry albumEntry2) {
        int iIndexOf;
        int iIndexOf2;
        int i = albumEntry.bucketId;
        if (i == 0 && albumEntry2.bucketId != 0) {
            return -1;
        }
        if ((i == 0 || albumEntry2.bucketId != 0) && (iIndexOf = arrayList.indexOf(albumEntry)) <= (iIndexOf2 = arrayList.indexOf(albumEntry2))) {
            return iIndexOf < iIndexOf2 ? -1 : 0;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAlbumsDropDown$13(int i, View view) {
        this.parentAlert.actionBar.getActionBarMenuOnItemClick().onItemClick(i);
        this.dropDownContainer.toggleSubMenu();
    }

    private boolean processTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        if ((!this.pressed && motionEvent.getActionMasked() == 0) || motionEvent.getActionMasked() == 5) {
            this.zoomControlView.getHitRect(this.hitRect);
            if (this.zoomControlView.getTag() != null && this.hitRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
            if (!this.takingPhoto && !this.dragging) {
                if (motionEvent.getPointerCount() == 2) {
                    this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                    this.zooming = true;
                } else {
                    this.maybeStartDraging = true;
                    this.lastY = motionEvent.getY();
                    this.zooming = false;
                }
                this.zoomWas = false;
                this.pressed = true;
            }
        } else if (this.pressed) {
            int actionMasked = motionEvent.getActionMasked();
            Property property = View.ALPHA;
            if (actionMasked == 2) {
                if (this.zooming && motionEvent.getPointerCount() == 2 && !this.dragging) {
                    float fHypot = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                    if (this.zoomWas) {
                        if (this.cameraView != null) {
                            float fDp = (fHypot - this.pinchStartDistance) / AndroidUtilities.dp(100.0f);
                            this.pinchStartDistance = fHypot;
                            float f = this.cameraZoom + fDp;
                            this.cameraZoom = f;
                            if (f < 0.0f) {
                                this.cameraZoom = 0.0f;
                            } else if (f > 1.0f) {
                                this.cameraZoom = 1.0f;
                            }
                            this.zoomControlView.setZoom(this.cameraZoom, false);
                            this.parentAlert.getSheetContainer().invalidate();
                            this.cameraView.setZoom(this.cameraZoom);
                            showZoomControls(true, true);
                        }
                    } else if (Math.abs(fHypot - this.pinchStartDistance) >= AndroidUtilities.getPixelsInCM(0.4f, false)) {
                        this.pinchStartDistance = fHypot;
                        this.zoomWas = true;
                    }
                } else {
                    float y = motionEvent.getY();
                    float f2 = y - this.lastY;
                    if (this.maybeStartDraging) {
                        if (Math.abs(f2) > AndroidUtilities.getPixelsInCM(0.4f, false)) {
                            this.maybeStartDraging = false;
                            this.dragging = true;
                        }
                    } else if (this.dragging && this.cameraView != null && !ExteraConfig.getHideCameraTile()) {
                        CameraViewInternal cameraViewInternal = this.cameraView;
                        cameraViewInternal.setTranslationY(cameraViewInternal.getTranslationY() + f2);
                        this.lastY = y;
                        this.zoomControlView.setTag(null);
                        Runnable runnable = this.zoomControlHideRunnable;
                        if (runnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(runnable);
                            this.zoomControlHideRunnable = null;
                        }
                        if (this.cameraPanel.getTag() == null) {
                            this.cameraPanel.setTag(1);
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(ObjectAnimator.ofFloat(this.cameraPanel, (Property<FrameLayout, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.zoomControlView, (Property<ZoomControlView, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.counterTextView, (Property<TextView, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.flashModeButton[0], (Property<ImageView, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.flashModeButton[1], (Property<ImageView, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.cameraPhotoRecyclerView, (Property<RecyclerListView, Float>) property, 0.0f));
                            animatorSet.setDuration(220L);
                            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                            animatorSet.start();
                        }
                    }
                }
            } else if (motionEvent.getActionMasked() == 3 || motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 6) {
                this.pressed = false;
                this.zooming = false;
                if (this.dragging) {
                    this.dragging = false;
                    CameraViewInternal cameraViewInternal2 = this.cameraView;
                    if (cameraViewInternal2 != null) {
                        if (Math.abs(cameraViewInternal2.getTranslationY()) > this.cameraView.getMeasuredHeight() / 6.0f) {
                            closeCamera(true);
                        } else {
                            AnimatorSet animatorSet2 = new AnimatorSet();
                            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.cameraView, (Property<CameraViewInternal, Float>) View.TRANSLATION_Y, 0.0f), ObjectAnimator.ofFloat(this.cameraPanel, (Property<FrameLayout, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.counterTextView, (Property<TextView, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.flashModeButton[0], (Property<ImageView, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.flashModeButton[1], (Property<ImageView, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.cameraPhotoRecyclerView, (Property<RecyclerListView, Float>) property, 1.0f));
                            animatorSet2.setDuration(250L);
                            animatorSet2.setInterpolator(this.interpolator);
                            animatorSet2.start();
                            this.cameraPanel.setTag(null);
                        }
                    }
                } else {
                    CameraViewInternal cameraViewInternal3 = this.cameraView;
                    if (cameraViewInternal3 != null && !this.zoomWas) {
                        cameraViewInternal3.getLocationOnScreen(this.viewPosition);
                        this.cameraView.focusToPoint((int) (motionEvent.getRawX() - this.viewPosition[0]), (int) (motionEvent.getRawY() - this.viewPosition[1]));
                    }
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetRecordState() {
        if (this.parentAlert.destroyed) {
            return;
        }
        for (int i = 0; i < 2; i++) {
            this.flashModeButton[i].animate().alpha(1.0f).translationX(0.0f).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
        }
        ViewPropertyAnimator duration = this.switchCameraButton.animate().alpha(1.0f).translationX(0.0f).setDuration(150L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        duration.setInterpolator(cubicBezierInterpolator).start();
        this.tooltipTextView.animate().alpha(1.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
        AndroidUtilities.updateViewVisibilityAnimated(this.recordTime, false);
        AndroidUtilities.cancelRunOnUIThread(this.videoRecordRunnable);
        this.videoRecordRunnable = null;
        AndroidUtilities.unlockOrientation(AndroidUtilities.findActivity(getContext()));
    }

    public void openPhotoViewer(MediaController.PhotoEntry photoEntry, boolean z, boolean z2) {
        int i;
        ChatActivity chatActivity;
        ChatActivity chatActivity2;
        ArrayList<Object> arrayList;
        int size;
        if (photoEntry != null) {
            cameraPhotos.add(photoEntry);
            selectedPhotos.put(Integer.valueOf(photoEntry.imageId), photoEntry);
            selectedPhotosOrder.add(Integer.valueOf(photoEntry.imageId));
            this.parentAlert.updateCountButton(0);
            this.adapter.notifyDataSetChanged();
            this.cameraAttachAdapter.notifyDataSetChanged();
        }
        if (photoEntry != null && !z2 && cameraPhotos.size() > 1) {
            updatePhotosCounter(false);
            if (this.cameraView != null) {
                this.zoomControlView.setZoom(0.0f, false);
                this.cameraZoom = 0.0f;
                this.cameraView.setZoom(0.0f);
                CameraController.getInstance().startPreview(this.cameraView.getCameraSessionObject());
                return;
            }
            return;
        }
        if (cameraPhotos.isEmpty()) {
            return;
        }
        this.cancelTakingPhotos = true;
        BaseFragment lastFragment = this.parentAlert.baseFragment;
        if (lastFragment == null) {
            lastFragment = LaunchActivity.getLastFragment();
        }
        if (lastFragment == null) {
            return;
        }
        PhotoViewer.getInstance().setParentActivity(lastFragment.getParentActivity(), this.resourcesProvider);
        PhotoViewer.getInstance().setParentAlert(this.parentAlert);
        PhotoViewer photoViewer = PhotoViewer.getInstance();
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        photoViewer.setMaxSelectedPhotos(chatAttachAlert.maxSelectedPhotos, chatAttachAlert.allowOrder);
        ChatAttachAlert chatAttachAlert2 = this.parentAlert;
        if (chatAttachAlert2.isPhotoPicker && chatAttachAlert2.isStickerMode) {
            chatActivity = (ChatActivity) chatAttachAlert2.baseFragment;
            i = 11;
        } else {
            if (chatAttachAlert2.avatarPicker != 0) {
                i = 1;
            } else {
                BaseFragment baseFragment = chatAttachAlert2.baseFragment;
                if (baseFragment instanceof ChatActivity) {
                    chatActivity = (ChatActivity) baseFragment;
                    i = 2;
                } else {
                    i = 5;
                }
            }
            chatActivity = null;
        }
        boolean z3 = chatAttachAlert2.isPollAttach;
        if (z3) {
            i = 13;
            chatActivity2 = null;
        } else {
            chatActivity2 = chatActivity;
        }
        int i2 = i;
        if (chatAttachAlert2.avatarPicker != 0 || z3) {
            arrayList = new ArrayList<>();
            arrayList.add(photoEntry);
            size = 0;
        } else {
            arrayList = getAllPhotosArray();
            size = cameraPhotos.size() - 1;
        }
        ArrayList<Object> arrayList2 = arrayList;
        if (this.parentAlert.getAvatarFor() != null && photoEntry != null) {
            this.parentAlert.getAvatarFor().isVideo = photoEntry.isVideo;
        }
        PhotoViewer.getInstance().openPhotoForSelect(arrayList2, size, i2, false, new AnonymousClass15(z), chatActivity2);
        PhotoViewer.getInstance().setAvatarFor(this.parentAlert.getAvatarFor());
        if (this.parentAlert.isStickerMode) {
            PhotoViewer.getInstance().enableStickerMode(null, null, false, this.parentAlert.customStickerHandler);
            PhotoViewer.getInstance().prepareSegmentImage();
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$15, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    public class AnonymousClass15 extends BasePhotoProvider {
        final /* synthetic */ boolean val$sameTakePictureOrientation;

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean canScrollAway() {
            return false;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public ImageReceiver.BitmapHolder getThumbForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i) {
            return null;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass15(boolean z) {
            super();
            this.val$sameTakePictureOrientation = z;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onOpen() {
            ChatAttachAlertPhotoLayout.this.pauseCameraPreview();
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onClose() {
            ChatAttachAlertPhotoLayout.this.resumeCameraPreview();
            ChatAttachAlertPhotoLayout.this.onSelectedItemsCountChanged(getSelectedCount());
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onEditModeChanged(boolean z) {
            ChatAttachAlertPhotoLayout.this.onPhotoEditModeChanged(z);
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean cancelButtonPressed() {
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            if (chatAttachAlertPhotoLayout.cameraOpened && chatAttachAlertPhotoLayout.cameraView != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$cancelButtonPressed$0();
                    }
                }, 1000L);
                ChatAttachAlertPhotoLayout.this.zoomControlView.setZoom(0.0f, false);
                ChatAttachAlertPhotoLayout.this.cameraZoom = 0.0f;
                ChatAttachAlertPhotoLayout.this.cameraView.setZoom(0.0f);
                CameraController.getInstance().startPreview(ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession());
            }
            if (ChatAttachAlertPhotoLayout.this.cancelTakingPhotos && ChatAttachAlertPhotoLayout.cameraPhotos.size() == 1) {
                int size = ChatAttachAlertPhotoLayout.cameraPhotos.size();
                for (int i = 0; i < size; i++) {
                    MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) ChatAttachAlertPhotoLayout.cameraPhotos.get(i);
                    new File(photoEntry.path).delete();
                    if (photoEntry.imagePath != null) {
                        new File(photoEntry.imagePath).delete();
                    }
                    if (photoEntry.thumbPath != null) {
                        new File(photoEntry.thumbPath).delete();
                    }
                }
                ChatAttachAlertPhotoLayout.cameraPhotos.clear();
                ChatAttachAlertPhotoLayout.selectedPhotosOrder.clear();
                ChatAttachAlertPhotoLayout.selectedPhotos.clear();
                ChatAttachAlertPhotoLayout.this.counterTextView.setVisibility(4);
                ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.setVisibility(8);
                ChatAttachAlertPhotoLayout.this.adapter.notifyDataSetChanged();
                ChatAttachAlertPhotoLayout.this.cameraAttachAdapter.notifyDataSetChanged();
                ChatAttachAlertPhotoLayout.this.parentAlert.updateCountButton(0);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$cancelButtonPressed$0() {
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            if (chatAttachAlertPhotoLayout.cameraView == null || chatAttachAlertPhotoLayout.parentAlert.isDismissed()) {
                return;
            }
            ChatAttachAlertPhotoLayout.this.cameraView.setSystemUiVisibility(1028);
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void needAddMorePhotos() {
            ChatAttachAlertPhotoLayout.this.cancelTakingPhotos = false;
            boolean z = ChatAttachAlertPhotoLayout.mediaFromExternalCamera;
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            if (z) {
                ChatAttachAlert chatAttachAlert = chatAttachAlertPhotoLayout.parentAlert;
                chatAttachAlert.delegate.didPressedButton(0, true, true, 0, 0, 0L, chatAttachAlert.isCaptionAbove(), false, 0L);
                return;
            }
            if (!chatAttachAlertPhotoLayout.cameraOpened) {
                chatAttachAlertPhotoLayout.openCamera(false);
            }
            ChatAttachAlertPhotoLayout.this.counterTextView.setVisibility(0);
            ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.setVisibility(0);
            ChatAttachAlertPhotoLayout.this.counterTextView.setAlpha(1.0f);
            ChatAttachAlertPhotoLayout.this.updatePhotosCounter(false);
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, final boolean z, final int i2, int i3, final boolean z2) {
            if (ChatAttachAlertPhotoLayout.cameraPhotos.isEmpty() || ChatAttachAlertPhotoLayout.this.parentAlert.destroyed) {
                return;
            }
            if (videoEditedInfo != null && i >= 0 && i < ChatAttachAlertPhotoLayout.cameraPhotos.size()) {
                ((MediaController.PhotoEntry) ChatAttachAlertPhotoLayout.cameraPhotos.get(i)).editedInfo = videoEditedInfo;
            }
            BaseFragment baseFragment = ChatAttachAlertPhotoLayout.this.parentAlert.baseFragment;
            if (!(baseFragment instanceof ChatActivity) || !((ChatActivity) baseFragment).isSecretChat()) {
                int size = ChatAttachAlertPhotoLayout.cameraPhotos.size();
                for (int i4 = 0; i4 < size; i4++) {
                    MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) ChatAttachAlertPhotoLayout.cameraPhotos.get(i4);
                    if (photoEntry.ttl <= 0) {
                        AndroidUtilities.addMediaToGallery(photoEntry.path);
                    }
                }
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.applyCaption();
            if (PhotoViewer.getInstance() != null) {
                PhotoViewer.getInstance().closePhotoAfterSelect = false;
                PhotoViewer.getInstance().doneButtonPressed = false;
            }
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert.currentAccount, chatAttachAlert.getDialogId(), getSelectedCount() + ChatAttachAlertPhotoLayout.this.parentAlert.getAdditionalMessagesCount(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$sendButtonPressed$1(z2, z, i2, (Long) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendButtonPressed$1(boolean z, boolean z2, int i, Long l) {
            if (PhotoViewer.getInstance() != null) {
                PhotoViewer.getInstance().closePhotoAfterSelect = false;
                PhotoViewer.getInstance().doneButtonPressed = false;
            }
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            chatAttachAlert.sent = true;
            if (chatAttachAlert != null) {
                chatAttachAlert.setButtonPressed(true);
            }
            ChatAttachAlertPhotoLayout.this.closeCamera(false);
            ChatAttachAlert chatAttachAlert2 = ChatAttachAlertPhotoLayout.this.parentAlert;
            chatAttachAlert2.delegate.didPressedButton(z ? 4 : 8, true, z2, i, 0, 0L, chatAttachAlert2.isCaptionAbove(), z, l.longValue());
            ChatAttachAlertPhotoLayout.cameraPhotos.clear();
            ChatAttachAlertPhotoLayout.selectedPhotosOrder.clear();
            ChatAttachAlertPhotoLayout.selectedPhotos.clear();
            ChatAttachAlertPhotoLayout.this.adapter.notifyDataSetChanged();
            ChatAttachAlertPhotoLayout.this.cameraAttachAdapter.notifyDataSetChanged();
            ChatAttachAlertPhotoLayout.this.parentAlert.dismiss(true);
            if (PhotoViewer.getInstance() != null) {
                PhotoViewer.getInstance().closePhoto(PhotoViewer.getInstance().closePhotoAfterSelectWithAnimation, false);
                PhotoViewer.getInstance().doneButtonPressed = true;
            }
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean scaleToFill() {
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            if (chatAttachAlertPhotoLayout.parentAlert.destroyed) {
                return false;
            }
            return this.val$sameTakePictureOrientation || Settings.System.getInt(chatAttachAlertPhotoLayout.getContext().getContentResolver(), "accelerometer_rotation", 0) == 1;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void willHidePhotoViewer() {
            int childCount = ChatAttachAlertPhotoLayout.this.gridView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ChatAttachAlertPhotoLayout.this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    photoAttachPhotoCell.showImage();
                    photoAttachPhotoCell.showCheck(true);
                }
            }
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean canCaptureMorePhotos() {
            return ChatAttachAlertPhotoLayout.this.parentAlert.maxSelectedPhotos != 1;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean allowCaption() {
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            return (chatAttachAlert.isPhotoPicker || chatAttachAlert.isPollAttach) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showZoomControls(boolean z, boolean z2) {
        if ((this.zoomControlView.getTag() != null && z) || (this.zoomControlView.getTag() == null && !z)) {
            if (z) {
                Runnable runnable = this.zoomControlHideRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showZoomControls$14();
                    }
                };
                this.zoomControlHideRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, 2000L);
                return;
            }
            return;
        }
        AnimatorSet animatorSet = this.zoomControlAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.zoomControlView.setTag(z ? 1 : null);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.zoomControlAnimation = animatorSet2;
        animatorSet2.setDuration(180L);
        this.zoomControlAnimation.playTogether(ObjectAnimator.ofFloat(this.zoomControlView, (Property<ZoomControlView, Float>) View.ALPHA, z ? 1.0f : 0.0f));
        this.zoomControlAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.16
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatAttachAlertPhotoLayout.this.zoomControlAnimation = null;
            }
        });
        this.zoomControlAnimation.start();
        if (z) {
            Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showZoomControls$15();
                }
            };
            this.zoomControlHideRunnable = runnable3;
            AndroidUtilities.runOnUIThread(runnable3, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showZoomControls$14() {
        showZoomControls(false, true);
        this.zoomControlHideRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showZoomControls$15() {
        showZoomControls(false, true);
        this.zoomControlHideRunnable = null;
    }

    public void updatePhotosCounter(boolean z) {
        if (this.counterTextView != null) {
            ChatAttachAlert chatAttachAlert = this.parentAlert;
            if (chatAttachAlert.avatarPicker != 0 || chatAttachAlert.storyMediaPicker || chatAttachAlert.isPollAttach) {
                return;
            }
            Iterator<Map.Entry<Object, Object>> it = selectedPhotos.entrySet().iterator();
            boolean z2 = false;
            boolean z3 = false;
            while (it.hasNext()) {
                if (((MediaController.PhotoEntry) it.next().getValue()).isVideo) {
                    z2 = true;
                } else {
                    z3 = true;
                }
                if (z2 && z3) {
                    break;
                }
            }
            int iMax = Math.max(1, selectedPhotos.size());
            if (z2 && z3) {
                this.counterTextView.setText(LocaleController.formatPluralString("Media", selectedPhotos.size(), new Object[0]).toUpperCase());
                if (iMax != this.currentSelectedCount || z) {
                    this.parentAlert.selectedTextView.setText(LocaleController.formatPluralString("MediaSelected", iMax, new Object[0]));
                }
            } else {
                TextView textView = this.counterTextView;
                if (z2) {
                    textView.setText(LocaleController.formatPluralString("Videos", selectedPhotos.size(), new Object[0]).toUpperCase());
                    if (iMax != this.currentSelectedCount || z) {
                        this.parentAlert.selectedTextView.setText(LocaleController.formatPluralString("VideosSelected", iMax, new Object[0]));
                    }
                } else {
                    textView.setText(LocaleController.formatPluralString("Photos", selectedPhotos.size(), new Object[0]).toUpperCase());
                    if (iMax != this.currentSelectedCount || z) {
                        this.parentAlert.selectedTextView.setText(LocaleController.formatPluralString("PhotosSelected", iMax, new Object[0]));
                    }
                }
            }
            this.parentAlert.setCanOpenPreview(iMax > 1);
            this.currentSelectedCount = iMax;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PhotoAttachPhotoCell getCellForIndex(int i) {
        int childCount = this.gridView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.gridView.getChildAt(i2);
            if (childAt.getTop() < this.gridView.getMeasuredHeight() - this.parentAlert.getClipLayoutBottom() && (childAt instanceof PhotoAttachPhotoCell)) {
                PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                if (photoAttachPhotoCell.getImageView().getTag() != null && ((Integer) photoAttachPhotoCell.getImageView().getTag()).intValue() == i) {
                    return photoAttachPhotoCell;
                }
            }
        }
        return null;
    }

    private void setCameraFlashModeIcon(ImageView imageView, String str) {
        str.getClass();
        switch (str) {
            case "on":
                imageView.setImageResource(C2665R.drawable.flash_on);
                imageView.setContentDescription(LocaleController.getString(C2665R.string.AccDescrCameraFlashOn));
                break;
            case "off":
                imageView.setImageResource(C2665R.drawable.flash_off);
                imageView.setContentDescription(LocaleController.getString(C2665R.string.AccDescrCameraFlashOff));
                break;
            case "auto":
                imageView.setImageResource(C2665R.drawable.flash_auto);
                imageView.setContentDescription(LocaleController.getString(C2665R.string.AccDescrCameraFlashAuto));
                break;
        }
    }

    public void checkCamera(boolean z) {
        PhotoAttachAdapter photoAttachAdapter;
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert.destroyed || !this.needCamera) {
            return;
        }
        boolean z2 = this.deviceHasGoodCamera;
        boolean z3 = this.noCameraPermissions;
        BaseFragment lastFragment = chatAttachAlert.baseFragment;
        if (lastFragment == null) {
            lastFragment = LaunchActivity.getLastFragment();
        }
        if (lastFragment == null || lastFragment.getParentActivity() == null) {
            return;
        }
        if (!SharedConfig.inAppCamera) {
            this.deviceHasGoodCamera = false;
        } else {
            boolean z4 = lastFragment.getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0;
            this.noCameraPermissions = z4;
            if (z4) {
                if (z) {
                    try {
                        int i = Build.VERSION.SDK_INT;
                        ChatAttachAlert chatAttachAlert2 = this.parentAlert;
                        if (i >= 33) {
                            chatAttachAlert2.baseFragment.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA", "android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"}, 17);
                        } else {
                            chatAttachAlert2.baseFragment.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE"}, 17);
                        }
                    } catch (Exception unused) {
                    }
                }
                this.deviceHasGoodCamera = false;
            } else {
                if (z || SharedConfig.hasCameraCache) {
                    CameraController.getInstance().initCamera(null);
                }
                this.deviceHasGoodCamera = CameraController.getInstance().isCameraInitied();
            }
        }
        if ((z2 != this.deviceHasGoodCamera || z3 != this.noCameraPermissions) && (photoAttachAdapter = this.adapter) != null) {
            photoAttachAdapter.notifyDataSetChanged();
        }
        ChatAttachAlert chatAttachAlert3 = this.parentAlert;
        if (!chatAttachAlert3.destroyed && chatAttachAlert3.isShowing() && this.deviceHasGoodCamera && this.parentAlert.getBackDrawable().getAlpha() != 0 && !this.cameraOpened) {
            showCamera();
        }
        if (z2 != this.deviceHasGoodCamera) {
            this.parentAlert.onCameraStateChanged();
        }
    }

    public void openCamera(boolean z) {
        CameraViewInternal cameraViewInternal;
        if (this.cameraView == null || this.cameraInitAnimation != null || this.parentAlert.isDismissed()) {
            return;
        }
        if (this.cameraView.isInited() || !LiteMode.isEnabled(LiteMode.FLAGS_CHAT) || ExteraConfig.getHideCameraTile()) {
            BaseFragment lastFragment = this.parentAlert.baseFragment;
            if (lastFragment == null) {
                lastFragment = LaunchActivity.getLastFragment();
            }
            if (lastFragment == null || lastFragment.getParentActivity() == null) {
                return;
            }
            int i = 0;
            if (this.adapter.needCamera && this.selectedAlbumEntry == this.galleryAlbumEntry && this.noCameraPermissions) {
                try {
                    this.parentAlert.baseFragment.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 18);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            if (!SystemUtils.isImagesAndVideoPermissionGranted()) {
                SystemUtils.requestImagesAndVideoPermission(this.parentAlert.baseFragment.getParentActivity());
                return;
            }
            this.cameraView.initTexture();
            boolean zShouldLoadAllMedia = shouldLoadAllMedia();
            TextView textView = this.tooltipTextView;
            if (zShouldLoadAllMedia) {
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
            boolean zIsEmpty = cameraPhotos.isEmpty();
            TextView textView2 = this.counterTextView;
            if (zIsEmpty) {
                textView2.setVisibility(4);
                this.cameraPhotoRecyclerView.setVisibility(8);
            } else {
                textView2.setVisibility(0);
                this.cameraPhotoRecyclerView.setVisibility(0);
            }
            if (this.parentAlert.getCommentView().isKeyboardVisible() && isFocusable()) {
                this.parentAlert.getCommentView().closeKeyboard();
            }
            this.zoomControlView.setVisibility(0);
            this.zoomControlView.setAlpha(0.0f);
            this.cameraPanel.setVisibility(0);
            this.cameraPanel.setTag(null);
            int[] iArr = this.animateCameraValues;
            iArr[0] = 0;
            int i2 = this.itemSize;
            iArr[1] = i2;
            iArr[2] = (i2 * 2) + AndroidUtilities.dp(2.0f);
            this.additionCloseCameraY = 0.0f;
            this.cameraExpanded = true;
            CameraViewInternal cameraViewInternal2 = this.cameraView;
            if (cameraViewInternal2 != null) {
                cameraViewInternal2.setFpsLimit(-1);
            }
            AndroidUtilities.hideKeyboard(this);
            AndroidUtilities.setLightNavigationBar((Dialog) this.parentAlert, false);
            this.parentAlert.getWindow().addFlags(128);
            if (z) {
                setCameraOpenProgress(0.0f);
                this.cameraAnimationInProgress = true;
                RecyclerListView recyclerListView = this.gridView;
                if (recyclerListView != null) {
                    recyclerListView.invalidate();
                }
                this.notificationsLocker.lock();
                ArrayList arrayList = new ArrayList();
                if (ExteraConfig.getHideCameraTile()) {
                    setCameraOpenProgress(1.0f);
                } else {
                    arrayList.add(ObjectAnimator.ofFloat(this, "cameraOpenProgress", 0.0f, 1.0f));
                }
                Property property = View.ALPHA;
                arrayList.add(ObjectAnimator.ofFloat(this.cameraPanel, (Property<FrameLayout, Float>) property, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.counterTextView, (Property<TextView, Float>) property, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.cameraPhotoRecyclerView, (Property<RecyclerListView, Float>) property, 1.0f));
                int i3 = 0;
                while (true) {
                    if (i3 >= 2) {
                        break;
                    }
                    if (this.flashModeButton[i3].getVisibility() == 0) {
                        arrayList.add(ObjectAnimator.ofFloat(this.flashModeButton[i3], (Property<ImageView, Float>) property, 1.0f));
                        break;
                    }
                    i3++;
                }
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(arrayList);
                animatorSet.setDuration(350L);
                animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.17
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ChatAttachAlertPhotoLayout.this.notificationsLocker.unlock();
                        ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress = false;
                        CameraViewInternal cameraViewInternal3 = ChatAttachAlertPhotoLayout.this.cameraView;
                        if (cameraViewInternal3 != null) {
                            cameraViewInternal3.invalidateOutline();
                            ChatAttachAlertPhotoLayout.this.cameraView.invalidate();
                        }
                        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                        if (chatAttachAlertPhotoLayout.cameraOpened) {
                            chatAttachAlertPhotoLayout.parentAlert.delegate.onCameraOpened();
                        }
                        CameraViewInternal cameraViewInternal4 = ChatAttachAlertPhotoLayout.this.cameraView;
                        if (cameraViewInternal4 != null) {
                            cameraViewInternal4.setSystemUiVisibility(1028);
                        }
                        RecyclerListView recyclerListView2 = ChatAttachAlertPhotoLayout.this.gridView;
                        if (recyclerListView2 != null) {
                            recyclerListView2.invalidate();
                        }
                    }
                });
                animatorSet.start();
            } else {
                setCameraOpenProgress(1.0f);
                this.cameraPanel.setAlpha(1.0f);
                this.counterTextView.setAlpha(1.0f);
                this.cameraPhotoRecyclerView.setAlpha(1.0f);
                while (true) {
                    if (i >= 2) {
                        break;
                    }
                    if (this.flashModeButton[i].getVisibility() == 0) {
                        this.flashModeButton[i].setAlpha(1.0f);
                        break;
                    }
                    i++;
                }
                this.parentAlert.delegate.onCameraOpened();
                CameraViewInternal cameraViewInternal3 = this.cameraView;
                if (cameraViewInternal3 != null) {
                    cameraViewInternal3.setSystemUiVisibility(1028);
                }
            }
            this.cameraOpened = true;
            CameraViewInternal cameraViewInternal4 = this.cameraView;
            if (cameraViewInternal4 != null) {
                cameraViewInternal4.setImportantForAccessibility(2);
            }
            this.gridView.setImportantForAccessibility(4);
            this.gridView.invalidate();
            this.parentAlert.onCameraStateChanged();
            if ((!LiteMode.isEnabled(LiteMode.FLAGS_CHAT) || ExteraConfig.getHideCameraTile()) && (cameraViewInternal = this.cameraView) != null && cameraViewInternal.isInited()) {
                this.cameraView.showTexture(true, z);
            }
        }
    }

    public void loadGalleryPhotos() {
        MediaController.AlbumEntry albumEntry;
        if (shouldLoadAllMedia()) {
            albumEntry = MediaController.allMediaAlbumEntry;
        } else {
            albumEntry = MediaController.allPhotosAlbumEntry;
        }
        if (albumEntry == null) {
            MediaController.loadGalleryPhotosAlbums(0);
        }
    }

    public void setIncludeVideosInGallery(boolean z) {
        this.includeVideosInGallery = z;
    }

    private boolean shouldLoadAllMedia() {
        if (this.includeVideosInGallery) {
            return true;
        }
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert.isPhotoPicker) {
            return false;
        }
        return (chatAttachAlert.baseFragment instanceof ChatActivity) || chatAttachAlert.storyMediaPicker || chatAttachAlert.avatarPicker == 2;
    }

    public void showCamera() {
        if (!this.parentAlert.paused && this.mediaEnabled && CameraView.isCameraAllowed()) {
            if (this.cameraView == null) {
                boolean z = !LiteMode.isEnabled(LiteMode.FLAGS_CHAT) || ExteraConfig.getHideCameraTile();
                Context context = getContext();
                Boolean bool = this.isCameraFrontfaceBeforeEnteringEditMode;
                CameraViewInternal cameraViewInternal = new CameraViewInternal(context, bool != null ? bool.booleanValue() : this.parentAlert.openWithFrontFaceCamera, z);
                this.cameraView = cameraViewInternal;
                BaseFragment baseFragment = this.parentAlert.baseFragment;
                cameraViewInternal.setRecordFile(AndroidUtilities.generateVideoPath((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).isSecretChat()));
                this.cameraView.setFocusable(true);
                this.cameraView.setFpsLimit(30);
                this.cameraView.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.18
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        float commentTextViewTop = ChatAttachAlertPhotoLayout.this.parentAlert.getCommentTextViewTop();
                        MentionsContainerView mentionsContainerView = ChatAttachAlertPhotoLayout.this.parentAlert.mentionContainer;
                        int iMin = (int) Math.min((((commentTextViewTop - (mentionsContainerView != null ? mentionsContainerView.clipBottom() + AndroidUtilities.dp(16.0f) : 0.0f)) + ChatAttachAlertPhotoLayout.this.currentPanTranslationY) + ChatAttachAlertPhotoLayout.this.parentAlert.getContainerView().getTranslationY()) - ChatAttachAlertPhotoLayout.this.cameraView.getTranslationY(), view.getMeasuredHeight());
                        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                        if (chatAttachAlertPhotoLayout.cameraOpened) {
                            iMin = view.getMeasuredHeight();
                        } else if (chatAttachAlertPhotoLayout.cameraAnimationInProgress) {
                            iMin = AndroidUtilities.lerp(iMin, view.getMeasuredHeight(), ChatAttachAlertPhotoLayout.this.cameraOpenProgress);
                        }
                        if (ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress) {
                            RectF rectF = AndroidUtilities.rectTmp;
                            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                            float f = chatAttachAlertPhotoLayout2.animationClipLeft + (chatAttachAlertPhotoLayout2.cameraViewOffsetX * (1.0f - ChatAttachAlertPhotoLayout.this.cameraOpenProgress));
                            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout3 = ChatAttachAlertPhotoLayout.this;
                            float f2 = chatAttachAlertPhotoLayout3.animationClipTop + (chatAttachAlertPhotoLayout3.cameraViewOffsetY * (1.0f - ChatAttachAlertPhotoLayout.this.cameraOpenProgress));
                            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout4 = ChatAttachAlertPhotoLayout.this;
                            rectF.set(f, f2, chatAttachAlertPhotoLayout4.animationClipRight, chatAttachAlertPhotoLayout4.animationClipBottom);
                            outline.setRect((int) rectF.left, (int) rectF.top, (int) rectF.right, Math.min(iMin, (int) rectF.bottom));
                            return;
                        }
                        if (!ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress && !ChatAttachAlertPhotoLayout.this.cameraOpened) {
                            int iDp = AndroidUtilities.dp(16.0f);
                            outline.setRoundRect((int) ChatAttachAlertPhotoLayout.this.cameraViewOffsetX, (int) ChatAttachAlertPhotoLayout.this.cameraViewOffsetY, view.getMeasuredWidth() + iDp, Math.min(iMin, view.getMeasuredHeight()) + iDp, iDp);
                        } else {
                            outline.setRect(0, 0, view.getMeasuredWidth(), Math.min(iMin, view.getMeasuredHeight()));
                        }
                    }
                });
                this.cameraView.setClipToOutline(true);
                this.cameraView.setContentDescription(LocaleController.getString(C2665R.string.AccDescrInstantCamera));
                BottomSheet.ContainerView container = this.parentAlert.getContainer();
                CameraViewInternal cameraViewInternal2 = this.cameraView;
                int i = this.itemSize;
                container.addView(cameraViewInternal2, 1, new FrameLayout.LayoutParams(i, i));
                this.cameraView.setDelegate(new CameraView.CameraViewDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.camera.CameraView.CameraViewDelegate
                    public final void onCameraInit() {
                        this.f$0.lambda$showCamera$16();
                    }
                });
                this.cameraView.setAlpha(this.mediaEnabled ? 1.0f : 0.2f);
                this.cameraView.setEnabled(this.mediaEnabled);
                if (this.isHidden) {
                    this.cameraView.setVisibility(8);
                }
                if (!this.cameraOpened) {
                    checkCameraViewPosition();
                }
                RecyclerListView recyclerListView = this.gridView;
                if (recyclerListView != null) {
                    recyclerListView.invalidate();
                }
                invalidate();
            }
            ZoomControlView zoomControlView = this.zoomControlView;
            if (zoomControlView != null) {
                zoomControlView.setZoom(0.0f, false);
                this.cameraZoom = 0.0f;
            }
            if (this.cameraOpened) {
                return;
            }
            this.cameraView.setTranslationX(this.cameraViewLocation[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCamera$16() {
        String currentFlashMode = this.cameraView.getCameraSession().getCurrentFlashMode();
        String nextFlashMode = this.cameraView.getCameraSession().getNextFlashMode();
        if (currentFlashMode == null || nextFlashMode == null) {
            return;
        }
        if (currentFlashMode.equals(nextFlashMode)) {
            for (int i = 0; i < 2; i++) {
                this.flashModeButton[i].setVisibility(4);
                this.flashModeButton[i].setAlpha(0.0f);
                this.flashModeButton[i].setTranslationY(0.0f);
            }
        } else {
            setCameraFlashModeIcon(this.flashModeButton[0], this.cameraView.getCameraSession().getCurrentFlashMode());
            int i2 = 0;
            while (i2 < 2) {
                this.flashModeButton[i2].setVisibility(i2 == 0 ? 0 : 4);
                this.flashModeButton[i2].setAlpha((i2 == 0 && this.cameraOpened) ? 1.0f : 0.0f);
                this.flashModeButton[i2].setTranslationY(0.0f);
                i2++;
            }
        }
        this.switchCameraButton.setImageResource(this.cameraView.isFrontface() ? C2665R.drawable.camera_revert1 : C2665R.drawable.camera_revert2);
        this.switchCameraButton.setVisibility(this.cameraView.hasFrontFaceCamera() ? 0 : 4);
        if (!this.cameraOpened) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.cameraInitAnimation = animatorSet;
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.cameraView, (Property<CameraViewInternal, Float>) View.ALPHA, 0.0f, 1.0f));
            this.cameraInitAnimation.setDuration(180L);
            this.cameraInitAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.19
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(ChatAttachAlertPhotoLayout.this.cameraInitAnimation)) {
                        ChatAttachAlertPhotoLayout.this.canSaveCameraPreview = true;
                        ChatAttachAlertPhotoLayout.this.cameraInitAnimation = null;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    ChatAttachAlertPhotoLayout.this.cameraInitAnimation = null;
                }
            });
            this.cameraInitAnimation.start();
        }
        Runnable runnable = this.afterCameraInitRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void hideCamera(boolean z) {
        if (!this.deviceHasGoodCamera || this.cameraView == null) {
            return;
        }
        saveLastCameraBitmap();
        this.cameraViewItemDecoration.updateBitmap();
        this.cameraView.destroy(z, null);
        AnimatorSet animatorSet = this.cameraInitAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.cameraInitAnimation = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hideCamera$17();
            }
        }, 300L);
        this.canSaveCameraPreview = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideCamera$17() {
        this.parentAlert.getContainer().removeView(this.cameraView);
        this.cameraView = null;
    }

    private void saveLastCameraBitmap() {
        if (this.canSaveCameraPreview) {
            try {
                Bitmap bitmap = this.cameraView.getTextureView().getBitmap();
                if (bitmap != null) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), this.cameraView.getMatrix(), true);
                    bitmap.recycle();
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, 80, (int) (bitmapCreateBitmap.getHeight() / (bitmapCreateBitmap.getWidth() / 80.0f)), true);
                    if (bitmapCreateScaledBitmap != null) {
                        if (bitmapCreateScaledBitmap != bitmapCreateBitmap) {
                            bitmapCreateBitmap.recycle();
                        }
                        Utilities.blurBitmap(bitmapCreateScaledBitmap, 7);
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(ApplicationLoader.getFilesDirFixed(), "cthumb.jpg"));
                        bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                        bitmapCreateScaledBitmap.recycle();
                        fileOutputStream.close();
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:17|(1:19)|20|(1:26)(1:25)|(2:28|(4:39|40|(1:44)|45)(7:30|(1:32)|33|(1:35)|(0)|40|(3:42|44|45)(0)))(1:46)|(1:52)|53|(3:95|89|54)|(4:101|55|(2:57|58)|63)|94|73|91|74|78|106) */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0186, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0187, code lost:
    
        org.telegram.messenger.FileLog.m992e(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fe  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0144 -> B:94:0x0154). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onActivityResultFragment(int i, Intent intent, String str) {
        String path;
        Throwable th;
        MediaMetadataRetriever mediaMetadataRetriever;
        BaseFragment baseFragment;
        int i2;
        int i3;
        BitmapFactory.Options options;
        String str2 = str;
        if (this.parentAlert.destroyed) {
            return;
        }
        mediaFromExternalCamera = true;
        if (i == 0) {
            PhotoViewer.getInstance().setParentActivity(this.parentAlert.baseFragment.getParentActivity(), this.resourcesProvider);
            PhotoViewer photoViewer = PhotoViewer.getInstance();
            ChatAttachAlert chatAttachAlert = this.parentAlert;
            photoViewer.setMaxSelectedPhotos(chatAttachAlert.maxSelectedPhotos, chatAttachAlert.allowOrder);
            Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(str2);
            try {
                options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(new File(str2).getAbsolutePath(), options);
                i2 = options.outWidth;
            } catch (Exception unused) {
                i2 = 0;
            }
            try {
                i3 = options.outHeight;
            } catch (Exception unused2) {
                i3 = 0;
            }
            int i4 = i2;
            int i5 = lastImageId;
            lastImageId = i5 - 1;
            MediaController.PhotoEntry orientation = new MediaController.PhotoEntry(0, i5, 0L, str2, ((Integer) imageOrientation.first).intValue(), false, i4, i3, 0L).setOrientation(imageOrientation);
            orientation.canDeleteAfter = true;
            openPhotoViewer(orientation, false, true);
            return;
        }
        if (i == 2) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("pic path " + str2);
            }
            MediaMetadataRetriever mediaMetadataRetriever2 = null;
            Intent intent2 = (intent == null || str2 == null || !new File(str2).exists()) ? intent : null;
            if (intent2 != null) {
                Uri data = intent2.getData();
                if (data != null) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m989d("video record uri " + data.toString());
                    }
                    path = AndroidUtilities.getPath(data);
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m989d("resolved path = " + path);
                    }
                    if (path == null || !new File(path).exists()) {
                    }
                    baseFragment = this.parentAlert.baseFragment;
                    if (baseFragment instanceof ChatActivity) {
                        AndroidUtilities.addMediaToGallery(str2);
                        str2 = null;
                    }
                } else {
                    path = str2;
                    baseFragment = this.parentAlert.baseFragment;
                    if ((baseFragment instanceof ChatActivity) || !((ChatActivity) baseFragment).isSecretChat()) {
                        AndroidUtilities.addMediaToGallery(str2);
                    }
                    str2 = null;
                }
            } else {
                path = null;
            }
            if (path != null || str2 == null || !new File(str2).exists()) {
                str2 = path;
            }
            try {
                try {
                    try {
                        mediaMetadataRetriever = new MediaMetadataRetriever();
                    } catch (Exception e) {
                        e = e;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                FileLog.m992e(e2);
            }
            try {
                mediaMetadataRetriever.setDataSource(str2);
                jCeil = mediaMetadataRetriever.extractMetadata(9) != null ? (int) Math.ceil(Long.parseLong(r0) / 1000.0f) : 0L;
                mediaMetadataRetriever.release();
            } catch (Exception e3) {
                e = e3;
                mediaMetadataRetriever2 = mediaMetadataRetriever;
                FileLog.m992e(e);
                if (mediaMetadataRetriever2 != null) {
                    mediaMetadataRetriever2.release();
                }
                Bitmap bitmapCreateVideoThumbnail = SendMessagesHelper.createVideoThumbnail(str2, 1);
                File file = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                bitmapCreateVideoThumbnail.compress(Bitmap.CompressFormat.JPEG, 55, new FileOutputStream(file));
                SharedConfig.saveConfig();
                int i6 = lastImageId;
                lastImageId = i6 - 1;
                MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, i6, 0L, str2, 0, true, bitmapCreateVideoThumbnail.getWidth(), bitmapCreateVideoThumbnail.getHeight(), 0L);
                photoEntry.duration = (int) jCeil;
                photoEntry.thumbPath = file.getAbsolutePath();
                openPhotoViewer(photoEntry, false, true);
            } catch (Throwable th3) {
                th = th3;
                mediaMetadataRetriever2 = mediaMetadataRetriever;
                if (mediaMetadataRetriever2 != null) {
                    try {
                        mediaMetadataRetriever2.release();
                        throw th;
                    } catch (Exception e4) {
                        FileLog.m992e(e4);
                        throw th;
                    }
                }
                throw th;
            }
            Bitmap bitmapCreateVideoThumbnail2 = SendMessagesHelper.createVideoThumbnail(str2, 1);
            File file2 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
            bitmapCreateVideoThumbnail2.compress(Bitmap.CompressFormat.JPEG, 55, new FileOutputStream(file2));
            SharedConfig.saveConfig();
            int i62 = lastImageId;
            lastImageId = i62 - 1;
            MediaController.PhotoEntry photoEntry2 = new MediaController.PhotoEntry(0, i62, 0L, str2, 0, true, bitmapCreateVideoThumbnail2.getWidth(), bitmapCreateVideoThumbnail2.getHeight(), 0L);
            photoEntry2.duration = (int) jCeil;
            photoEntry2.thumbPath = file2.getAbsolutePath();
            openPhotoViewer(photoEntry2, false, true);
        }
    }

    public void closeCamera(boolean z) {
        CameraViewInternal cameraViewInternal;
        if (this.takingPhoto || this.cameraView == null) {
            return;
        }
        int[] iArr = this.animateCameraValues;
        int i = this.itemSize;
        iArr[1] = i;
        iArr[2] = (i * 2) + AndroidUtilities.dp(2.0f);
        Runnable runnable = this.zoomControlHideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.zoomControlHideRunnable = null;
        }
        AndroidUtilities.setLightNavigationBar(this.parentAlert, ((double) AndroidUtilities.computePerceivedBrightness(getThemedColor(Theme.key_windowBackgroundGray))) > 0.721d);
        if (z) {
            this.additionCloseCameraY = this.cameraView.getTranslationY();
            this.cameraAnimationInProgress = true;
            RecyclerListView recyclerListView = this.gridView;
            if (recyclerListView != null) {
                recyclerListView.invalidate();
            }
            ArrayList arrayList = new ArrayList();
            if (ExteraConfig.getHideCameraTile()) {
                setCameraOpenProgress(0.0f);
            } else {
                arrayList.add(ObjectAnimator.ofFloat(this, "cameraOpenProgress", 0.0f));
            }
            Property property = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(this.cameraPanel, (Property<FrameLayout, Float>) property, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.zoomControlView, (Property<ZoomControlView, Float>) property, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.counterTextView, (Property<TextView, Float>) property, 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.cameraPhotoRecyclerView, (Property<RecyclerListView, Float>) property, 0.0f));
            int i2 = 0;
            while (true) {
                if (i2 >= 2) {
                    break;
                }
                if (this.flashModeButton[i2].getVisibility() == 0) {
                    arrayList.add(ObjectAnimator.ofFloat(this.flashModeButton[i2], (Property<ImageView, Float>) property, 0.0f));
                    break;
                }
                i2++;
            }
            this.notificationsLocker.lock();
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            animatorSet.setDuration(220L);
            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.20
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ChatAttachAlertPhotoLayout.this.notificationsLocker.unlock();
                    ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                    chatAttachAlertPhotoLayout.cameraExpanded = false;
                    chatAttachAlertPhotoLayout.parentAlert.getWindow().clearFlags(128);
                    ChatAttachAlertPhotoLayout.this.setCameraOpenProgress(0.0f);
                    ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress = false;
                    RecyclerListView recyclerListView2 = ChatAttachAlertPhotoLayout.this.gridView;
                    if (recyclerListView2 != null) {
                        recyclerListView2.invalidate();
                    }
                    CameraViewInternal cameraViewInternal2 = ChatAttachAlertPhotoLayout.this.cameraView;
                    if (cameraViewInternal2 != null) {
                        cameraViewInternal2.invalidateOutline();
                        ChatAttachAlertPhotoLayout.this.cameraView.invalidate();
                    }
                    ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                    chatAttachAlertPhotoLayout2.cameraOpened = false;
                    if (chatAttachAlertPhotoLayout2.cameraPanel != null) {
                        ChatAttachAlertPhotoLayout.this.cameraPanel.setVisibility(8);
                    }
                    if (ChatAttachAlertPhotoLayout.this.zoomControlView != null) {
                        ChatAttachAlertPhotoLayout.this.zoomControlView.setVisibility(8);
                        ChatAttachAlertPhotoLayout.this.zoomControlView.setTag(null);
                    }
                    if (ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView != null) {
                        ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.setVisibility(8);
                    }
                    ChatAttachAlertPhotoLayout.this.parentAlert.onCameraStateChanged();
                    CameraViewInternal cameraViewInternal3 = ChatAttachAlertPhotoLayout.this.cameraView;
                    if (cameraViewInternal3 != null) {
                        cameraViewInternal3.setFpsLimit(30);
                        ChatAttachAlertPhotoLayout.this.cameraView.setSystemUiVisibility(1024);
                    }
                }
            });
            animatorSet.start();
        } else {
            this.cameraExpanded = false;
            this.parentAlert.getWindow().clearFlags(128);
            setCameraOpenProgress(0.0f);
            this.animateCameraValues[0] = 0;
            setCameraOpenProgress(0.0f);
            this.cameraPanel.setAlpha(0.0f);
            this.cameraPanel.setVisibility(8);
            this.zoomControlView.setAlpha(0.0f);
            this.zoomControlView.setTag(null);
            this.zoomControlView.setVisibility(8);
            this.cameraPhotoRecyclerView.setAlpha(0.0f);
            this.counterTextView.setAlpha(0.0f);
            this.cameraPhotoRecyclerView.setVisibility(8);
            int i3 = 0;
            while (true) {
                if (i3 >= 2) {
                    break;
                }
                if (this.flashModeButton[i3].getVisibility() == 0) {
                    this.flashModeButton[i3].setAlpha(0.0f);
                    break;
                }
                i3++;
            }
            this.cameraOpened = false;
            CameraViewInternal cameraViewInternal2 = this.cameraView;
            if (cameraViewInternal2 != null) {
                cameraViewInternal2.setFpsLimit(30);
                this.cameraView.setSystemUiVisibility(1024);
            }
            RecyclerListView recyclerListView2 = this.gridView;
            if (recyclerListView2 != null) {
                recyclerListView2.invalidate();
            }
            this.parentAlert.onCameraStateChanged();
        }
        CameraViewInternal cameraViewInternal3 = this.cameraView;
        if (cameraViewInternal3 != null) {
            cameraViewInternal3.setImportantForAccessibility(0);
        }
        this.gridView.setImportantForAccessibility(0);
        if ((!LiteMode.isEnabled(LiteMode.FLAGS_CHAT) || ExteraConfig.getHideCameraTile()) && (cameraViewInternal = this.cameraView) != null) {
            cameraViewInternal.showTexture(false, z);
        }
    }

    @Keep
    public void setCameraOpenProgress(float f) {
        int i;
        int i2;
        if (this.cameraView == null) {
            return;
        }
        this.cameraOpenProgress = f;
        int[] iArr = this.animateCameraValues;
        float f2 = iArr[1];
        float f3 = iArr[2];
        Point point = AndroidUtilities.displaySize;
        int i3 = point.x;
        int i4 = point.y;
        float width = (this.parentAlert.getContainer().getWidth() - this.parentAlert.getLeftInset()) - this.parentAlert.getRightInset();
        float height = this.parentAlert.getContainer().getHeight();
        float[] fArr = this.cameraViewLocation;
        float f4 = fArr[0];
        float f5 = fArr[1];
        float f6 = this.additionCloseCameraY;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.cameraView.getLayoutParams();
        float textureHeight = this.cameraView.getTextureHeight(f2, f3) / this.cameraView.getTextureHeight(width, height);
        float f7 = f3 / height;
        float f8 = f2 / width;
        boolean z = this.cameraExpanded;
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (z) {
            i = (int) width;
            i2 = (int) height;
            float f9 = 1.0f - f;
            float f10 = (textureHeight * f9) + f;
            cameraViewInternal.getTextureView().setScaleX(f10);
            this.cameraView.getTextureView().setScaleY(f10);
            float f11 = f4 * f9;
            this.cameraView.setTranslationX((f11 + (0.0f * f)) - (((1.0f - ((f8 * f9) + f)) * width) / 2.0f));
            float f12 = f5 * f9;
            this.cameraView.setTranslationY(((f6 * f) + f12) - (((1.0f - ((f7 * f9) + f)) * height) / 2.0f));
            this.animationClipTop = f12 - this.cameraView.getTranslationY();
            this.animationClipBottom = (((f5 + f3) * f9) - this.cameraView.getTranslationY()) + (height * f);
            this.animationClipLeft = f11 - this.cameraView.getTranslationX();
            this.animationClipRight = (((f4 + f2) * f9) - this.cameraView.getTranslationX()) + (width * f);
        } else {
            i = (int) f2;
            i2 = (int) f3;
            cameraViewInternal.getTextureView().setScaleX(1.0f);
            this.cameraView.getTextureView().setScaleY(1.0f);
            this.animationClipTop = 0.0f;
            this.animationClipBottom = height;
            this.animationClipLeft = 0.0f;
            this.animationClipRight = width;
            this.cameraView.setTranslationX(f4);
            this.cameraView.setTranslationY(f5);
        }
        if (layoutParams.width != i || layoutParams.height != i2) {
            layoutParams.width = i;
            layoutParams.height = i2;
            this.cameraView.requestLayout();
        }
        this.cameraView.invalidateOutline();
        this.cameraView.invalidate();
    }

    @Keep
    public float getCameraOpenProgress() {
        return this.cameraOpenProgress;
    }

    public void checkCameraViewPosition() {
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        if (PhotoViewer.hasInstance() && PhotoViewer.getInstance().stickerMakerView != null && PhotoViewer.getInstance().stickerMakerView.isThanosInProgress) {
            return;
        }
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            cameraViewInternal.invalidateOutline();
        }
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.gridView.findViewHolderForAdapterPosition(this.itemsPerRow - 1);
        if (viewHolderFindViewHolderForAdapterPosition2 != null) {
            viewHolderFindViewHolderForAdapterPosition2.itemView.invalidateOutline();
        }
        if ((!this.adapter.needCamera || !this.deviceHasGoodCamera || this.selectedAlbumEntry != this.galleryAlbumEntry || ExteraConfig.getHideCameraTile() || this.noCameraPermissions) && (viewHolderFindViewHolderForAdapterPosition = this.gridView.findViewHolderForAdapterPosition(0)) != null) {
            viewHolderFindViewHolderForAdapterPosition.itemView.invalidateOutline();
        }
        CameraViewInternal cameraViewInternal2 = this.cameraView;
        if (cameraViewInternal2 != null) {
            cameraViewInternal2.invalidate();
        }
        TextView textView = this.recordTime;
        if (textView != null) {
            ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).topMargin = getRootWindowInsets() == null ? AndroidUtilities.dp(16.0f) : getRootWindowInsets().getSystemWindowInsetTop() + AndroidUtilities.dp(2.0f);
        }
        if (!this.deviceHasGoodCamera || ExteraConfig.getHideCameraTile() || this.noCameraPermissions) {
            return;
        }
        int childCount = this.gridView.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = this.gridView.getChildAt(i);
            if (!(childAt instanceof PhotoAttachCameraCell)) {
                i++;
            } else if (childAt.isAttachedToWindow()) {
                float y = childAt.getY() + this.gridView.getY() + getY();
                float y2 = this.parentAlert.getSheetContainer().getY() + y;
                float x = (((childAt.getX() + this.gridView.getX()) + getX()) + this.parentAlert.getSheetContainer().getX()) - getRootWindowInsets().getSystemWindowInsetLeft();
                float currentActionBarHeight = (!this.parentAlert.inBubbleMode ? AndroidUtilities.statusBarHeight : 0) + ActionBar.getCurrentActionBarHeight() + (this.parentAlert.topCommentContainer.getMeasuredHeight() * this.parentAlert.topCommentContainer.getAlpha());
                MentionsContainerView mentionsContainerView = this.parentAlert.mentionContainer;
                if (mentionsContainerView != null && mentionsContainerView.isReversed()) {
                    currentActionBarHeight = Math.max(currentActionBarHeight, (this.parentAlert.mentionContainer.getY() + this.parentAlert.mentionContainer.clipTop()) - this.parentAlert.currentPanTranslationY);
                }
                float f = y < currentActionBarHeight ? currentActionBarHeight - y : 0.0f;
                if (f != this.cameraViewOffsetY) {
                    this.cameraViewOffsetY = f;
                    CameraViewInternal cameraViewInternal3 = this.cameraView;
                    if (cameraViewInternal3 != null) {
                        cameraViewInternal3.invalidateOutline();
                        this.cameraView.invalidate();
                    }
                }
                float measuredHeight = (int) ((this.parentAlert.getSheetContainer().getMeasuredHeight() - this.parentAlert.buttonsRecyclerView.getMeasuredHeight()) + this.parentAlert.buttonsRecyclerView.getTranslationY());
                MentionsContainerView mentionsContainerView2 = this.parentAlert.mentionContainer;
                if (mentionsContainerView2 != null) {
                    measuredHeight -= mentionsContainerView2.clipBottom() - AndroidUtilities.dp(6.0f);
                }
                if (childAt.getMeasuredHeight() + y > measuredHeight) {
                    this.cameraViewOffsetBottomY = Math.min(-AndroidUtilities.dp(5.0f), y - measuredHeight) + childAt.getMeasuredHeight();
                } else {
                    this.cameraViewOffsetBottomY = 0.0f;
                }
                float[] fArr = this.cameraViewLocation;
                fArr[0] = x;
                fArr[1] = y2;
                applyCameraViewPosition();
                return;
            }
        }
        if (this.cameraViewOffsetY != 0.0f || this.cameraViewOffsetX != 0.0f) {
            this.cameraViewOffsetX = 0.0f;
            this.cameraViewOffsetY = 0.0f;
            CameraViewInternal cameraViewInternal4 = this.cameraView;
            if (cameraViewInternal4 != null) {
                cameraViewInternal4.invalidateOutline();
                this.cameraView.invalidate();
            }
        }
        this.cameraViewLocation[0] = AndroidUtilities.dp(-400.0f);
        this.cameraViewLocation[1] = 0.0f;
        applyCameraViewPosition();
    }

    private void applyCameraViewPosition() {
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            if (!this.cameraOpened) {
                cameraViewInternal.setTranslationX(this.cameraViewLocation[0]);
            }
            int i = this.itemSize;
            int iDp = (i * 2) + AndroidUtilities.dp(2.0f);
            if (this.cameraOpened) {
                return;
            }
            this.cameraView.setClipTop((int) this.cameraViewOffsetY);
            this.cameraView.setClipBottom((int) this.cameraViewOffsetBottomY);
            final FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.cameraView.getLayoutParams();
            if (layoutParams.height == iDp && layoutParams.width == i) {
                return;
            }
            layoutParams.width = i;
            layoutParams.height = iDp;
            this.cameraView.setLayoutParams(layoutParams);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$applyCameraViewPosition$18(layoutParams);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyCameraViewPosition$18(FrameLayout.LayoutParams layoutParams) {
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            cameraViewInternal.setLayoutParams(layoutParams);
        }
    }

    public HashMap<Object, Object> getSelectedPhotos() {
        return selectedPhotos;
    }

    public ArrayList<Object> getSelectedPhotosOrder() {
        return selectedPhotosOrder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateSelected(HashMap<Object, Object> map, ArrayList<Object> arrayList, boolean z) {
        int i;
        selectedPhotos.clear();
        selectedPhotos.putAll(map);
        selectedPhotosOrder.clear();
        selectedPhotosOrder.addAll(arrayList);
        if (z) {
            updatePhotosCounter(false);
            updateCheckedPhotoIndices();
            int childCount = this.gridView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.gridView.getChildAt(i2);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    int childAdapterPosition = this.gridView.getChildAdapterPosition(childAt);
                    if (this.adapter.hasCameraSpaceRow && childAdapterPosition > this.itemsPerRow) {
                        childAdapterPosition--;
                    }
                    if (this.adapter.needCamera && this.selectedAlbumEntry == this.galleryAlbumEntry && (!ExteraConfig.getHideCameraTile() || this.noCameraPermissions)) {
                        childAdapterPosition--;
                    }
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    ChatAttachAlert chatAttachAlert = this.parentAlert;
                    if (chatAttachAlert.avatarPicker != 0 || chatAttachAlert.isPollAttach) {
                        photoAttachPhotoCell.getCheckBox().setVisibility(8);
                    }
                    MediaController.PhotoEntry photoEntryAtPosition = getPhotoEntryAtPosition(childAdapterPosition);
                    if (photoEntryAtPosition != null) {
                        boolean z2 = true;
                        if (selectedPhotos.size() > 1) {
                            i = 1;
                        } else {
                            i = 1;
                            z2 = false;
                        }
                        boolean z3 = (this.adapter.needCamera && this.selectedAlbumEntry == this.galleryAlbumEntry && (!ExteraConfig.getHideCameraTile() || this.noCameraPermissions)) ? i : 0;
                        boolean z4 = childAdapterPosition == this.adapter.getItemCount() - i ? i : 0;
                        ChatAttachAlert chatAttachAlert2 = this.parentAlert;
                        photoAttachPhotoCell.setPhotoEntry(photoEntryAtPosition, z2, z3, z4, (chatAttachAlert2 == null || !chatAttachAlert2.allowLivePhotos) ? 0 : i);
                        ChatAttachAlert chatAttachAlert3 = this.parentAlert;
                        if ((chatAttachAlert3.baseFragment instanceof ChatActivity) && chatAttachAlert3.allowOrder) {
                            photoAttachPhotoCell.setChecked(selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId)), selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), false);
                        } else {
                            photoAttachPhotoCell.setChecked(-1, selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), false);
                        }
                    }
                }
            }
        }
    }

    private boolean isNoGalleryPermissions() {
        Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
        if (activityFindActivity == null) {
            activityFindActivity = this.parentAlert.baseFragment.getParentActivity();
        }
        if (activityFindActivity == null) {
            return true;
        }
        int i = Build.VERSION.SDK_INT;
        if (i < 33 || (activityFindActivity.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0 && activityFindActivity.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") == 0)) {
            return i < 33 && activityFindActivity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0;
        }
        return true;
    }

    public void checkStorage() {
        if (this.noGalleryPermissions) {
            boolean zIsNoGalleryPermissions = isNoGalleryPermissions();
            this.noGalleryPermissions = zIsNoGalleryPermissions;
            if (!zIsNoGalleryPermissions) {
                loadGalleryPhotos();
            }
            this.adapter.notifyDataSetChanged();
            this.cameraAttachAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.gridView.smoothScrollToPosition(0);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onMenuItemClick(int i) {
        TLRPC.Chat chat;
        boolean z;
        if (i == 8) {
            this.parentAlert.setCaptionAbove(!r13.captionAbove);
            this.captionItem.setState(!this.parentAlert.captionAbove, true);
            return;
        }
        if ((i == 0 || i == 1) && this.parentAlert.maxSelectedPhotos > 0 && selectedPhotosOrder.size() > 1 && (chat = this.parentAlert.getChat()) != null && !ChatObject.hasAdminRights(chat) && chat.slowmode_enabled) {
            AlertsCreator.createSimpleAlert(getContext(), LocaleController.getString(C2665R.string.Slowmode), LocaleController.getString(C2665R.string.SlowmodeSendError), this.resourcesProvider).show();
            return;
        }
        if (i == 0) {
            ChatAttachAlert chatAttachAlert = this.parentAlert;
            if (chatAttachAlert.editingMessageObject == null) {
                BaseFragment baseFragment = chatAttachAlert.baseFragment;
                if ((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).isInScheduleMode()) {
                    AlertsCreator.createScheduleDatePickerDialog(getContext(), ((ChatActivity) this.parentAlert.baseFragment).getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda16
                        @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z2, int i2, int i3) {
                            this.f$0.lambda$onMenuItemClick$19(z2, i2, i3);
                        }
                    }, this.resourcesProvider);
                    return;
                }
            }
            ChatAttachAlert chatAttachAlert2 = this.parentAlert;
            AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert2.currentAccount, chatAttachAlert2.getDialogId(), selectedPhotos.size() + this.parentAlert.getAdditionalMessagesCount(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda17
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onMenuItemClick$20((Long) obj);
                }
            });
            return;
        }
        if (i == 1) {
            ChatAttachAlert chatAttachAlert3 = this.parentAlert;
            if (chatAttachAlert3.editingMessageObject == null) {
                BaseFragment baseFragment2 = chatAttachAlert3.baseFragment;
                if ((baseFragment2 instanceof ChatActivity) && ((ChatActivity) baseFragment2).isInScheduleMode()) {
                    AlertsCreator.createScheduleDatePickerDialog(getContext(), ((ChatActivity) this.parentAlert.baseFragment).getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda18
                        @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z2, int i2, int i3) {
                            this.f$0.lambda$onMenuItemClick$21(z2, i2, i3);
                        }
                    }, this.resourcesProvider);
                    return;
                }
            }
            ChatAttachAlert chatAttachAlert4 = this.parentAlert;
            AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert4.currentAccount, chatAttachAlert4.getDialogId(), selectedPhotos.size() + this.parentAlert.getAdditionalMessagesCount(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda19
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onMenuItemClick$22((Long) obj);
                }
            });
            return;
        }
        if (i == 3 || i == 10) {
            if (this.parentAlert.getPhotoPreviewLayout() != null) {
                this.parentAlert.getPhotoPreviewLayout().startMediaCrossfade();
            }
            Iterator<Map.Entry<Object, Object>> it = selectedPhotos.entrySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((MediaController.PhotoEntry) it.next().getValue()).hasSpoiler) {
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (i == 3) {
                z = !z;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onMenuItemClick$23(z);
                }
            }, 200L);
            final ArrayList arrayList = new ArrayList();
            for (Map.Entry<Object, Object> entry : selectedPhotos.entrySet()) {
                if (entry.getValue() instanceof MediaController.PhotoEntry) {
                    MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) entry.getValue();
                    if (i == 3) {
                        photoEntry.hasSpoiler = z;
                    }
                    photoEntry.isChatPreviewSpoilerRevealed = false;
                    photoEntry.isAttachSpoilerRevealed = false;
                    arrayList.add(Integer.valueOf(photoEntry.imageId));
                }
            }
            this.gridView.forAllChild(new Consumer() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda21
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ChatAttachAlertPhotoLayout.$r8$lambda$kyh7rEFRW8ZIB_Uu9CopvTNjPqI(arrayList, z, (View) obj);
                }
            });
            if (this.parentAlert.getCurrentAttachLayout() != this) {
                this.adapter.notifyDataSetChanged();
            }
            if (this.parentAlert.getPhotoPreviewLayout() != null) {
                this.parentAlert.getPhotoPreviewLayout().invalidateGroupsView();
                return;
            }
            return;
        }
        if (i == 2) {
            if (this.parentAlert.getPhotoPreviewLayout() != null) {
                this.parentAlert.getPhotoPreviewLayout().startMediaCrossfade();
            }
            Iterator<Map.Entry<Object, Object>> it2 = selectedPhotos.entrySet().iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (((MediaController.PhotoEntry) it2.next().getValue()).isHighQuality()) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            final boolean z2 = !z;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onMenuItemClick$25(z2);
                }
            }, 200L);
            final ArrayList arrayList2 = new ArrayList();
            for (Map.Entry<Object, Object> entry2 : selectedPhotos.entrySet()) {
                if (entry2.getValue() instanceof MediaController.PhotoEntry) {
                    MediaController.PhotoEntry photoEntry2 = (MediaController.PhotoEntry) entry2.getValue();
                    photoEntry2.highQuality = Boolean.valueOf(z2);
                    photoEntry2.isChatPreviewSpoilerRevealed = false;
                    photoEntry2.isAttachSpoilerRevealed = false;
                    arrayList2.add(Integer.valueOf(photoEntry2.imageId));
                }
            }
            this.gridView.forAllChild(new Consumer() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda23
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ChatAttachAlertPhotoLayout.m10757$r8$lambda$LkpA_2BOvbk17wsOccaC_zKHQ(arrayList2, z2, (View) obj);
                }
            });
            if (this.parentAlert.getCurrentAttachLayout() != this) {
                this.adapter.notifyDataSetChanged();
            }
            if (this.parentAlert.getPhotoPreviewLayout() != null) {
                this.parentAlert.getPhotoPreviewLayout().invalidateGroupsView();
                return;
            }
            return;
        }
        if (i != 4) {
            if (i == 7) {
                ChatAttachAlert chatAttachAlert5 = this.parentAlert;
                chatAttachAlert5.updatePhotoPreview(chatAttachAlert5.getCurrentAttachLayout() != this.parentAlert.getPhotoPreviewLayout());
                return;
            }
            if (i == 9) {
                StarsIntroActivity.showMediaPriceSheet(getContext(), getStarsPrice(), true, new Utilities.Callback2() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda24
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$onMenuItemClick$27((Long) obj, (Runnable) obj2);
                    }
                }, this.resourcesProvider);
                return;
            }
            if (i >= 10) {
                MediaController.AlbumEntry albumEntry = this.dropDownAlbums.get(i - 10);
                this.selectedAlbumEntry = albumEntry;
                MediaController.AlbumEntry albumEntry2 = this.galleryAlbumEntry;
                TextView textView = this.dropDown;
                if (albumEntry == albumEntry2) {
                    textView.setText(LocaleController.getString(C2665R.string.ChatGallery));
                } else {
                    textView.setText(albumEntry.bucketName);
                }
                this.adapter.notifyDataSetChanged();
                this.cameraAttachAdapter.notifyDataSetChanged();
                this.layoutManager.scrollToPositionWithOffset(0, -(this.gridView.getPaddingTop() - getTopScrollOffset()));
                return;
            }
            return;
        }
        try {
            if (shouldLoadAllMedia()) {
                Intent intent = new Intent();
                intent.setType("video/*");
                intent.setAction("android.intent.action.GET_CONTENT");
                intent.putExtra("android.intent.extra.sizeLimit", FileLoader.DEFAULT_MAX_FILE_SIZE);
                Intent intent2 = new Intent("android.intent.action.PICK");
                intent2.setType("image/*");
                Intent intentCreateChooser = Intent.createChooser(intent2, null);
                intentCreateChooser.putExtra("android.intent.extra.INITIAL_INTENTS", new Intent[]{intent});
                ChatAttachAlert chatAttachAlert6 = this.parentAlert;
                if (chatAttachAlert6.avatarPicker != 0) {
                    chatAttachAlert6.baseFragment.startActivityForResult(intentCreateChooser, 14);
                } else {
                    chatAttachAlert6.baseFragment.startActivityForResult(intentCreateChooser, 1);
                }
            } else {
                Intent intent3 = new Intent("android.intent.action.PICK");
                intent3.setType("image/*");
                ChatAttachAlert chatAttachAlert7 = this.parentAlert;
                if (chatAttachAlert7.avatarPicker != 0) {
                    chatAttachAlert7.baseFragment.startActivityForResult(intent3, 14);
                } else {
                    chatAttachAlert7.baseFragment.startActivityForResult(intent3, 1);
                }
            }
            this.parentAlert.dismiss(true);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$19(boolean z, int i, int i2) {
        this.parentAlert.applyCaption();
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        chatAttachAlert.delegate.didPressedButton(7, false, z, i, 0, 0L, chatAttachAlert.isCaptionAbove(), false, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$20(Long l) {
        this.parentAlert.applyCaption();
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        chatAttachAlert.delegate.didPressedButton(7, false, true, 0, 0, 0L, chatAttachAlert.isCaptionAbove(), false, l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$21(boolean z, int i, int i2) {
        this.parentAlert.applyCaption();
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        chatAttachAlert.delegate.didPressedButton(4, true, z, i, 0, 0L, chatAttachAlert.isCaptionAbove(), false, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$22(Long l) {
        this.parentAlert.applyCaption();
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        chatAttachAlert.delegate.didPressedButton(4, true, true, 0, 0, 0L, chatAttachAlert.isCaptionAbove(), false, l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$23(boolean z) {
        this.spoilerItem.setText(LocaleController.getString(z ? C2665R.string.DisablePhotoSpoiler : C2665R.string.EnablePhotoSpoiler));
        ActionBarMenuSubItem actionBarMenuSubItem = this.spoilerItem;
        if (z) {
            actionBarMenuSubItem.setIcon(C2665R.drawable.msg_spoiler_off);
        } else {
            actionBarMenuSubItem.setAnimatedIcon(C2665R.raw.photo_spoiler);
        }
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (z) {
            chatAttachAlert.selectedMenuItem.hideSubItem(1);
            if (getSelectedItemsCount() <= 1) {
                this.parentAlert.selectedMenuItem.hideSubItem(6);
                return;
            }
            return;
        }
        chatAttachAlert.selectedMenuItem.showSubItem(1);
        if (getSelectedItemsCount() <= 1) {
            this.parentAlert.selectedMenuItem.showSubItem(6);
        }
    }

    public static /* synthetic */ void $r8$lambda$kyh7rEFRW8ZIB_Uu9CopvTNjPqI(List list, boolean z, View view) {
        if (view instanceof PhotoAttachPhotoCell) {
            PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) view;
            MediaController.PhotoEntry photoEntry = photoAttachPhotoCell.getPhotoEntry();
            photoAttachPhotoCell.setHasSpoiler(photoEntry != null && list.contains(Integer.valueOf(photoEntry.imageId)) && z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$25(boolean z) {
        this.qualityItem.setText(LocaleController.getString(z ? C2665R.string.SendInStandardQuality : C2665R.string.SendInHighQuality));
        ActionBarMenuSubItem actionBarMenuSubItem = this.qualityItem;
        if (z) {
            actionBarMenuSubItem.setIcon(C2665R.drawable.menu_quality_sd);
        } else {
            actionBarMenuSubItem.setIcon(C2665R.drawable.menu_quality_hd);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$LkpA_2BOvbk17-wsOcc-aC_zKHQ, reason: not valid java name */
    public static /* synthetic */ void m10757$r8$lambda$LkpA_2BOvbk17wsOccaC_zKHQ(List list, boolean z, View view) {
        if (view instanceof PhotoAttachPhotoCell) {
            PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) view;
            MediaController.PhotoEntry photoEntry = photoAttachPhotoCell.getPhotoEntry();
            photoAttachPhotoCell.setHighQuality(photoEntry != null && list.contains(Integer.valueOf(photoEntry.imageId)) && z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$27(Long l, Runnable runnable) {
        runnable.run();
        setStarsPrice(l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTopScrollOffset() {
        return AndroidUtilities.dp(7.0f) + ActionBar.getCurrentActionBarHeight() + this.listAdditionalH;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getSelectedItemsCount() {
        return selectedPhotosOrder.size();
    }

    public int getSelectedPhotosCount() {
        int i = 0;
        for (Object obj : selectedPhotos.values()) {
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                if (!photoEntry.isVideo && photoEntry.editedInfo == null) {
                    i++;
                }
            }
        }
        return i;
    }

    public int getSelectedPhotosHighQualityCount() {
        int i = 0;
        for (Object obj : selectedPhotos.values()) {
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                if (photoEntry.isHighQuality() && !photoEntry.isVideo && photoEntry.editedInfo == null) {
                    i++;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0127  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onSelectedItemsCountChanged(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        ChatAttachAlert chatAttachAlert;
        ChatAttachAlert chatAttachAlert2;
        boolean z4 = true;
        if (i <= 1 || this.parentAlert.editingMessageObject != null) {
            this.parentAlert.selectedMenuItem.hideSubItem(0);
            if (i == 0) {
                this.parentAlert.selectedMenuItem.showSubItem(4);
                this.parentAlert.selectedMenuItem.hideSubItem(1);
            } else {
                if (this.documentsEnabled && getStarsPrice() <= 0) {
                    ChatAttachAlert chatAttachAlert3 = this.parentAlert;
                    if (chatAttachAlert3.editingMessageObject == null) {
                        chatAttachAlert3.selectedMenuItem.showSubItem(1);
                        z = false;
                        z2 = true;
                    }
                }
                this.parentAlert.selectedMenuItem.hideSubItem(1);
            }
            z = false;
            z2 = false;
        } else {
            long starsPrice = getStarsPrice();
            ChatAttachAlert chatAttachAlert4 = this.parentAlert;
            if (starsPrice <= 0) {
                chatAttachAlert4.selectedMenuItem.showSubItem(0);
                z = true;
            } else {
                chatAttachAlert4.selectedMenuItem.hideSubItem(0);
                z = false;
            }
            if (this.documentsEnabled && getStarsPrice() <= 0) {
                this.parentAlert.selectedMenuItem.showSubItem(1);
                z2 = true;
            } else {
                this.parentAlert.selectedMenuItem.hideSubItem(1);
                z2 = false;
            }
        }
        if (i != 0) {
            this.parentAlert.selectedMenuItem.hideSubItem(4);
        }
        ChatAttachAlert chatAttachAlert5 = this.parentAlert;
        if (i > 1) {
            chatAttachAlert5.selectedMenuItem.showSubItem(5);
            this.parentAlert.selectedMenuItem.showSubItem(7);
            this.compressItem.setText(LocaleController.getString(C2665R.string.SendAsFiles));
        } else {
            chatAttachAlert5.selectedMenuItem.hideSubItem(5);
            this.parentAlert.selectedMenuItem.hideSubItem(7);
            if (i != 0) {
                this.compressItem.setText(LocaleController.getString(C2665R.string.SendAsFile));
            }
        }
        if (i <= 0 || getStarsPrice() > 0) {
            z3 = false;
        } else {
            ChatAttachAlert chatAttachAlert6 = this.parentAlert;
            if (chatAttachAlert6 != null) {
                BaseFragment baseFragment = chatAttachAlert6.baseFragment;
                if (!(baseFragment instanceof ChatActivity) || ((ChatActivity) baseFragment).isSecretChat()) {
                }
            }
            z3 = true;
        }
        boolean z5 = i > 0 && (chatAttachAlert2 = this.parentAlert) != null && chatAttachAlert2.hasCaption() && (this.parentAlert.baseFragment instanceof ChatActivity);
        if (i <= 0 || (chatAttachAlert = this.parentAlert) == null) {
            z4 = false;
        } else {
            BaseFragment baseFragment2 = chatAttachAlert.baseFragment;
            if (!(baseFragment2 instanceof ChatActivity) || !ChatObject.isChannelAndNotMegaGroup(((ChatActivity) baseFragment2).getCurrentChat()) || ((ChatActivity) this.parentAlert.baseFragment).getCurrentChatInfo() == null || !((ChatActivity) this.parentAlert.baseFragment).getCurrentChatInfo().paid_media_allowed) {
            }
        }
        if (!z3) {
            this.spoilerItem.setText(LocaleController.getString(C2665R.string.EnablePhotoSpoiler));
            this.spoilerItem.setAnimatedIcon(C2665R.raw.photo_spoiler);
            this.parentAlert.selectedMenuItem.hideSubItem(3);
        } else {
            ChatAttachAlert chatAttachAlert7 = this.parentAlert;
            if (chatAttachAlert7 != null) {
                chatAttachAlert7.selectedMenuItem.showSubItem(3);
            }
        }
        if (this.parentAlert != null) {
            if (getSelectedPhotosCount() == i) {
                int selectedPhotosHighQualityCount = getSelectedPhotosHighQualityCount();
                ActionBarMenuSubItem actionBarMenuSubItem = this.qualityItem;
                if (selectedPhotosHighQualityCount > 0) {
                    actionBarMenuSubItem.setText(LocaleController.getString(C2665R.string.SendInStandardQuality));
                    this.qualityItem.setIcon(C2665R.drawable.menu_quality_sd);
                } else {
                    actionBarMenuSubItem.setText(LocaleController.getString(C2665R.string.SendInHighQuality));
                    this.qualityItem.setIcon(C2665R.drawable.menu_quality_hd);
                }
                this.parentAlert.selectedMenuItem.showSubItem(2);
            } else {
                this.parentAlert.selectedMenuItem.hideSubItem(2);
            }
        }
        MessagePreviewView.ToggleButton toggleButton = this.captionItem;
        if (z5) {
            toggleButton.setVisibility(0);
        } else {
            toggleButton.setVisibility(8);
        }
        if ((z3 || z5) && (z2 || z)) {
            this.parentAlert.selectedMenuItem.showSubItem(6);
        } else {
            this.parentAlert.selectedMenuItem.hideSubItem(6);
        }
        if (z4) {
            updateStarsItem();
            updatePhotoStarsPrice();
            this.parentAlert.selectedMenuItem.showSubItem(9);
            return;
        }
        this.parentAlert.selectedMenuItem.hideSubItem(9);
    }

    private void updateStarsItem() {
        if (this.starsItem == null) {
            return;
        }
        long starsPrice = getStarsPrice();
        ActionBarMenuSubItem actionBarMenuSubItem = this.starsItem;
        if (starsPrice > 0) {
            actionBarMenuSubItem.setText(LocaleController.getString(C2665R.string.PaidMediaPriceButton));
            this.starsItem.setSubtext(LocaleController.formatPluralString("Stars", (int) starsPrice, new Object[0]));
        } else {
            actionBarMenuSubItem.setText(LocaleController.getString(C2665R.string.PaidMediaButton));
            this.starsItem.setSubtext(null);
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void applyCaption(CharSequence charSequence) {
        Object obj;
        for (int i = 0; i < selectedPhotosOrder.size(); i++) {
            if (i == 0) {
                Object obj2 = selectedPhotosOrder.get(i);
                Object obj3 = selectedPhotos.get(obj2);
                if (obj3 instanceof MediaController.PhotoEntry) {
                    MediaController.PhotoEntry photoEntryClone = ((MediaController.PhotoEntry) obj3).clone();
                    CharSequence[] charSequenceArr = {charSequence};
                    photoEntryClone.entities = MediaDataController.getInstance(UserConfig.selectedAccount).getEntities(charSequenceArr, false);
                    photoEntryClone.caption = charSequenceArr[0];
                    obj = photoEntryClone;
                } else {
                    boolean z = obj3 instanceof MediaController.SearchImage;
                    obj = obj3;
                    if (z) {
                        MediaController.SearchImage searchImageClone = ((MediaController.SearchImage) obj3).clone();
                        CharSequence[] charSequenceArr2 = {charSequence};
                        searchImageClone.entities = MediaDataController.getInstance(UserConfig.selectedAccount).getEntities(charSequenceArr2, false);
                        searchImageClone.caption = charSequenceArr2[0];
                        obj = searchImageClone;
                    }
                }
                selectedPhotos.put(obj2, obj);
            }
        }
    }

    public boolean captionForAllMedia() {
        CharSequence charSequence;
        int i = 0;
        for (int i2 = 0; i2 < selectedPhotosOrder.size(); i2++) {
            Object obj = selectedPhotos.get(selectedPhotosOrder.get(i2));
            if (obj instanceof MediaController.PhotoEntry) {
                charSequence = ((MediaController.PhotoEntry) obj).caption;
            } else {
                charSequence = obj instanceof MediaController.SearchImage ? ((MediaController.SearchImage) obj).caption : null;
            }
            if (!TextUtils.isEmpty(charSequence)) {
                i++;
            }
        }
        return i <= 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.cameraInitied);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.cameraInitied);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.cameraInitied);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.albumsDidLoad);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPause() {
        ShutterButton shutterButton = this.shutterButton;
        if (shutterButton == null) {
            return;
        }
        boolean z = this.requestingPermissions;
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (!z) {
            if (cameraViewInternal != null && shutterButton.getState() == ShutterButton.State.RECORDING) {
                resetRecordState();
                CameraController.getInstance().stopVideoRecording(this.cameraView.getCameraSession(), false);
                this.shutterButton.setState(ShutterButton.State.DEFAULT, true);
            }
            if (this.cameraOpened) {
                closeCamera(false);
            }
            hideCamera(true);
            return;
        }
        if (cameraViewInternal != null && shutterButton.getState() == ShutterButton.State.RECORDING) {
            this.shutterButton.setState(ShutterButton.State.DEFAULT, true);
        }
        this.requestingPermissions = false;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onResume() {
        if (!this.parentAlert.isShowing() || this.parentAlert.isDismissed() || PhotoViewer.getInstance().isVisible()) {
            return;
        }
        checkCamera(false);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.gridView.getPaddingTop();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        int childCount = this.gridView.getChildCount();
        RecyclerListView recyclerListView = this.gridView;
        if (childCount <= 0) {
            int paddingTop = recyclerListView.getPaddingTop();
            this.currentItemTop = paddingTop;
            recyclerListView.setTopGlowOffset(paddingTop);
            this.progressView.setTranslationY(0.0f);
            return Integer.MAX_VALUE;
        }
        View childAt = recyclerListView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.gridView.findContainingViewHolder(childAt);
        int top = childAt.getTop() - this.listAdditionalH;
        int iDp = AndroidUtilities.dp(7.0f);
        if (top < AndroidUtilities.dp(7.0f) || holder == null || holder.getAdapterPosition() != 0) {
            top = iDp;
        }
        this.progressView.setTranslationY(top + ((((getMeasuredHeight() - top) - AndroidUtilities.dp(50.0f)) - this.progressView.getMeasuredHeight()) / 2.0f));
        this.gridView.setTopGlowOffset(top);
        this.currentItemTop = top;
        return top;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getButtonsHideOffset() {
        return super.getButtonsHideOffset() + ActionBar.getCurrentActionBarHeight();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.dp(56.0f);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void checkColors() {
        int i = this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_dialogTextBlack;
        this.progressView.setTextColor(getThemedColor(Theme.key_emptyListPlaceholder));
        this.gridView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        this.gridView.findViewHolderForAdapterPosition(0);
        this.dropDown.setTextColor(getThemedColor(i));
        this.dropDownContainer.setPopupItemsColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_actionBarDefaultSubmenuItem), false);
        this.dropDownContainer.setPopupItemsColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_actionBarDefaultSubmenuItem), true);
        this.dropDownContainer.redrawPopup(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarUnscrolled : Theme.key_actionBarDefaultSubmenuBackground));
        Theme.setDrawableColor(this.dropDownDrawable, getThemedColor(i));
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onInit(boolean z, boolean z2, boolean z3) {
        boolean z4 = z || z2;
        this.mediaEnabled = z4;
        this.videoEnabled = z;
        this.photoEnabled = z2;
        this.documentsEnabled = z3;
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            cameraViewInternal.setAlpha(z4 ? 1.0f : 0.2f);
            this.cameraView.setEnabled(this.mediaEnabled);
        }
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if ((chatAttachAlert.baseFragment instanceof ChatActivity) || chatAttachAlert.getChat() != null) {
            ChatAttachAlert chatAttachAlert2 = this.parentAlert;
            if (chatAttachAlert2.avatarPicker == 0) {
                this.galleryAlbumEntry = MediaController.allMediaAlbumEntry;
                if (this.mediaEnabled) {
                    this.progressView.setText(LocaleController.getString(C2665R.string.NoPhotos));
                    this.progressView.setLottie(0, 0, 0);
                } else {
                    TLRPC.Chat chat = chatAttachAlert2.getChat();
                    this.progressView.setLottie(C2665R.raw.media_forbidden, 150, 150);
                    if (ChatObject.isActionBannedByDefault(chat, 7)) {
                        this.progressView.setText(LocaleController.getString(C2665R.string.GlobalAttachMediaRestricted));
                    } else {
                        boolean zIsBannedForever = AndroidUtilities.isBannedForever(chat.banned_rights);
                        EmptyTextProgressView emptyTextProgressView = this.progressView;
                        if (zIsBannedForever) {
                            emptyTextProgressView.setText(LocaleController.formatString("AttachMediaRestrictedForever", C2665R.string.AttachMediaRestrictedForever, new Object[0]));
                        } else {
                            emptyTextProgressView.setText(LocaleController.formatString("AttachMediaRestricted", C2665R.string.AttachMediaRestricted, LocaleController.formatDateForBan(chat.banned_rights.until_date)));
                        }
                    }
                }
            } else if (shouldLoadAllMedia()) {
                this.galleryAlbumEntry = MediaController.allMediaAlbumEntry;
            } else {
                this.galleryAlbumEntry = MediaController.allPhotosAlbumEntry;
            }
        }
        this.noGalleryPermissions = isNoGalleryPermissions();
        if (this.galleryAlbumEntry != null) {
            for (int i = 0; i < Math.min(100, this.galleryAlbumEntry.photos.size()); i++) {
                this.galleryAlbumEntry.photos.get(i).reset();
            }
        }
        clearSelectedPhotos();
        updatePhotosCounter(false);
        this.cameraPhotoLayoutManager.scrollToPositionWithOffset(0, DurationKt.NANOS_IN_MILLIS);
        this.layoutManager.scrollToPositionWithOffset(0, DurationKt.NANOS_IN_MILLIS);
        this.dropDown.setText(LocaleController.getString(C2665R.string.ChatGallery));
        MediaController.AlbumEntry albumEntry = this.galleryAlbumEntry;
        this.selectedAlbumEntry = albumEntry;
        if (albumEntry != null) {
            this.loading = false;
            EmptyTextProgressView emptyTextProgressView2 = this.progressView;
            if (emptyTextProgressView2 != null) {
                emptyTextProgressView2.showTextView();
            }
        }
        updateAlbumsDropDown();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean canScheduleMessages() {
        Iterator<Map.Entry<Object, Object>> it = selectedPhotos.entrySet().iterator();
        while (it.hasNext()) {
            Object value = it.next().getValue();
            if (value instanceof MediaController.PhotoEntry) {
                if (((MediaController.PhotoEntry) value).ttl != 0) {
                    return false;
                }
            } else if ((value instanceof MediaController.SearchImage) && ((MediaController.SearchImage) value).ttl != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onButtonsTranslationYUpdated() {
        checkCameraViewPosition();
        invalidate();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        if (this.parentAlert.getSheetAnimationType() == 1) {
            float f2 = (f / 40.0f) * (-0.1f);
            int childCount = this.gridView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    float f3 = 1.0f + f2;
                    photoAttachPhotoCell.getCheckBox().setScaleX(f3);
                    photoAttachPhotoCell.getCheckBox().setScaleY(f3);
                }
            }
        }
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
        invalidate();
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(final ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        ViewPropertyAnimator viewPropertyAnimator = this.headerAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        this.dropDownContainer.setVisibility(0);
        boolean z = attachAlertLayout instanceof ChatAttachAlertPhotoLayoutPreview;
        if (!z) {
            clearSelectedPhotos();
            this.dropDown.setAlpha(1.0f);
        } else {
            ViewPropertyAnimator interpolator = this.dropDown.animate().alpha(1.0f).setDuration(150L).setInterpolator(CubicBezierInterpolator.EASE_BOTH);
            this.headerAnimator = interpolator;
            interpolator.start();
        }
        this.parentAlert.actionBar.setTitle(_UrlKt.FRAGMENT_ENCODE_SET);
        this.layoutManager.scrollToPositionWithOffset(0, 0);
        if (z) {
            this.gridView.post(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$28(attachAlertLayout);
                }
            });
        }
        checkCameraViewPosition();
        resumeCameraPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onShow$28(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        int currentItemTop = attachAlertLayout.getCurrentItemTop();
        int listTopPadding = attachAlertLayout.getListTopPadding();
        RecyclerListView recyclerListView = this.gridView;
        if (currentItemTop > AndroidUtilities.dp(8.0f)) {
            listTopPadding -= currentItemTop;
        }
        recyclerListView.scrollBy(0, listTopPadding);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShown() {
        this.isHidden = false;
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            cameraViewInternal.setVisibility(0);
        }
        if (this.checkCameraWhenShown) {
            this.checkCameraWhenShown = false;
            checkCamera(true);
        }
    }

    public void setCheckCameraWhenShown(boolean z) {
        this.checkCameraWhenShown = z;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHideShowProgress(float f) {
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            cameraViewInternal.setAlpha(f);
            if (f != 0.0f && this.cameraView.getVisibility() != 0) {
                this.cameraView.setVisibility(0);
            } else {
                if (f != 0.0f || this.cameraView.getVisibility() == 4) {
                    return;
                }
                this.cameraView.setVisibility(4);
            }
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        this.isHidden = true;
        int childCount = this.gridView.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (this.gridView.getChildAt(i) instanceof PhotoAttachCameraCell) {
                saveLastCameraBitmap();
                break;
            } else {
                this.cameraViewItemDecoration.updateBitmap();
                i++;
            }
        }
        ViewPropertyAnimator viewPropertyAnimator = this.headerAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        ViewPropertyAnimator viewPropertyAnimatorWithEndAction = this.dropDown.animate().alpha(0.0f).setDuration(150L).setInterpolator(CubicBezierInterpolator.EASE_BOTH).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onHide$29();
            }
        });
        this.headerAnimator = viewPropertyAnimatorWithEndAction;
        viewPropertyAnimatorWithEndAction.start();
        pauseCameraPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onHide$29() {
        this.dropDownContainer.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseCameraPreview() {
        try {
            if (this.cameraView != null) {
                CameraController.getInstance().stopPreview(this.cameraView.getCameraSessionObject());
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeCameraPreview() {
        try {
            checkCamera(false);
            if (this.cameraView != null) {
                CameraController.getInstance().startPreview(this.cameraView.getCameraSessionObject());
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    public void pauseCamera(boolean z) {
        if (!this.needCamera || this.noCameraPermissions) {
            return;
        }
        if (z) {
            CameraViewInternal cameraViewInternal = this.cameraView;
            if (cameraViewInternal != null) {
                this.isCameraFrontfaceBeforeEnteringEditMode = Boolean.valueOf(cameraViewInternal.isFrontface());
                hideCamera(true);
                return;
            }
            return;
        }
        showCamera();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHidden() {
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            cameraViewInternal.setVisibility(8);
        }
        for (Map.Entry<Object, Object> entry : selectedPhotos.entrySet()) {
            if (entry.getValue() instanceof MediaController.PhotoEntry) {
                ((MediaController.PhotoEntry) entry.getValue()).isAttachSpoilerRevealed = false;
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        if (this.lastNotifyWidth != i5) {
            this.lastNotifyWidth = i5;
            PhotoAttachAdapter photoAttachAdapter = this.adapter;
            if (photoAttachAdapter != null) {
                photoAttachAdapter.notifyDataSetChanged();
            }
        }
        super.onLayout(z, i, i2, i3, i4);
        checkCameraViewPosition();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00d2  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreMeasure(int i, int i2) {
        int iDp;
        int i3;
        this.ignoreLayout = true;
        int i4 = this.itemsPerRow;
        if (AndroidUtilities.isTablet()) {
            this.itemsPerRow = 4;
        } else {
            Point point = AndroidUtilities.displaySize;
            if (point.x > point.y) {
                this.itemsPerRow = 4;
            } else {
                this.itemsPerRow = 3;
            }
        }
        this.listAdditionalH = AndroidUtilities.navigationBarHeight + AndroidUtilities.dp(48.0f);
        ((FrameLayout.LayoutParams) this.gridView.getLayoutParams()).topMargin = -this.listAdditionalH;
        int iDp2 = (i - AndroidUtilities.dp(4.0f)) - AndroidUtilities.dp(4.0f);
        int i5 = this.itemsPerRow;
        int i6 = iDp2 / i5;
        this.itemSize = i6;
        if (this.lastItemSize != i6 || i4 != i5) {
            this.lastItemSize = i6;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPreMeasure$30();
                }
            });
        }
        this.layoutManager.setSpanCount(Math.max(1, (this.itemSize * this.itemsPerRow) + (AndroidUtilities.dp(2.0f) * (this.itemsPerRow - 1))));
        int iCeil = (int) Math.ceil((this.adapter.getItemCount() - 1) / this.itemsPerRow);
        if (this.noGalleryPermissions) {
            iDp = AndroidUtilities.dp(400.0f);
        } else {
            iDp = ((iCeil - 1) * AndroidUtilities.dp(2.0f)) + (this.itemSize * iCeil);
        }
        int currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
        int iMax = Math.max(0, ((((i2 - iDp) - currentActionBarHeight) - AndroidUtilities.navigationBarHeight) - AndroidUtilities.dp(12.0f)) + AndroidUtilities.dp(6.0f));
        if (this.gridExtraSpace != iMax) {
            this.gridExtraSpace = iMax;
            this.adapter.notifyDataSetChanged();
        }
        if (!AndroidUtilities.isTablet()) {
            Point point2 = AndroidUtilities.displaySize;
            i3 = point2.x > point2.y ? (int) (i2 / 3.5f) : (i2 / 5) * 2;
        }
        int iDp3 = ((i3 + currentActionBarHeight) - AndroidUtilities.dp(52.0f)) + this.listAdditionalH;
        if (iDp3 < 0) {
            iDp3 = 0;
        }
        if (this.gridView.getPaddingTop() != iDp3 || this.gridView.getPaddingBottom() != this.listPaddingBottom) {
            this.gridView.setPadding(AndroidUtilities.dp(2.0f), iDp3, AndroidUtilities.dp(2.0f), this.listPaddingBottom + AndroidUtilities.dp(48.0f));
        }
        this.dropDown.setTextSize(17.0f);
        this.ignoreLayout = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPreMeasure$30() {
        this.adapter.notifyDataSetChanged();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean canDismissWithTouchOutside() {
        return !this.cameraOpened;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPanTransitionStart(boolean z, int i) {
        super.onPanTransitionStart(z, i);
        checkCameraViewPosition();
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            cameraViewInternal.invalidateOutline();
            this.cameraView.invalidate();
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onContainerTranslationUpdated(float f) {
        this.currentPanTranslationY = f;
        checkCameraViewPosition();
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (cameraViewInternal != null) {
            cameraViewInternal.invalidateOutline();
            this.cameraView.invalidate();
        }
        invalidate();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onOpenAnimationEnd() {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        checkCamera(chatAttachAlert != null && (chatAttachAlert.baseFragment instanceof ChatActivity));
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDismissWithButtonClick(int i) {
        hideCamera((i == 0 || i == 2) ? false : true);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onDismiss() {
        if (this.cameraAnimationInProgress) {
            return true;
        }
        if (this.cameraOpened) {
            closeCamera(true);
            return true;
        }
        hideCamera(true);
        return false;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onSheetKeyDown(int i, KeyEvent keyEvent) {
        if (!this.cameraOpened) {
            return false;
        }
        if (i != 24 && i != 25 && i != 79 && i != 85) {
            return false;
        }
        this.shutterButton.getDelegate().shutterReleased();
        return true;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onContainerViewTouchEvent(MotionEvent motionEvent) {
        if (this.cameraAnimationInProgress) {
            return true;
        }
        if (this.cameraOpened) {
            return processTouchEvent(motionEvent);
        }
        return false;
    }

    public boolean onCustomMeasure(View view, int i, int i2) {
        boolean z = i < i2;
        CameraViewInternal cameraViewInternal = this.cameraView;
        if (view == cameraViewInternal) {
            if (this.cameraOpened && !this.cameraAnimationInProgress) {
                cameraViewInternal.measure(View.MeasureSpec.makeMeasureSpec(i, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i2, TLObject.FLAG_30));
                return true;
            }
        } else {
            FrameLayout frameLayout = this.cameraPanel;
            if (view == frameLayout) {
                if (z) {
                    frameLayout.measure(View.MeasureSpec.makeMeasureSpec(i, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(126.0f), TLObject.FLAG_30));
                } else {
                    frameLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(126.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i2, TLObject.FLAG_30));
                }
                return true;
            }
            ZoomControlView zoomControlView = this.zoomControlView;
            if (view == zoomControlView) {
                if (z) {
                    zoomControlView.measure(View.MeasureSpec.makeMeasureSpec(i, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(50.0f), TLObject.FLAG_30));
                } else {
                    zoomControlView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(50.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i2, TLObject.FLAG_30));
                }
                return true;
            }
            RecyclerListView recyclerListView = this.cameraPhotoRecyclerView;
            if (view == recyclerListView) {
                this.cameraPhotoRecyclerViewIgnoreLayout = true;
                if (z) {
                    recyclerListView.measure(View.MeasureSpec.makeMeasureSpec(i, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(80.0f), TLObject.FLAG_30));
                    if (this.cameraPhotoLayoutManager.getOrientation() != 0) {
                        this.cameraPhotoRecyclerView.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
                        this.cameraPhotoLayoutManager.setOrientation(0);
                        this.cameraAttachAdapter.notifyDataSetChanged();
                    }
                } else {
                    recyclerListView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(80.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i2, TLObject.FLAG_30));
                    if (this.cameraPhotoLayoutManager.getOrientation() != 1) {
                        this.cameraPhotoRecyclerView.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
                        this.cameraPhotoLayoutManager.setOrientation(1);
                        this.cameraAttachAdapter.notifyDataSetChanged();
                    }
                }
                this.cameraPhotoRecyclerViewIgnoreLayout = false;
                return true;
            }
        }
        return false;
    }

    public boolean onCustomLayout(View view, int i, int i2, int i3, int i4) {
        int iDp;
        int measuredWidth;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        boolean z = i5 < i6;
        int i7 = AndroidUtilities.navigationBarHeight;
        if (view == this.cameraPanel) {
            RecyclerListView recyclerListView = this.cameraPhotoRecyclerView;
            if (z) {
                int visibility = recyclerListView.getVisibility();
                FrameLayout frameLayout = this.cameraPanel;
                if (visibility == 0) {
                    frameLayout.layout(0, (i4 - AndroidUtilities.dp(222.0f)) - i7, i5, (i4 - AndroidUtilities.dp(96.0f)) - i7);
                } else {
                    frameLayout.layout(0, (i4 - AndroidUtilities.dp(126.0f)) - i7, i5, i4 - i7);
                }
            } else {
                int visibility2 = recyclerListView.getVisibility();
                FrameLayout frameLayout2 = this.cameraPanel;
                if (visibility2 == 0) {
                    frameLayout2.layout((i3 - AndroidUtilities.dp(222.0f)) - i7, 0, i3 - AndroidUtilities.dp(96.0f), i6 - i7);
                } else {
                    frameLayout2.layout((i3 - AndroidUtilities.dp(126.0f)) - i7, 0, i3, i6 - i7);
                }
            }
            return true;
        }
        if (view == this.zoomControlView) {
            RecyclerListView recyclerListView2 = this.cameraPhotoRecyclerView;
            if (z) {
                int visibility3 = recyclerListView2.getVisibility();
                ZoomControlView zoomControlView = this.zoomControlView;
                if (visibility3 == 0) {
                    zoomControlView.layout(0, (i4 - AndroidUtilities.dp(310.0f)) - i7, i5, (i4 - AndroidUtilities.dp(260.0f)) - i7);
                } else {
                    zoomControlView.layout(0, (i4 - AndroidUtilities.dp(176.0f)) - i7, i5, (i4 - AndroidUtilities.dp(126.0f)) - i7);
                }
            } else {
                int visibility4 = recyclerListView2.getVisibility();
                ZoomControlView zoomControlView2 = this.zoomControlView;
                if (visibility4 == 0) {
                    zoomControlView2.layout((i3 - AndroidUtilities.dp(310.0f)) - i7, 0, i3 - AndroidUtilities.dp(260.0f), i6 - i7);
                } else {
                    zoomControlView2.layout((i3 - AndroidUtilities.dp(176.0f)) - i7, 0, i3 - AndroidUtilities.dp(126.0f), i6 - i7);
                }
            }
            return true;
        }
        TextView textView = this.counterTextView;
        if (view == textView) {
            if (z) {
                iDp = (i5 - textView.getMeasuredWidth()) / 2;
                int iDp2 = i4 - AndroidUtilities.dp(167.0f);
                this.counterTextView.setRotation(0.0f);
                if (this.cameraPhotoRecyclerView.getVisibility() == 0) {
                    iDp2 -= AndroidUtilities.dp(96.0f);
                }
                measuredWidth = iDp2 - i7;
            } else {
                iDp = i3 - AndroidUtilities.dp(167.0f);
                measuredWidth = (i6 / 2) + (this.counterTextView.getMeasuredWidth() / 2);
                this.counterTextView.setRotation(-90.0f);
                if (this.cameraPhotoRecyclerView.getVisibility() == 0) {
                    iDp -= AndroidUtilities.dp(96.0f);
                }
            }
            TextView textView2 = this.counterTextView;
            textView2.layout(iDp, measuredWidth, textView2.getMeasuredWidth() + iDp, this.counterTextView.getMeasuredHeight() + measuredWidth);
            return true;
        }
        if (view != this.cameraPhotoRecyclerView) {
            return false;
        }
        if (z) {
            int iDp3 = (i6 - AndroidUtilities.dp(88.0f)) - i7;
            view.layout(0, iDp3, view.getMeasuredWidth(), view.getMeasuredHeight() + iDp3);
        } else {
            int iDp4 = (i + i5) - AndroidUtilities.dp(88.0f);
            view.layout(iDp4, 0, view.getMeasuredWidth() + iDp4, view.getMeasuredHeight());
        }
        return true;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ChatAttachAlert chatAttachAlert;
        if (i == NotificationCenter.albumsDidLoad) {
            if (this.adapter != null) {
                if (shouldLoadAllMedia()) {
                    this.galleryAlbumEntry = MediaController.allMediaAlbumEntry;
                } else {
                    this.galleryAlbumEntry = MediaController.allPhotosAlbumEntry;
                }
                if (this.selectedAlbumEntry == null || ((chatAttachAlert = this.parentAlert) != null && chatAttachAlert.isStickerMode)) {
                    this.selectedAlbumEntry = this.galleryAlbumEntry;
                } else if (shouldLoadAllMedia()) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= MediaController.allMediaAlbums.size()) {
                            break;
                        }
                        MediaController.AlbumEntry albumEntry = MediaController.allMediaAlbums.get(i3);
                        int i4 = albumEntry.bucketId;
                        MediaController.AlbumEntry albumEntry2 = this.selectedAlbumEntry;
                        if (i4 == albumEntry2.bucketId && albumEntry.videoOnly == albumEntry2.videoOnly) {
                            this.selectedAlbumEntry = albumEntry;
                            break;
                        }
                        i3++;
                    }
                }
                this.loading = false;
                this.progressView.showTextView();
                this.adapter.notifyDataSetChanged();
                this.cameraAttachAdapter.notifyDataSetChanged();
                if (!selectedPhotosOrder.isEmpty() && this.galleryAlbumEntry != null) {
                    int size = selectedPhotosOrder.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        Integer num = (Integer) selectedPhotosOrder.get(i5);
                        Object obj = selectedPhotos.get(num);
                        MediaController.PhotoEntry photoEntry = this.galleryAlbumEntry.photosByIds.get(num.intValue());
                        if (photoEntry != null) {
                            if (obj instanceof MediaController.PhotoEntry) {
                                photoEntry.copyFrom((MediaController.PhotoEntry) obj);
                            }
                            selectedPhotos.put(num, photoEntry);
                        }
                    }
                }
                updateAlbumsDropDown();
                return;
            }
            return;
        }
        if (i == NotificationCenter.cameraInitied) {
            checkCamera(false);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class PhotoAttachAdapter extends RecyclerListView.FastScrollAdapter {
        private boolean hasCamera;
        private boolean hasCameraSpaceRow;
        private boolean isInFastScroll;
        private int itemsCount;
        private String lastLetter;
        private final Context mContext;
        private final boolean needCamera;
        private int photosEndRow;
        private int photosStartRow;
        private final ArrayList<RecyclerListView.Holder> viewsCache = new ArrayList<>(8);
        private long lastLetterDate = -1;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public PhotoAttachAdapter(Context context, boolean z) {
            this.mContext = context;
            this.needCamera = z;
        }

        public void createCache() {
            for (int i = 0; i < 8; i++) {
                this.viewsCache.add(createHolder());
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void onStartFastScroll() {
            super.onStartFastScroll();
            this.isInFastScroll = true;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void onFinishFastScroll(RecyclerListView recyclerListView) {
            super.onFinishFastScroll(recyclerListView);
            this.isInFastScroll = false;
            if (recyclerListView != null) {
                int childCount = recyclerListView.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = recyclerListView.getChildAt(i);
                    childAt.invalidate();
                    if (childAt instanceof PhotoAttachPhotoCell) {
                        ((PhotoAttachPhotoCell) childAt).imageView.invalidate();
                    }
                }
            }
        }

        public boolean isInFastScroll() {
            return this.isInFastScroll;
        }

        public RecyclerListView.Holder createHolder() {
            final PhotoAttachPhotoCell photoAttachPhotoCell = new PhotoAttachPhotoCell(this.mContext, ChatAttachAlertPhotoLayout.this.resourcesProvider);
            if (this == ChatAttachAlertPhotoLayout.this.adapter) {
                photoAttachPhotoCell.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.PhotoAttachAdapter.1
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        PhotoAttachPhotoCell photoAttachPhotoCell2 = (PhotoAttachPhotoCell) view;
                        if (photoAttachPhotoCell2.getTag() == null) {
                            return;
                        }
                        int iIntValue = ((Integer) photoAttachPhotoCell2.getTag()).intValue();
                        if (PhotoAttachAdapter.this.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry && (!ExteraConfig.getHideCameraTile() || ChatAttachAlertPhotoLayout.this.noCameraPermissions)) {
                            iIntValue++;
                        }
                        if (ChatAttachAlertPhotoLayout.this.showAvatarConstructor) {
                            iIntValue++;
                        }
                        if (iIntValue == 0) {
                            int iDp = AndroidUtilities.dp(16.0f);
                            outline.setRoundRect(0, 0, view.getMeasuredWidth() + iDp, view.getMeasuredHeight() + iDp, iDp);
                        } else if (iIntValue == ChatAttachAlertPhotoLayout.this.itemsPerRow - 1) {
                            int iDp2 = AndroidUtilities.dp(16.0f);
                            outline.setRoundRect(-iDp2, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + iDp2, iDp2);
                        } else {
                            outline.setRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
                        }
                    }
                });
                photoAttachPhotoCell.setClipToOutline(true);
            }
            photoAttachPhotoCell.setFastScrollDelegate(new PhotoAttachPhotoCell.ParentFastScrollDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.Cells.PhotoAttachPhotoCell.ParentFastScrollDelegate
                public final boolean isInFastScroll() {
                    return this.f$0.isInFastScroll();
                }
            });
            photoAttachPhotoCell.setDelegate(new PhotoAttachPhotoCell.PhotoAttachPhotoCellDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda4
                @Override // org.telegram.ui.Cells.PhotoAttachPhotoCell.PhotoAttachPhotoCellDelegate
                public final void onCheckClick(PhotoAttachPhotoCell photoAttachPhotoCell2) {
                    this.f$0.lambda$createHolder$0(photoAttachPhotoCell, photoAttachPhotoCell2);
                }
            });
            return new RecyclerListView.Holder(photoAttachPhotoCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createHolder$0(PhotoAttachPhotoCell photoAttachPhotoCell, PhotoAttachPhotoCell photoAttachPhotoCell2) {
            TLRPC.Chat currentChat;
            if (ChatAttachAlertPhotoLayout.this.mediaEnabled) {
                ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
                if (chatAttachAlert.avatarPicker != 0 || chatAttachAlert.isPollAttach) {
                    return;
                }
                int iIntValue = ((Integer) photoAttachPhotoCell2.getTag()).intValue();
                MediaController.PhotoEntry photoEntry = photoAttachPhotoCell2.getPhotoEntry();
                if (ChatAttachAlertPhotoLayout.this.checkSendMediaEnabled(photoEntry)) {
                    return;
                }
                boolean zContainsKey = ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photoEntry.imageId));
                boolean z = !zContainsKey;
                if (!zContainsKey && ChatAttachAlertPhotoLayout.selectedPhotos.size() + 1 > ChatAttachAlertPhotoLayout.this.maxCount()) {
                    ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                    BulletinFactory.of(chatAttachAlertPhotoLayout.parentAlert.sizeNotifierFrameLayout, chatAttachAlertPhotoLayout.resourcesProvider).createErrorBulletin(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BusinessRepliesToastLimit", ChatAttachAlertPhotoLayout.this.parentAlert.baseFragment.getMessagesController().config.quickReplyMessagesLimit.get(), new Object[0]))).show();
                    return;
                }
                if (!zContainsKey && ChatAttachAlertPhotoLayout.this.parentAlert.maxSelectedPhotos >= 0) {
                    int size = ChatAttachAlertPhotoLayout.selectedPhotos.size();
                    ChatAttachAlert chatAttachAlert2 = ChatAttachAlertPhotoLayout.this.parentAlert;
                    if (size >= chatAttachAlert2.maxSelectedPhotos) {
                        if (chatAttachAlert2.allowOrder) {
                            BaseFragment baseFragment = chatAttachAlert2.baseFragment;
                            if (!(baseFragment instanceof ChatActivity) || (currentChat = ((ChatActivity) baseFragment).getCurrentChat()) == null || ChatObject.hasAdminRights(currentChat) || !currentChat.slowmode_enabled || ChatAttachAlertPhotoLayout.this.alertOnlyOnce == 2) {
                                return;
                            }
                            AlertsCreator.createSimpleAlert(ChatAttachAlertPhotoLayout.this.getContext(), LocaleController.getString(C2665R.string.Slowmode), LocaleController.getString(C2665R.string.SlowmodeSelectSendError), ChatAttachAlertPhotoLayout.this.resourcesProvider).show();
                            if (ChatAttachAlertPhotoLayout.this.alertOnlyOnce == 1) {
                                ChatAttachAlertPhotoLayout.this.alertOnlyOnce = 2;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                int size2 = !zContainsKey ? ChatAttachAlertPhotoLayout.selectedPhotosOrder.size() : -1;
                ChatAttachAlert chatAttachAlert3 = ChatAttachAlertPhotoLayout.this.parentAlert;
                if ((chatAttachAlert3.baseFragment instanceof ChatActivity) && chatAttachAlert3.allowOrder) {
                    photoAttachPhotoCell2.setChecked(size2, z, true);
                } else {
                    photoAttachPhotoCell2.setChecked(-1, z, true);
                }
                ChatAttachAlertPhotoLayout.this.addToSelectedPhotos(photoEntry, iIntValue);
                PhotoAttachAdapter photoAttachAdapter = ChatAttachAlertPhotoLayout.this.cameraAttachAdapter;
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                if (this == photoAttachAdapter) {
                    if (chatAttachAlertPhotoLayout2.adapter.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry) {
                        iIntValue++;
                    }
                    if (ChatAttachAlertPhotoLayout.this.adapter.hasCameraSpaceRow && iIntValue >= ChatAttachAlertPhotoLayout.this.itemsPerRow) {
                        iIntValue++;
                    }
                    ChatAttachAlertPhotoLayout.this.adapter.notifyItemChanged(iIntValue);
                } else {
                    chatAttachAlertPhotoLayout2.cameraAttachAdapter.notifyItemChanged(iIntValue);
                }
                ChatAttachAlertPhotoLayout.this.parentAlert.updateCountButton(zContainsKey ? 2 : 1);
                photoAttachPhotoCell.setHasSpoiler(photoEntry.hasSpoiler);
                photoAttachPhotoCell.setHighQuality(photoEntry.isHighQuality());
                photoAttachPhotoCell.setStarsPrice(photoEntry.starsAmount, ChatAttachAlertPhotoLayout.selectedPhotos.size() > 1);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPhotoPosition(int i) {
            if (this.hasCameraSpaceRow && i > ChatAttachAlertPhotoLayout.this.itemsPerRow) {
                i--;
            }
            return (this.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry) ? (!ExteraConfig.getHideCameraTile() || ChatAttachAlertPhotoLayout.this.noCameraPermissions) ? i - 1 : i : i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MediaController.PhotoEntry getPhoto(int i) {
            return ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(getPhotoPosition(i));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ((PhotoAttachCameraCell) viewHolder.itemView).setItemSize(ChatAttachAlertPhotoLayout.this.itemSize);
                    return;
                }
                if (itemViewType != 3) {
                    if (itemViewType != 7) {
                        return;
                    }
                    ((GalleryEmptyView) viewHolder.itemView).setUseAnEmojiVisible(ChatAttachAlertPhotoLayout.this.showAvatarConstructor);
                    return;
                } else {
                    PhotoAttachPermissionCell photoAttachPermissionCell = (PhotoAttachPermissionCell) viewHolder.itemView;
                    photoAttachPermissionCell.setItemSize(ChatAttachAlertPhotoLayout.this.itemSize);
                    photoAttachPermissionCell.setType((this.needCamera && ChatAttachAlertPhotoLayout.this.noCameraPermissions && i == 0) ? 0 : 1);
                    return;
                }
            }
            if (this.hasCameraSpaceRow && i > ChatAttachAlertPhotoLayout.this.itemsPerRow) {
                i--;
            }
            if (this.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry && (!ExteraConfig.getHideCameraTile() || ChatAttachAlertPhotoLayout.this.noCameraPermissions)) {
                i--;
            }
            if (ChatAttachAlertPhotoLayout.this.showAvatarConstructor) {
                i--;
            }
            PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) viewHolder.itemView;
            PhotoAttachAdapter photoAttachAdapter = ChatAttachAlertPhotoLayout.this.adapter;
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            if (this == photoAttachAdapter) {
                photoAttachPhotoCell.setItemSize(chatAttachAlertPhotoLayout.itemSize);
            } else {
                photoAttachPhotoCell.setIsVertical(chatAttachAlertPhotoLayout.cameraPhotoLayoutManager.getOrientation() == 1);
            }
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            if (chatAttachAlert.avatarPicker != 0 || chatAttachAlert.storyMediaPicker || chatAttachAlert.isPollAttach) {
                photoAttachPhotoCell.getCheckBox().setVisibility(8);
            } else {
                photoAttachPhotoCell.getCheckBox().setVisibility(0);
            }
            MediaController.PhotoEntry photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
            if (photoEntryAtPosition == null) {
                return;
            }
            boolean z = ChatAttachAlertPhotoLayout.selectedPhotos.size() > 1;
            boolean z2 = this.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry && (!ExteraConfig.getHideCameraTile() || ChatAttachAlertPhotoLayout.this.noCameraPermissions);
            boolean z3 = i == getItemCount() - 1;
            ChatAttachAlert chatAttachAlert2 = ChatAttachAlertPhotoLayout.this.parentAlert;
            photoAttachPhotoCell.setPhotoEntry(photoEntryAtPosition, z, z2, z3, chatAttachAlert2 != null && chatAttachAlert2.allowLivePhotos);
            ChatAttachAlert chatAttachAlert3 = ChatAttachAlertPhotoLayout.this.parentAlert;
            if ((chatAttachAlert3.baseFragment instanceof ChatActivity) && chatAttachAlert3.allowOrder) {
                photoAttachPhotoCell.setChecked(ChatAttachAlertPhotoLayout.selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId)), ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), false);
            } else {
                photoAttachPhotoCell.setChecked(-1, ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), false);
            }
            if (!ChatAttachAlertPhotoLayout.this.videoEnabled && photoEntryAtPosition.isVideo) {
                photoAttachPhotoCell.setAlpha(0.3f);
            } else if (!ChatAttachAlertPhotoLayout.this.photoEnabled && !photoEntryAtPosition.isVideo) {
                photoAttachPhotoCell.setAlpha(0.3f);
            } else {
                photoAttachPhotoCell.setAlpha(1.0f);
            }
            photoAttachPhotoCell.getImageView().setTag(Integer.valueOf(i));
            photoAttachPhotoCell.setTag(Integer.valueOf(i));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                if (!this.viewsCache.isEmpty()) {
                    RecyclerListView.Holder holder = this.viewsCache.get(0);
                    this.viewsCache.remove(0);
                    return holder;
                }
                return createHolder();
            }
            if (i == 1) {
                return new RecyclerListView.Holder(new PhotoAttachCameraCell(this.mContext));
            }
            if (i == 2) {
                return new RecyclerListView.Holder(new View(this.mContext) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.PhotoAttachAdapter.2
                    @Override // android.view.View
                    public void onMeasure(int i2, int i3) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(ChatAttachAlertPhotoLayout.this.gridExtraSpace, TLObject.FLAG_30));
                    }
                });
            }
            if (i == 4) {
                return new RecyclerListView.Holder(new AvatarConstructorPreviewCell(this.mContext, ChatAttachAlertPhotoLayout.this.parentAlert.forUser) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.PhotoAttachAdapter.3
                    @Override // org.telegram.ui.Components.AvatarConstructorPreviewCell, android.widget.FrameLayout, android.view.View
                    public void onMeasure(int i2, int i3) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(ChatAttachAlertPhotoLayout.this.itemSize, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(ChatAttachAlertPhotoLayout.this.itemSize, TLObject.FLAG_30));
                    }
                });
            }
            if (i == 5) {
                return new RecyclerListView.Holder(new View(this.mContext));
            }
            if (i == 7) {
                Context context = this.mContext;
                ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
                GalleryEmptyView galleryEmptyView = new GalleryEmptyView(context, chatAttachAlert.currentAccount, chatAttachAlert.forUser);
                galleryEmptyView.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.dp(400.0f)));
                galleryEmptyView.setGravity(17);
                galleryEmptyView.isClickable();
                final ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                galleryEmptyView.doOnCameraAccess(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        chatAttachAlertPhotoLayout.openCameraWithPermissionCheck();
                    }
                });
                final ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                galleryEmptyView.doOnGalleryAccessClick(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        chatAttachAlertPhotoLayout2.requestGalleryPermission();
                    }
                });
                galleryEmptyView.doOnEmojiButton(new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$onCreateViewHolder$1((Long) obj);
                    }
                });
                return new RecyclerListView.Holder(galleryEmptyView);
            }
            if (i != 8) {
                return new RecyclerListView.Holder(new PhotoAttachPermissionCell(this.mContext, ChatAttachAlertPhotoLayout.this.resourcesProvider));
            }
            FrameLayout frameLayout = new FrameLayout(this.mContext);
            frameLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.dp(56.0f)));
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(this.mContext, ChatAttachAlertPhotoLayout.this.resourcesProvider);
            buttonWithCounterView.setUseWrapContent(true);
            buttonWithCounterView.setRound();
            buttonWithCounterView.setPadding(AndroidUtilities.dp(28.0f), 0, AndroidUtilities.dp(28.0f), 0);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("c");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C2665R.drawable.camera), 0, 1, 33);
            spannableStringBuilder.append((CharSequence) "  ").append((CharSequence) LocaleController.getString(C2665R.string.GalleryAccessAllowAccessCamera));
            buttonWithCounterView.setText(spannableStringBuilder, false);
            frameLayout.addView(buttonWithCounterView, LayoutHelper.createFrame(-2, 44.0f, 81, 10.0f, 0.0f, 10.0f, 12.0f));
            return new RecyclerListView.Holder(frameLayout);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(Long l) {
            ChatAttachAlertPhotoLayout.this.showAvatarConstructorFragment(null, null, l.longValue());
            ChatAttachAlertPhotoLayout.this.parentAlert.lambda$new$0();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.itemView instanceof PhotoAttachCameraCell) {
                ChatAttachAlertPhotoLayout.this.cameraViewItemDecoration.updateBitmap();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (!ChatAttachAlertPhotoLayout.this.mediaEnabled) {
                return 1;
            }
            int size = 0;
            this.hasCamera = false;
            this.hasCameraSpaceRow = false;
            if (ChatAttachAlertPhotoLayout.this.noGalleryPermissions && this == ChatAttachAlertPhotoLayout.this.adapter) {
                return 2;
            }
            if (this.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry && (!ExteraConfig.getHideCameraTile() || ChatAttachAlertPhotoLayout.this.noCameraPermissions)) {
                this.hasCamera = true;
                size = 1;
            }
            if (ChatAttachAlertPhotoLayout.this.showAvatarConstructor) {
                size++;
            }
            if (ChatAttachAlertPhotoLayout.this.noGalleryPermissions && this == ChatAttachAlertPhotoLayout.this.adapter) {
                size++;
            }
            this.photosStartRow = size;
            if (!ChatAttachAlertPhotoLayout.this.noGalleryPermissions) {
                size += ChatAttachAlertPhotoLayout.cameraPhotos.size();
                if (ChatAttachAlertPhotoLayout.this.selectedAlbumEntry != null) {
                    size += ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.size();
                }
            }
            this.photosEndRow = size;
            if (this.hasCamera && size > ChatAttachAlertPhotoLayout.this.itemsPerRow && !ChatAttachAlertPhotoLayout.this.noCameraPermissions) {
                this.hasCameraSpaceRow = true;
                size++;
            }
            if (this == ChatAttachAlertPhotoLayout.this.adapter) {
                size++;
            }
            this.itemsCount = size;
            return size;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (!ChatAttachAlertPhotoLayout.this.mediaEnabled) {
                return 2;
            }
            if (ChatAttachAlertPhotoLayout.this.noGalleryPermissions && this == ChatAttachAlertPhotoLayout.this.adapter) {
                return i == 0 ? 7 : 2;
            }
            if (this.needCamera && i == 0 && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry && (!ExteraConfig.getHideCameraTile() || ChatAttachAlertPhotoLayout.this.noCameraPermissions)) {
                return ChatAttachAlertPhotoLayout.this.noCameraPermissions ? 8 : 1;
            }
            if (this.hasCameraSpaceRow && i == ChatAttachAlertPhotoLayout.this.itemsPerRow) {
                return 5;
            }
            int i2 = (!this.hasCameraSpaceRow || i <= ChatAttachAlertPhotoLayout.this.itemsPerRow) ? i : i - 1;
            if (this.needCamera && (!ExteraConfig.getHideCameraTile() || ChatAttachAlertPhotoLayout.this.noCameraPermissions)) {
                i2--;
            }
            if (ChatAttachAlertPhotoLayout.this.showAvatarConstructor && i2 == 0) {
                return 4;
            }
            if (this == ChatAttachAlertPhotoLayout.this.adapter && i == this.itemsCount - 1) {
                return 2;
            }
            return ChatAttachAlertPhotoLayout.this.noGalleryPermissions ? 3 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            if (this == ChatAttachAlertPhotoLayout.this.adapter) {
                ChatAttachAlertPhotoLayout.this.progressView.setVisibility((!(getItemCount() == 1 && !ChatAttachAlertPhotoLayout.this.noGalleryPermissions && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == null) && ChatAttachAlertPhotoLayout.this.mediaEnabled) ? 4 : 0);
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public float getScrollProgress(RecyclerListView recyclerListView) {
            int i = ChatAttachAlertPhotoLayout.this.itemsPerRow;
            int iCeil = (int) Math.ceil(this.itemsCount / i);
            if (recyclerListView.getChildCount() == 0) {
                return 0.0f;
            }
            int measuredHeight = recyclerListView.getChildAt(0).getMeasuredHeight();
            if (recyclerListView.getChildAdapterPosition(recyclerListView.getChildAt(0)) < 0) {
                return 0.0f;
            }
            return Utilities.clamp((((r4 / i) * measuredHeight) - r1.getTop()) / ((iCeil * measuredHeight) - (recyclerListView.getMeasuredHeight() - ActionBar.getCurrentActionBarHeight())), 1.0f, 0.0f);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            MediaController.PhotoEntry photo = getPhoto(i);
            if (photo == null) {
                if (i <= this.photosStartRow) {
                    if (!ChatAttachAlertPhotoLayout.cameraPhotos.isEmpty()) {
                        photo = (MediaController.PhotoEntry) ChatAttachAlertPhotoLayout.cameraPhotos.get(0);
                    } else if (ChatAttachAlertPhotoLayout.this.selectedAlbumEntry != null && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos != null) {
                        photo = ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.get(0);
                    }
                } else if (!ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.isEmpty()) {
                    photo = ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.get(ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.size() - 1);
                }
            }
            if (photo != null) {
                long j = photo.dateTaken;
                if (Build.VERSION.SDK_INT <= 28) {
                    j /= 1000;
                }
                if (this.lastLetter == null || this.lastLetterDate != j) {
                    this.lastLetterDate = j;
                    this.lastLetter = LocaleController.formatYearMont(j, true);
                }
                return this.lastLetter;
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public boolean fastScrollIsVisible(RecyclerListView recyclerListView) {
            return !(ChatAttachAlertPhotoLayout.cameraPhotos.isEmpty() && (ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == null || ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.isEmpty())) && ChatAttachAlertPhotoLayout.this.parentAlert.pinnedToTop && getTotalItemsCount() > 30;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            int currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
            float fCeil = (((int) (Math.ceil(getTotalItemsCount() / ChatAttachAlertPhotoLayout.this.itemsPerRow) * ((double) r2))) - (recyclerListView.getMeasuredHeight() - currentActionBarHeight)) * f;
            float measuredHeight = recyclerListView.getChildAt(0).getMeasuredHeight();
            iArr[0] = ((int) (fCeil / measuredHeight)) * ChatAttachAlertPhotoLayout.this.itemsPerRow;
            int paddingTop = ((int) (fCeil % measuredHeight)) + recyclerListView.getPaddingTop() + ((int) (currentActionBarHeight * (1.0f - f)));
            iArr[1] = paddingTop;
            if (iArr[0] != 0 || paddingTop >= ChatAttachAlertPhotoLayout.this.getListTopPadding()) {
                return;
            }
            iArr[1] = ChatAttachAlertPhotoLayout.this.getListTopPadding() + currentActionBarHeight;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class CameraViewItemDecoration extends RecyclerView.ItemDecoration implements IBlur3Capture {
        private final Drawable cameraDrawable;
        private final Path clipPath = new Path();
        private final RecyclerView parent;
        private Drawable placeholderDrawable;

        public CameraViewItemDecoration(RecyclerView recyclerView) {
            this.parent = recyclerView;
            this.cameraDrawable = ChatAttachAlertPhotoLayout.this.getContext().getResources().getDrawable(C2665R.drawable.camera).mutate();
        }

        @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
        public void capture(Canvas canvas, RectF rectF) {
            draw(canvas, this.parent, null, rectF);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
            draw(canvas, recyclerView, null, null);
        }

        @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
        public void captureCalculateHash(IBlur3Hash iBlur3Hash, RectF rectF) {
            draw(null, this.parent, iBlur3Hash, rectF);
        }

        private void draw(Canvas canvas, RecyclerView recyclerView, IBlur3Hash iBlur3Hash, RectF rectF) {
            int top;
            CameraViewInternal cameraViewInternal;
            CameraViewInternal cameraViewInternal2;
            if (!ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress) {
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                if (!chatAttachAlertPhotoLayout.cameraOpened && chatAttachAlertPhotoLayout.adapter.hasCamera && !ChatAttachAlertPhotoLayout.this.noCameraPermissions && !ChatAttachAlertPhotoLayout.this.noGalleryPermissions && !ExteraConfig.getHideCameraTile()) {
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(0);
                    if (viewHolderFindViewHolderForAdapterPosition != null) {
                        top = viewHolderFindViewHolderForAdapterPosition.itemView.getTop();
                    } else {
                        viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(ChatAttachAlertPhotoLayout.this.itemsPerRow);
                        if (viewHolderFindViewHolderForAdapterPosition == null) {
                            if (iBlur3Hash != null) {
                                iBlur3Hash.unsupported();
                                return;
                            }
                            return;
                        }
                        top = (viewHolderFindViewHolderForAdapterPosition.itemView.getTop() - AndroidUtilities.dp(2.0f)) - ChatAttachAlertPhotoLayout.this.itemSize;
                    }
                    int left = viewHolderFindViewHolderForAdapterPosition.itemView.getLeft();
                    int i = ChatAttachAlertPhotoLayout.this.itemSize + left;
                    int iDp = (ChatAttachAlertPhotoLayout.this.itemSize * 2) + top + AndroidUtilities.dp(2.0f);
                    if (iBlur3Hash != null) {
                        iBlur3Hash.add(left);
                        iBlur3Hash.add(top);
                        iBlur3Hash.add(i);
                        iBlur3Hash.add(iDp);
                    }
                    if (rectF == null || rectF.intersects(left, top, i, iDp)) {
                        if (iBlur3Hash != null) {
                            iBlur3Hash.add(this.placeholderDrawable != null && ((cameraViewInternal2 = ChatAttachAlertPhotoLayout.this.cameraView) == null || !cameraViewInternal2.isInited() || ChatAttachAlertPhotoLayout.this.isHidden));
                            iBlur3Hash.add(ChatAttachAlertPhotoLayout.this.cameraView != null);
                            iBlur3Hash.add(this.cameraDrawable != null);
                        }
                        if (canvas == null) {
                            return;
                        }
                        float fDp = AndroidUtilities.dp(16.0f);
                        this.clipPath.rewind();
                        float f = left;
                        float f2 = top;
                        this.clipPath.addRoundRect(f, f2, i + fDp, iDp + fDp, fDp, fDp, Path.Direction.CW);
                        canvas.save();
                        canvas.clipPath(this.clipPath);
                        if (this.placeholderDrawable != null && ((cameraViewInternal = ChatAttachAlertPhotoLayout.this.cameraView) == null || !cameraViewInternal.isInited() || ChatAttachAlertPhotoLayout.this.isHidden)) {
                            this.placeholderDrawable.setBounds(left, top, i, iDp);
                            this.placeholderDrawable.draw(canvas);
                        }
                        CameraViewInternal cameraViewInternal3 = ChatAttachAlertPhotoLayout.this.cameraView;
                        if (cameraViewInternal3 != null) {
                            cameraViewInternal3.drawInDecoration = true;
                            canvas.save();
                            canvas.clipRect(left, top, i, iDp);
                            canvas.translate(f, f2);
                            ChatAttachAlertPhotoLayout.this.cameraView.draw(canvas);
                            canvas.restore();
                            ChatAttachAlertPhotoLayout.this.cameraView.drawInDecoration = false;
                        }
                        if (this.cameraDrawable != null) {
                            int iDp2 = AndroidUtilities.dp(24.0f);
                            int iDp3 = (i - AndroidUtilities.dp(7.0f)) - iDp2;
                            int iDp4 = top + AndroidUtilities.dp(7.0f);
                            this.cameraDrawable.setBounds(iDp3, iDp4, iDp3 + iDp2, iDp2 + iDp4);
                            this.cameraDrawable.draw(canvas);
                        }
                        canvas.restore();
                        ChatAttachAlertPhotoLayout.this.gridView.invalidate();
                        return;
                    }
                    return;
                }
            }
            if (iBlur3Hash != null) {
                iBlur3Hash.unsupported();
            }
        }

        public void updateBitmap() {
            Bitmap bitmapDecodeFile;
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(new File(ApplicationLoader.getFilesDirFixed(), "cthumb.jpg").getAbsolutePath());
            } catch (Throwable unused) {
                bitmapDecodeFile = null;
            }
            if (bitmapDecodeFile != null) {
                this.placeholderDrawable = new BitmapDrawable(ChatAttachAlertPhotoLayout.this.getContext().getResources(), bitmapDecodeFile);
            } else {
                this.placeholderDrawable = ChatAttachAlertPhotoLayout.this.getContext().getResources().getDrawable(C2665R.drawable.icplaceholder).mutate();
            }
            RecyclerListView recyclerListView = ChatAttachAlertPhotoLayout.this.gridView;
            if (recyclerListView != null) {
                recyclerListView.invalidate();
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class CameraViewInternal extends CameraView {
        Bulletin.Delegate bulletinDelegate;
        public boolean drawInDecoration;

        public CameraViewInternal(Context context, boolean z, boolean z2) {
            super(context, z, z2);
            this.bulletinDelegate = new Bulletin.Delegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.CameraViewInternal.1
                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i) {
                    return AndroidUtilities.dp(126.0f) + ChatAttachAlertPhotoLayout.this.parentAlert.getBottomInset();
                }
            };
        }

        @Override // org.telegram.messenger.camera.CameraView, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            if (AndroidUtilities.makingGlobalBlurBitmap) {
                return;
            }
            if (this.drawInDecoration || (!ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress && ChatAttachAlertPhotoLayout.this.cameraOpened)) {
                super.dispatchDraw(canvas);
                return;
            }
            float commentTextViewTop = ((ChatAttachAlertPhotoLayout.this.parentAlert.getCommentTextViewTop() + ChatAttachAlertPhotoLayout.this.currentPanTranslationY) + ChatAttachAlertPhotoLayout.this.parentAlert.getContainerView().getTranslationY()) - ChatAttachAlertPhotoLayout.this.cameraView.getTranslationY();
            MentionsContainerView mentionsContainerView = ChatAttachAlertPhotoLayout.this.parentAlert.mentionContainer;
            int iMin = (int) Math.min(commentTextViewTop - (mentionsContainerView != null ? mentionsContainerView.clipBottom() + AndroidUtilities.dp(8.0f) : 0.0f), getMeasuredHeight());
            if (ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress) {
                RectF rectF = AndroidUtilities.rectTmp;
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                float f = chatAttachAlertPhotoLayout.animationClipLeft + (chatAttachAlertPhotoLayout.cameraViewOffsetX * (1.0f - ChatAttachAlertPhotoLayout.this.cameraOpenProgress));
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                float f2 = chatAttachAlertPhotoLayout2.animationClipTop + (chatAttachAlertPhotoLayout2.cameraViewOffsetY * (1.0f - ChatAttachAlertPhotoLayout.this.cameraOpenProgress));
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout3 = ChatAttachAlertPhotoLayout.this;
                rectF.set(f, f2, chatAttachAlertPhotoLayout3.animationClipRight, AndroidUtilities.lerp(Math.min(iMin, chatAttachAlertPhotoLayout3.animationClipBottom), getMeasuredHeight(), ChatAttachAlertPhotoLayout.this.cameraOpenProgress));
            } else {
                if (!ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress) {
                    ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout4 = ChatAttachAlertPhotoLayout.this;
                    if (!chatAttachAlertPhotoLayout4.cameraOpened) {
                        AndroidUtilities.rectTmp.set(chatAttachAlertPhotoLayout4.cameraViewOffsetX, ChatAttachAlertPhotoLayout.this.cameraViewOffsetY, getMeasuredWidth(), Math.min(iMin, getMeasuredHeight()));
                        return;
                    }
                }
                AndroidUtilities.rectTmp.set(0.0f, 0.0f, getMeasuredWidth(), Math.min(iMin, getMeasuredHeight()));
            }
            canvas.save();
            canvas.clipRect(AndroidUtilities.rectTmp);
            super.dispatchDraw(canvas);
            canvas.restore();
        }

        @Override // android.view.View
        public void setVisibility(int i) {
            super.setVisibility(i);
            ChatAttachAlertPhotoLayout.this.gridView.invalidate();
        }

        @Override // org.telegram.messenger.camera.CameraView
        public void showTexture(boolean z, boolean z2) {
            super.showTexture(z, z2);
            ChatAttachAlertPhotoLayout.this.gridView.invalidate();
        }

        @Override // org.telegram.messenger.camera.CameraView, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            Bulletin.addDelegate(ChatAttachAlertPhotoLayout.this.cameraView, this.bulletinDelegate);
            ChatAttachAlertPhotoLayout.this.gridView.invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            Bulletin.removeDelegate(ChatAttachAlertPhotoLayout.this.cameraView);
        }
    }

    public boolean hasLivePhotos() {
        if (selectedPhotos.isEmpty()) {
            return false;
        }
        for (Map.Entry<Object, Object> entry : selectedPhotos.entrySet()) {
            if ((entry.getValue() instanceof MediaController.PhotoEntry) && ((MediaController.PhotoEntry) entry.getValue()).isLivePhoto()) {
                return true;
            }
        }
        return false;
    }

    public boolean areLivePhotosEnabled() {
        if (selectedPhotos.isEmpty()) {
            return false;
        }
        for (Map.Entry<Object, Object> entry : selectedPhotos.entrySet()) {
            if (entry.getValue() instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) entry.getValue();
                if (photoEntry.isLivePhoto() && photoEntry.isUnalivePhoto()) {
                    return false;
                }
            }
        }
        return true;
    }

    public void toggleLivePhotos(boolean z) {
        if (selectedPhotos.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<Object, Object>> it = selectedPhotos.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Map.Entry<Object, Object> next = it.next();
                if (next.getValue() instanceof MediaController.PhotoEntry) {
                    MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) next.getValue();
                    if (photoEntry.isLivePhoto()) {
                        photoEntry.discardLivePhoto = Boolean.valueOf(!z);
                        for (int i = 0; i < this.gridView.getChildCount(); i++) {
                            View childAt = this.gridView.getChildAt(i);
                            if (childAt instanceof PhotoAttachPhotoCell) {
                                PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                                if (photoAttachPhotoCell.getPhotoEntry() == photoEntry) {
                                    photoAttachPhotoCell.getImageView().invalidate();
                                }
                            }
                        }
                    }
                }
            } else {
                SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit();
                SharedConfig.photoLiveDefault = z;
                editorEdit.putBoolean("photoLiveDefault", z).apply();
                updateCells();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCells() {
        if (this.gridView != null) {
            for (int i = 0; i < this.gridView.getChildCount(); i++) {
                View childAt = this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    ((PhotoAttachPhotoCell) childAt).imageView.invalidate();
                }
            }
        }
    }
}
