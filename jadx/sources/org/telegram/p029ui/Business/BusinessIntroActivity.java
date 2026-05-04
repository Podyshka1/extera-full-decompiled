package org.telegram.p029ui.Business;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.EditTextCell;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ChatAttachAlert;
import org.telegram.p029ui.Components.ChatGreetingsView;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.CrossfadeDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalFragment;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.ContentPreviewViewer;
import org.telegram.p029ui.Stories.recorder.EmojiBottomSheet;
import org.telegram.p029ui.Stories.recorder.KeyboardNotifier;
import org.telegram.p029ui.Stories.recorder.PreviewView;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class BusinessIntroActivity extends UniversalFragment implements NotificationCenter.NotificationCenterDelegate {
    private ChatAttachAlert chatAttachAlert;
    private String currentMessage;
    private long currentSticker;
    private String currentTitle;
    private ActionBarMenuItem doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    private ChatGreetingsView greetingsView;
    private Drawable greetingsViewBackground;
    private TLRPC.InputDocument inputSticker;
    private String inputStickerPath;
    private boolean keyboardVisible;
    private EditTextCell messageEdit;
    private FrameLayout previewContainer;
    private EditTextCell titleEdit;
    private boolean valueSet;
    private final Runnable updateRandomStickerRunnable = new Runnable() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda5
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.updateRandomSticker();
        }
    };
    private boolean stickerRandom = true;
    private TLRPC.Document sticker = getMediaDataController().getGreetingsSticker();
    private boolean clearVisible = isEmpty();
    private int shiftDp = -4;

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
        MediaDataController.getInstance(this.currentAccount).checkStickers(0);
        MediaDataController.getInstance(this.currentAccount).loadRecents(0, false, true, false);
        MediaDataController.getInstance(this.currentAccount).loadRecents(2, false, true, false);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
        super.onFragmentDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRandomSticker() {
        ChatGreetingsView chatGreetingsView = this.greetingsView;
        if (chatGreetingsView != null && chatGreetingsView.isAttachedToWindow() && this.stickerRandom) {
            this.greetingsView.setNextSticker(MediaDataController.getInstance(this.currentAccount).getGreetingsSticker(), new Runnable() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateRandomSticker$0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRandomSticker$0() {
        AndroidUtilities.cancelRunOnUIThread(this.updateRandomStickerRunnable);
        AndroidUtilities.runOnUIThread(this.updateRandomStickerRunnable, 5000L);
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.BusinessIntro);
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        this.greetingsView = new ChatGreetingsView(context, getUserConfig().getCurrentUser(), this.currentAccount, this.sticker, getResourceProvider()) { // from class: org.telegram.ui.Business.BusinessIntroActivity.1
            @Override // org.telegram.p029ui.Components.ChatGreetingsView, android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                setPivotX(getMeasuredWidth() / 2.0f);
                setPivotY(getMeasuredHeight());
            }
        };
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Business.BusinessIntroActivity.2
            int minHeight = -1;

            /* JADX INFO: renamed from: bg */
            private final Rect f1886bg = new Rect();
            private final AnimatedFloat width = new AnimatedFloat(this, 220, CubicBezierInterpolator.EASE_OUT_QUINT);

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                BusinessIntroActivity.this.greetingsView.measure(i, i2);
                invalidate();
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.max(this.minHeight, BusinessIntroActivity.this.greetingsView.getMeasuredHeight() + AndroidUtilities.m1124dp(36.0f)), TLObject.FLAG_30));
                if (this.minHeight < 0) {
                    this.minHeight = getMeasuredHeight();
                }
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                float width = getWidth() / 2.0f;
                float f = this.width.set(BusinessIntroActivity.this.greetingsView.getWidth()) / 2.0f;
                this.f1886bg.set((int) (width - (BusinessIntroActivity.this.greetingsView.getScaleX() * f)), (int) (BusinessIntroActivity.this.greetingsView.getY() + (BusinessIntroActivity.this.greetingsView.getHeight() * (1.0f - BusinessIntroActivity.this.greetingsView.getScaleY()))), (int) (width + (f * BusinessIntroActivity.this.greetingsView.getScaleX())), (int) (BusinessIntroActivity.this.greetingsView.getY() + BusinessIntroActivity.this.greetingsView.getHeight()));
                BusinessIntroActivity.this.greetingsViewBackground.setBounds(this.f1886bg);
                BusinessIntroActivity.this.greetingsViewBackground.draw(canvas);
                return super.drawChild(canvas, view, j);
            }
        };
        this.previewContainer = frameLayout;
        frameLayout.setWillNotDraw(false);
        this.greetingsViewBackground = Theme.createServiceDrawable(AndroidUtilities.m1124dp(16.0f), this.greetingsView, this.previewContainer, getThemedPaint("paintChatActionBackground"));
        this.greetingsView.setBackground(new ColorDrawable(0));
        ImageView imageView = new ImageView(context) { // from class: org.telegram.ui.Business.BusinessIntroActivity.3
            @Override // android.widget.ImageView, android.view.View
            protected void onMeasure(int i, int i2) {
                float f;
                float f2;
                super.onMeasure(i, i2);
                Matrix imageMatrix = getImageMatrix();
                int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                int intrinsicWidth = getDrawable().getIntrinsicWidth();
                int intrinsicHeight = getDrawable().getIntrinsicHeight();
                if (intrinsicWidth * measuredHeight > intrinsicHeight * measuredWidth) {
                    f = measuredHeight;
                    f2 = intrinsicHeight;
                } else {
                    f = measuredWidth;
                    f2 = intrinsicWidth;
                }
                float f3 = f / f2;
                imageMatrix.setScale(f3, f3);
                setImageMatrix(imageMatrix);
            }
        };
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        imageView.setImageDrawable(PreviewView.getBackgroundDrawable((Drawable) null, this.currentAccount, getUserConfig().getClientUserId(), Theme.isCurrentThemeDark()));
        this.previewContainer.addView(imageView, LayoutHelper.createFrame(-1, -1, 119));
        this.previewContainer.addView(this.greetingsView, LayoutHelper.createFrame(-2, -2.0f, 17, 42.0f, 18.0f, 42.0f, 18.0f));
        boolean z = false;
        EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2888R.string.BusinessIntroTitleHint), false, z, getMessagesController().introTitleLengthLimit, this.resourceProvider) { // from class: org.telegram.ui.Business.BusinessIntroActivity.4
            @Override // org.telegram.p029ui.Cells.EditTextCell
            protected void onTextChanged(CharSequence charSequence) {
                BusinessIntroActivity.this.greetingsView.setPreview(BusinessIntroActivity.this.titleEdit.getText().toString(), BusinessIntroActivity.this.messageEdit.getText().toString());
                BusinessIntroActivity.this.checkDone(true, true);
            }

            @Override // org.telegram.p029ui.Cells.EditTextCell
            protected void onFocusChanged(boolean z2) {
                UniversalRecyclerView universalRecyclerView;
                if (!z2 || (universalRecyclerView = BusinessIntroActivity.this.listView) == null) {
                    return;
                }
                universalRecyclerView.smoothScrollToPosition(2);
            }
        };
        this.titleEdit = editTextCell;
        editTextCell.autofocused = true;
        editTextCell.setShowLimitOnFocus(true);
        EditTextCell editTextCell2 = this.titleEdit;
        int i = Theme.key_windowBackgroundWhite;
        editTextCell2.setBackgroundColor(getThemedColor(i));
        this.titleEdit.setDivider(true);
        this.titleEdit.hideKeyboardOnEnter();
        EditTextCell editTextCell3 = new EditTextCell(context, LocaleController.getString(C2888R.string.BusinessIntroMessageHint), true, z, getMessagesController().introDescriptionLengthLimit, this.resourceProvider) { // from class: org.telegram.ui.Business.BusinessIntroActivity.5
            @Override // org.telegram.p029ui.Cells.EditTextCell
            protected void onTextChanged(CharSequence charSequence) {
                BusinessIntroActivity.this.greetingsView.setPreview(BusinessIntroActivity.this.titleEdit.getText().toString(), BusinessIntroActivity.this.messageEdit.getText().toString());
                BusinessIntroActivity.this.checkDone(true, true);
            }

            @Override // org.telegram.p029ui.Cells.EditTextCell
            protected void onFocusChanged(boolean z2) {
                UniversalRecyclerView universalRecyclerView;
                if (!z2 || (universalRecyclerView = BusinessIntroActivity.this.listView) == null) {
                    return;
                }
                universalRecyclerView.smoothScrollToPosition(3);
            }
        };
        this.messageEdit = editTextCell3;
        editTextCell3.setShowLimitOnFocus(true);
        this.messageEdit.setBackgroundColor(getThemedColor(i));
        this.messageEdit.setDivider(true);
        this.messageEdit.hideKeyboardOnEnter();
        this.greetingsView.setPreview(_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
        super.createView(context);
        this.listView.setSections();
        this.listView.adapter.setApplyBackground(false);
        this.actionBar.setAdaptiveBackground(this.listView);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Business.BusinessIntroActivity.6
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    if (BusinessIntroActivity.this.onBackPressed(true)) {
                        BusinessIntroActivity.this.finishFragment();
                    }
                } else if (i2 == 1) {
                    BusinessIntroActivity.this.processDone();
                }
            }
        });
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.ic_ab_done).mutate();
        int i2 = Theme.key_actionBarDefaultIcon;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
        this.doneButtonDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(i2)));
        this.doneButton = this.actionBar.createMenu().addItemWithWidth(1, this.doneButtonDrawable, AndroidUtilities.m1124dp(56.0f), LocaleController.getString(C2888R.string.Done));
        checkDone(false, true);
        this.listView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.Business.BusinessIntroActivity.7
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                BusinessIntroActivity.this.updateGreetingScale();
            }
        });
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Business.BusinessIntroActivity.8
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                BusinessIntroActivity.this.updateGreetingScale();
            }
        });
        this.listView.doNotDetachViews();
        this.listView.setClipChildren(false);
        View view = this.fragmentView;
        if (view instanceof ViewGroup) {
            ((ViewGroup) view).setClipChildren(false);
        }
        setValue();
        new KeyboardNotifier(this.fragmentView, new Utilities.Callback() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createView$1((Integer) obj);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(Integer num) {
        boolean z = num.intValue() > AndroidUtilities.m1124dp(20.0f);
        if (this.keyboardVisible == z) {
            return;
        }
        this.keyboardVisible = z;
        if (z) {
            return;
        }
        this.listView.smoothScrollToPosition(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGreetingScale() {
        if (this.previewContainer.getParent() instanceof View) {
            int top = ((View) this.previewContainer.getParent()).getTop();
            float fClamp = Utilities.clamp((top + r1) / (this.previewContainer.getMeasuredHeight() - AndroidUtilities.m1124dp(36.0f)), 1.0f, 0.65f);
            this.greetingsView.setScaleX(fClamp);
            this.greetingsView.setScaleY(fClamp);
            this.greetingsView.setAlpha(Utilities.clamp(fClamp * 2.0f, 1.0f, 0.0f));
            this.previewContainer.invalidate();
        }
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(this.previewContainer));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.BusinessIntroHeader)));
        arrayList.add(UItem.asCustom(this.titleEdit));
        arrayList.add(UItem.asCustom(this.messageEdit));
        if (this.stickerRandom) {
            arrayList.add(UItem.asButton(1, LocaleController.getString(C2888R.string.BusinessIntroSticker), LocaleController.getString(C2888R.string.BusinessIntroStickerRandom)));
        } else if (this.inputStickerPath != null) {
            arrayList.add(UItem.asStickerButton(1, LocaleController.getString(C2888R.string.BusinessIntroSticker), this.inputStickerPath));
        } else {
            arrayList.add(UItem.asStickerButton(1, LocaleController.getString(C2888R.string.BusinessIntroSticker), this.sticker));
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.BusinessIntroInfo)));
        boolean zIsEmpty = isEmpty();
        this.clearVisible = !zIsEmpty;
        if (!zIsEmpty) {
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asButton(2, LocaleController.getString(C2888R.string.BusinessIntroReset)).red());
        }
        arrayList.add(UItem.asLargeShadow(null));
    }

    public boolean isEmpty() {
        EditTextCell editTextCell = this.titleEdit;
        if (editTextCell == null || this.messageEdit == null) {
            return true;
        }
        return TextUtils.isEmpty(editTextCell.getText()) && TextUtils.isEmpty(this.messageEdit.getText()) && this.stickerRandom;
    }

    private void setValue() {
        UniversalAdapter universalAdapter;
        if (this.valueSet) {
            return;
        }
        TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
        if (userFull == null) {
            getMessagesController().loadUserInfo(getUserConfig().getCurrentUser(), true, getClassGuid());
            return;
        }
        TL_account.TL_businessIntro tL_businessIntro = userFull.business_intro;
        if (tL_businessIntro != null) {
            EditTextCell editTextCell = this.titleEdit;
            String str = tL_businessIntro.title;
            this.currentTitle = str;
            editTextCell.setText(str);
            EditTextCell editTextCell2 = this.messageEdit;
            String str2 = userFull.business_intro.description;
            this.currentMessage = str2;
            editTextCell2.setText(str2);
            this.sticker = userFull.business_intro.sticker;
        } else {
            EditTextCell editTextCell3 = this.titleEdit;
            this.currentTitle = _UrlKt.FRAGMENT_ENCODE_SET;
            editTextCell3.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            EditTextCell editTextCell4 = this.messageEdit;
            this.currentMessage = _UrlKt.FRAGMENT_ENCODE_SET;
            editTextCell4.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.inputSticker = null;
            this.sticker = null;
        }
        TLRPC.Document document = this.sticker;
        this.currentSticker = document == null ? 0L : document.f1668id;
        this.stickerRandom = document == null;
        ChatGreetingsView chatGreetingsView = this.greetingsView;
        if (chatGreetingsView != null) {
            chatGreetingsView.setPreview(this.titleEdit.getText().toString(), this.messageEdit.getText().toString());
            ChatGreetingsView chatGreetingsView2 = this.greetingsView;
            TLRPC.Document greetingsSticker = this.sticker;
            if (greetingsSticker == null || this.stickerRandom) {
                greetingsSticker = MediaDataController.getInstance(this.currentAccount).getGreetingsSticker();
            }
            chatGreetingsView2.setSticker(greetingsSticker);
        }
        if (this.stickerRandom) {
            AndroidUtilities.cancelRunOnUIThread(this.updateRandomStickerRunnable);
            AndroidUtilities.runOnUIThread(this.updateRandomStickerRunnable, 5000L);
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
            universalAdapter.update(true);
        }
        this.valueSet = true;
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected void onClick(UItem uItem, final View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 == 1) {
            EmojiBottomSheet emojiBottomSheet = new EmojiBottomSheet(getContext(), true, getResourceProvider(), true);
            emojiBottomSheet.whenDocumentSelected(new Utilities.Callback3Return() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback3Return
                public final Object run(Object obj, Object obj2, Object obj3) {
                    return this.f$0.lambda$onClick$2(view, obj, (TLRPC.Document) obj2, (Boolean) obj3);
                }
            });
            emojiBottomSheet.whenPlusSelected(new Runnable() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.openCustomStickerEditor();
                }
            });
            showDialog(emojiBottomSheet);
            return;
        }
        if (i2 == 2) {
            this.titleEdit.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.messageEdit.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            AndroidUtilities.hideKeyboard(this.titleEdit.editText);
            AndroidUtilities.hideKeyboard(this.messageEdit.editText);
            this.stickerRandom = true;
            this.greetingsView.setPreview(_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
            ChatGreetingsView chatGreetingsView = this.greetingsView;
            TLRPC.Document greetingsSticker = MediaDataController.getInstance(this.currentAccount).getGreetingsSticker();
            this.sticker = greetingsSticker;
            chatGreetingsView.setSticker(greetingsSticker);
            AndroidUtilities.cancelRunOnUIThread(this.updateRandomStickerRunnable);
            AndroidUtilities.runOnUIThread(this.updateRandomStickerRunnable, 5000L);
            checkDone(true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$onClick$2(View view, Object obj, TLRPC.Document document, Boolean bool) {
        this.stickerRandom = false;
        AndroidUtilities.cancelRunOnUIThread(this.updateRandomStickerRunnable);
        ChatGreetingsView chatGreetingsView = this.greetingsView;
        this.sticker = document;
        chatGreetingsView.setSticker(document);
        ((TextCell) view).setValueSticker(document);
        checkDone(true, false);
        return Boolean.TRUE;
    }

    public boolean hasChanges() {
        TLRPC.Document document;
        String string = this.titleEdit.getText().toString();
        String str = this.currentTitle;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (!TextUtils.equals(string, str)) {
            return true;
        }
        String string2 = this.messageEdit.getText().toString();
        String str3 = this.currentMessage;
        if (str3 != null) {
            str2 = str3;
        }
        if (!TextUtils.equals(string2, str2)) {
            return true;
        }
        boolean z = this.stickerRandom;
        if (((z || (document = this.sticker) == null) ? 0L : document.f1668id) == this.currentSticker) {
            return (z || this.inputSticker == null) ? false : true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDone(boolean z, boolean z2) {
        if (this.doneButton == null) {
            return;
        }
        boolean zHasChanges = hasChanges();
        this.doneButton.setEnabled(zHasChanges);
        if (z) {
            this.doneButton.animate().alpha(zHasChanges ? 1.0f : 0.0f).scaleX(zHasChanges ? 1.0f : 0.0f).scaleY(zHasChanges ? 1.0f : 0.0f).setDuration(180L).start();
        } else {
            this.doneButton.setAlpha(zHasChanges ? 1.0f : 0.0f);
            this.doneButton.setScaleX(zHasChanges ? 1.0f : 0.0f);
            this.doneButton.setScaleY(zHasChanges ? 1.0f : 0.0f);
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || universalRecyclerView.adapter == null || this.clearVisible == (!isEmpty())) {
            return;
        }
        saveScrollPosition();
        this.listView.adapter.update(true);
        applyScrolledPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone() {
        TLRPC.Document document;
        if (this.doneButtonDrawable.getProgress() > 0.0f) {
            return;
        }
        this.doneButtonDrawable.animateToProgress(1.0f);
        TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
        TL_account.updateBusinessIntro updatebusinessintro = new TL_account.updateBusinessIntro();
        if (!isEmpty()) {
            updatebusinessintro.flags |= 1;
            TL_account.TL_inputBusinessIntro tL_inputBusinessIntro = new TL_account.TL_inputBusinessIntro();
            updatebusinessintro.intro = tL_inputBusinessIntro;
            tL_inputBusinessIntro.title = this.titleEdit.getText().toString();
            updatebusinessintro.intro.description = this.messageEdit.getText().toString();
            if (!this.stickerRandom && (this.sticker != null || this.inputSticker != null)) {
                TL_account.TL_inputBusinessIntro tL_inputBusinessIntro2 = updatebusinessintro.intro;
                tL_inputBusinessIntro2.flags |= 1;
                TLRPC.InputDocument inputDocument = this.inputSticker;
                if (inputDocument != null) {
                    tL_inputBusinessIntro2.sticker = inputDocument;
                } else {
                    tL_inputBusinessIntro2.sticker = getMessagesController().getInputDocument(this.sticker);
                }
            }
            if (userFull != null) {
                userFull.flags2 |= 16;
                TL_account.TL_businessIntro tL_businessIntro = new TL_account.TL_businessIntro();
                userFull.business_intro = tL_businessIntro;
                TL_account.TL_inputBusinessIntro tL_inputBusinessIntro3 = updatebusinessintro.intro;
                tL_businessIntro.title = tL_inputBusinessIntro3.title;
                tL_businessIntro.description = tL_inputBusinessIntro3.description;
                if (!this.stickerRandom && (document = this.sticker) != null) {
                    tL_businessIntro.flags |= 1;
                    tL_businessIntro.sticker = document;
                }
            }
        } else if (userFull != null) {
            userFull.flags2 &= -17;
            userFull.business_intro = null;
        }
        getConnectionsManager().sendRequest(updatebusinessintro, new RequestDelegate() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$processDone$4(tLObject, tL_error);
            }
        });
        getMessagesStorage().updateUserInfo(userFull, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$4(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$3(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$3(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error != null) {
            this.doneButtonDrawable.animateToProgress(0.0f);
            BulletinFactory.showError(tL_error);
        } else if (tLObject instanceof TLRPC.TL_boolFalse) {
            this.doneButtonDrawable.animateToProgress(0.0f);
            BulletinFactory.m1246of(this).createErrorBulletin(LocaleController.getString(C2888R.string.UnknownError)).show();
        } else {
            if (this.inputSticker != null) {
                getMessagesController().loadFullUser(getUserConfig().getCurrentUser(), 0, true);
            }
            finishFragment();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (!hasChanges()) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2888R.string.UnsavedChanges));
        builder.setMessage(LocaleController.getString(C2888R.string.BusinessIntroUnsavedChanges));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onBackPressed$5(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onBackPressed$6(alertDialog, i);
            }
        });
        showDialog(builder.create());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$5(AlertDialog alertDialog, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$6(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCustomStickerEditor() {
        ContentPreviewViewer.getInstance().setStickerSetForCustomSticker(null);
        if (getParentActivity() == null) {
            return;
        }
        createChatAttachView();
        this.chatAttachAlert.getPhotoLayout().loadGalleryPhotos();
        this.chatAttachAlert.setMaxSelectedPhotos(1, false);
        this.chatAttachAlert.setOpenWithFrontFaceCamera(true);
        this.chatAttachAlert.enableStickerMode(new Utilities.Callback2() { // from class: org.telegram.ui.Business.BusinessIntroActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.setCustomSticker((String) obj, (TLRPC.InputDocument) obj2);
            }
        });
        this.chatAttachAlert.init();
        ChatAttachAlert chatAttachAlert = this.chatAttachAlert;
        chatAttachAlert.parentThemeDelegate = null;
        if (this.visibleDialog != null) {
            chatAttachAlert.show();
        } else {
            showDialog(chatAttachAlert);
        }
    }

    private void createChatAttachView() {
        if (getParentActivity() == null || getContext() == null || this.chatAttachAlert != null) {
            return;
        }
        ChatAttachAlert chatAttachAlert = new ChatAttachAlert(getParentActivity(), this, false, false, true, this.resourceProvider) { // from class: org.telegram.ui.Business.BusinessIntroActivity.9
            @Override // org.telegram.p029ui.Components.ChatAttachAlert, org.telegram.p029ui.ActionBar.BottomSheet
            public void dismissInternal() {
                if (BusinessIntroActivity.this.chatAttachAlert != null && BusinessIntroActivity.this.chatAttachAlert.isShowing()) {
                    AndroidUtilities.requestAdjustResize(BusinessIntroActivity.this.getParentActivity(), ((BaseFragment) BusinessIntroActivity.this).classGuid);
                }
                super.dismissInternal();
            }

            @Override // org.telegram.p029ui.ActionBar.BottomSheet
            public void onDismissAnimationStart() {
                if (BusinessIntroActivity.this.chatAttachAlert != null) {
                    BusinessIntroActivity.this.chatAttachAlert.setFocusable(false);
                }
                if (BusinessIntroActivity.this.chatAttachAlert == null || !BusinessIntroActivity.this.chatAttachAlert.isShowing()) {
                    return;
                }
                AndroidUtilities.requestAdjustResize(BusinessIntroActivity.this.getParentActivity(), ((BaseFragment) BusinessIntroActivity.this).classGuid);
            }
        };
        this.chatAttachAlert = chatAttachAlert;
        chatAttachAlert.setDelegate(new ChatAttachAlert.ChatAttachViewDelegate() { // from class: org.telegram.ui.Business.BusinessIntroActivity.10
            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public void didPressedButton(int i, boolean z, boolean z2, int i2, int i3, long j, boolean z3, boolean z4, long j2) {
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void didSelectBot(TLRPC.User user) {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$didSelectBot(this, user);
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ boolean needEnterComment() {
                return ChatAttachAlert.ChatAttachViewDelegate.CC.$default$needEnterComment(this);
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void onCameraOpened() {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$onCameraOpened(this);
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void onWallpaperSelected(Object obj) {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$onWallpaperSelected(this, obj);
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void openAvatarsSearch() {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$openAvatarsSearch(this);
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ boolean selectItemOnClicking() {
                return ChatAttachAlert.ChatAttachViewDelegate.CC.$default$selectItemOnClicking(this);
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void sendAudio(ArrayList arrayList, CharSequence charSequence, boolean z, int i, int i2, long j, boolean z2, long j2) {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$sendAudio(this, arrayList, charSequence, z, i, i2, j, z2, j2);
            }

            @Override // org.telegram.ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public void doOnIdle(Runnable runnable) {
                NotificationCenter.getInstance(((BaseFragment) BusinessIntroActivity.this).currentAccount).doOnIdle(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCustomSticker(String str, TLRPC.InputDocument inputDocument) {
        UniversalAdapter universalAdapter;
        this.chatAttachAlert.lambda$new$0();
        this.inputStickerPath = str;
        this.inputSticker = inputDocument;
        this.stickerRandom = false;
        AndroidUtilities.cancelRunOnUIThread(this.updateRandomStickerRunnable);
        this.greetingsView.setSticker(this.inputStickerPath);
        checkDone(true, false);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || (universalAdapter = universalRecyclerView.adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.userInfoDidLoad) {
            setValue();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
