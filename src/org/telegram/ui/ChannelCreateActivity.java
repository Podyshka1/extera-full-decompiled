package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.AdminedChannelCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.LoadingCell;
import org.telegram.ui.Cells.RadioButtonCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextBlockCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CircularProgressDrawable;
import org.telegram.ui.Components.CrossfadeDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.EditTextEmoji;
import org.telegram.ui.Components.ImageUpdater;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkActionView;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.OutlineTextContainerView;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.TypefaceSpan;

/* JADX INFO: loaded from: classes.dex */
public class ChannelCreateActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate, ImageUpdater.ImageUpdaterDelegate {
    private ArrayList<AdminedChannelCell> adminedChannelCells;
    private TextInfoPrivacyCell adminedInfoCell;
    private LinearLayout adminnedChannelsLayout;
    private TLRPC.FileLocation avatar;
    private AnimatorSet avatarAnimation;
    private TLRPC.FileLocation avatarBig;
    private AvatarDrawable avatarDrawable;
    private RLottieImageView avatarEditor;
    private BackupImageView avatarImage;
    private View avatarOverlay;
    private RadialProgressView avatarProgressView;
    private RLottieDrawable cameraDrawable;
    private boolean canCreatePublic;
    private AlertDialog cancelDialog;
    private long chatId;
    private int checkReqId;
    private Runnable checkRunnable;
    private TextView checkTextView;
    private boolean createAfterUpload;
    private int currentStep;
    private OutlineTextContainerView descriptionFieldContainer;
    private EditTextBoldCursor descriptionTextView;
    private View doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    private ValueAnimator doneButtonDrawableAnimator;
    private boolean donePressed;
    private Integer doneRequestId;
    private EditTextBoldCursor editText;
    private Runnable enableDoneLoading;
    private Boolean forcePublic;
    private HeaderCell headerCell;
    private HeaderCell headerCell2;
    private TextView helpTextView;
    private ImageUpdater imageUpdater;
    private TLRPC.VideoSize inputEmojiMarkup;
    private TLRPC.InputFile inputPhoto;
    private TLRPC.InputFile inputVideo;
    private String inputVideoPath;
    private TLRPC.TL_chatInviteExported invite;
    private boolean isGroup;
    private boolean isPrivate;
    private String lastCheckName;
    private boolean lastNameAvailable;
    private LinearLayout linearLayout;
    private LinearLayout linearLayout2;
    private LinearLayout linkContainer;
    private LoadingCell loadingAdminedCell;
    private boolean loadingAdminedChannels;
    private boolean loadingInvite;
    private EditTextEmoji nameTextView;
    private String nameToSet;
    private Utilities.Callback2<BaseFragment, Long> onFinishListener;
    private LinkActionView permanentLinkView;
    private LinearLayout privateContainer;
    private LinearLayout publicContainer;
    private RadioButtonCell radioButtonCell1;
    private RadioButtonCell radioButtonCell2;
    private ShadowSectionCell sectionCell;
    private TextInfoPrivacyCell typeInfoCell;
    private double videoTimestamp;

    public ChannelCreateActivity(Bundle bundle) {
        super(bundle);
        this.adminedChannelCells = new ArrayList<>();
        this.canCreatePublic = true;
        this.enableDoneLoading = new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3();
            }
        };
        this.currentStep = bundle.getInt("step", 0);
        if (bundle.containsKey("forcePublic")) {
            this.forcePublic = Boolean.valueOf(bundle.getBoolean("forcePublic", false));
        }
        int i = this.currentStep;
        if (i == 0) {
            this.avatarDrawable = new AvatarDrawable();
            this.imageUpdater = new ImageUpdater(true, 1, true);
            TLRPC.TL_channels_checkUsername tL_channels_checkUsername = new TLRPC.TL_channels_checkUsername();
            tL_channels_checkUsername.username = "1";
            tL_channels_checkUsername.channel = new TLRPC.TL_inputChannelEmpty();
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_checkUsername, new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda2
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$new$1(tLObject, tL_error);
                }
            });
            return;
        }
        if (i == 1) {
            boolean z = bundle.getBoolean("canCreatePublic", true);
            this.canCreatePublic = z;
            this.isPrivate = !z;
            if (!z) {
                loadAdminedChannels();
            }
        }
        this.chatId = bundle.getLong("chat_id", 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(TLRPC.TL_error tL_error) {
        this.canCreatePublic = tL_error == null || !tL_error.text.equals("CHANNELS_ADMIN_PUBLIC_TOO_MUCH");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(tL_error);
            }
        });
    }

    public void setOnFinishListener(Utilities.Callback2<BaseFragment, Long> callback2) {
        this.onFinishListener = callback2;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatDidCreated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatDidFailCreate);
        if (this.currentStep == 1) {
            generateLink();
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.parentFragment = this;
            imageUpdater.setDelegate(this);
        }
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (this.doneRequestId != null) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.doneRequestId.intValue(), true);
            this.doneRequestId = null;
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatDidCreated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatDidFailCreate);
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.clear();
        }
        AndroidUtilities.removeAdjustResize(getParentActivity(), this.classGuid);
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onResume();
        }
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onResume();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onPause();
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onPause();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void dismissCurrentDialog() {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater == null || !imageUpdater.dismissCurrentDialog(this.visibleDialog)) {
            super.dismissCurrentDialog();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean dismissDialogOnPause(Dialog dialog) {
        ImageUpdater imageUpdater = this.imageUpdater;
        return (imageUpdater == null || imageUpdater.dismissDialogOnPause(dialog)) && super.dismissDialogOnPause(dialog);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onRequestPermissionsResultFragment(i, strArr, iArr);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji == null || !editTextEmoji.isPopupShowing()) {
            return true;
        }
        if (!z) {
            return false;
        }
        this.nameTextView.hidePopup(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDoneCancelDialog() {
        if (this.cancelDialog != null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2807R.string.StopLoadingTitle));
        builder.setMessage(LocaleController.getString(C2807R.string.StopLoading));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.WaitMore), null);
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Stop), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda19
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$showDoneCancelDialog$2(alertDialog, i);
            }
        });
        this.cancelDialog = builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDoneCancelDialog$2(AlertDialog alertDialog, int i) {
        this.donePressed = false;
        this.createAfterUpload = false;
        if (this.doneRequestId != null) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.doneRequestId.intValue(), true);
            this.doneRequestId = null;
        }
        updateDoneProgress(false);
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        updateDoneProgress(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDoneProgress(boolean z) {
        if (!z) {
            AndroidUtilities.cancelRunOnUIThread(this.enableDoneLoading);
        }
        if (this.doneButtonDrawable != null) {
            ValueAnimator valueAnimator = this.doneButtonDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.doneButtonDrawable.getProgress(), z ? 1.0f : 0.0f);
            this.doneButtonDrawableAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$updateDoneProgress$4(valueAnimator2);
                }
            });
            this.doneButtonDrawableAnimator.setDuration((long) (Math.abs(this.doneButtonDrawable.getProgress() - (z ? 1.0f : 0.0f)) * 200.0f));
            this.doneButtonDrawableAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.doneButtonDrawableAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDoneProgress$4(ValueAnimator valueAnimator) {
        this.doneButtonDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        this.doneButtonDrawable.invalidateSelf();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        final ChannelCreateActivity channelCreateActivity = this;
        EditTextEmoji editTextEmoji = channelCreateActivity.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
        channelCreateActivity.actionBar.setBackButtonImage(C2807R.drawable.ic_ab_back);
        channelCreateActivity.actionBar.setAllowOverlayTitle(true);
        channelCreateActivity.actionBar.setActionBarMenuOnItemClick(channelCreateActivity.new C34181());
        ActionBarMenu actionBarMenuCreateMenu = channelCreateActivity.actionBar.createMenu();
        Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.ic_ab_done).mutate();
        int i = Theme.key_actionBarDefaultIcon;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        CrossfadeDrawable crossfadeDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(i)));
        channelCreateActivity.doneButtonDrawable = crossfadeDrawable;
        channelCreateActivity.doneButton = actionBarMenuCreateMenu.addItemWithWidth(1, crossfadeDrawable, AndroidUtilities.dp(56.0f), LocaleController.getString(C2807R.string.Done));
        int i2 = channelCreateActivity.currentStep;
        if (i2 == 0) {
            channelCreateActivity.actionBar.setTitle(LocaleController.getString(C2807R.string.NewChannel));
            SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.ChannelCreateActivity.2
                private boolean ignoreLayout;

                @Override // android.widget.FrameLayout, android.view.View
                public void onMeasure(int i3, int i4) {
                    int size = View.MeasureSpec.getSize(i3);
                    int size2 = View.MeasureSpec.getSize(i4);
                    setMeasuredDimension(size, size2);
                    int paddingTop = size2 - getPaddingTop();
                    measureChildWithMargins(((BaseFragment) ChannelCreateActivity.this).actionBar, i3, 0, i4, 0);
                    if (measureKeyboardHeight() > AndroidUtilities.dp(20.0f)) {
                        this.ignoreLayout = true;
                        ChannelCreateActivity.this.nameTextView.hideEmojiView();
                        this.ignoreLayout = false;
                    }
                    int childCount = getChildCount();
                    for (int i5 = 0; i5 < childCount; i5++) {
                        View childAt = getChildAt(i5);
                        if (childAt != null && childAt.getVisibility() != 8 && childAt != ((BaseFragment) ChannelCreateActivity.this).actionBar) {
                            if (ChannelCreateActivity.this.nameTextView != null && ChannelCreateActivity.this.nameTextView.isPopupView(childAt)) {
                                if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                                    if (AndroidUtilities.isTablet()) {
                                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(AndroidUtilities.isTablet() ? 200.0f : 320.0f), (paddingTop - AndroidUtilities.statusBarHeight) + getPaddingTop()), TLObject.FLAG_30));
                                    } else {
                                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((paddingTop - AndroidUtilities.statusBarHeight) + getPaddingTop(), TLObject.FLAG_30));
                                    }
                                } else {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, TLObject.FLAG_30));
                                }
                            } else {
                                measureChildWithMargins(childAt, i3, 0, i4, 0);
                            }
                        }
                    }
                }

                /* JADX WARN: Removed duplicated region for block: B:28:0x0071  */
                /* JADX WARN: Removed duplicated region for block: B:36:0x008d  */
                /* JADX WARN: Removed duplicated region for block: B:39:0x00a1  */
                /* JADX WARN: Removed duplicated region for block: B:43:0x00b3  */
                /* JADX WARN: Removed duplicated region for block: B:45:0x00bd  */
                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                    int i7;
                    int i8;
                    int i9;
                    int i10;
                    int i11;
                    int paddingTop;
                    int measuredHeight;
                    int measuredHeight2;
                    int childCount = getChildCount();
                    int iMeasureKeyboardHeight = measureKeyboardHeight();
                    int emojiPadding = (iMeasureKeyboardHeight > AndroidUtilities.dp(20.0f) || AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) ? 0 : ChannelCreateActivity.this.nameTextView.getEmojiPadding();
                    setBottomClip(emojiPadding);
                    for (int i12 = 0; i12 < childCount; i12++) {
                        View childAt = getChildAt(i12);
                        if (childAt.getVisibility() != 8) {
                            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                            int measuredWidth = childAt.getMeasuredWidth();
                            int measuredHeight3 = childAt.getMeasuredHeight();
                            int i13 = layoutParams.gravity;
                            if (i13 == -1) {
                                i13 = 51;
                            }
                            int i14 = i13 & 112;
                            int i15 = i13 & 7;
                            if (i15 == 1) {
                                i7 = (((i5 - i3) - measuredWidth) / 2) + layoutParams.leftMargin;
                                i8 = layoutParams.rightMargin;
                            } else if (i15 == 5) {
                                i7 = i5 - measuredWidth;
                                i8 = layoutParams.rightMargin;
                            } else {
                                i9 = layoutParams.leftMargin;
                                if (i14 != 16) {
                                    i10 = ((((i6 - emojiPadding) - i4) - measuredHeight3) / 2) + layoutParams.topMargin;
                                    i11 = layoutParams.bottomMargin;
                                } else {
                                    if (i14 == 48) {
                                        paddingTop = layoutParams.topMargin + getPaddingTop();
                                    } else if (i14 == 80) {
                                        i10 = ((i6 - emojiPadding) - i4) - measuredHeight3;
                                        i11 = layoutParams.bottomMargin;
                                    } else {
                                        paddingTop = layoutParams.topMargin;
                                    }
                                    if (ChannelCreateActivity.this.nameTextView != null && ChannelCreateActivity.this.nameTextView.isPopupView(childAt)) {
                                        if (!AndroidUtilities.isTablet()) {
                                            measuredHeight = getMeasuredHeight();
                                            measuredHeight2 = childAt.getMeasuredHeight();
                                        } else {
                                            measuredHeight = getMeasuredHeight() + iMeasureKeyboardHeight;
                                            measuredHeight2 = childAt.getMeasuredHeight();
                                        }
                                        paddingTop = measuredHeight - measuredHeight2;
                                    }
                                    childAt.layout(i9, paddingTop, measuredWidth + i9, measuredHeight3 + paddingTop);
                                }
                                paddingTop = i10 - i11;
                                if (ChannelCreateActivity.this.nameTextView != null) {
                                    if (!AndroidUtilities.isTablet()) {
                                    }
                                    paddingTop = measuredHeight - measuredHeight2;
                                }
                                childAt.layout(i9, paddingTop, measuredWidth + i9, measuredHeight3 + paddingTop);
                            }
                            i9 = i7 - i8;
                            if (i14 != 16) {
                            }
                            paddingTop = i10 - i11;
                            if (ChannelCreateActivity.this.nameTextView != null) {
                            }
                            childAt.layout(i9, paddingTop, measuredWidth + i9, measuredHeight3 + paddingTop);
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
            sizeNotifierFrameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return ChannelCreateActivity.$r8$lambda$YoicgIBJAfSh8idBObzovhQu3_Q(view, motionEvent);
                }
            });
            channelCreateActivity.fragmentView = sizeNotifierFrameLayout;
            int i3 = Theme.key_windowBackgroundWhite;
            sizeNotifierFrameLayout.setTag(Integer.valueOf(i3));
            channelCreateActivity.fragmentView.setBackgroundColor(Theme.getColor(i3));
            LinearLayout linearLayout = new LinearLayout(context);
            channelCreateActivity.linearLayout = linearLayout;
            linearLayout.setOrientation(1);
            sizeNotifierFrameLayout.addView(channelCreateActivity.linearLayout, new FrameLayout.LayoutParams(-1, -2));
            FrameLayout frameLayout = new FrameLayout(context);
            channelCreateActivity.linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
            BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.ChannelCreateActivity.3
                @Override // android.view.View
                public void invalidate() {
                    if (ChannelCreateActivity.this.avatarOverlay != null) {
                        ChannelCreateActivity.this.avatarOverlay.invalidate();
                    }
                    super.invalidate();
                }

                @Override // android.view.View
                public void invalidate(int i4, int i5, int i6, int i7) {
                    if (ChannelCreateActivity.this.avatarOverlay != null) {
                        ChannelCreateActivity.this.avatarOverlay.invalidate();
                    }
                    super.invalidate(i4, i5, i6, i7);
                }
            };
            channelCreateActivity.avatarImage = backupImageView;
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(56.0f));
            channelCreateActivity.avatarDrawable.setInfo(5L, null, null);
            channelCreateActivity.avatarImage.setImageDrawable(channelCreateActivity.avatarDrawable);
            BackupImageView backupImageView2 = channelCreateActivity.avatarImage;
            boolean z = LocaleController.isRTL;
            frameLayout.addView(backupImageView2, LayoutHelper.createFrame(56, 56.0f, (z ? 5 : 3) | 48, z ? 0.0f : 24.0f, 20.0f, z ? 24.0f : 0.0f, 12.0f));
            final Paint paint = new Paint(1);
            paint.setColor(1426063360);
            View view = new View(context) { // from class: org.telegram.ui.ChannelCreateActivity.4
                @Override // android.view.View
                public void onDraw(Canvas canvas) {
                    if (ChannelCreateActivity.this.avatarImage == null || !ChannelCreateActivity.this.avatarImage.getImageReceiver().hasNotThumb()) {
                        return;
                    }
                    paint.setAlpha((int) (ChannelCreateActivity.this.avatarImage.getImageReceiver().getCurrentAlpha() * 85.0f * ChannelCreateActivity.this.avatarProgressView.getAlpha()));
                    canvas.drawRoundRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), ExteraConfig.getAvatarCorners(getMeasuredWidth(), true), ExteraConfig.getAvatarCorners(getMeasuredWidth(), true), paint);
                }
            };
            channelCreateActivity.avatarOverlay = view;
            view.setContentDescription(LocaleController.getString(C2807R.string.ChatSetPhotoOrVideo));
            View view2 = channelCreateActivity.avatarOverlay;
            boolean z2 = LocaleController.isRTL;
            frameLayout.addView(view2, LayoutHelper.createFrame(56, 56.0f, (z2 ? 5 : 3) | 48, z2 ? 0.0f : 24.0f, 20.0f, z2 ? 24.0f : 0.0f, 12.0f));
            channelCreateActivity.avatarOverlay.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$createView$8(view3);
                }
            });
            channelCreateActivity.cameraDrawable = new RLottieDrawable(C2807R.raw.camera, AndroidUtilities.dp(52.0f), AndroidUtilities.dp(52.0f), false, null);
            RLottieImageView rLottieImageView = new RLottieImageView(context) { // from class: org.telegram.ui.ChannelCreateActivity.5
                @Override // android.view.View
                public void invalidate(int i4, int i5, int i6, int i7) {
                    super.invalidate(i4, i5, i6, i7);
                    ChannelCreateActivity.this.avatarOverlay.invalidate();
                }

                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    ChannelCreateActivity.this.avatarOverlay.invalidate();
                }
            };
            channelCreateActivity.avatarEditor = rLottieImageView;
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
            channelCreateActivity.avatarEditor.setAnimation(channelCreateActivity.cameraDrawable);
            channelCreateActivity.avatarEditor.setEnabled(false);
            channelCreateActivity.avatarEditor.setClickable(false);
            channelCreateActivity.avatarEditor.setPadding(AndroidUtilities.dp(0.0f), 0, 0, AndroidUtilities.dp(1.0f));
            RLottieImageView rLottieImageView2 = channelCreateActivity.avatarEditor;
            boolean z3 = LocaleController.isRTL;
            frameLayout.addView(rLottieImageView2, LayoutHelper.createFrame(56, 56.0f, (z3 ? 5 : 3) | 48, z3 ? 0.0f : 24.0f, 20.0f, z3 ? 24.0f : 0.0f, 12.0f));
            RadialProgressView radialProgressView = new RadialProgressView(context) { // from class: org.telegram.ui.ChannelCreateActivity.6
                @Override // org.telegram.ui.Components.RadialProgressView, android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    ChannelCreateActivity.this.avatarOverlay.invalidate();
                }
            };
            channelCreateActivity.avatarProgressView = radialProgressView;
            radialProgressView.setSize(AndroidUtilities.dp(30.0f));
            channelCreateActivity.avatarProgressView.setProgressColor(-1);
            channelCreateActivity.avatarProgressView.setNoProgress(false);
            RadialProgressView radialProgressView2 = channelCreateActivity.avatarProgressView;
            boolean z4 = LocaleController.isRTL;
            frameLayout.addView(radialProgressView2, LayoutHelper.createFrame(56, 56.0f, (z4 ? 5 : 3) | 48, z4 ? 0.0f : 24.0f, 20.0f, z4 ? 24.0f : 0.0f, 12.0f));
            channelCreateActivity.showAvatarProgress(false, false);
            EditTextEmoji editTextEmoji2 = new EditTextEmoji(context, sizeNotifierFrameLayout, this, 0, false);
            channelCreateActivity = this;
            channelCreateActivity.nameTextView = editTextEmoji2;
            editTextEmoji2.setHint(LocaleController.getString(C2807R.string.EnterChannelName));
            String str = channelCreateActivity.nameToSet;
            if (str != null) {
                channelCreateActivity.nameTextView.setText(str);
                channelCreateActivity.nameToSet = null;
            }
            channelCreateActivity.nameTextView.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(100)});
            channelCreateActivity.nameTextView.getEditText().setSingleLine(true);
            channelCreateActivity.nameTextView.getEditText().setImeOptions(5);
            channelCreateActivity.nameTextView.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda7
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                    return this.f$0.lambda$createView$9(textView, i4, keyEvent);
                }
            });
            EditTextEmoji editTextEmoji3 = channelCreateActivity.nameTextView;
            boolean z5 = LocaleController.isRTL;
            frameLayout.addView(editTextEmoji3, LayoutHelper.createFrame(-1, -2.0f, 16, z5 ? 24.0f : 96.0f, 0.0f, z5 ? 96.0f : 24.0f, 0.0f));
            OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
            channelCreateActivity.descriptionFieldContainer = outlineTextContainerView;
            outlineTextContainerView.setText(LocaleController.getString(C2807R.string.DescriptionPlaceholder));
            channelCreateActivity.linearLayout.addView(channelCreateActivity.descriptionFieldContainer, LayoutHelper.createLinear(-1, -2, 1, 24, 14, 24, 0));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
            channelCreateActivity.descriptionTextView = editTextBoldCursor;
            editTextBoldCursor.setTextSize(1, 18.0f);
            EditTextBoldCursor editTextBoldCursor2 = channelCreateActivity.descriptionTextView;
            int i4 = Theme.key_windowBackgroundWhiteBlackText;
            editTextBoldCursor2.setTextColor(Theme.getColor(i4));
            channelCreateActivity.descriptionTextView.setBackground(null);
            int iDp = AndroidUtilities.dp(16.0f);
            channelCreateActivity.descriptionTextView.setPadding(iDp, iDp, iDp, iDp);
            channelCreateActivity.descriptionTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            channelCreateActivity.descriptionTextView.setInputType(180225);
            channelCreateActivity.descriptionTextView.setImeOptions(6);
            channelCreateActivity.descriptionTextView.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(120)});
            channelCreateActivity.descriptionTextView.setCursorColor(Theme.getColor(i4));
            channelCreateActivity.descriptionTextView.setCursorSize(AndroidUtilities.dp(20.0f));
            channelCreateActivity.descriptionTextView.setCursorWidth(1.5f);
            channelCreateActivity.descriptionTextView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda8
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view3, boolean z6) {
                    this.f$0.lambda$createView$10(view3, z6);
                }
            });
            channelCreateActivity.descriptionFieldContainer.addView(channelCreateActivity.descriptionTextView, LayoutHelper.createFrame(-1, -2.0f));
            channelCreateActivity.descriptionFieldContainer.attachEditText(channelCreateActivity.descriptionTextView);
            channelCreateActivity.descriptionTextView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda9
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                    return this.f$0.lambda$createView$11(textView, i5, keyEvent);
                }
            });
            channelCreateActivity.descriptionTextView.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ChannelCreateActivity.7
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                }
            });
            TextView textView = new TextView(context);
            channelCreateActivity.helpTextView = textView;
            textView.setTextSize(1, 15.0f);
            channelCreateActivity.helpTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText8));
            channelCreateActivity.helpTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            channelCreateActivity.helpTextView.setText(LocaleController.getString(C2807R.string.DescriptionInfo));
            channelCreateActivity.linearLayout.addView(channelCreateActivity.helpTextView, LayoutHelper.createLinear(-2, -2, LocaleController.isRTL ? 5 : 3, 24, 10, 24, 20));
        } else if (i2 == 1) {
            ScrollView scrollView = new ScrollView(context);
            channelCreateActivity.fragmentView = scrollView;
            scrollView.setFillViewport(true);
            LinearLayout linearLayout2 = new LinearLayout(context);
            channelCreateActivity.linearLayout = linearLayout2;
            linearLayout2.setOrientation(1);
            scrollView.addView(channelCreateActivity.linearLayout, new FrameLayout.LayoutParams(-1, -2));
            TLRPC.Chat chat = channelCreateActivity.getMessagesController().getChat(Long.valueOf(channelCreateActivity.chatId));
            boolean z6 = chat != null && (!ChatObject.isChannel(chat) || ChatObject.isMegagroup(chat));
            channelCreateActivity.isGroup = z6;
            channelCreateActivity.actionBar.setTitle(LocaleController.getString(z6 ? C2807R.string.GroupSettingsTitle : C2807R.string.ChannelSettingsTitle));
            View view3 = channelCreateActivity.fragmentView;
            int i5 = Theme.key_windowBackgroundGray;
            view3.setTag(Integer.valueOf(i5));
            channelCreateActivity.fragmentView.setBackgroundColor(Theme.getColor(i5));
            HeaderCell headerCell = new HeaderCell(context, 23);
            channelCreateActivity.headerCell2 = headerCell;
            headerCell.setHeight(46);
            HeaderCell headerCell2 = channelCreateActivity.headerCell2;
            int i6 = Theme.key_windowBackgroundWhite;
            headerCell2.setBackgroundColor(Theme.getColor(i6));
            channelCreateActivity.headerCell2.setText(LocaleController.getString(channelCreateActivity.isGroup ? C2807R.string.GroupTypeHeader : C2807R.string.ChannelTypeHeader));
            channelCreateActivity.linearLayout.addView(channelCreateActivity.headerCell2);
            LinearLayout linearLayout3 = new LinearLayout(context);
            channelCreateActivity.linearLayout2 = linearLayout3;
            linearLayout3.setOrientation(1);
            channelCreateActivity.linearLayout2.setBackgroundColor(Theme.getColor(i6));
            channelCreateActivity.linearLayout.addView(channelCreateActivity.linearLayout2, LayoutHelper.createLinear(-1, -2));
            RadioButtonCell radioButtonCell = new RadioButtonCell(context);
            channelCreateActivity.radioButtonCell1 = radioButtonCell;
            radioButtonCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            Boolean bool = channelCreateActivity.forcePublic;
            if (bool != null && !bool.booleanValue()) {
                channelCreateActivity.isPrivate = true;
            }
            boolean z7 = channelCreateActivity.isGroup;
            RadioButtonCell radioButtonCell2 = channelCreateActivity.radioButtonCell1;
            if (z7) {
                radioButtonCell2.setTextAndValue(LocaleController.getString(C2807R.string.MegaPublic), LocaleController.getString(C2807R.string.MegaPublicInfo), false, !channelCreateActivity.isPrivate);
            } else {
                radioButtonCell2.setTextAndValue(LocaleController.getString(C2807R.string.ChannelPublic), LocaleController.getString(C2807R.string.ChannelPublicInfo), false, !channelCreateActivity.isPrivate);
            }
            channelCreateActivity.radioButtonCell1.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    this.f$0.lambda$createView$12(view4);
                }
            });
            Boolean bool2 = channelCreateActivity.forcePublic;
            if (bool2 == null || bool2.booleanValue()) {
                channelCreateActivity.linearLayout2.addView(channelCreateActivity.radioButtonCell1, LayoutHelper.createLinear(-1, -2));
            }
            RadioButtonCell radioButtonCell3 = new RadioButtonCell(context);
            channelCreateActivity.radioButtonCell2 = radioButtonCell3;
            radioButtonCell3.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            Boolean bool3 = channelCreateActivity.forcePublic;
            if (bool3 != null && bool3.booleanValue()) {
                channelCreateActivity.isPrivate = false;
            }
            boolean z8 = channelCreateActivity.isGroup;
            RadioButtonCell radioButtonCell4 = channelCreateActivity.radioButtonCell2;
            if (z8) {
                radioButtonCell4.setTextAndValue(LocaleController.getString(C2807R.string.MegaPrivate), LocaleController.getString(C2807R.string.MegaPrivateInfo), false, channelCreateActivity.isPrivate);
            } else {
                radioButtonCell4.setTextAndValue(LocaleController.getString(C2807R.string.ChannelPrivate), LocaleController.getString(C2807R.string.ChannelPrivateInfo), false, channelCreateActivity.isPrivate);
            }
            channelCreateActivity.radioButtonCell2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    this.f$0.lambda$createView$13(view4);
                }
            });
            Boolean bool4 = channelCreateActivity.forcePublic;
            if (bool4 == null || !bool4.booleanValue()) {
                channelCreateActivity.linearLayout2.addView(channelCreateActivity.radioButtonCell2, LayoutHelper.createLinear(-1, -2));
            }
            ShadowSectionCell shadowSectionCell = new ShadowSectionCell(context);
            channelCreateActivity.sectionCell = shadowSectionCell;
            channelCreateActivity.linearLayout.addView(shadowSectionCell, LayoutHelper.createLinear(-1, -2));
            LinearLayout linearLayout4 = new LinearLayout(context);
            channelCreateActivity.linkContainer = linearLayout4;
            linearLayout4.setOrientation(1);
            channelCreateActivity.linkContainer.setBackgroundColor(Theme.getColor(i6));
            channelCreateActivity.linearLayout.addView(channelCreateActivity.linkContainer, LayoutHelper.createLinear(-1, -2));
            HeaderCell headerCell3 = new HeaderCell(context);
            channelCreateActivity.headerCell = headerCell3;
            channelCreateActivity.linkContainer.addView(headerCell3);
            LinearLayout linearLayout5 = new LinearLayout(context);
            channelCreateActivity.publicContainer = linearLayout5;
            linearLayout5.setOrientation(0);
            channelCreateActivity.linkContainer.addView(channelCreateActivity.publicContainer, LayoutHelper.createLinear(-1, 36, 21.0f, 7.0f, 21.0f, 0.0f));
            EditTextBoldCursor editTextBoldCursor3 = new EditTextBoldCursor(context);
            channelCreateActivity.editText = editTextBoldCursor3;
            editTextBoldCursor3.setText(MessagesController.getInstance(channelCreateActivity.currentAccount).linkPrefix + "/");
            channelCreateActivity.editText.setTextSize(1, 18.0f);
            EditTextBoldCursor editTextBoldCursor4 = channelCreateActivity.editText;
            int i7 = Theme.key_windowBackgroundWhiteHintText;
            editTextBoldCursor4.setHintTextColor(Theme.getColor(i7));
            EditTextBoldCursor editTextBoldCursor5 = channelCreateActivity.editText;
            int i8 = Theme.key_windowBackgroundWhiteBlackText;
            editTextBoldCursor5.setTextColor(Theme.getColor(i8));
            channelCreateActivity.editText.setMaxLines(1);
            channelCreateActivity.editText.setLines(1);
            channelCreateActivity.editText.setEnabled(false);
            channelCreateActivity.editText.setBackground(null);
            channelCreateActivity.editText.setPadding(0, 0, 0, 0);
            channelCreateActivity.editText.setSingleLine(true);
            channelCreateActivity.editText.setInputType(163840);
            channelCreateActivity.editText.setImeOptions(6);
            channelCreateActivity.publicContainer.addView(channelCreateActivity.editText, LayoutHelper.createLinear(-2, 36));
            EditTextBoldCursor editTextBoldCursor6 = new EditTextBoldCursor(context);
            channelCreateActivity.descriptionTextView = editTextBoldCursor6;
            editTextBoldCursor6.setTextSize(1, 18.0f);
            channelCreateActivity.descriptionTextView.setHintTextColor(Theme.getColor(i7));
            channelCreateActivity.descriptionTextView.setTextColor(Theme.getColor(i8));
            channelCreateActivity.descriptionTextView.setMaxLines(1);
            channelCreateActivity.descriptionTextView.setLines(1);
            channelCreateActivity.descriptionTextView.setBackground(null);
            channelCreateActivity.descriptionTextView.setPadding(0, 0, 0, 0);
            channelCreateActivity.descriptionTextView.setSingleLine(true);
            channelCreateActivity.descriptionTextView.setInputType(163872);
            channelCreateActivity.descriptionTextView.setImeOptions(6);
            channelCreateActivity.descriptionTextView.setHint(LocaleController.getString(C2807R.string.ChannelUsernamePlaceholder));
            channelCreateActivity.descriptionTextView.setCursorColor(Theme.getColor(i8));
            channelCreateActivity.descriptionTextView.setCursorSize(AndroidUtilities.dp(20.0f));
            channelCreateActivity.descriptionTextView.setCursorWidth(1.5f);
            channelCreateActivity.publicContainer.addView(channelCreateActivity.descriptionTextView, LayoutHelper.createLinear(-1, 36));
            channelCreateActivity.descriptionTextView.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ChannelCreateActivity.8
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
                    ChannelCreateActivity channelCreateActivity2 = ChannelCreateActivity.this;
                    channelCreateActivity2.checkUserName(channelCreateActivity2.descriptionTextView.getText().toString());
                }
            });
            LinearLayout linearLayout6 = new LinearLayout(context);
            channelCreateActivity.privateContainer = linearLayout6;
            linearLayout6.setOrientation(1);
            channelCreateActivity.linkContainer.addView(channelCreateActivity.privateContainer, LayoutHelper.createLinear(-1, -2));
            LinkActionView linkActionView = new LinkActionView(context, channelCreateActivity, null, channelCreateActivity.chatId, true, ChatObject.isChannel(channelCreateActivity.getMessagesController().getChat(Long.valueOf(channelCreateActivity.chatId))));
            channelCreateActivity.permanentLinkView = linkActionView;
            linkActionView.hideRevokeOption(true);
            channelCreateActivity.permanentLinkView.setUsers(0, null);
            channelCreateActivity.privateContainer.addView(channelCreateActivity.permanentLinkView);
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context) { // from class: org.telegram.ui.ChannelCreateActivity.9
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r7v0, types: [org.telegram.ui.ChannelCreateActivity$9, org.telegram.ui.Components.LinkSpanDrawable$LinksTextView] */
                /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.CharSequence] */
                /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.CharSequence] */
                /* JADX WARN: Type inference failed for: r8v3, types: [android.text.SpannableStringBuilder] */
                @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView, android.widget.TextView
                public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                    if (charSequence != 0) {
                        charSequence = AndroidUtilities.replaceTags(charSequence.toString());
                        int iIndexOf = charSequence.toString().indexOf(10);
                        if (iIndexOf >= 0) {
                            charSequence.replace(iIndexOf, iIndexOf + 1, " ");
                            charSequence.setSpan(new ForegroundColorSpan(ChannelCreateActivity.this.getThemedColor(Theme.key_text_RedRegular)), 0, iIndexOf, 33);
                        }
                        TypefaceSpan[] typefaceSpanArr = (TypefaceSpan[]) charSequence.getSpans(0, charSequence.length(), TypefaceSpan.class);
                        final String string = (ChannelCreateActivity.this.descriptionTextView == null || ChannelCreateActivity.this.descriptionTextView.getText() == null) ? _UrlKt.FRAGMENT_ENCODE_SET : ChannelCreateActivity.this.descriptionTextView.getText().toString();
                        for (int i9 = 0; i9 < typefaceSpanArr.length; i9++) {
                            charSequence.setSpan(new ClickableSpan() { // from class: org.telegram.ui.ChannelCreateActivity.9.1
                                @Override // android.text.style.ClickableSpan
                                public void onClick(View view4) {
                                    Browser.openUrl(getContext(), "https://fragment.com/username/" + string);
                                }

                                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                                public void updateDrawState(TextPaint textPaint) {
                                    super.updateDrawState(textPaint);
                                    textPaint.setUnderlineText(false);
                                }
                            }, charSequence.getSpanStart(typefaceSpanArr[i9]), charSequence.getSpanEnd(typefaceSpanArr[i9]), 33);
                            charSequence.removeSpan(typefaceSpanArr[i9]);
                        }
                    }
                    super.setText(charSequence, bufferType);
                }
            };
            channelCreateActivity.checkTextView = linksTextView;
            linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
            channelCreateActivity.checkTextView.setHighlightColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkSelection));
            channelCreateActivity.checkTextView.setTextSize(1, 15.0f);
            channelCreateActivity.checkTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            channelCreateActivity.checkTextView.setVisibility(8);
            channelCreateActivity.checkTextView.setPadding(AndroidUtilities.dp(3.0f), 0, AndroidUtilities.dp(3.0f), 0);
            channelCreateActivity.linkContainer.addView(channelCreateActivity.checkTextView, LayoutHelper.createLinear(-2, -2, LocaleController.isRTL ? 5 : 3, 18, 3, 18, 7));
            TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context);
            channelCreateActivity.typeInfoCell = textInfoPrivacyCell;
            int i9 = C2807R.drawable.greydivider_bottom;
            int i10 = Theme.key_windowBackgroundGrayShadow;
            textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(context, i9, i10));
            channelCreateActivity.linearLayout.addView(channelCreateActivity.typeInfoCell, LayoutHelper.createLinear(-1, -2));
            LoadingCell loadingCell = new LoadingCell(context);
            channelCreateActivity.loadingAdminedCell = loadingCell;
            channelCreateActivity.linearLayout.addView(loadingCell, LayoutHelper.createLinear(-1, -2));
            LinearLayout linearLayout7 = new LinearLayout(context);
            channelCreateActivity.adminnedChannelsLayout = linearLayout7;
            linearLayout7.setBackgroundColor(Theme.getColor(i6));
            channelCreateActivity.adminnedChannelsLayout.setOrientation(1);
            channelCreateActivity.linearLayout.addView(channelCreateActivity.adminnedChannelsLayout, LayoutHelper.createLinear(-1, -2));
            TextInfoPrivacyCell textInfoPrivacyCell2 = new TextInfoPrivacyCell(context);
            channelCreateActivity.adminedInfoCell = textInfoPrivacyCell2;
            textInfoPrivacyCell2.setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2807R.drawable.greydivider_bottom, i10));
            channelCreateActivity.linearLayout.addView(channelCreateActivity.adminedInfoCell, LayoutHelper.createLinear(-1, -2));
            channelCreateActivity.updatePrivatePublic();
        }
        return channelCreateActivity.fragmentView;
    }

    /* JADX INFO: renamed from: org.telegram.ui.ChannelCreateActivity$1 */
    /* JADX INFO: loaded from: classes6.dex */
    public class C34181 extends ActionBar.ActionBarMenuOnItemClick {
        public C34181() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                boolean z = ChannelCreateActivity.this.donePressed;
                ChannelCreateActivity channelCreateActivity = ChannelCreateActivity.this;
                if (z) {
                    channelCreateActivity.showDoneCancelDialog();
                    return;
                } else {
                    channelCreateActivity.finishFragment();
                    return;
                }
            }
            if (i == 1) {
                int i2 = ChannelCreateActivity.this.currentStep;
                ChannelCreateActivity channelCreateActivity2 = ChannelCreateActivity.this;
                if (i2 == 0) {
                    if (channelCreateActivity2.getParentActivity() == null) {
                        return;
                    }
                    boolean z2 = ChannelCreateActivity.this.donePressed;
                    ChannelCreateActivity channelCreateActivity3 = ChannelCreateActivity.this;
                    if (z2) {
                        channelCreateActivity3.showDoneCancelDialog();
                        return;
                    }
                    int length = channelCreateActivity3.nameTextView.length();
                    ChannelCreateActivity channelCreateActivity4 = ChannelCreateActivity.this;
                    if (length == 0) {
                        channelCreateActivity4.nameTextView.performHapticFeedback(3, 2);
                        AndroidUtilities.shakeView(ChannelCreateActivity.this.nameTextView);
                        return;
                    }
                    channelCreateActivity4.donePressed = true;
                    AndroidUtilities.runOnUIThread(ChannelCreateActivity.this.enableDoneLoading, 200L);
                    boolean zIsUploadingImage = ChannelCreateActivity.this.imageUpdater.isUploadingImage();
                    ChannelCreateActivity channelCreateActivity5 = ChannelCreateActivity.this;
                    if (!zIsUploadingImage) {
                        channelCreateActivity5.doneRequestId = Integer.valueOf(MessagesController.getInstance(((BaseFragment) channelCreateActivity5).currentAccount).createChat(ChannelCreateActivity.this.nameTextView.getText().toString(), new ArrayList<>(), ChannelCreateActivity.this.descriptionTextView.getText().toString(), 2, false, null, null, -1, ChannelCreateActivity.this));
                        return;
                    } else {
                        channelCreateActivity5.createAfterUpload = true;
                        return;
                    }
                }
                if (channelCreateActivity2.currentStep == 1) {
                    boolean z3 = ChannelCreateActivity.this.isPrivate;
                    ChannelCreateActivity channelCreateActivity6 = ChannelCreateActivity.this;
                    if (!z3) {
                        int length2 = channelCreateActivity6.descriptionTextView.length();
                        ChannelCreateActivity channelCreateActivity7 = ChannelCreateActivity.this;
                        if (length2 == 0) {
                            AlertDialog.Builder builder = new AlertDialog.Builder(channelCreateActivity7.getParentActivity());
                            builder.setTitle(LocaleController.getString(C2807R.string.ChannelPublicEmptyUsernameTitle));
                            builder.setMessage(LocaleController.getString(C2807R.string.ChannelPublicEmptyUsername));
                            builder.setPositiveButton(LocaleController.getString(C2807R.string.Close), null);
                            ChannelCreateActivity.this.showDialog(builder.create());
                            return;
                        }
                        boolean z4 = channelCreateActivity7.lastNameAvailable;
                        ChannelCreateActivity channelCreateActivity8 = ChannelCreateActivity.this;
                        if (!z4) {
                            channelCreateActivity8.checkTextView.performHapticFeedback(3, 2);
                            AndroidUtilities.shakeView(ChannelCreateActivity.this.checkTextView);
                            return;
                        } else {
                            AndroidUtilities.runOnUIThread(channelCreateActivity8.enableDoneLoading, 200L);
                            MessagesController messagesController = MessagesController.getInstance(((BaseFragment) ChannelCreateActivity.this).currentAccount);
                            ChannelCreateActivity channelCreateActivity9 = ChannelCreateActivity.this;
                            messagesController.updateChannelUserName(channelCreateActivity9, channelCreateActivity9.chatId, ChannelCreateActivity.this.lastCheckName, new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onItemClick$0();
                                }
                            }, new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$1$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onItemClick$1();
                                }
                            });
                        }
                    } else if (channelCreateActivity6.onFinishListener != null) {
                        Utilities.Callback2 callback2 = ChannelCreateActivity.this.onFinishListener;
                        ChannelCreateActivity channelCreateActivity10 = ChannelCreateActivity.this;
                        callback2.run(channelCreateActivity10, Long.valueOf(channelCreateActivity10.chatId));
                    }
                    if (ChannelCreateActivity.this.onFinishListener == null) {
                        Bundle bundle = new Bundle();
                        bundle.putInt("step", 2);
                        bundle.putLong("chatId", ChannelCreateActivity.this.chatId);
                        bundle.putInt("chatType", 2);
                        ChannelCreateActivity.this.presentFragment(new GroupCreateActivity(bundle), true);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0() {
            ChannelCreateActivity.this.updateDoneProgress(false);
            if (ChannelCreateActivity.this.onFinishListener != null) {
                Utilities.Callback2 callback2 = ChannelCreateActivity.this.onFinishListener;
                ChannelCreateActivity channelCreateActivity = ChannelCreateActivity.this;
                callback2.run(channelCreateActivity, Long.valueOf(channelCreateActivity.chatId));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1() {
            ChannelCreateActivity.this.updateDoneProgress(false);
            if (ChannelCreateActivity.this.onFinishListener != null) {
                Utilities.Callback2 callback2 = ChannelCreateActivity.this.onFinishListener;
                ChannelCreateActivity channelCreateActivity = ChannelCreateActivity.this;
                callback2.run(channelCreateActivity, Long.valueOf(channelCreateActivity.chatId));
            }
        }
    }

    public static /* synthetic */ boolean $r8$lambda$YoicgIBJAfSh8idBObzovhQu3_Q(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(View view) {
        this.imageUpdater.openMenu(this.avatar != null, new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$6();
            }
        }, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda18
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$createView$7(dialogInterface);
            }
        }, 0);
        this.cameraDrawable.setCurrentFrame(0);
        this.cameraDrawable.setCustomEndFrame(43);
        this.avatarEditor.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6() {
        this.avatar = null;
        this.avatarBig = null;
        this.inputPhoto = null;
        this.inputVideo = null;
        this.inputVideoPath = null;
        this.inputEmojiMarkup = null;
        this.videoTimestamp = 0.0d;
        showAvatarProgress(false, true);
        this.avatarImage.setImage((ImageLocation) null, (String) null, this.avatarDrawable, (Object) null);
        this.avatarEditor.setAnimation(this.cameraDrawable);
        this.cameraDrawable.setCurrentFrame(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(DialogInterface dialogInterface) {
        boolean zIsUploadingImage = this.imageUpdater.isUploadingImage();
        RLottieDrawable rLottieDrawable = this.cameraDrawable;
        if (!zIsUploadingImage) {
            rLottieDrawable.setCustomEndFrame(86);
            this.avatarEditor.playAnimation();
        } else {
            rLottieDrawable.setCurrentFrame(0, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$9(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5 || TextUtils.isEmpty(this.nameTextView.getEditText().getText())) {
            return false;
        }
        this.descriptionTextView.requestFocus();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(View view, boolean z) {
        this.descriptionFieldContainer.animateSelection(z ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$11(TextView textView, int i, KeyEvent keyEvent) {
        View view;
        if (i != 6 || (view = this.doneButton) == null) {
            return false;
        }
        view.performClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(View view) {
        if (!this.canCreatePublic) {
            showPremiumIncreaseLimitDialog();
        } else if (this.isPrivate) {
            this.isPrivate = false;
            updatePrivatePublic();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(View view) {
        if (this.isPrivate) {
            return;
        }
        this.isPrivate = true;
        updatePrivatePublic();
    }

    private void generateLink() {
        if (this.loadingInvite || this.invite != null) {
            return;
        }
        TLRPC.ChatFull chatFull = getMessagesController().getChatFull(this.chatId);
        if (chatFull != null) {
            this.invite = chatFull.exported_invite;
        }
        if (this.invite != null) {
            return;
        }
        this.loadingInvite = true;
        TLRPC.TL_messages_getExportedChatInvites tL_messages_getExportedChatInvites = new TLRPC.TL_messages_getExportedChatInvites();
        tL_messages_getExportedChatInvites.peer = getMessagesController().getInputPeer(-this.chatId);
        tL_messages_getExportedChatInvites.admin_id = getMessagesController().getInputUser(getUserConfig().getCurrentUser());
        tL_messages_getExportedChatInvites.limit = 1;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getExportedChatInvites, new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$generateLink$15(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$15(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$generateLink$14(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$14(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            this.invite = (TLRPC.TL_chatInviteExported) ((TLRPC.TL_messages_exportedChatInvites) tLObject).invites.get(0);
        }
        this.loadingInvite = false;
        LinkActionView linkActionView = this.permanentLinkView;
        TLRPC.TL_chatInviteExported tL_chatInviteExported = this.invite;
        linkActionView.setLink(tL_chatInviteExported != null ? tL_chatInviteExported.link : null);
    }

    private void updatePrivatePublic() {
        if (this.sectionCell == null) {
            return;
        }
        int i = 8;
        if (!this.isPrivate && !this.canCreatePublic) {
            this.typeInfoCell.setText(LocaleController.getString(C2807R.string.ChangePublicLimitReached));
            TextInfoPrivacyCell textInfoPrivacyCell = this.typeInfoCell;
            int i2 = Theme.key_text_RedRegular;
            textInfoPrivacyCell.setTag(Integer.valueOf(i2));
            this.typeInfoCell.setTextColor(Theme.getColor(i2));
            this.linkContainer.setVisibility(8);
            this.sectionCell.setVisibility(8);
            if (this.loadingAdminedChannels) {
                this.loadingAdminedCell.setVisibility(0);
                this.adminnedChannelsLayout.setVisibility(8);
                TextInfoPrivacyCell textInfoPrivacyCell2 = this.typeInfoCell;
                textInfoPrivacyCell2.setBackgroundDrawable(Theme.getThemedDrawableByKey(textInfoPrivacyCell2.getContext(), C2807R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                this.adminedInfoCell.setVisibility(8);
            } else {
                TextInfoPrivacyCell textInfoPrivacyCell3 = this.typeInfoCell;
                textInfoPrivacyCell3.setBackgroundDrawable(Theme.getThemedDrawableByKey(textInfoPrivacyCell3.getContext(), C2807R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                this.loadingAdminedCell.setVisibility(8);
                this.adminnedChannelsLayout.setVisibility(0);
                this.adminedInfoCell.setVisibility(0);
            }
        } else {
            TextInfoPrivacyCell textInfoPrivacyCell4 = this.typeInfoCell;
            int i3 = Theme.key_windowBackgroundWhiteGrayText4;
            textInfoPrivacyCell4.setTag(Integer.valueOf(i3));
            this.typeInfoCell.setTextColor(Theme.getColor(i3));
            this.sectionCell.setVisibility(0);
            this.adminedInfoCell.setVisibility(8);
            this.adminnedChannelsLayout.setVisibility(8);
            TextInfoPrivacyCell textInfoPrivacyCell5 = this.typeInfoCell;
            textInfoPrivacyCell5.setBackgroundDrawable(Theme.getThemedDrawableByKey(textInfoPrivacyCell5.getContext(), C2807R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
            this.linkContainer.setVisibility(0);
            this.loadingAdminedCell.setVisibility(8);
            boolean z = this.isGroup;
            TextInfoPrivacyCell textInfoPrivacyCell6 = this.typeInfoCell;
            if (z) {
                textInfoPrivacyCell6.setText(LocaleController.getString(this.isPrivate ? C2807R.string.MegaPrivateLinkHelp : C2807R.string.MegaUsernameHelp));
                this.headerCell.setText(LocaleController.getString(this.isPrivate ? C2807R.string.ChannelInviteLinkTitle : C2807R.string.ChannelLinkTitle));
            } else {
                textInfoPrivacyCell6.setText(LocaleController.getString(this.isPrivate ? C2807R.string.ChannelPrivateLinkHelp : C2807R.string.ChannelUsernameHelp));
                this.headerCell.setText(LocaleController.getString(this.isPrivate ? C2807R.string.ChannelInviteLinkTitle : C2807R.string.ChannelLinkTitle));
            }
            this.publicContainer.setVisibility(this.isPrivate ? 8 : 0);
            this.privateContainer.setVisibility(this.isPrivate ? 0 : 8);
            this.linkContainer.setPadding(0, 0, 0, this.isPrivate ? 0 : AndroidUtilities.dp(7.0f));
            LinkActionView linkActionView = this.permanentLinkView;
            TLRPC.TL_chatInviteExported tL_chatInviteExported = this.invite;
            linkActionView.setLink(tL_chatInviteExported != null ? tL_chatInviteExported.link : null);
            TextView textView = this.checkTextView;
            if (!this.isPrivate && textView.length() != 0) {
                i = 0;
            }
            textView.setVisibility(i);
        }
        this.radioButtonCell1.setChecked(!this.isPrivate, true);
        this.radioButtonCell2.setChecked(this.isPrivate, true);
        this.descriptionTextView.clearFocus();
        AndroidUtilities.hideKeyboard(this.descriptionTextView);
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void onUploadProgressChanged(float f) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(f);
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didStartUpload(boolean z, boolean z2) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(0.0f);
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didUploadPhoto(final TLRPC.InputFile inputFile, final TLRPC.InputFile inputFile2, final double d, final String str, final TLRPC.PhotoSize photoSize, final TLRPC.PhotoSize photoSize2, boolean z, final TLRPC.VideoSize videoSize) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didUploadPhoto$16(inputFile, inputFile2, videoSize, str, d, photoSize2, photoSize);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$16(TLRPC.InputFile inputFile, TLRPC.InputFile inputFile2, TLRPC.VideoSize videoSize, String str, double d, TLRPC.PhotoSize photoSize, TLRPC.PhotoSize photoSize2) {
        if (inputFile != null || inputFile2 != null) {
            this.inputPhoto = inputFile;
            this.inputVideo = inputFile2;
            this.inputEmojiMarkup = videoSize;
            this.inputVideoPath = str;
            this.videoTimestamp = d;
            if (this.createAfterUpload) {
                AlertDialog alertDialog = this.cancelDialog;
                if (alertDialog != null) {
                    try {
                        alertDialog.dismiss();
                        this.cancelDialog = null;
                    } catch (Exception e) {
                        FileLog.m1040e(e);
                    }
                }
                updateDoneProgress(false);
                this.donePressed = false;
                this.doneButton.performClick();
            }
            showAvatarProgress(false, true);
            this.avatarEditor.setImageDrawable(null);
            return;
        }
        TLRPC.FileLocation fileLocation = photoSize.location;
        this.avatar = fileLocation;
        this.avatarBig = photoSize2.location;
        this.avatarImage.setImage(ImageLocation.getForLocal(fileLocation), "50_50", this.avatarDrawable, (Object) null);
        showAvatarProgress(true, false);
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public String getInitialSearchString() {
        return this.nameTextView.getText().toString();
    }

    private void showAvatarProgress(final boolean z, boolean z2) {
        if (this.avatarEditor == null) {
            return;
        }
        AnimatorSet animatorSet = this.avatarAnimation;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.avatarAnimation.cancel();
            this.avatarAnimation = null;
        }
        if (z2) {
            this.avatarAnimation = new AnimatorSet();
            if (z) {
                this.avatarProgressView.setVisibility(0);
                AnimatorSet animatorSet2 = this.avatarAnimation;
                RLottieImageView rLottieImageView = this.avatarEditor;
                Property property = View.ALPHA;
                animatorSet2.playTogether(ObjectAnimator.ofFloat(rLottieImageView, (Property<RLottieImageView, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.avatarProgressView, (Property<RadialProgressView, Float>) property, 1.0f));
            } else {
                if (this.avatarEditor.getVisibility() != 0) {
                    this.avatarEditor.setAlpha(0.0f);
                }
                this.avatarEditor.setVisibility(0);
                AnimatorSet animatorSet3 = this.avatarAnimation;
                RLottieImageView rLottieImageView2 = this.avatarEditor;
                Property property2 = View.ALPHA;
                animatorSet3.playTogether(ObjectAnimator.ofFloat(rLottieImageView2, (Property<RLottieImageView, Float>) property2, 1.0f), ObjectAnimator.ofFloat(this.avatarProgressView, (Property<RadialProgressView, Float>) property2, 0.0f));
            }
            this.avatarAnimation.setDuration(180L);
            this.avatarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChannelCreateActivity.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ChannelCreateActivity.this.avatarAnimation == null || ChannelCreateActivity.this.avatarEditor == null) {
                        return;
                    }
                    boolean z3 = z;
                    ChannelCreateActivity channelCreateActivity = ChannelCreateActivity.this;
                    if (z3) {
                        channelCreateActivity.avatarEditor.setVisibility(4);
                    } else {
                        channelCreateActivity.avatarProgressView.setVisibility(4);
                    }
                    ChannelCreateActivity.this.avatarAnimation = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    ChannelCreateActivity.this.avatarAnimation = null;
                }
            });
            this.avatarAnimation.start();
            return;
        }
        RLottieImageView rLottieImageView3 = this.avatarEditor;
        if (z) {
            rLottieImageView3.setAlpha(1.0f);
            this.avatarEditor.setVisibility(4);
            this.avatarProgressView.setAlpha(1.0f);
            this.avatarProgressView.setVisibility(0);
            return;
        }
        rLottieImageView3.setAlpha(1.0f);
        this.avatarEditor.setVisibility(0);
        this.avatarProgressView.setAlpha(0.0f);
        this.avatarProgressView.setVisibility(4);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onActivityResult(i, i2, intent);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void saveSelfArgs(Bundle bundle) {
        String str;
        if (this.currentStep == 0) {
            ImageUpdater imageUpdater = this.imageUpdater;
            if (imageUpdater != null && (str = imageUpdater.currentPicturePath) != null) {
                bundle.putString("path", str);
            }
            EditTextEmoji editTextEmoji = this.nameTextView;
            if (editTextEmoji != null) {
                String string = editTextEmoji.getText().toString();
                if (string.length() != 0) {
                    bundle.putString("nameTextView", string);
                }
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void restoreSelfArgs(Bundle bundle) {
        if (this.currentStep == 0) {
            ImageUpdater imageUpdater = this.imageUpdater;
            if (imageUpdater != null) {
                imageUpdater.currentPicturePath = bundle.getString("path");
            }
            String string = bundle.getString("nameTextView");
            if (string != null) {
                EditTextEmoji editTextEmoji = this.nameTextView;
                if (editTextEmoji != null) {
                    editTextEmoji.setText(string);
                } else {
                    this.nameToSet = string;
                }
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (!z || this.currentStep == 1) {
            return;
        }
        this.nameTextView.requestFocus();
        this.nameTextView.openKeyboard();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.chatDidFailCreate) {
            AlertDialog alertDialog = this.cancelDialog;
            if (alertDialog != null) {
                try {
                    alertDialog.dismiss();
                    this.cancelDialog = null;
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            }
            updateDoneProgress(false);
            this.donePressed = false;
            return;
        }
        if (i == NotificationCenter.chatDidCreated) {
            AlertDialog alertDialog2 = this.cancelDialog;
            if (alertDialog2 != null) {
                try {
                    alertDialog2.dismiss();
                    this.cancelDialog = null;
                } catch (Exception e2) {
                    FileLog.m1040e(e2);
                }
            }
            long jLongValue = ((Long) objArr[0]).longValue();
            Bundle bundle = new Bundle();
            bundle.putInt("step", 1);
            bundle.putLong("chat_id", jLongValue);
            bundle.putBoolean("canCreatePublic", this.canCreatePublic);
            Boolean bool = this.forcePublic;
            if (bool != null) {
                bundle.putBoolean("forcePublic", bool.booleanValue());
            }
            if (this.inputPhoto != null || this.inputVideo != null || this.inputEmojiMarkup != null) {
                MessagesController.getInstance(this.currentAccount).changeChatAvatar(jLongValue, null, this.inputPhoto, this.inputVideo, this.inputEmojiMarkup, this.videoTimestamp, this.inputVideoPath, this.avatar, this.avatarBig, null);
            }
            ChannelCreateActivity channelCreateActivity = new ChannelCreateActivity(bundle);
            channelCreateActivity.setOnFinishListener(this.onFinishListener);
            presentFragment(channelCreateActivity, true);
        }
    }

    private void loadAdminedChannels() {
        if (this.loadingAdminedChannels) {
            return;
        }
        this.loadingAdminedChannels = true;
        updatePrivatePublic();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC.TL_channels_getAdminedPublicChannels(), new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda15
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadAdminedChannels$22(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$22(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAdminedChannels$21(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$21(TLObject tLObject) {
        this.loadingAdminedChannels = false;
        if (tLObject == null || getParentActivity() == null) {
            return;
        }
        for (int i = 0; i < this.adminedChannelCells.size(); i++) {
            this.linearLayout.removeView(this.adminedChannelCells.get(i));
        }
        this.adminedChannelCells.clear();
        TLRPC.TL_messages_chats tL_messages_chats = (TLRPC.TL_messages_chats) tLObject;
        for (int i2 = 0; i2 < tL_messages_chats.chats.size(); i2++) {
            AdminedChannelCell adminedChannelCell = new AdminedChannelCell(getParentActivity(), new View.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda22
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$loadAdminedChannels$20(view);
                }
            }, false, 0);
            TLRPC.Chat chat = tL_messages_chats.chats.get(i2);
            boolean z = true;
            if (i2 != tL_messages_chats.chats.size() - 1) {
                z = false;
            }
            adminedChannelCell.setChannel(chat, z);
            this.adminedChannelCells.add(adminedChannelCell);
            this.adminnedChannelsLayout.addView(adminedChannelCell, LayoutHelper.createLinear(-1, 72));
        }
        updatePrivatePublic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$20(View view) {
        final TLRPC.Chat currentChannel = ((AdminedChannelCell) view.getParent()).getCurrentChannel();
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2807R.string.AppName));
        boolean z = currentChannel.megagroup;
        int i = this.currentAccount;
        if (z) {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlert", C2807R.string.RevokeLinkAlert, MessagesController.getInstance(i).linkPrefix + "/" + ChatObject.getPublicUsername(currentChannel), currentChannel.title)));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlertChannel", C2807R.string.RevokeLinkAlertChannel, MessagesController.getInstance(i).linkPrefix + "/" + ChatObject.getPublicUsername(currentChannel), currentChannel.title)));
        }
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(C2807R.string.RevokeButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda25
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                this.f$0.lambda$loadAdminedChannels$19(currentChannel, alertDialog, i2);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$19(TLRPC.Chat chat, AlertDialog alertDialog, int i) {
        TLRPC.TL_channels_updateUsername tL_channels_updateUsername = new TLRPC.TL_channels_updateUsername();
        tL_channels_updateUsername.channel = MessagesController.getInputChannel(chat);
        tL_channels_updateUsername.username = _UrlKt.FRAGMENT_ENCODE_SET;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_updateUsername, new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda26
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadAdminedChannels$18(tLObject, tL_error);
            }
        }, 64);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$18(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadAdminedChannels$17();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$17() {
        this.canCreatePublic = true;
        if (this.descriptionTextView.length() > 0) {
            checkUserName(this.descriptionTextView.getText().toString());
        }
        updatePrivatePublic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkUserName(final String str) {
        if (str != null && str.length() > 0) {
            this.checkTextView.setVisibility(0);
        } else {
            this.checkTextView.setVisibility(8);
        }
        Runnable runnable = this.checkRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.checkRunnable = null;
            this.lastCheckName = null;
            if (this.checkReqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.checkReqId, true);
            }
        }
        this.lastNameAvailable = false;
        if (str != null) {
            if (str.startsWith("_") || str.endsWith("_")) {
                this.checkTextView.setText(LocaleController.getString(C2807R.string.LinkInvalid));
                TextView textView = this.checkTextView;
                int i = Theme.key_text_RedRegular;
                textView.setTag(Integer.valueOf(i));
                this.checkTextView.setTextColor(Theme.getColor(i));
                return false;
            }
            for (int i2 = 0; i2 < str.length(); i2++) {
                char cCharAt = str.charAt(i2);
                if (i2 == 0 && cCharAt >= '0' && cCharAt <= '9') {
                    this.checkTextView.setText(LocaleController.getString(C2807R.string.LinkInvalidStartNumber));
                    TextView textView2 = this.checkTextView;
                    int i3 = Theme.key_text_RedRegular;
                    textView2.setTag(Integer.valueOf(i3));
                    this.checkTextView.setTextColor(Theme.getColor(i3));
                    return false;
                }
                if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && cCharAt != '_'))) {
                    this.checkTextView.setText(LocaleController.getString(C2807R.string.LinkInvalid));
                    TextView textView3 = this.checkTextView;
                    int i4 = Theme.key_text_RedRegular;
                    textView3.setTag(Integer.valueOf(i4));
                    this.checkTextView.setTextColor(Theme.getColor(i4));
                    return false;
                }
            }
        }
        if (str == null || str.length() < 4) {
            this.checkTextView.setText(LocaleController.getString(C2807R.string.LinkInvalidShort));
            TextView textView4 = this.checkTextView;
            int i5 = Theme.key_text_RedRegular;
            textView4.setTag(Integer.valueOf(i5));
            this.checkTextView.setTextColor(Theme.getColor(i5));
            return false;
        }
        int length = str.length();
        TextView textView5 = this.checkTextView;
        if (length > 32) {
            textView5.setText(LocaleController.getString(C2807R.string.LinkInvalidLong));
            TextView textView6 = this.checkTextView;
            int i6 = Theme.key_text_RedRegular;
            textView6.setTag(Integer.valueOf(i6));
            this.checkTextView.setTextColor(Theme.getColor(i6));
            return false;
        }
        textView5.setText(LocaleController.getString(C2807R.string.LinkChecking));
        TextView textView7 = this.checkTextView;
        int i7 = Theme.key_windowBackgroundWhiteGrayText8;
        textView7.setTag(Integer.valueOf(i7));
        this.checkTextView.setTextColor(Theme.getColor(i7));
        this.lastCheckName = str;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkUserName$25(str);
            }
        };
        this.checkRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 300L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUserName$25(final String str) {
        final TLRPC.TL_channels_checkUsername tL_channels_checkUsername = new TLRPC.TL_channels_checkUsername();
        tL_channels_checkUsername.username = str;
        tL_channels_checkUsername.channel = MessagesController.getInstance(this.currentAccount).getInputChannel(this.chatId);
        this.checkReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_checkUsername, new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda23
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkUserName$24(str, tL_channels_checkUsername, tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUserName$24(final String str, final TLRPC.TL_channels_checkUsername tL_channels_checkUsername, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkUserName$23(str, tL_error, tLObject, tL_channels_checkUsername);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUserName$23(String str, TLRPC.TL_error tL_error, TLObject tLObject, TLRPC.TL_channels_checkUsername tL_channels_checkUsername) {
        this.checkReqId = 0;
        String str2 = this.lastCheckName;
        if (str2 == null || !str2.equals(str)) {
            return;
        }
        if (tL_error == null && (tLObject instanceof TLRPC.TL_boolTrue)) {
            this.checkTextView.setText(LocaleController.formatString("LinkAvailable", C2807R.string.LinkAvailable, str));
            TextView textView = this.checkTextView;
            int i = Theme.key_windowBackgroundWhiteGreenText;
            textView.setTag(Integer.valueOf(i));
            this.checkTextView.setTextColor(Theme.getColor(i));
            this.lastNameAvailable = true;
            return;
        }
        if (tL_error != null && "USERNAME_INVALID".equals(tL_error.text) && tL_channels_checkUsername.username.length() == 4) {
            this.checkTextView.setText(LocaleController.getString(C2807R.string.UsernameInvalidShort));
            this.checkTextView.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
        } else if (tL_error != null && "USERNAME_PURCHASE_AVAILABLE".equals(tL_error.text)) {
            int length = tL_channels_checkUsername.username.length();
            TextView textView2 = this.checkTextView;
            if (length == 4) {
                textView2.setText(LocaleController.getString(C2807R.string.UsernameInvalidShortPurchase));
            } else {
                textView2.setText(LocaleController.getString(C2807R.string.UsernameInUsePurchase));
            }
            this.checkTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText8));
        } else if (tL_error != null && "CHANNELS_ADMIN_PUBLIC_TOO_MUCH".equals(tL_error.text)) {
            this.checkTextView.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
            this.canCreatePublic = false;
            showPremiumIncreaseLimitDialog();
        } else {
            this.checkTextView.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
            this.checkTextView.setText(LocaleController.getString(C2807R.string.LinkInUse));
        }
        this.lastNameAvailable = false;
    }

    private void showPremiumIncreaseLimitDialog() {
        if (getParentActivity() == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(this, getParentActivity(), 2, this.currentAccount, null);
        limitReachedBottomSheet.parentIsChannel = true;
        limitReachedBottomSheet.onSuccessRunnable = new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showPremiumIncreaseLimitDialog$26();
            }
        };
        showDialog(limitReachedBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumIncreaseLimitDialog$26() {
        this.canCreatePublic = true;
        updatePrivatePublic();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$27();
            }
        };
        View view = this.fragmentView;
        int i = ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG;
        int i2 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(view, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        EditTextEmoji editTextEmoji = this.nameTextView;
        int i3 = ThemeDescription.FLAG_TEXTCOLOR;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(editTextEmoji, i3, null, null, null, null, i4));
        EditTextEmoji editTextEmoji2 = this.nameTextView;
        int i5 = ThemeDescription.FLAG_HINTTEXTCOLOR;
        int i6 = Theme.key_windowBackgroundWhiteHintText;
        arrayList.add(new ThemeDescription(editTextEmoji2, i5, null, null, null, null, i6));
        EditTextEmoji editTextEmoji3 = this.nameTextView;
        int i7 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i8 = Theme.key_windowBackgroundWhiteInputField;
        arrayList.add(new ThemeDescription(editTextEmoji3, i7, null, null, null, null, i8));
        EditTextEmoji editTextEmoji4 = this.nameTextView;
        int i9 = ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE;
        int i10 = Theme.key_windowBackgroundWhiteInputFieldActivated;
        arrayList.add(new ThemeDescription(editTextEmoji4, i9, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, i10));
        TextView textView = this.helpTextView;
        int i11 = ThemeDescription.FLAG_TEXTCOLOR;
        int i12 = Theme.key_windowBackgroundWhiteGrayText8;
        arrayList.add(new ThemeDescription(textView, i11, null, null, null, null, i12));
        arrayList.add(new ThemeDescription(this.linearLayout2, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.linkContainer, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i2));
        ShadowSectionCell shadowSectionCell = this.sectionCell;
        int i13 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i14 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(shadowSectionCell, i13, null, null, null, null, i14));
        int i15 = Theme.key_windowBackgroundWhiteBlueHeader;
        arrayList.add(new ThemeDescription(this.headerCell, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
        arrayList.add(new ThemeDescription(this.headerCell2, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i6));
        TextView textView2 = this.checkTextView;
        int i16 = ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG;
        int i17 = Theme.key_text_RedRegular;
        arrayList.add(new ThemeDescription(textView2, i16, null, null, null, null, i17));
        arrayList.add(new ThemeDescription(this.checkTextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, i12));
        arrayList.add(new ThemeDescription(this.checkTextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, Theme.key_windowBackgroundWhiteGreenText));
        arrayList.add(new ThemeDescription(this.typeInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i14));
        arrayList.add(new ThemeDescription(this.typeInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.typeInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
        arrayList.add(new ThemeDescription(this.adminedInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i14));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i2));
        LinearLayout linearLayout = this.privateContainer;
        int i18 = ThemeDescription.FLAG_SELECTOR;
        int i19 = Theme.key_listSelector;
        arrayList.add(new ThemeDescription(linearLayout, i18, null, null, null, null, i19));
        arrayList.add(new ThemeDescription(this.privateContainer, 0, new Class[]{TextBlockCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.loadingAdminedCell, 0, new Class[]{LoadingCell.class}, new String[]{"progressBar"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_progressCircle));
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i19));
        int i20 = Theme.key_radioBackground;
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i20));
        int i21 = Theme.key_radioBackgroundChecked;
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i21));
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        int i22 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i22));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i19));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i20));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i21));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i22));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        int i23 = Theme.key_windowBackgroundWhiteGrayText;
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i23));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_LINKCOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteLinkText));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"deleteButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i23));
        arrayList.add(new ThemeDescription(null, 0, null, null, Theme.avatarDrawables, themeDescriptionDelegate, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$27() {
        LinearLayout linearLayout = this.adminnedChannelsLayout;
        if (linearLayout != null) {
            int childCount = linearLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.adminnedChannelsLayout.getChildAt(i);
                if (childAt instanceof AdminedChannelCell) {
                    ((AdminedChannelCell) childAt).update();
                }
            }
        }
    }
}
