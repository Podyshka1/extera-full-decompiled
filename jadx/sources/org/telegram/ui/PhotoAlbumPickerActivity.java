package org.telegram.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.ui.UIUtil;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.PhotoPickerAlbumsCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.Components.EditTextEmoji;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.PhotoPickerActivity;

/* JADX INFO: loaded from: classes6.dex */
public class PhotoAlbumPickerActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    public static int SELECT_TYPE_ALL = 0;
    public static int SELECT_TYPE_AVATAR = 1;
    public static int SELECT_TYPE_AVATAR_VIDEO = 3;
    public static int SELECT_TYPE_QR = 10;
    public static int SELECT_TYPE_WALLPAPER = 2;
    private boolean allowCaption;
    private boolean allowGifs;
    private CharSequence caption;
    private ChatActivity chatActivity;
    private EditTextEmoji commentTextView;
    private PhotoAlbumPickerActivityDelegate delegate;
    private TextView emptyView;
    private FrameLayout frameLayout2;
    private ActionBarMenuSubItem[] itemCells;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int maxSelectedPhotos;
    private FrameLayout progressView;
    private int selectPhotoType;
    private View selectedCountView;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout sendPopupLayout;
    private ActionBarPopupWindow sendPopupWindow;
    private boolean sendPressed;
    private View shadow;
    private SizeNotifierFrameLayout sizeNotifierFrameLayout;
    private ImageView writeButton;
    private FrameLayout writeButtonContainer;
    private Drawable writeButtonDrawable;
    private HashMap selectedPhotos = new HashMap();
    private ArrayList selectedPhotosOrder = new ArrayList();
    private ArrayList albumsSorted = null;
    private boolean loading = false;
    private int columnsCount = 2;
    private boolean allowSearchImages = true;
    private boolean allowOrder = true;
    private TextPaint textPaint = new TextPaint(1);
    private RectF rect = new RectF();
    private Paint paint = new Paint(1);

    public interface PhotoAlbumPickerActivityDelegate {
        void didSelectPhotos(ArrayList arrayList, boolean z, int i);

        void startPhotoSelectActivity();
    }

    public PhotoAlbumPickerActivity(int i, boolean z, boolean z2, ChatActivity chatActivity) {
        this.chatActivity = chatActivity;
        this.selectPhotoType = i;
        this.allowGifs = z;
        this.allowCaption = z2;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        int i = this.selectPhotoType;
        if (i == SELECT_TYPE_AVATAR || i == SELECT_TYPE_WALLPAPER || i == SELECT_TYPE_QR || !this.allowSearchImages) {
            this.albumsSorted = MediaController.allPhotoAlbums;
        } else {
            this.albumsSorted = MediaController.allMediaAlbums;
        }
        this.loading = this.albumsSorted == null;
        MediaController.loadGalleryPhotosAlbums(this.classGuid);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.closeChats);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.closeChats);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        ArrayList arrayList;
        ActionBar actionBar = this.actionBar;
        int i = Theme.key_dialogBackground;
        actionBar.setBackgroundColor(Theme.getColor(i));
        ActionBar actionBar2 = this.actionBar;
        int i2 = Theme.key_dialogTextBlack;
        actionBar2.setTitleColor(Theme.getColor(i2));
        this.actionBar.setItemsColor(Theme.getColor(i2), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_dialogButtonSelector), false);
        this.actionBar.setBackButtonImage(C2484R.drawable.ic_ab_back);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i3) {
                if (i3 == -1) {
                    PhotoAlbumPickerActivity.this.finishFragment();
                    return;
                }
                if (i3 != 1) {
                    if (i3 == 2) {
                        PhotoAlbumPickerActivity.this.openPhotoPicker(null, 0);
                    }
                } else if (PhotoAlbumPickerActivity.this.delegate != null) {
                    PhotoAlbumPickerActivity.this.finishFragment(false);
                    PhotoAlbumPickerActivity.this.delegate.startPhotoSelectActivity();
                }
            }
        });
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        if (this.allowSearchImages) {
            actionBarMenuCreateMenu.addItem(2, C2484R.drawable.outline_header_search).setContentDescription(LocaleController.getString(C2484R.string.Search));
        }
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(0, C2484R.drawable.ic_ab_other);
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2484R.string.AccDescrMoreOptions));
        actionBarMenuItemAddItem.addSubItem(1, C2484R.drawable.msg_openin, LocaleController.getString(C2484R.string.OpenInExternalApp));
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.PhotoAlbumPickerActivity.2
            private boolean ignoreLayout;
            private int lastNotifyWidth;

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                int i5;
                int size = View.MeasureSpec.getSize(i3);
                int size2 = View.MeasureSpec.getSize(i4);
                setMeasuredDimension(size, size2);
                int i6 = 0;
                if (AndroidUtilities.dp(20.0f) >= 0) {
                    if (!AndroidUtilities.isInMultiwindow) {
                        size2 -= PhotoAlbumPickerActivity.this.commentTextView.getEmojiPadding();
                        i4 = View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30);
                    }
                } else {
                    this.ignoreLayout = true;
                    PhotoAlbumPickerActivity.this.commentTextView.hideEmojiView();
                    this.ignoreLayout = false;
                }
                int i7 = i4;
                int childCount = getChildCount();
                while (i6 < childCount) {
                    View childAt = getChildAt(i6);
                    if (childAt == null || childAt.getVisibility() == 8) {
                        i5 = i3;
                    } else if (PhotoAlbumPickerActivity.this.commentTextView != null && PhotoAlbumPickerActivity.this.commentTextView.isPopupView(childAt)) {
                        if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                            if (AndroidUtilities.isTablet()) {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(AndroidUtilities.isTablet() ? 200.0f : 320.0f), (size2 - AndroidUtilities.statusBarHeight) + getPaddingTop()), TLObject.FLAG_30));
                            } else {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((size2 - AndroidUtilities.statusBarHeight) + getPaddingTop(), TLObject.FLAG_30));
                            }
                        } else {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, TLObject.FLAG_30));
                        }
                        i5 = i3;
                    } else {
                        i5 = i3;
                        measureChildWithMargins(childAt, i5, 0, i7, 0);
                    }
                    i6++;
                    i3 = i5;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:35:0x009a  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00b6  */
            /* JADX WARN: Removed duplicated region for block: B:46:0x00ca  */
            /* JADX WARN: Removed duplicated region for block: B:50:0x00dc  */
            /* JADX WARN: Removed duplicated region for block: B:52:0x00e6  */
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            protected void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                int i7;
                int paddingRight;
                int paddingLeft;
                int i8;
                int i9;
                int paddingTop;
                int measuredHeight;
                int measuredHeight2;
                int i10 = i5 - i3;
                if (this.lastNotifyWidth != i10) {
                    this.lastNotifyWidth = i10;
                    if (PhotoAlbumPickerActivity.this.sendPopupWindow != null && PhotoAlbumPickerActivity.this.sendPopupWindow.isShowing()) {
                        PhotoAlbumPickerActivity.this.sendPopupWindow.dismiss();
                    }
                }
                int childCount = getChildCount();
                int emojiPadding = (AndroidUtilities.dp(20.0f) < 0 || AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) ? 0 : PhotoAlbumPickerActivity.this.commentTextView.getEmojiPadding();
                setBottomClip(emojiPadding);
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = getChildAt(i11);
                    if (childAt.getVisibility() != 8) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                        int measuredWidth = childAt.getMeasuredWidth();
                        int measuredHeight3 = childAt.getMeasuredHeight();
                        int i12 = layoutParams.gravity;
                        if (i12 == -1) {
                            i12 = 51;
                        }
                        int i13 = i12 & 112;
                        int i14 = i12 & 7;
                        if (i14 == 1) {
                            i7 = ((i10 - measuredWidth) / 2) + layoutParams.leftMargin;
                            paddingRight = layoutParams.rightMargin;
                        } else if (i14 == 5) {
                            i7 = (i10 - measuredWidth) - layoutParams.rightMargin;
                            paddingRight = getPaddingRight();
                        } else {
                            paddingLeft = layoutParams.leftMargin + getPaddingLeft();
                            if (i13 != 16) {
                                i8 = ((((i6 - emojiPadding) - i4) - measuredHeight3) / 2) + layoutParams.topMargin;
                                i9 = layoutParams.bottomMargin;
                            } else {
                                if (i13 == 48) {
                                    paddingTop = layoutParams.topMargin + getPaddingTop();
                                } else if (i13 == 80) {
                                    i8 = ((i6 - emojiPadding) - i4) - measuredHeight3;
                                    i9 = layoutParams.bottomMargin;
                                } else {
                                    paddingTop = layoutParams.topMargin;
                                }
                                if (PhotoAlbumPickerActivity.this.commentTextView != null && PhotoAlbumPickerActivity.this.commentTextView.isPopupView(childAt)) {
                                    if (!AndroidUtilities.isTablet()) {
                                        measuredHeight = getMeasuredHeight();
                                        measuredHeight2 = childAt.getMeasuredHeight();
                                    } else {
                                        measuredHeight = getMeasuredHeight();
                                        measuredHeight2 = childAt.getMeasuredHeight();
                                    }
                                    paddingTop = measuredHeight - measuredHeight2;
                                }
                                childAt.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight3 + paddingTop);
                            }
                            paddingTop = i8 - i9;
                            if (PhotoAlbumPickerActivity.this.commentTextView != null) {
                                if (!AndroidUtilities.isTablet()) {
                                }
                                paddingTop = measuredHeight - measuredHeight2;
                            }
                            childAt.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight3 + paddingTop);
                        }
                        paddingLeft = i7 - paddingRight;
                        if (i13 != 16) {
                        }
                        paddingTop = i8 - i9;
                        if (PhotoAlbumPickerActivity.this.commentTextView != null) {
                        }
                        childAt.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight3 + paddingTop);
                    }
                }
                notifyHeightChanged();
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setBackgroundColor(Theme.getColor(i));
        this.fragmentView = this.sizeNotifierFrameLayout;
        this.actionBar.setTitle(LocaleController.getString(C2484R.string.Gallery));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setPadding(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(54.0f));
        this.listView.setClipToPadding(false);
        this.listView.setHorizontalScrollBarEnabled(false);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setDrawingCacheEnabled(false);
        this.sizeNotifierFrameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listAdapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        this.listView.setGlowColor(Theme.getColor(i));
        TextView textView = new TextView(context);
        this.emptyView = textView;
        textView.setTextColor(-8355712);
        this.emptyView.setTextSize(1, 20.0f);
        this.emptyView.setGravity(17);
        this.emptyView.setVisibility(8);
        this.emptyView.setText(LocaleController.getString(C2484R.string.NoPhotos));
        this.sizeNotifierFrameLayout.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, 48.0f));
        this.emptyView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return PhotoAlbumPickerActivity.$r8$lambda$4MoU0zFzx1jCCJMBFAoZICFPUz4(view, motionEvent);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.progressView = frameLayout;
        frameLayout.setVisibility(8);
        this.sizeNotifierFrameLayout.addView(this.progressView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, 48.0f));
        RadialProgressView radialProgressView = new RadialProgressView(context);
        radialProgressView.setProgressColor(-11371101);
        this.progressView.addView(radialProgressView, LayoutHelper.createFrame(-2, -2, 17));
        View view = new View(context);
        this.shadow = view;
        view.setBackgroundResource(C2484R.drawable.header_shadow_reverse);
        this.shadow.setTranslationY(AndroidUtilities.dp(48.0f));
        this.sizeNotifierFrameLayout.addView(this.shadow, LayoutHelper.createFrame(-1, 3.0f, 83, 0.0f, 0.0f, 0.0f, 48.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.frameLayout2 = frameLayout2;
        frameLayout2.setBackgroundColor(Theme.getColor(i));
        this.frameLayout2.setVisibility(4);
        this.frameLayout2.setTranslationY(AndroidUtilities.dp(48.0f));
        this.sizeNotifierFrameLayout.addView(this.frameLayout2, LayoutHelper.createFrame(-1, 48, 83));
        this.frameLayout2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return PhotoAlbumPickerActivity.m15851$r8$lambda$YZz6451RuRRNMrM7rWGGWTCB5g(view2, motionEvent);
            }
        });
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
        this.commentTextView = new EditTextEmoji(context, this.sizeNotifierFrameLayout, null, 1, false);
        this.commentTextView.setFilters(new InputFilter[]{new InputFilter.LengthFilter(MessagesController.getInstance(UserConfig.selectedAccount).maxCaptionLength)});
        this.commentTextView.setHint(LocaleController.getString(C2484R.string.AddCaption));
        EditTextCaption editText = this.commentTextView.getEditText();
        editText.setMaxLines(1);
        editText.setSingleLine(true);
        this.frameLayout2.addView(this.commentTextView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 84.0f, 0.0f));
        CharSequence charSequence = this.caption;
        if (charSequence != null) {
            this.commentTextView.setText(charSequence);
        }
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.PhotoAlbumPickerActivity.3
            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setText(LocaleController.formatPluralString("AccDescrSendPhotos", PhotoAlbumPickerActivity.this.selectedPhotos.size(), new Object[0]));
                accessibilityNodeInfo.setClassName(Button.class.getName());
                accessibilityNodeInfo.setLongClickable(true);
                accessibilityNodeInfo.setClickable(true);
            }
        };
        this.writeButtonContainer = frameLayout3;
        frameLayout3.setFocusable(true);
        this.writeButtonContainer.setFocusableInTouchMode(true);
        this.writeButtonContainer.setVisibility(4);
        this.writeButtonContainer.setScaleX(0.2f);
        this.writeButtonContainer.setScaleY(0.2f);
        this.writeButtonContainer.setAlpha(0.0f);
        this.sizeNotifierFrameLayout.addView(this.writeButtonContainer, LayoutHelper.createFrame(60, 60.0f, 85, 0.0f, 0.0f, 12.0f, 10.0f));
        this.writeButton = new ImageView(context);
        Drawable drawableCreateFabBackground = UIUtil.createFabBackground(56, getThemedColor(Theme.key_chat_editMediaButton), getThemedColor(Theme.key_dialogFloatingButtonPressed));
        this.writeButtonDrawable = drawableCreateFabBackground;
        this.writeButton.setBackgroundDrawable(drawableCreateFabBackground);
        this.writeButton.setImageResource(C2484R.drawable.attach_send);
        this.writeButton.setImportantForAccessibility(2);
        this.writeButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogFloatingIcon), PorterDuff.Mode.MULTIPLY));
        this.writeButton.setScaleType(ImageView.ScaleType.CENTER);
        this.writeButton.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.4
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                if (ExteraConfig.squareFab) {
                    outline.setRoundRect(0, 0, AndroidUtilities.dp(56.0f), AndroidUtilities.dp(56.0f), AndroidUtilities.dp(16.0f));
                } else {
                    outline.setOval(0, 0, AndroidUtilities.dp(56.0f), AndroidUtilities.dp(56.0f));
                }
            }
        });
        this.writeButtonContainer.addView(this.writeButton, LayoutHelper.createFrame(56, 56.0f, 51, 2.0f, 0.0f, 0.0f, 0.0f));
        this.writeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$3(view2);
            }
        });
        this.writeButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return this.f$0.lambda$createView$7(view2);
            }
        });
        this.textPaint.setTextSize(AndroidUtilities.dp(12.0f));
        this.textPaint.setTypeface(AndroidUtilities.bold());
        View view2 = new View(context) { // from class: org.telegram.ui.PhotoAlbumPickerActivity.6
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                String str = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(Math.max(1, PhotoAlbumPickerActivity.this.selectedPhotosOrder.size())));
                int iMax = Math.max(AndroidUtilities.dp(16.0f) + ((int) Math.ceil(PhotoAlbumPickerActivity.this.textPaint.measureText(str))), AndroidUtilities.dp(24.0f));
                int measuredWidth = getMeasuredWidth() / 2;
                getMeasuredHeight();
                PhotoAlbumPickerActivity.this.textPaint.setColor(Theme.getColor(Theme.key_dialogRoundCheckBoxCheck));
                PhotoAlbumPickerActivity.this.paint.setColor(Theme.getColor(Theme.key_dialogBackground));
                int i3 = iMax / 2;
                PhotoAlbumPickerActivity.this.rect.set(measuredWidth - i3, 0.0f, i3 + measuredWidth, getMeasuredHeight());
                canvas.drawRoundRect(PhotoAlbumPickerActivity.this.rect, AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), PhotoAlbumPickerActivity.this.paint);
                PhotoAlbumPickerActivity.this.paint.setColor(Theme.getColor(Theme.key_dialogRoundCheckBox));
                PhotoAlbumPickerActivity.this.rect.set(r5 + AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), r2 - AndroidUtilities.dp(2.0f), getMeasuredHeight() - AndroidUtilities.dp(2.0f));
                canvas.drawRoundRect(PhotoAlbumPickerActivity.this.rect, AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), PhotoAlbumPickerActivity.this.paint);
                canvas.drawText(str, measuredWidth - (r1 / 2), AndroidUtilities.dp(16.2f), PhotoAlbumPickerActivity.this.textPaint);
            }
        };
        this.selectedCountView = view2;
        view2.setAlpha(0.0f);
        this.selectedCountView.setScaleX(0.2f);
        this.selectedCountView.setScaleY(0.2f);
        this.sizeNotifierFrameLayout.addView(this.selectedCountView, LayoutHelper.createFrame(42, 24.0f, 85, 0.0f, 0.0f, -2.0f, 9.0f));
        if (this.selectPhotoType != SELECT_TYPE_ALL) {
            this.commentTextView.setVisibility(8);
        }
        if (this.loading && ((arrayList = this.albumsSorted) == null || arrayList.isEmpty())) {
            this.progressView.setVisibility(0);
            this.listView.setEmptyView(null);
        } else {
            this.progressView.setVisibility(8);
            this.listView.setEmptyView(this.emptyView);
        }
        return this.fragmentView;
    }

    public static /* synthetic */ boolean $r8$lambda$4MoU0zFzx1jCCJMBFAoZICFPUz4(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$YZz6451RuRRNMrM7rW-GGWTCB5g, reason: not valid java name */
    public static /* synthetic */ boolean m15851$r8$lambda$YZz6451RuRRNMrM7rWGGWTCB5g(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        ChatActivity chatActivity = this.chatActivity;
        if (chatActivity != null && chatActivity.isInScheduleMode()) {
            AlertsCreator.createScheduleDatePickerDialog(getParentActivity(), this.chatActivity.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda4
                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z, int i, int i2) {
                    this.f$0.lambda$createView$2(z, i, i2);
                }
            });
        } else {
            sendSelectedPhotos(this.selectedPhotos, this.selectedPhotosOrder, true, 0);
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(boolean z, int i, int i2) {
        sendSelectedPhotos(this.selectedPhotos, this.selectedPhotosOrder, z, i);
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$7(View view) {
        ChatActivity chatActivity = this.chatActivity;
        if (chatActivity != null && this.maxSelectedPhotos != 1) {
            chatActivity.getCurrentChat();
            TLRPC.User currentUser = this.chatActivity.getCurrentUser();
            if (this.sendPopupLayout == null) {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity());
                this.sendPopupLayout = actionBarPopupWindowLayout;
                actionBarPopupWindowLayout.setAnimationEnabled(false);
                this.sendPopupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.5
                    private Rect popupRect = new Rect();

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, MotionEvent motionEvent) {
                        if (motionEvent.getActionMasked() != 0 || PhotoAlbumPickerActivity.this.sendPopupWindow == null || !PhotoAlbumPickerActivity.this.sendPopupWindow.isShowing()) {
                            return false;
                        }
                        view2.getHitRect(this.popupRect);
                        if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                            return false;
                        }
                        PhotoAlbumPickerActivity.this.sendPopupWindow.dismiss();
                        return false;
                    }
                });
                this.sendPopupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda5
                    @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                    public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                        this.f$0.lambda$createView$4(keyEvent);
                    }
                });
                this.sendPopupLayout.setShownFromBottom(false);
                this.itemCells = new ActionBarMenuSubItem[2];
                final int i = 0;
                while (i < 2) {
                    if ((i != 0 || this.chatActivity.canScheduleMessage()) && (i != 1 || !UserObject.isUserSelf(currentUser))) {
                        this.itemCells[i] = new ActionBarMenuSubItem(getParentActivity(), i == 0, i == 1);
                        if (i == 0) {
                            if (UserObject.isUserSelf(currentUser)) {
                                this.itemCells[i].setTextAndIcon(LocaleController.getString(C2484R.string.SetReminder), C2484R.drawable.msg_calendar2);
                            } else {
                                this.itemCells[i].setTextAndIcon(LocaleController.getString(C2484R.string.ScheduleMessage), C2484R.drawable.msg_calendar2);
                            }
                        } else {
                            this.itemCells[i].setTextAndIcon(LocaleController.getString(C2484R.string.SendWithoutSound), C2484R.drawable.input_notify_off);
                        }
                        this.itemCells[i].setMinimumWidth(AndroidUtilities.dp(196.0f));
                        this.sendPopupLayout.addView((View) this.itemCells[i], LayoutHelper.createLinear(-1, 48));
                        this.itemCells[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                this.f$0.lambda$createView$6(i, view2);
                            }
                        });
                    }
                    i++;
                }
                this.sendPopupLayout.setupRadialSelectors(Theme.getColor(Theme.key_dialogButtonSelector));
                ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(this.sendPopupLayout, -2, -2);
                this.sendPopupWindow = actionBarPopupWindow;
                actionBarPopupWindow.setAnimationEnabled(false);
                this.sendPopupWindow.setAnimationStyle(C2484R.style.PopupContextAnimation2);
                this.sendPopupWindow.setOutsideTouchable(true);
                this.sendPopupWindow.setClippingEnabled(true);
                this.sendPopupWindow.setInputMethodMode(2);
                this.sendPopupWindow.setSoftInputMode(0);
                this.sendPopupWindow.getContentView().setFocusableInTouchMode(true);
            }
            this.sendPopupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
            this.sendPopupWindow.setFocusable(true);
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            this.sendPopupWindow.showAtLocation(view, 51, ((iArr[0] + view.getMeasuredWidth()) - this.sendPopupLayout.getMeasuredWidth()) + AndroidUtilities.dp(8.0f), (iArr[1] - this.sendPopupLayout.getMeasuredHeight()) - AndroidUtilities.dp(2.0f));
            this.sendPopupWindow.dimBehind();
            try {
                view.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(int i, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        if (i == 0) {
            AlertsCreator.createScheduleDatePickerDialog(getParentActivity(), this.chatActivity.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z, int i2, int i3) {
                    this.f$0.lambda$createView$5(z, i2, i3);
                }
            });
        } else {
            sendSelectedPhotos(this.selectedPhotos, this.selectedPhotosOrder, true, 0);
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(boolean z, int i, int i2) {
        sendSelectedPhotos(this.selectedPhotos, this.selectedPhotosOrder, z, i);
        finishFragment();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onResume();
        }
        fixLayout();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        fixLayout();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.albumsDidLoad) {
            if (this.classGuid == ((Integer) objArr[0]).intValue()) {
                int i3 = this.selectPhotoType;
                if (i3 == SELECT_TYPE_AVATAR || i3 == SELECT_TYPE_WALLPAPER || i3 == SELECT_TYPE_QR || !this.allowSearchImages) {
                    this.albumsSorted = (ArrayList) objArr[2];
                } else {
                    this.albumsSorted = (ArrayList) objArr[1];
                }
                FrameLayout frameLayout = this.progressView;
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
                RecyclerListView recyclerListView = this.listView;
                if (recyclerListView != null && recyclerListView.getEmptyView() == null) {
                    this.listView.setEmptyView(this.emptyView);
                }
                ListAdapter listAdapter = this.listAdapter;
                if (listAdapter != null) {
                    listAdapter.notifyDataSetChanged();
                }
                this.loading = false;
                return;
            }
            return;
        }
        if (i == NotificationCenter.closeChats) {
            removeSelfFromStack(true);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji == null || !editTextEmoji.isPopupShowing()) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        this.commentTextView.hidePopup(true);
        return false;
    }

    public void setMaxSelectedPhotos(int i, boolean z) {
        this.maxSelectedPhotos = i;
        this.allowOrder = z;
    }

    public void setAllowSearchImages(boolean z) {
        this.allowSearchImages = z;
    }

    public void setDelegate(PhotoAlbumPickerActivityDelegate photoAlbumPickerActivityDelegate) {
        this.delegate = photoAlbumPickerActivityDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSelectedPhotos(HashMap map, ArrayList arrayList, boolean z, int i) {
        if (map.isEmpty() || this.delegate == null || this.sendPressed) {
            return;
        }
        this.sendPressed = true;
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Object obj = map.get(arrayList.get(i2));
            SendMessagesHelper.SendingMediaInfo sendingMediaInfo = new SendMessagesHelper.SendingMediaInfo();
            arrayList2.add(sendingMediaInfo);
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                String str = photoEntry.imagePath;
                if (str != null) {
                    sendingMediaInfo.path = str;
                } else {
                    sendingMediaInfo.path = photoEntry.path;
                }
                sendingMediaInfo.thumbPath = photoEntry.thumbPath;
                sendingMediaInfo.coverPath = photoEntry.coverPath;
                sendingMediaInfo.videoEditedInfo = photoEntry.editedInfo;
                sendingMediaInfo.isVideo = photoEntry.isVideo;
                CharSequence charSequence = photoEntry.caption;
                sendingMediaInfo.caption = charSequence != null ? charSequence.toString() : null;
                sendingMediaInfo.entities = photoEntry.entities;
                sendingMediaInfo.masks = photoEntry.stickers;
                sendingMediaInfo.ttl = photoEntry.ttl;
            } else if (obj instanceof MediaController.SearchImage) {
                MediaController.SearchImage searchImage = (MediaController.SearchImage) obj;
                String str2 = searchImage.imagePath;
                if (str2 != null) {
                    sendingMediaInfo.path = str2;
                } else {
                    sendingMediaInfo.searchImage = searchImage;
                }
                sendingMediaInfo.thumbPath = searchImage.thumbPath;
                sendingMediaInfo.coverPath = searchImage.coverPath;
                sendingMediaInfo.videoEditedInfo = searchImage.editedInfo;
                CharSequence charSequence2 = searchImage.caption;
                sendingMediaInfo.caption = charSequence2 != null ? charSequence2.toString() : null;
                sendingMediaInfo.entities = searchImage.entities;
                sendingMediaInfo.masks = searchImage.stickers;
                sendingMediaInfo.ttl = searchImage.ttl;
                TLRPC.BotInlineResult botInlineResult = searchImage.inlineResult;
                if (botInlineResult != null && searchImage.type == 1) {
                    sendingMediaInfo.inlineResult = botInlineResult;
                    sendingMediaInfo.params = searchImage.params;
                }
                searchImage.date = (int) (System.currentTimeMillis() / 1000);
            }
        }
        this.delegate.didSelectPhotos(arrayList2, z, i);
    }

    private void fixLayout() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            recyclerListView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.7
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    PhotoAlbumPickerActivity.this.fixLayoutInternal();
                    if (PhotoAlbumPickerActivity.this.listView == null) {
                        return true;
                    }
                    PhotoAlbumPickerActivity.this.listView.getViewTreeObserver().removeOnPreDrawListener(this);
                    return true;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixLayoutInternal() {
        if (getParentActivity() == null) {
            return;
        }
        int rotation = ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
        this.columnsCount = 2;
        if (!AndroidUtilities.isTablet() && (rotation == 3 || rotation == 1)) {
            this.columnsCount = 4;
        }
        this.listAdapter.notifyDataSetChanged();
    }

    private boolean showCommentTextView(boolean z) {
        if (z == (this.frameLayout2.getTag() != null)) {
            return false;
        }
        this.frameLayout2.setTag(z ? 1 : null);
        if (this.commentTextView.getEditText().isFocused()) {
            AndroidUtilities.hideKeyboard(this.commentTextView.getEditText());
        }
        this.commentTextView.hidePopup(true);
        if (z) {
            this.frameLayout2.setVisibility(0);
            this.writeButtonContainer.setVisibility(0);
        } else {
            this.frameLayout2.setVisibility(4);
            this.writeButtonContainer.setVisibility(4);
        }
        this.writeButtonContainer.setScaleX(z ? 1.0f : 0.2f);
        this.writeButtonContainer.setScaleY(z ? 1.0f : 0.2f);
        this.writeButtonContainer.setAlpha(z ? 1.0f : 0.0f);
        this.selectedCountView.setScaleX(z ? 1.0f : 0.2f);
        this.selectedCountView.setScaleY(z ? 1.0f : 0.2f);
        this.selectedCountView.setAlpha(z ? 1.0f : 0.0f);
        this.frameLayout2.setTranslationY(z ? 0.0f : AndroidUtilities.dp(48.0f));
        this.shadow.setTranslationY(z ? 0.0f : AndroidUtilities.dp(48.0f));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePhotosButton() {
        if (this.selectedPhotos.size() == 0) {
            this.selectedCountView.setPivotX(0.0f);
            this.selectedCountView.setPivotY(0.0f);
            showCommentTextView(false);
        } else {
            this.selectedCountView.invalidate();
            showCommentTextView(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openPhotoPicker(MediaController.AlbumEntry albumEntry, int i) {
        if (albumEntry != null) {
            PhotoPickerActivity photoPickerActivity = new PhotoPickerActivity(i, albumEntry, this.selectedPhotos, this.selectedPhotosOrder, this.selectPhotoType, this.allowCaption, this.chatActivity, false);
            Editable text = this.commentTextView.getText();
            this.caption = text;
            photoPickerActivity.setCaption(text);
            photoPickerActivity.setDelegate(new PhotoPickerActivity.PhotoPickerActivityDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.8
                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public /* synthetic */ boolean canFinishFragment() {
                    return PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$canFinishFragment(this);
                }

                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public /* synthetic */ void onOpenInPressed() {
                    PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$onOpenInPressed(this);
                }

                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void selectedPhotosChanged() {
                    PhotoAlbumPickerActivity.this.updatePhotosButton();
                }

                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void actionButtonPressed(boolean z, boolean z2, int i2, int i3) {
                    PhotoAlbumPickerActivity.this.removeSelfFromStack();
                    if (z) {
                        return;
                    }
                    PhotoAlbumPickerActivity photoAlbumPickerActivity = PhotoAlbumPickerActivity.this;
                    photoAlbumPickerActivity.sendSelectedPhotos(photoAlbumPickerActivity.selectedPhotos, PhotoAlbumPickerActivity.this.selectedPhotosOrder, z2, i2);
                }

                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void onCaptionChanged(CharSequence charSequence) {
                    EditTextEmoji editTextEmoji = PhotoAlbumPickerActivity.this.commentTextView;
                    PhotoAlbumPickerActivity.this.caption = charSequence;
                    editTextEmoji.setText(charSequence);
                }
            });
            photoPickerActivity.setMaxSelectedPhotos(this.maxSelectedPhotos, this.allowOrder);
            presentFragment(photoPickerActivity);
            return;
        }
        final HashMap map = new HashMap();
        final ArrayList arrayList = new ArrayList();
        if (this.allowGifs) {
            PhotoPickerSearchActivity photoPickerSearchActivity = new PhotoPickerSearchActivity(map, arrayList, this.selectPhotoType, this.allowCaption, this.chatActivity);
            Editable text2 = this.commentTextView.getText();
            this.caption = text2;
            photoPickerSearchActivity.setCaption(text2);
            photoPickerSearchActivity.setDelegate(new PhotoPickerActivity.PhotoPickerActivityDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.9
                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public /* synthetic */ boolean canFinishFragment() {
                    return PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$canFinishFragment(this);
                }

                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public /* synthetic */ void onOpenInPressed() {
                    PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$onOpenInPressed(this);
                }

                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void selectedPhotosChanged() {
                }

                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void actionButtonPressed(boolean z, boolean z2, int i2, int i3) {
                    PhotoAlbumPickerActivity.this.removeSelfFromStack();
                    if (z) {
                        return;
                    }
                    PhotoAlbumPickerActivity.this.sendSelectedPhotos(map, arrayList, z2, i2);
                }

                @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void onCaptionChanged(CharSequence charSequence) {
                    EditTextEmoji editTextEmoji = PhotoAlbumPickerActivity.this.commentTextView;
                    PhotoAlbumPickerActivity.this.caption = charSequence;
                    editTextEmoji.setText(charSequence);
                }
            });
            photoPickerSearchActivity.setMaxSelectedPhotos(this.maxSelectedPhotos, this.allowOrder);
            presentFragment(photoPickerSearchActivity);
            return;
        }
        PhotoPickerActivity photoPickerActivity2 = new PhotoPickerActivity(0, albumEntry, map, arrayList, this.selectPhotoType, this.allowCaption, this.chatActivity, false);
        Editable text3 = this.commentTextView.getText();
        this.caption = text3;
        photoPickerActivity2.setCaption(text3);
        photoPickerActivity2.setDelegate(new PhotoPickerActivity.PhotoPickerActivityDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.10
            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public /* synthetic */ boolean canFinishFragment() {
                return PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$canFinishFragment(this);
            }

            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public /* synthetic */ void onOpenInPressed() {
                PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$onOpenInPressed(this);
            }

            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public void selectedPhotosChanged() {
            }

            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public void actionButtonPressed(boolean z, boolean z2, int i2, int i3) {
                PhotoAlbumPickerActivity.this.removeSelfFromStack();
                if (z) {
                    return;
                }
                PhotoAlbumPickerActivity.this.sendSelectedPhotos(map, arrayList, z2, i2);
            }

            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public void onCaptionChanged(CharSequence charSequence) {
                EditTextEmoji editTextEmoji = PhotoAlbumPickerActivity.this.commentTextView;
                PhotoAlbumPickerActivity.this.caption = charSequence;
                editTextEmoji.setText(charSequence);
            }
        });
        photoPickerActivity2.setMaxSelectedPhotos(this.maxSelectedPhotos, this.allowOrder);
        presentFragment(photoPickerActivity2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (PhotoAlbumPickerActivity.this.albumsSorted != null) {
                return (int) Math.ceil(PhotoAlbumPickerActivity.this.albumsSorted.size() / PhotoAlbumPickerActivity.this.columnsCount);
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            PhotoPickerAlbumsCell photoPickerAlbumsCell = new PhotoPickerAlbumsCell(this.mContext);
            photoPickerAlbumsCell.setDelegate(new PhotoPickerAlbumsCell.PhotoPickerAlbumsCellDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$ListAdapter$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Cells.PhotoPickerAlbumsCell.PhotoPickerAlbumsCellDelegate
                public final void didSelectAlbum(MediaController.AlbumEntry albumEntry) {
                    this.f$0.lambda$onCreateViewHolder$0(albumEntry);
                }
            });
            return new RecyclerListView.Holder(photoPickerAlbumsCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(MediaController.AlbumEntry albumEntry) {
            PhotoAlbumPickerActivity.this.openPhotoPicker(albumEntry, 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            PhotoPickerAlbumsCell photoPickerAlbumsCell = (PhotoPickerAlbumsCell) viewHolder.itemView;
            photoPickerAlbumsCell.setAlbumsCount(PhotoAlbumPickerActivity.this.columnsCount);
            for (int i2 = 0; i2 < PhotoAlbumPickerActivity.this.columnsCount; i2++) {
                int i3 = (PhotoAlbumPickerActivity.this.columnsCount * i) + i2;
                if (i3 < PhotoAlbumPickerActivity.this.albumsSorted.size()) {
                    photoPickerAlbumsCell.setAlbum(i2, (MediaController.AlbumEntry) PhotoAlbumPickerActivity.this.albumsSorted.get(i3));
                } else {
                    photoPickerAlbumsCell.setAlbum(i2, null);
                }
            }
            photoPickerAlbumsCell.requestLayout();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        View view = this.fragmentView;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_dialogBackground;
        arrayList.add(new ThemeDescription(view, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i2));
        ActionBar actionBar = this.actionBar;
        int i3 = ThemeDescription.FLAG_AB_ITEMSCOLOR;
        int i4 = Theme.key_dialogTextBlack;
        arrayList.add(new ThemeDescription(actionBar, i3, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_dialogButtonSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, null, new Drawable[]{Theme.chat_attachEmptyDrawable}, null, Theme.key_chat_attachEmptyImage));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, null, null, null, Theme.key_chat_attachPhotoBackground));
        return arrayList;
    }
}
