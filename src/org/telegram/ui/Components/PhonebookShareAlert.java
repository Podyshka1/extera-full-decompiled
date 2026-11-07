package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.widget.NestedScrollView;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.gms.cast.MediaError;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.ChatAttachAlertContactsLayout;
import org.telegram.ui.Components.LinkSpanDrawable;

/* JADX INFO: loaded from: classes7.dex */
public class PhonebookShareAlert extends BottomSheet {
    private ActionBar actionBar;
    private AnimatorSet actionBarAnimation;
    private View actionBarShadow;
    private Paint backgroundPaint;
    private TextView buttonTextView;
    private TLRPC.User currentUser;
    private ChatAttachAlertContactsLayout.PhonebookShareAlertDelegate delegate;
    private boolean inLayout;
    private boolean isImport;
    private LinearLayout linearLayout;
    private ListAdapter listAdapter;
    private ArrayList<AndroidUtilities.VcardItem> other;
    private BaseFragment parentFragment;
    private int phoneEndRow;
    private int phoneStartRow;
    private ArrayList<AndroidUtilities.VcardItem> phones;
    private int rowCount;
    private int scrollOffsetY;
    private NestedScrollView scrollView;
    private View shadow;
    private AnimatorSet shadowAnimation;
    private int userRow;
    private int vcardEndRow;
    private int vcardStartRow;

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithSwipe() {
        return false;
    }

    public class UserCell extends LinearLayout {
        public UserCell(Context context) {
            String userStatus;
            boolean z;
            super(context);
            setOrientation(1);
            if (PhonebookShareAlert.this.phones.size() == 1 && PhonebookShareAlert.this.other.size() == 0) {
                userStatus = ((AndroidUtilities.VcardItem) PhonebookShareAlert.this.phones.get(0)).getValue(true);
                z = false;
            } else {
                userStatus = (PhonebookShareAlert.this.currentUser.status == null || PhonebookShareAlert.this.currentUser.status.expires == 0) ? null : LocaleController.formatUserStatus(((BottomSheet) PhonebookShareAlert.this).currentAccount, PhonebookShareAlert.this.currentUser);
                z = true;
            }
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setTextSize(AndroidUtilities.dp(30.0f));
            avatarDrawable.setInfo(((BottomSheet) PhonebookShareAlert.this).currentAccount, PhonebookShareAlert.this.currentUser);
            BackupImageView backupImageView = new BackupImageView(context);
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(80.0f));
            backupImageView.setForUserOrChat(PhonebookShareAlert.this.currentUser, avatarDrawable);
            addView(backupImageView, LayoutHelper.createLinear(80, 80, 49, 0, 32, 0, 0));
            TextView textView = new TextView(context);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextSize(1, 17.0f);
            textView.setTextColor(PhonebookShareAlert.this.getThemedColor(Theme.key_dialogTextBlack));
            textView.setSingleLine(true);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            textView.setText(ContactsController.formatName(PhonebookShareAlert.this.currentUser.first_name, PhonebookShareAlert.this.currentUser.last_name));
            addView(textView, LayoutHelper.createLinear(-2, -2, 49, 10, 10, 10, userStatus != null ? 0 : 27));
            if (userStatus != null) {
                TextView textView2 = new TextView(context);
                textView2.setTextSize(1, 14.0f);
                textView2.setTextColor(PhonebookShareAlert.this.getThemedColor(Theme.key_dialogTextGray3));
                textView2.setSingleLine(true);
                textView2.setEllipsize(truncateAt);
                textView2.setText(userStatus);
                addView(textView2, LayoutHelper.createLinear(-2, -2, 49, 10, 3, 10, z ? 27 : 11));
            }
        }
    }

    public class TextCheckBoxCell extends FrameLayout {
        private Switch checkBox;
        private ImageView imageView;
        private boolean needDivider;
        private TextView textView;
        private TextView valueTextView;

        public TextCheckBoxCell(Context context) {
            float f;
            float f2;
            float f3;
            super(context);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(PhonebookShareAlert.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            this.textView.setTextSize(1, 16.0f);
            this.textView.setSingleLine(false);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            TextView textView2 = this.textView;
            boolean z = LocaleController.isRTL;
            int i = (z ? 5 : 3) | 48;
            float f4 = 72.0f;
            if (z) {
                f = PhonebookShareAlert.this.isImport ? 17 : 64;
            } else {
                f = 72.0f;
            }
            if (LocaleController.isRTL) {
                f2 = 72.0f;
            } else {
                f2 = PhonebookShareAlert.this.isImport ? 17 : 64;
            }
            addView(textView2, LayoutHelper.createFrame(-1, -1.0f, i, f, 10.0f, f2, 0.0f));
            TextView textView3 = new TextView(context);
            this.valueTextView = textView3;
            textView3.setTextColor(PhonebookShareAlert.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
            this.valueTextView.setTextSize(1, 13.0f);
            this.valueTextView.setLines(1);
            this.valueTextView.setMaxLines(1);
            this.valueTextView.setSingleLine(true);
            this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            TextView textView4 = this.valueTextView;
            boolean z2 = LocaleController.isRTL;
            int i2 = z2 ? 5 : 3;
            if (z2) {
                f3 = PhonebookShareAlert.this.isImport ? 17 : 64;
            } else {
                f3 = 72.0f;
            }
            if (!LocaleController.isRTL) {
                f4 = PhonebookShareAlert.this.isImport ? 17 : 64;
            }
            addView(textView4, LayoutHelper.createFrame(-2, -2.0f, i2, f3, 35.0f, f4, 0.0f));
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(PhonebookShareAlert.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
            ImageView imageView2 = this.imageView;
            boolean z3 = LocaleController.isRTL;
            addView(imageView2, LayoutHelper.createFrame(-2, -2.0f, (z3 ? 5 : 3) | 48, z3 ? 0.0f : 20.0f, 20.0f, z3 ? 20.0f : 0.0f, 0.0f));
            if (!PhonebookShareAlert.this.isImport) {
                Switch r1 = new Switch(context);
                this.checkBox = r1;
                int i3 = Theme.key_switchTrack;
                int i4 = Theme.key_switchTrackChecked;
                int i5 = Theme.key_windowBackgroundWhite;
                r1.setColors(i3, i4, i5, i5);
                addView(this.checkBox, LayoutHelper.createFrame(37, 40.0f, (LocaleController.isRTL ? 3 : 5) | 16, 22.0f, 0.0f, 22.0f, 0.0f));
            }
            setClipChildren(false);
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            Switch r0 = this.checkBox;
            if (r0 != null) {
                r0.invalidate();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            measureChildWithMargins(this.textView, i, 0, i2, 0);
            measureChildWithMargins(this.valueTextView, i, 0, i2, 0);
            measureChildWithMargins(this.imageView, i, 0, i2, 0);
            Switch r7 = this.checkBox;
            if (r7 != null) {
                measureChildWithMargins(r7, i, 0, i2, 0);
            }
            setMeasuredDimension(View.MeasureSpec.getSize(i), Math.max(AndroidUtilities.dp(64.0f), this.textView.getMeasuredHeight() + this.valueTextView.getMeasuredHeight() + AndroidUtilities.dp(20.0f)) + (this.needDivider ? 1 : 0));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int measuredHeight = this.textView.getMeasuredHeight() + AndroidUtilities.dp(13.0f);
            TextView textView = this.valueTextView;
            textView.layout(textView.getLeft(), measuredHeight, this.valueTextView.getRight(), this.valueTextView.getMeasuredHeight() + measuredHeight);
        }

        public void setVCardItem(AndroidUtilities.VcardItem vcardItem, int i, boolean z) {
            this.textView.setText(vcardItem.getValue(true));
            this.valueTextView.setText(vcardItem.getType());
            Switch r0 = this.checkBox;
            if (r0 != null) {
                r0.setChecked(vcardItem.checked, false);
            }
            ImageView imageView = this.imageView;
            if (i != 0) {
                imageView.setImageResource(i);
            } else {
                imageView.setImageDrawable(null);
            }
            this.needDivider = z;
            setWillNotDraw(!z);
        }

        public void setChecked(boolean z) {
            Switch r1 = this.checkBox;
            if (r1 != null) {
                r1.setChecked(z, true);
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            if (this.needDivider) {
                canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(70.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(70.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
    }

    public PhonebookShareAlert(BaseFragment baseFragment, ContactsController.Contact contact, TLRPC.User user, Uri uri, File file, String str, String str2) {
        this(baseFragment, contact, user, uri, file, (String) null, str, str2);
    }

    public PhonebookShareAlert(BaseFragment baseFragment, ContactsController.Contact contact, TLRPC.User user, Uri uri, File file, String str, String str2, String str3) {
        this(baseFragment, contact, user, uri, file, str, str2, str3, null);
    }

    public PhonebookShareAlert(BaseFragment baseFragment, ContactsController.Contact contact, TLRPC.User user, Uri uri, File file, String str, String str2, Theme.ResourcesProvider resourcesProvider) {
        this(baseFragment, contact, user, uri, file, null, str, str2, resourcesProvider);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PhonebookShareAlert(BaseFragment baseFragment, ContactsController.Contact contact, TLRPC.User user, Uri uri, File file, String str, String str2, String str3, final Theme.ResourcesProvider resourcesProvider) {
        ArrayList<TLRPC.User> arrayListLoadVCardFromStream;
        String str4;
        String str5;
        ArrayList<TLRPC.RestrictionReason> arrayList;
        super(baseFragment.getParentActivity(), false, resourcesProvider);
        this.backgroundPaint = new Paint(1);
        this.other = new ArrayList<>();
        this.phones = new ArrayList<>();
        String name = ContactsController.formatName(str2, str3);
        ArrayList arrayList2 = new ArrayList();
        if (uri != null) {
            arrayListLoadVCardFromStream = AndroidUtilities.loadVCardFromStream(uri, this.currentAccount, false, arrayList2, name);
        } else if (file != null) {
            arrayListLoadVCardFromStream = AndroidUtilities.loadVCardFromStream(Uri.fromFile(file), this.currentAccount, false, arrayList2, name);
            file.delete();
            this.isImport = true;
        } else {
            if (str != null) {
                AndroidUtilities.VcardItem vcardItem = new AndroidUtilities.VcardItem();
                vcardItem.type = 0;
                ArrayList<String> arrayList3 = vcardItem.vcardData;
                String strConcat = "TEL;MOBILE:+".concat(str);
                vcardItem.fullData = strConcat;
                arrayList3.add(strConcat);
                this.phones.add(vcardItem);
                this.isImport = true;
            } else {
                String str6 = contact.key;
                if (str6 != null) {
                    arrayListLoadVCardFromStream = AndroidUtilities.loadVCardFromStream(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, str6), this.currentAccount, true, arrayList2, name);
                } else {
                    AndroidUtilities.VcardItem vcardItem2 = new AndroidUtilities.VcardItem();
                    vcardItem2.type = 0;
                    ArrayList<String> arrayList4 = vcardItem2.vcardData;
                    String str7 = "TEL;MOBILE:+" + contact.user.phone;
                    vcardItem2.fullData = str7;
                    arrayList4.add(str7);
                    this.phones.add(vcardItem2);
                }
            }
            arrayListLoadVCardFromStream = null;
        }
        TLRPC.User user2 = (user != null || contact == null) ? user : contact.user;
        if (arrayListLoadVCardFromStream != null) {
            for (int i = 0; i < arrayList2.size(); i++) {
                AndroidUtilities.VcardItem vcardItem3 = (AndroidUtilities.VcardItem) arrayList2.get(i);
                if (vcardItem3.type == 0) {
                    int i2 = 0;
                    while (true) {
                        int size = this.phones.size();
                        ArrayList<AndroidUtilities.VcardItem> arrayList5 = this.phones;
                        if (i2 < size) {
                            if (arrayList5.get(i2).getValue(false).equals(vcardItem3.getValue(false))) {
                                vcardItem3.checked = false;
                                break;
                            }
                            i2++;
                        } else {
                            arrayList5.add(vcardItem3);
                            break;
                        }
                    }
                } else {
                    this.other.add(vcardItem3);
                }
            }
            if (arrayListLoadVCardFromStream.isEmpty()) {
                str4 = str2;
                str5 = str3;
                arrayList = null;
            } else {
                TLRPC.User user3 = arrayListLoadVCardFromStream.get(0);
                arrayList = user3.restriction_reason;
                if (TextUtils.isEmpty(str2)) {
                    str4 = user3.first_name;
                    str5 = user3.last_name;
                } else {
                    str4 = str2;
                    str5 = str3;
                }
            }
        }
        TLRPC.TL_userContact_old2 tL_userContact_old2 = new TLRPC.TL_userContact_old2();
        this.currentUser = tL_userContact_old2;
        if (user2 != null) {
            tL_userContact_old2.id = user2.id;
            tL_userContact_old2.access_hash = user2.access_hash;
            tL_userContact_old2.photo = user2.photo;
            tL_userContact_old2.status = user2.status;
            tL_userContact_old2.first_name = user2.first_name;
            tL_userContact_old2.last_name = user2.last_name;
            tL_userContact_old2.phone = user2.phone;
            if (arrayList != null) {
                tL_userContact_old2.restriction_reason = arrayList;
            }
        } else {
            tL_userContact_old2.first_name = str4;
            tL_userContact_old2.last_name = str5;
        }
        this.parentFragment = baseFragment;
        final Activity parentActivity = baseFragment.getParentActivity();
        updateRows();
        FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.PhonebookShareAlert.1
            private boolean ignoreLayout;
            private RectF rect = new RectF();

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && PhonebookShareAlert.this.scrollOffsetY != 0 && motionEvent.getY() < PhonebookShareAlert.this.scrollOffsetY && PhonebookShareAlert.this.actionBar.getAlpha() == 0.0f) {
                    PhonebookShareAlert.this.lambda$new$0();
                    return true;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return !PhonebookShareAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i3, int i4) {
                int size2 = View.MeasureSpec.getSize(i4);
                this.ignoreLayout = true;
                setPadding(((BottomSheet) PhonebookShareAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) PhonebookShareAlert.this).backgroundPaddingLeft, 0);
                this.ignoreLayout = false;
                int paddingTop = size2 - getPaddingTop();
                View.MeasureSpec.getSize(i3);
                int unused = ((BottomSheet) PhonebookShareAlert.this).backgroundPaddingLeft;
                ((FrameLayout.LayoutParams) PhonebookShareAlert.this.actionBarShadow.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight();
                this.ignoreLayout = true;
                int iDp = AndroidUtilities.dp(80.0f);
                int itemCount = PhonebookShareAlert.this.listAdapter.getItemCount();
                for (int i5 = 0; i5 < itemCount; i5++) {
                    View viewCreateView = PhonebookShareAlert.this.listAdapter.createView(parentActivity, i5);
                    viewCreateView.measure(i3, View.MeasureSpec.makeMeasureSpec(0, 0));
                    iDp += viewCreateView.getMeasuredHeight();
                }
                int i6 = iDp < paddingTop ? paddingTop - iDp : paddingTop / 5;
                if (PhonebookShareAlert.this.scrollView.getPaddingTop() != i6) {
                    PhonebookShareAlert.this.scrollView.getPaddingTop();
                    PhonebookShareAlert.this.scrollView.setPadding(0, i6, 0, 0);
                }
                this.ignoreLayout = false;
                super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                PhonebookShareAlert.this.inLayout = true;
                super.onLayout(z, i3, i4, i5, i6);
                PhonebookShareAlert.this.inLayout = false;
                PhonebookShareAlert.this.updateLayout(false);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                int i3 = PhonebookShareAlert.this.scrollOffsetY - ((BottomSheet) PhonebookShareAlert.this).backgroundPaddingTop;
                int measuredHeight = getMeasuredHeight() + AndroidUtilities.dp(30.0f) + ((BottomSheet) PhonebookShareAlert.this).backgroundPaddingTop;
                float fDp = AndroidUtilities.dp(12.0f);
                float fMin = ((float) (((BottomSheet) PhonebookShareAlert.this).backgroundPaddingTop + i3)) < fDp ? 1.0f - Math.min(1.0f, ((fDp - i3) - ((BottomSheet) PhonebookShareAlert.this).backgroundPaddingTop) / fDp) : 1.0f;
                int i4 = AndroidUtilities.statusBarHeight;
                ((BottomSheet) PhonebookShareAlert.this).shadowDrawable.setBounds(0, i3 + i4, getMeasuredWidth(), measuredHeight - i4);
                ((BottomSheet) PhonebookShareAlert.this).shadowDrawable.draw(canvas);
                if (fMin != 1.0f) {
                    PhonebookShareAlert.this.backgroundPaint.setColor(PhonebookShareAlert.this.getThemedColor(Theme.key_dialogBackground));
                    this.rect.set(((BottomSheet) PhonebookShareAlert.this).backgroundPaddingLeft, ((BottomSheet) PhonebookShareAlert.this).backgroundPaddingTop + r0, getMeasuredWidth() - ((BottomSheet) PhonebookShareAlert.this).backgroundPaddingLeft, ((BottomSheet) PhonebookShareAlert.this).backgroundPaddingTop + r0 + AndroidUtilities.dp(24.0f));
                    float f = fDp * fMin;
                    canvas.drawRoundRect(this.rect, f, f, PhonebookShareAlert.this.backgroundPaint);
                }
                int themedColor = PhonebookShareAlert.this.getThemedColor(Theme.key_dialogBackground);
                PhonebookShareAlert.this.backgroundPaint.setColor(Color.argb((int) (PhonebookShareAlert.this.actionBar.getAlpha() * 255.0f), (int) (Color.red(themedColor) * 0.8f), (int) (Color.green(themedColor) * 0.8f), (int) (Color.blue(themedColor) * 0.8f)));
                canvas.drawRect(((BottomSheet) PhonebookShareAlert.this).backgroundPaddingLeft, 0.0f, getMeasuredWidth() - ((BottomSheet) PhonebookShareAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, PhonebookShareAlert.this.backgroundPaint);
            }
        };
        frameLayout.setWillNotDraw(false);
        this.containerView = frameLayout;
        setApplyTopPadding(false);
        setApplyBottomPadding(false);
        this.listAdapter = new ListAdapter();
        NestedScrollView nestedScrollView = new NestedScrollView(parentActivity) { // from class: org.telegram.ui.Components.PhonebookShareAlert.2
            private View focusingView;

            @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup, android.view.ViewParent
            public void requestChildFocus(View view, View view2) {
                this.focusingView = view2;
                super.requestChildFocus(view, view2);
            }

            @Override // androidx.core.widget.NestedScrollView
            public int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
                if (this.focusingView == null || PhonebookShareAlert.this.linearLayout.getTop() != getPaddingTop()) {
                    return 0;
                }
                int iComputeScrollDeltaToGetChildRectOnScreen = super.computeScrollDeltaToGetChildRectOnScreen(rect);
                int currentActionBarHeight = ActionBar.getCurrentActionBarHeight() - (((this.focusingView.getTop() - getScrollY()) + rect.top) + iComputeScrollDeltaToGetChildRectOnScreen);
                return currentActionBarHeight > 0 ? iComputeScrollDeltaToGetChildRectOnScreen - (currentActionBarHeight + AndroidUtilities.dp(10.0f)) : iComputeScrollDeltaToGetChildRectOnScreen;
            }
        };
        this.scrollView = nestedScrollView;
        nestedScrollView.setClipToPadding(false);
        this.scrollView.setVerticalScrollBarEnabled(false);
        frameLayout.addView(this.scrollView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, 77.0f));
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(1);
        this.scrollView.addView(this.linearLayout, LayoutHelper.createScroll(-1, -1, 51));
        this.scrollView.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: org.telegram.ui.Components.PhonebookShareAlert$$ExternalSyntheticLambda0
            @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
            public final void onScrollChange(NestedScrollView nestedScrollView2, int i3, int i4, int i5, int i6) {
                this.f$0.lambda$new$0(nestedScrollView2, i3, i4, i5, i6);
            }
        });
        int itemCount = this.listAdapter.getItemCount();
        for (final int i3 = 0; i3 < itemCount; i3++) {
            final View viewCreateView = this.listAdapter.createView(parentActivity, i3);
            this.linearLayout.addView(viewCreateView, LayoutHelper.createLinear(-1, -2));
            if ((i3 >= this.phoneStartRow && i3 < this.phoneEndRow) || (i3 >= this.vcardStartRow && i3 < this.vcardEndRow)) {
                viewCreateView.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                viewCreateView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PhonebookShareAlert$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$2(i3, viewCreateView, view);
                    }
                });
                viewCreateView.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.PhonebookShareAlert$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.lambda$new$3(i3, resourcesProvider, parentActivity, view);
                    }
                });
            }
        }
        ActionBar actionBar = new ActionBar(parentActivity) { // from class: org.telegram.ui.Components.PhonebookShareAlert.3
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ((BottomSheet) PhonebookShareAlert.this).containerView.invalidate();
            }
        };
        this.actionBar = actionBar;
        actionBar.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        this.actionBar.setBackButtonImage(C2807R.drawable.ic_ab_back);
        ActionBar actionBar2 = this.actionBar;
        int i4 = Theme.key_dialogTextBlack;
        actionBar2.setItemsColor(getThemedColor(i4), false);
        this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_dialogButtonSelector), false);
        this.actionBar.setTitleColor(getThemedColor(i4));
        this.actionBar.setOccupyStatusBar(false);
        this.actionBar.setAlpha(0.0f);
        boolean z = this.isImport;
        ActionBar actionBar3 = this.actionBar;
        if (z) {
            actionBar3.setTitle(LocaleController.getString(C2807R.string.AddContactPhonebookTitle));
        } else {
            actionBar3.setTitle(LocaleController.getString(C2807R.string.ShareContactTitle));
        }
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.PhonebookShareAlert.4
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i5) {
                if (i5 == -1) {
                    PhonebookShareAlert.this.lambda$new$0();
                }
            }
        });
        View view = new View(parentActivity);
        this.actionBarShadow = view;
        view.setAlpha(0.0f);
        View view2 = this.actionBarShadow;
        int i5 = Theme.key_dialogShadowLine;
        view2.setBackgroundColor(getThemedColor(i5));
        this.containerView.addView(this.actionBarShadow, LayoutHelper.createFrame(-1, 1.0f));
        View view3 = new View(parentActivity);
        this.shadow = view3;
        view3.setBackgroundColor(getThemedColor(i5));
        this.shadow.setAlpha(0.0f);
        this.containerView.addView(this.shadow, LayoutHelper.createFrame(-1, 1.0f, 83, 0.0f, 0.0f, 0.0f, 77.0f));
        TextView textView = new TextView(parentActivity);
        this.buttonTextView = textView;
        textView.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
        this.buttonTextView.setGravity(17);
        this.buttonTextView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
        this.buttonTextView.setTextSize(1, 14.0f);
        boolean z2 = this.isImport;
        TextView textView2 = this.buttonTextView;
        if (z2) {
            textView2.setText(LocaleController.getString(C2807R.string.AddContactPhonebookTitle));
        } else {
            textView2.setText(LocaleController.getString(C2807R.string.ShareContactTitle));
        }
        this.buttonTextView.setTypeface(AndroidUtilities.bold());
        this.buttonTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), getThemedColor(Theme.key_featuredStickers_addButton), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
        frameLayout.addView(this.buttonTextView, LayoutHelper.createFrame(-1, 48.0f, 83, 14.0f, 14.0f, 14.0f, 14.0f));
        this.buttonTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PhonebookShareAlert$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.lambda$new$6(resourcesProvider, view4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        updateLayout(!this.inLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i, View view, View view2) {
        final AndroidUtilities.VcardItem vcardItem;
        int i2 = this.phoneStartRow;
        if (i >= i2 && i < this.phoneEndRow) {
            vcardItem = this.phones.get(i - i2);
        } else {
            int i3 = this.vcardStartRow;
            vcardItem = (i < i3 || i >= this.vcardEndRow) ? null : this.other.get(i - i3);
        }
        if (vcardItem == null) {
            return;
        }
        boolean z = true;
        if (this.isImport) {
            int i4 = vcardItem.type;
            if (i4 == 0) {
                try {
                    Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + vcardItem.getValue(false)));
                    intent.addFlags(268435456);
                    this.parentFragment.getParentActivity().startActivityForResult(intent, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
                    return;
                } catch (Exception e) {
                    FileLog.m1040e(e);
                    return;
                }
            }
            if (i4 == 1) {
                Browser.openUrl(this.parentFragment.getParentActivity(), "mailto:" + vcardItem.getValue(false));
                return;
            }
            if (i4 == 3) {
                String value = vcardItem.getValue(false);
                if (!value.startsWith("http")) {
                    value = AndroidUtilities.defaultUrlScheme(value) + value;
                }
                Browser.openUrl(this.parentFragment.getParentActivity(), value);
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.parentFragment.getParentActivity());
            builder.setItems(new CharSequence[]{LocaleController.getString(C2807R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.PhonebookShareAlert$$ExternalSyntheticLambda6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    this.f$0.lambda$new$1(vcardItem, dialogInterface, i5);
                }
            });
            builder.show();
            return;
        }
        vcardItem.checked = !vcardItem.checked;
        if (i >= this.phoneStartRow && i < this.phoneEndRow) {
            int i5 = 0;
            while (true) {
                if (i5 >= this.phones.size()) {
                    z = false;
                    break;
                } else if (this.phones.get(i5).checked) {
                    break;
                } else {
                    i5++;
                }
            }
            int themedColor = getThemedColor(Theme.key_featuredStickers_buttonText);
            this.buttonTextView.setEnabled(z);
            TextView textView = this.buttonTextView;
            if (!z) {
                themedColor &= Integer.MAX_VALUE;
            }
            textView.setTextColor(themedColor);
        }
        ((TextCheckBoxCell) view).setChecked(vcardItem.checked);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(AndroidUtilities.VcardItem vcardItem, DialogInterface dialogInterface, int i) {
        if (i == 0) {
            try {
                ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", vcardItem.getValue(false)));
                if (AndroidUtilities.shouldShowClipboardToast()) {
                    Toast.makeText(this.parentFragment.getParentActivity(), LocaleController.getString(C2807R.string.TextCopied), 0).show();
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$3(int i, Theme.ResourcesProvider resourcesProvider, Context context, View view) {
        AndroidUtilities.VcardItem vcardItem;
        int i2 = this.phoneStartRow;
        if (i >= i2 && i < this.phoneEndRow) {
            vcardItem = this.phones.get(i - i2);
        } else {
            int i3 = this.vcardStartRow;
            vcardItem = (i < i3 || i >= this.vcardEndRow) ? null : this.other.get(i - i3);
        }
        if (vcardItem == null) {
            return false;
        }
        ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", vcardItem.getValue(false)));
        if (BulletinFactory.canShowBulletin(this.parentFragment)) {
            if (vcardItem.type == 3) {
                BulletinFactory.of((FrameLayout) this.containerView, resourcesProvider).createCopyLinkBulletin().show();
            } else {
                Bulletin.SimpleLayout simpleLayout = new Bulletin.SimpleLayout(context, resourcesProvider);
                int i4 = vcardItem.type;
                if (i4 == 0) {
                    simpleLayout.textView.setText(LocaleController.getString(C2807R.string.PhoneCopied));
                    simpleLayout.imageView.setImageResource(C2807R.drawable.msg_calls);
                } else {
                    LinkSpanDrawable.LinksTextView linksTextView = simpleLayout.textView;
                    if (i4 == 1) {
                        linksTextView.setText(LocaleController.getString(C2807R.string.EmailCopied));
                        simpleLayout.imageView.setImageResource(C2807R.drawable.msg_mention);
                    } else {
                        linksTextView.setText(LocaleController.getString(C2807R.string.TextCopied));
                        simpleLayout.imageView.setImageResource(C2807R.drawable.msg_info);
                    }
                }
                if (AndroidUtilities.shouldShowClipboardToast()) {
                    Bulletin.make((FrameLayout) this.containerView, simpleLayout, 1500).show();
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(Theme.ResourcesProvider resourcesProvider, View view) {
        StringBuilder sb;
        if (this.isImport) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setTitle(LocaleController.getString(C2807R.string.AddContactTitle));
            builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
            builder.setItems(new CharSequence[]{LocaleController.getString(C2807R.string.CreateNewContact), LocaleController.getString(C2807R.string.AddToExistingContact)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.PhonebookShareAlert.5
                private void fillRowWithType(String str, ContentValues contentValues) {
                    if (str.startsWith("X-")) {
                        contentValues.put("data2", (Integer) 0);
                        contentValues.put("data3", str.substring(2));
                        return;
                    }
                    if ("PREF".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 12);
                        return;
                    }
                    if ("HOME".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 1);
                        return;
                    }
                    if ("MOBILE".equalsIgnoreCase(str) || "CELL".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 2);
                        return;
                    }
                    if ("OTHER".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 7);
                        return;
                    }
                    if ("WORK".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 3);
                        return;
                    }
                    if ("RADIO".equalsIgnoreCase(str) || "VOICE".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 14);
                        return;
                    }
                    if ("PAGER".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 6);
                        return;
                    }
                    if ("CALLBACK".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 8);
                        return;
                    }
                    if ("CAR".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 9);
                        return;
                    }
                    if ("ASSISTANT".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 19);
                        return;
                    }
                    if ("MMS".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 20);
                    } else if (str.startsWith("FAX")) {
                        contentValues.put("data2", (Integer) 4);
                    } else {
                        contentValues.put("data2", (Integer) 0);
                        contentValues.put("data3", str);
                    }
                }

                private void fillUrlRowWithType(String str, ContentValues contentValues) {
                    if (str.startsWith("X-")) {
                        contentValues.put("data2", (Integer) 0);
                        contentValues.put("data3", str.substring(2));
                        return;
                    }
                    if ("HOMEPAGE".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 1);
                        return;
                    }
                    if ("BLOG".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 2);
                        return;
                    }
                    if ("PROFILE".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 3);
                        return;
                    }
                    if ("HOME".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 4);
                        return;
                    }
                    if ("WORK".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 5);
                        return;
                    }
                    if ("FTP".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 6);
                    } else if ("OTHER".equalsIgnoreCase(str)) {
                        contentValues.put("data2", (Integer) 7);
                    } else {
                        contentValues.put("data2", (Integer) 0);
                        contentValues.put("data3", str);
                    }
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Intent intent;
                    String str;
                    String str2;
                    int i2;
                    boolean z;
                    Intent intent2;
                    String str3;
                    String str4;
                    DialogInterfaceOnClickListenerC42505 dialogInterfaceOnClickListenerC42505;
                    Integer num;
                    boolean z2;
                    String str5;
                    boolean z3;
                    DialogInterfaceOnClickListenerC42505 dialogInterfaceOnClickListenerC425052 = this;
                    int i3 = 3;
                    Integer num2 = 3;
                    int i4 = 1;
                    if (i == 0) {
                        intent = new Intent("android.intent.action.INSERT");
                        intent.setType("vnd.android.cursor.dir/raw_contact");
                    } else if (i == 1) {
                        intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                        intent.setType("vnd.android.cursor.item/contact");
                    } else {
                        intent = null;
                    }
                    intent.putExtra("name", ContactsController.formatName(PhonebookShareAlert.this.currentUser.first_name, PhonebookShareAlert.this.currentUser.last_name));
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                    boolean z4 = false;
                    int i5 = 0;
                    while (true) {
                        str = "data1";
                        str2 = "mimetype";
                        if (i5 >= PhonebookShareAlert.this.phones.size()) {
                            break;
                        }
                        AndroidUtilities.VcardItem vcardItem = (AndroidUtilities.VcardItem) PhonebookShareAlert.this.phones.get(i5);
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("mimetype", "vnd.android.cursor.item/phone_v2");
                        contentValues.put("data1", vcardItem.getValue(false));
                        dialogInterfaceOnClickListenerC425052.fillRowWithType(vcardItem.getRawType(false), contentValues);
                        arrayList.add(contentValues);
                        i5++;
                    }
                    int i6 = 0;
                    boolean z5 = false;
                    while (i6 < PhonebookShareAlert.this.other.size()) {
                        AndroidUtilities.VcardItem vcardItem2 = (AndroidUtilities.VcardItem) PhonebookShareAlert.this.other.get(i6);
                        int i7 = vcardItem2.type;
                        if (i7 == i4) {
                            ContentValues contentValues2 = new ContentValues();
                            contentValues2.put(str2, "vnd.android.cursor.item/email_v2");
                            contentValues2.put(str, vcardItem2.getValue(z4));
                            dialogInterfaceOnClickListenerC425052.fillRowWithType(vcardItem2.getRawType(z4), contentValues2);
                            arrayList.add(contentValues2);
                        } else if (i7 == i3) {
                            ContentValues contentValues3 = new ContentValues();
                            contentValues3.put(str2, "vnd.android.cursor.item/website");
                            contentValues3.put(str, vcardItem2.getValue(z4));
                            dialogInterfaceOnClickListenerC425052.fillUrlRowWithType(vcardItem2.getRawType(z4), contentValues3);
                            arrayList.add(contentValues3);
                        } else if (i7 == 4) {
                            ContentValues contentValues4 = new ContentValues();
                            contentValues4.put(str2, "vnd.android.cursor.item/note");
                            contentValues4.put(str, vcardItem2.getValue(z4));
                            arrayList.add(contentValues4);
                        } else if (i7 == 5) {
                            ContentValues contentValues5 = new ContentValues();
                            contentValues5.put(str2, "vnd.android.cursor.item/contact_event");
                            contentValues5.put(str, vcardItem2.getValue(z4));
                            contentValues5.put("data2", num2);
                            arrayList.add(contentValues5);
                        } else {
                            boolean z6 = z4;
                            i2 = i6;
                            z = z5;
                            intent2 = intent;
                            if (i7 == 2) {
                                ContentValues contentValues6 = new ContentValues();
                                contentValues6.put(str2, "vnd.android.cursor.item/postal-address_v2");
                                String[] rawValue = vcardItem2.getRawValue();
                                String str6 = str;
                                if (rawValue.length > 0) {
                                    contentValues6.put("data5", rawValue[z6 ? 1 : 0]);
                                }
                                if (rawValue.length > 1) {
                                    contentValues6.put("data6", rawValue[1]);
                                }
                                if (rawValue.length > 2) {
                                    contentValues6.put("data4", rawValue[2]);
                                }
                                if (rawValue.length > 3) {
                                    contentValues6.put("data7", rawValue[3]);
                                }
                                if (rawValue.length > 4) {
                                    contentValues6.put("data8", rawValue[4]);
                                }
                                if (rawValue.length > 5) {
                                    contentValues6.put("data9", rawValue[5]);
                                }
                                if (rawValue.length > 6) {
                                    contentValues6.put("data10", rawValue[6]);
                                }
                                String rawType = vcardItem2.getRawType(z6);
                                if ("HOME".equalsIgnoreCase(rawType)) {
                                    contentValues6.put("data2", (Integer) 1);
                                } else if ("WORK".equalsIgnoreCase(rawType)) {
                                    contentValues6.put("data2", (Integer) 2);
                                } else if ("OTHER".equalsIgnoreCase(rawType)) {
                                    contentValues6.put("data2", num2);
                                }
                                arrayList.add(contentValues6);
                                z2 = false;
                                dialogInterfaceOnClickListenerC42505 = this;
                                num = num2;
                                str3 = str2;
                                str4 = str6;
                            } else {
                                String str7 = str;
                                if (i7 == 20) {
                                    ContentValues contentValues7 = new ContentValues();
                                    contentValues7.put(str2, "vnd.android.cursor.item/im");
                                    String rawType2 = vcardItem2.getRawType(true);
                                    String rawType3 = vcardItem2.getRawType(false);
                                    str3 = str2;
                                    str4 = str7;
                                    contentValues7.put(str4, vcardItem2.getValue(false));
                                    if ("AIM".equalsIgnoreCase(rawType2)) {
                                        contentValues7.put("data5", (Integer) 0);
                                    } else if ("MSN".equalsIgnoreCase(rawType2)) {
                                        contentValues7.put("data5", (Integer) 1);
                                    } else if ("YAHOO".equalsIgnoreCase(rawType2)) {
                                        contentValues7.put("data5", (Integer) 2);
                                    } else if ("SKYPE".equalsIgnoreCase(rawType2)) {
                                        contentValues7.put("data5", num2);
                                    } else if ("QQ".equalsIgnoreCase(rawType2)) {
                                        contentValues7.put("data5", (Integer) 4);
                                    } else if ("GOOGLE-TALK".equalsIgnoreCase(rawType2)) {
                                        contentValues7.put("data5", (Integer) 5);
                                    } else if ("ICQ".equalsIgnoreCase(rawType2)) {
                                        contentValues7.put("data5", (Integer) 6);
                                    } else if ("JABBER".equalsIgnoreCase(rawType2)) {
                                        contentValues7.put("data5", (Integer) 7);
                                    } else if ("NETMEETING".equalsIgnoreCase(rawType2)) {
                                        contentValues7.put("data5", (Integer) 8);
                                    } else {
                                        contentValues7.put("data5", (Integer) (-1));
                                        contentValues7.put("data6", vcardItem2.getRawType(true));
                                    }
                                    if ("HOME".equalsIgnoreCase(rawType3)) {
                                        contentValues7.put("data2", (Integer) 1);
                                    } else if ("WORK".equalsIgnoreCase(rawType3)) {
                                        contentValues7.put("data2", (Integer) 2);
                                    } else if ("OTHER".equalsIgnoreCase(rawType3)) {
                                        contentValues7.put("data2", num2);
                                    }
                                    arrayList.add(contentValues7);
                                } else {
                                    str3 = str2;
                                    str4 = str7;
                                    if (i7 == 6 && !z) {
                                        ContentValues contentValues8 = new ContentValues();
                                        String str8 = str3;
                                        contentValues8.put(str8, "vnd.android.cursor.item/organization");
                                        dialogInterfaceOnClickListenerC42505 = this;
                                        int i8 = i2;
                                        while (i8 < PhonebookShareAlert.this.other.size()) {
                                            AndroidUtilities.VcardItem vcardItem3 = (AndroidUtilities.VcardItem) PhonebookShareAlert.this.other.get(i8);
                                            Integer num3 = num2;
                                            if (vcardItem3.type != 6) {
                                                str5 = str8;
                                            } else {
                                                String rawType4 = vcardItem3.getRawType(true);
                                                if ("ORG".equalsIgnoreCase(rawType4)) {
                                                    String[] rawValue2 = vcardItem3.getRawValue();
                                                    if (rawValue2.length != 0) {
                                                        str5 = str8;
                                                        if (rawValue2.length >= 1) {
                                                            contentValues8.put(str4, rawValue2[0]);
                                                        }
                                                        if (rawValue2.length >= 2) {
                                                            contentValues8.put("data5", rawValue2[1]);
                                                        }
                                                        z3 = true;
                                                    }
                                                    str5 = str8;
                                                } else {
                                                    str5 = str8;
                                                    if ("TITLE".equalsIgnoreCase(rawType4) || "ROLE".equalsIgnoreCase(rawType4)) {
                                                        contentValues8.put("data4", vcardItem3.getValue(false));
                                                    }
                                                    z3 = true;
                                                }
                                                String rawType5 = vcardItem3.getRawType(z3);
                                                if ("WORK".equalsIgnoreCase(rawType5)) {
                                                    contentValues8.put("data2", (Integer) 1);
                                                } else if ("OTHER".equalsIgnoreCase(rawType5)) {
                                                    contentValues8.put("data2", (Integer) 2);
                                                }
                                            }
                                            i8++;
                                            num2 = num3;
                                            str8 = str5;
                                        }
                                        num = num2;
                                        str3 = str8;
                                        z2 = false;
                                        arrayList.add(contentValues8);
                                        z = true;
                                    }
                                }
                                z2 = false;
                                dialogInterfaceOnClickListenerC42505 = this;
                                num = num2;
                            }
                            i6 = i2 + 1;
                            dialogInterfaceOnClickListenerC425052 = dialogInterfaceOnClickListenerC42505;
                            str = str4;
                            z4 = z2;
                            num2 = num;
                            z5 = z;
                            intent = intent2;
                            str2 = str3;
                            i3 = 3;
                            i4 = 1;
                        }
                        intent2 = intent;
                        num = num2;
                        z2 = z4;
                        i2 = i6;
                        z = z5;
                        str4 = str;
                        str3 = str2;
                        dialogInterfaceOnClickListenerC42505 = dialogInterfaceOnClickListenerC425052;
                        i6 = i2 + 1;
                        dialogInterfaceOnClickListenerC425052 = dialogInterfaceOnClickListenerC42505;
                        str = str4;
                        z4 = z2;
                        num2 = num;
                        z5 = z;
                        intent = intent2;
                        str2 = str3;
                        i3 = 3;
                        i4 = 1;
                    }
                    DialogInterfaceOnClickListenerC42505 dialogInterfaceOnClickListenerC425053 = dialogInterfaceOnClickListenerC425052;
                    intent.putExtra("finishActivityOnSaveCompleted", true);
                    intent.putParcelableArrayListExtra("data", arrayList);
                    try {
                        PhonebookShareAlert.this.parentFragment.getParentActivity().startActivity(intent);
                        PhonebookShareAlert.this.lambda$new$0();
                    } catch (Exception e) {
                        FileLog.m1040e(e);
                    }
                }
            });
            builder.show();
            return;
        }
        if (!this.currentUser.restriction_reason.isEmpty()) {
            sb = new StringBuilder(this.currentUser.restriction_reason.get(0).text);
        } else {
            Locale locale = Locale.US;
            TLRPC.User user = this.currentUser;
            sb = new StringBuilder(String.format(locale, "BEGIN:VCARD\nVERSION:3.0\nFN:%1$s\nEND:VCARD", ContactsController.formatName(user.first_name, user.last_name)));
        }
        int iLastIndexOf = sb.lastIndexOf("END:VCARD");
        if (iLastIndexOf >= 0) {
            this.currentUser.phone = null;
            for (int size = this.phones.size() - 1; size >= 0; size--) {
                AndroidUtilities.VcardItem vcardItem = this.phones.get(size);
                if (vcardItem.checked) {
                    TLRPC.User user2 = this.currentUser;
                    if (user2.phone == null) {
                        user2.phone = vcardItem.getValue(false);
                    }
                    for (int i = 0; i < vcardItem.vcardData.size(); i++) {
                        sb.insert(iLastIndexOf, vcardItem.vcardData.get(i) + "\n");
                    }
                }
            }
            for (int size2 = this.other.size() - 1; size2 >= 0; size2--) {
                AndroidUtilities.VcardItem vcardItem2 = this.other.get(size2);
                if (vcardItem2.checked) {
                    for (int size3 = vcardItem2.vcardData.size() - 1; size3 >= 0; size3 += -1) {
                        sb.insert(iLastIndexOf, vcardItem2.vcardData.get(size3) + "\n");
                    }
                }
            }
            this.currentUser.restriction_reason.clear();
            TLRPC.RestrictionReason restrictionReason = new TLRPC.RestrictionReason();
            restrictionReason.text = sb.toString();
            restrictionReason.reason = _UrlKt.FRAGMENT_ENCODE_SET;
            restrictionReason.platform = _UrlKt.FRAGMENT_ENCODE_SET;
            this.currentUser.restriction_reason.add(restrictionReason);
        }
        BaseFragment baseFragment = this.parentFragment;
        if ((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).isInScheduleMode()) {
            AlertsCreator.createScheduleDatePickerDialog(getContext(), ((ChatActivity) this.parentFragment).getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.PhonebookShareAlert$$ExternalSyntheticLambda4
                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z, int i2, int i3) {
                    this.f$0.lambda$new$4(z, i2, i3);
                }
            }, resourcesProvider);
        } else {
            BaseFragment baseFragment2 = this.parentFragment;
            AlertsCreator.ensurePaidMessageConfirmation(this.currentAccount, baseFragment2 instanceof ChatActivity ? ((ChatActivity) baseFragment2).getDialogId() : 0L, 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.PhonebookShareAlert$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$5((Long) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(boolean z, int i, int i2) {
        this.delegate.didSelectContact(this.currentUser, z, i, 0L, false, 0L);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(Long l) {
        this.delegate.didSelectContact(this.currentUser, true, 0, 0L, false, l.longValue());
        lambda$new$0();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void onStart() {
        super.onStart();
        Bulletin.addDelegate((FrameLayout) this.containerView, new Bulletin.Delegate() { // from class: org.telegram.ui.Components.PhonebookShareAlert.6
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                return AndroidUtilities.dp(74.0f);
            }
        });
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        Bulletin.removeDelegate((FrameLayout) this.containerView);
    }

    public void setDelegate(ChatAttachAlertContactsLayout.PhonebookShareAlertDelegate phonebookShareAlertDelegate) {
        this.delegate = phonebookShareAlertDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout(boolean z) {
        char c2;
        View childAt = this.scrollView.getChildAt(0);
        int top = childAt.getTop() - this.scrollView.getScrollY();
        if (top < 0) {
            top = 0;
        }
        boolean z2 = top <= 0;
        if (!(z2 && this.actionBar.getTag() == null) && (z2 || this.actionBar.getTag() == null)) {
            c2 = 0;
        } else {
            this.actionBar.setTag(z2 ? num : null);
            AnimatorSet animatorSet = this.actionBarAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.actionBarAnimation = null;
            }
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.actionBarAnimation = animatorSet2;
                animatorSet2.setDuration(180L);
                AnimatorSet animatorSet3 = this.actionBarAnimation;
                ActionBar actionBar = this.actionBar;
                Property property = View.ALPHA;
                c2 = 0;
                animatorSet3.playTogether(ObjectAnimator.ofFloat(actionBar, (Property<ActionBar, Float>) property, z2 ? 1.0f : 0.0f), ObjectAnimator.ofFloat(this.actionBarShadow, (Property<View, Float>) property, z2 ? 1.0f : 0.0f));
                this.actionBarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PhonebookShareAlert.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PhonebookShareAlert.this.actionBarAnimation = null;
                    }
                });
                this.actionBarAnimation.start();
            } else {
                c2 = 0;
                this.actionBar.setAlpha(z2 ? 1.0f : 0.0f);
                this.actionBarShadow.setAlpha(z2 ? 1.0f : 0.0f);
            }
        }
        if (this.scrollOffsetY != top) {
            this.scrollOffsetY = top;
            this.containerView.invalidate();
        }
        childAt.getBottom();
        this.scrollView.getMeasuredHeight();
        char c3 = childAt.getBottom() - this.scrollView.getScrollY() > this.scrollView.getMeasuredHeight() ? (char) 1 : c2;
        if ((c3 == 0 || this.shadow.getTag() != null) && (c3 != 0 || this.shadow.getTag() == null)) {
            return;
        }
        this.shadow.setTag(c3 == 0 ? null : 1);
        AnimatorSet animatorSet4 = this.shadowAnimation;
        if (animatorSet4 != null) {
            animatorSet4.cancel();
            this.shadowAnimation = null;
        }
        if (z) {
            AnimatorSet animatorSet5 = new AnimatorSet();
            this.shadowAnimation = animatorSet5;
            animatorSet5.setDuration(180L);
            AnimatorSet animatorSet6 = this.shadowAnimation;
            View view = this.shadow;
            Property property2 = View.ALPHA;
            float f = c3 != 0 ? 1.0f : 0.0f;
            float[] fArr = new float[1];
            fArr[c2] = f;
            Animator[] animatorArr = new Animator[1];
            animatorArr[c2] = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr);
            animatorSet6.playTogether(animatorArr);
            this.shadowAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PhonebookShareAlert.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PhonebookShareAlert.this.shadowAnimation = null;
                }
            });
            this.shadowAnimation.start();
            return;
        }
        this.shadow.setAlpha(c3 != 0 ? 1.0f : 0.0f);
    }

    private void updateRows() {
        this.rowCount = 1;
        this.userRow = 0;
        if (this.phones.size() <= 1 && this.other.isEmpty()) {
            this.phoneStartRow = -1;
            this.phoneEndRow = -1;
            this.vcardStartRow = -1;
            this.vcardEndRow = -1;
            return;
        }
        if (this.phones.isEmpty()) {
            this.phoneStartRow = -1;
            this.phoneEndRow = -1;
        } else {
            int i = this.rowCount;
            this.phoneStartRow = i;
            int size = i + this.phones.size();
            this.rowCount = size;
            this.phoneEndRow = size;
        }
        if (this.other.isEmpty()) {
            this.vcardStartRow = -1;
            this.vcardEndRow = -1;
            return;
        }
        int i2 = this.rowCount;
        this.vcardStartRow = i2;
        int size2 = i2 + this.other.size();
        this.rowCount = size2;
        this.vcardEndRow = size2;
    }

    public class ListAdapter {
        private ListAdapter() {
        }

        public int getItemCount() {
            return PhonebookShareAlert.this.rowCount;
        }

        public void onBindViewHolder(View view, int i, int i2) {
            AndroidUtilities.VcardItem vcardItem;
            int i3;
            if (i2 == 1) {
                TextCheckBoxCell textCheckBoxCell = (TextCheckBoxCell) view;
                if (i >= PhonebookShareAlert.this.phoneStartRow && i < PhonebookShareAlert.this.phoneEndRow) {
                    vcardItem = (AndroidUtilities.VcardItem) PhonebookShareAlert.this.phones.get(i - PhonebookShareAlert.this.phoneStartRow);
                    i3 = C2807R.drawable.msg_calls;
                } else {
                    vcardItem = (AndroidUtilities.VcardItem) PhonebookShareAlert.this.other.get(i - PhonebookShareAlert.this.vcardStartRow);
                    int i4 = vcardItem.type;
                    if (i4 == 1) {
                        i3 = C2807R.drawable.msg_mention;
                    } else if (i4 == 2) {
                        i3 = C2807R.drawable.msg_location;
                    } else if (i4 == 3) {
                        i3 = C2807R.drawable.msg_link;
                    } else if (i4 == 4) {
                        i3 = C2807R.drawable.msg_info;
                    } else if (i4 == 5) {
                        i3 = C2807R.drawable.msg_calendar2;
                    } else if (i4 == 6) {
                        if ("ORG".equalsIgnoreCase(vcardItem.getRawType(true))) {
                            i3 = C2807R.drawable.msg_work;
                        } else {
                            i3 = C2807R.drawable.msg_jobtitle;
                        }
                    } else if (i4 == 20) {
                        i3 = C2807R.drawable.msg_info;
                    } else {
                        i3 = C2807R.drawable.msg_info;
                    }
                }
                textCheckBoxCell.setVCardItem(vcardItem, i3, i != getItemCount() - 1);
            }
        }

        public View createView(Context context, int i) {
            View userCell;
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                userCell = PhonebookShareAlert.this.new UserCell(context);
            } else {
                userCell = PhonebookShareAlert.this.new TextCheckBoxCell(context);
            }
            onBindViewHolder(userCell, i, itemViewType);
            return userCell;
        }

        public int getItemViewType(int i) {
            return i == PhonebookShareAlert.this.userRow ? 0 : 1;
        }
    }
}
