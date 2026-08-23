package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.messenger.utils.TextWatcherImpl;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Components.ChatAttachAlert;
import org.telegram.p029ui.Components.ChatAttachAlertContactsLayout;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.p029ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class ChatAttachAlertContactsLayout extends ChatAttachAlert.AttachAlertLayout implements NotificationCenter.NotificationCenterDelegate, FactorAnimator.Target {
    private final BoolAnimator animatorFadeVisible;
    private PhonebookShareAlertDelegate delegate;
    private final EmptyTextProgressView emptyView;
    private final View fadeView;
    private final FrameLayout frameLayout;
    private final FillLastLinearLayoutManager layoutManager;
    private final ShareAdapter listAdapter;
    private final RecyclerListView listView;
    private boolean multipleSelectionAllowed;
    private final ShareSearchAdapter searchAdapter;
    private final FragmentSearchField searchField;
    private final HashMap selectedContacts;
    private final ArrayList selectedContactsOrder;
    private boolean sendPressed;

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
        FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
    }

    public interface PhonebookShareAlertDelegate {
        void didSelectContact(TLRPC.User user, boolean z, int i, long j, boolean z2, long j2);

        void didSelectContacts(ArrayList arrayList, String str, boolean z, int i, long j, boolean z2, long j2);

        /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$didSelectContacts(PhonebookShareAlertDelegate phonebookShareAlertDelegate, ArrayList arrayList, String str, boolean z, int i, long j, boolean z2, long j2) {
            }
        }
    }

    public static class UserCell extends FrameLayout {
        private AvatarDrawable avatarDrawable;
        private BackupImageView avatarImageView;
        private CheckBox2 checkBox;
        private int currentAccount;
        private int currentId;
        private CharSequence currentName;
        private CharSequence currentStatus;
        private TLRPC.User currentUser;
        private CharSequence formattedPhoneNumber;
        private TLRPC.User formattedPhoneNumberUser;
        private TLRPC.FileLocation lastAvatar;
        private String lastName;
        private int lastStatus;
        private SimpleTextView nameTextView;
        private boolean needDivider;
        private final Theme.ResourcesProvider resourcesProvider;
        private SimpleTextView statusTextView;

        public interface CharSequenceCallback {
            CharSequence run();
        }

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        public UserCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.currentAccount = UserConfig.selectedAccount;
            this.resourcesProvider = resourcesProvider;
            this.avatarDrawable = new AvatarDrawable(resourcesProvider);
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarImageView = backupImageView;
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(46.0f));
            BackupImageView backupImageView2 = this.avatarImageView;
            boolean z = LocaleController.isRTL;
            addView(backupImageView2, LayoutHelper.createFrame(46, 46.0f, (z ? 5 : 3) | 48, z ? 0.0f : 14.0f, 9.0f, z ? 14.0f : 0.0f, 0.0f));
            SimpleTextView simpleTextView = new SimpleTextView(context) { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout.UserCell.1
                @Override // org.telegram.p029ui.ActionBar.SimpleTextView
                public boolean setText(CharSequence charSequence, boolean z2) {
                    return super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), z2);
                }
            };
            this.nameTextView = simpleTextView;
            NotificationCenter.listenEmojiLoading(simpleTextView);
            this.nameTextView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
            this.nameTextView.setTypeface(AndroidUtilities.bold());
            this.nameTextView.setTextSize(16);
            this.nameTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            SimpleTextView simpleTextView2 = this.nameTextView;
            boolean z2 = LocaleController.isRTL;
            addView(simpleTextView2, LayoutHelper.createFrame(-1, 20.0f, (z2 ? 5 : 3) | 48, z2 ? 28.0f : 72.0f, 12.0f, z2 ? 72.0f : 28.0f, 0.0f));
            SimpleTextView simpleTextView3 = new SimpleTextView(context);
            this.statusTextView = simpleTextView3;
            simpleTextView3.setTextSize(13);
            this.statusTextView.setTextColor(getThemedColor(Theme.key_dialogTextGray2));
            this.statusTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            SimpleTextView simpleTextView4 = this.statusTextView;
            boolean z3 = LocaleController.isRTL;
            addView(simpleTextView4, LayoutHelper.createFrame(-1, 20.0f, (z3 ? 5 : 3) | 48, z3 ? 28.0f : 72.0f, 36.0f, z3 ? 72.0f : 28.0f, 0.0f));
            CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
            this.checkBox = checkBox2;
            checkBox2.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
            this.checkBox.setDrawUnchecked(false);
            this.checkBox.setDrawBackgroundAsArc(3);
            CheckBox2 checkBox22 = this.checkBox;
            boolean z4 = LocaleController.isRTL;
            addView(checkBox22, LayoutHelper.createFrame(24, 24.0f, (z4 ? 5 : 3) | 48, z4 ? 0.0f : 44.0f, 37.0f, z4 ? 44.0f : 0.0f, 0.0f));
        }

        public void setCurrentId(int i) {
            this.currentId = i;
        }

        public void setData(TLRPC.User user, CharSequence charSequence, CharSequence charSequence2, boolean z) {
            if (user == null && charSequence == null && charSequence2 == null) {
                this.currentStatus = null;
                this.currentName = null;
                this.nameTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                this.statusTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                this.avatarImageView.setImageDrawable(null);
                return;
            }
            this.currentStatus = charSequence2;
            this.currentName = charSequence;
            this.currentUser = user;
            this.needDivider = z;
            setWillNotDraw(!z);
            update(0);
        }

        public void setData(TLRPC.User user, CharSequence charSequence, final CharSequenceCallback charSequenceCallback, boolean z) {
            setData(user, charSequence, (CharSequence) null, z);
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setData$1(charSequenceCallback);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setData$1(CharSequenceCallback charSequenceCallback) {
            final CharSequence charSequenceRun = charSequenceCallback.run();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setData$0(charSequenceRun);
                }
            });
        }

        public void setChecked(boolean z, boolean z2) {
            if (this.checkBox.getVisibility() != 0) {
                this.checkBox.setVisibility(0);
            }
            this.checkBox.setChecked(z, z2);
        }

        /* JADX INFO: renamed from: setStatus, reason: merged with bridge method [inline-methods] */
        public void lambda$setData$0(CharSequence charSequence) {
            CharSequence charSequence2;
            this.currentStatus = charSequence;
            if (charSequence != null) {
                this.statusTextView.setText(charSequence);
                return;
            }
            TLRPC.User user = this.currentUser;
            if (user != null) {
                if (TextUtils.isEmpty(user.phone)) {
                    this.statusTextView.setText(LocaleController.getString(C2888R.string.NumberUnknown));
                } else if (this.formattedPhoneNumberUser != this.currentUser && (charSequence2 = this.formattedPhoneNumber) != null) {
                    this.statusTextView.setText(charSequence2);
                } else {
                    this.statusTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setStatus$3();
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setStatus$3() {
            if (this.currentUser != null) {
                this.formattedPhoneNumber = PhoneFormat.getInstance().format("+" + this.currentUser.phone);
                this.formattedPhoneNumberUser = this.currentUser;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setStatus$2();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setStatus$2() {
            this.statusTextView.setText(this.formattedPhoneNumber);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(64.0f) + (this.needDivider ? 1 : 0), TLObject.FLAG_30));
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x0071 A[RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void update(int i) {
            String userName;
            TLRPC.FileLocation fileLocation;
            TLRPC.UserProfilePhoto userProfilePhoto;
            TLRPC.User user = this.currentUser;
            TLRPC.FileLocation fileLocation2 = (user == null || (userProfilePhoto = user.photo) == null) ? null : userProfilePhoto.photo_small;
            if (i != 0) {
                boolean z = true;
                boolean z2 = (MessagesController.UPDATE_MASK_AVATAR & i) != 0 && (((fileLocation = this.lastAvatar) != null && fileLocation2 == null) || ((fileLocation == null && fileLocation2 != null) || !(fileLocation == null || fileLocation2 == null || (fileLocation.volume_id == fileLocation2.volume_id && fileLocation.local_id == fileLocation2.local_id))));
                if (user != null && !z2 && (MessagesController.UPDATE_MASK_STATUS & i) != 0) {
                    TLRPC.UserStatus userStatus = user.status;
                    if ((userStatus != null ? userStatus.expires : 0) != this.lastStatus) {
                        z2 = true;
                    }
                }
                if (z2 || this.currentName != null || this.lastName == null || (i & MessagesController.UPDATE_MASK_NAME) == 0) {
                    userName = null;
                } else {
                    userName = user != null ? UserObject.getUserName(user) : null;
                    if (userName.equals(this.lastName)) {
                    }
                    if (!z) {
                        return;
                    }
                }
                z = z2;
                if (!z) {
                }
            } else {
                userName = null;
            }
            TLRPC.User user2 = this.currentUser;
            if (user2 != null) {
                this.avatarDrawable.setInfo(this.currentAccount, user2);
                TLRPC.UserStatus userStatus2 = this.currentUser.status;
                if (userStatus2 != null) {
                    this.lastStatus = userStatus2.expires;
                } else {
                    this.lastStatus = 0;
                }
            } else {
                CharSequence charSequence = this.currentName;
                if (charSequence != null) {
                    this.avatarDrawable.setInfo(this.currentId, charSequence.toString(), null);
                } else {
                    this.avatarDrawable.setInfo(this.currentId, "#", null);
                }
            }
            CharSequence charSequence2 = this.currentName;
            if (charSequence2 != null) {
                this.lastName = null;
                this.nameTextView.setText(charSequence2);
            } else {
                TLRPC.User user3 = this.currentUser;
                if (user3 != null) {
                    if (userName == null) {
                        userName = UserObject.getUserName(user3);
                    }
                    this.lastName = userName;
                } else {
                    this.lastName = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                this.nameTextView.setText(this.lastName);
            }
            lambda$setData$0(this.currentStatus);
            this.lastAvatar = fileLocation2;
            TLRPC.User user4 = this.currentUser;
            if (user4 != null) {
                this.avatarImageView.setForUserOrChat(user4, this.avatarDrawable);
            } else {
                this.avatarImageView.setImageDrawable(this.avatarDrawable);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.needDivider) {
                canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.m1124dp(70.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m1124dp(70.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }

        protected int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }
    }

    private static class ListItemID {

        /* JADX INFO: renamed from: id */
        private final long f1938id;
        private final Type type;

        public enum Type {
            USER,
            CONTACT
        }

        /* JADX INFO: renamed from: of */
        public static ListItemID m1249of(Object obj) {
            if (obj instanceof ContactsController.Contact) {
                return new ListItemID(Type.CONTACT, ((ContactsController.Contact) obj).contact_id);
            }
            if (obj instanceof TLRPC.User) {
                return new ListItemID(Type.USER, ((TLRPC.User) obj).f1825id);
            }
            return null;
        }

        public ListItemID(Type type, long j) {
            this.type = type;
            this.f1938id = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ListItemID listItemID = (ListItemID) obj;
                if (this.f1938id == listItemID.f1938id && this.type == listItemID.type) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.type, Long.valueOf(this.f1938id));
        }
    }

    public ChatAttachAlertContactsLayout(ChatAttachAlert chatAttachAlert, Context context, final Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.animatorFadeVisible = new BoolAnimator(0, this, CubicBezierInterpolator.EASE_OUT_QUINT, 380L);
        this.selectedContacts = new HashMap();
        this.selectedContactsOrder = new ArrayList();
        this.sendPressed = false;
        this.searchAdapter = new ShareSearchAdapter(context);
        ChatAttachAlert.SearchFadeView searchFadeView = new ChatAttachAlert.SearchFadeView(context, resourcesProvider);
        this.fadeView = searchFadeView;
        searchFadeView.setVisibility(4);
        FrameLayout frameLayout = new FrameLayout(context);
        this.frameLayout = frameLayout;
        ChatAttachAlert.AttachSearchField attachSearchField = new ChatAttachAlert.AttachSearchField(context, this.parentAlert, resourcesProvider);
        this.searchField = attachSearchField;
        attachSearchField.setPadding(AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f));
        attachSearchField.editText.setHint(LocaleController.getString(C2888R.string.SearchFriends));
        attachSearchField.editText.addTextChangedListener(new TextWatcherImpl() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout.1
            @Override // android.text.TextWatcher
            public /* synthetic */ void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                TextWatcherImpl.CC.$default$beforeTextChanged(this, charSequence, i, i2, i3);
            }

            @Override // android.text.TextWatcher
            public /* synthetic */ void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                TextWatcherImpl.CC.$default$onTextChanged(this, charSequence, i, i2, i3);
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editable.toString();
                if (!string.isEmpty()) {
                    if (ChatAttachAlertContactsLayout.this.emptyView != null) {
                        ChatAttachAlertContactsLayout.this.emptyView.setText(LocaleController.getString(C2888R.string.NoResult));
                    }
                } else if (ChatAttachAlertContactsLayout.this.listView.getAdapter() != ChatAttachAlertContactsLayout.this.listAdapter) {
                    int currentTop = ChatAttachAlertContactsLayout.this.getCurrentTop();
                    ChatAttachAlertContactsLayout.this.emptyView.setText(LocaleController.getString(C2888R.string.NoContacts));
                    ChatAttachAlertContactsLayout.this.emptyView.showTextView();
                    ChatAttachAlertContactsLayout.this.listView.setAdapter(ChatAttachAlertContactsLayout.this.listAdapter);
                    ChatAttachAlertContactsLayout.this.listAdapter.notifyDataSetChanged();
                    if (currentTop > 0) {
                        ChatAttachAlertContactsLayout.this.layoutManager.scrollToPositionWithOffset(0, -currentTop);
                    }
                }
                if (ChatAttachAlertContactsLayout.this.searchAdapter != null) {
                    ChatAttachAlertContactsLayout.this.searchAdapter.search(string);
                }
            }
        });
        frameLayout.addView(searchFadeView, LayoutHelper.createFrameMatchParent());
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 48.0f, 51, 7.0f, 8.0f, 7.0f, 4.0f);
        ((ViewGroup.MarginLayoutParams) layoutParamsCreateFrame).topMargin += AndroidUtilities.statusBarHeight;
        frameLayout.addView(attachSearchField, layoutParamsCreateFrame);
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context, null, resourcesProvider);
        this.emptyView = emptyTextProgressView;
        emptyTextProgressView.showTextView();
        emptyTextProgressView.setText(LocaleController.getString(C2888R.string.NoContacts));
        addView(emptyTextProgressView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 52.0f, 0.0f, 0.0f));
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout.2
            @Override // org.telegram.p029ui.Components.RecyclerListView
            protected boolean allowSelectChildAtPosition(float f, float f2) {
                return f2 >= ((float) ((ChatAttachAlertContactsLayout.this.parentAlert.scrollOffsetY[0] + AndroidUtilities.m1124dp(30.0f)) + (!ChatAttachAlertContactsLayout.this.parentAlert.inBubbleMode ? AndroidUtilities.statusBarHeight : 0)));
            }
        };
        this.listView = recyclerListView;
        this.iBlur3Capture = recyclerListView;
        this.iBlur3CaptureView = recyclerListView;
        this.occupyStatusBar = true;
        this.occupyNavigationBar = true;
        recyclerListView.setSections();
        recyclerListView.setClipToPadding(false);
        FillLastLinearLayoutManager fillLastLinearLayoutManager = new FillLastLinearLayoutManager(getContext(), 1, false, AndroidUtilities.m1124dp(9.0f), recyclerListView) { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout.3
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout.3.1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateDyToMakeVisible(View view, int i2) {
                        return super.calculateDyToMakeVisible(view, i2) - ((ChatAttachAlertContactsLayout.this.listView.getPaddingTop() - AndroidUtilities.statusBarHeight) - AndroidUtilities.m1124dp(8.0f));
                    }

                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    protected int calculateTimeForDeceleration(int i2) {
                        return super.calculateTimeForDeceleration(i2) * 2;
                    }
                };
                linearSmoothScroller.setTargetPosition(i);
                startSmoothScroll(linearSmoothScroller);
            }
        };
        this.layoutManager = fillLastLinearLayoutManager;
        recyclerListView.setLayoutManager(fillLastLinearLayoutManager);
        fillLastLinearLayoutManager.setBind(false);
        recyclerListView.setHorizontalScrollBarEnabled(false);
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setClipToPadding(false);
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        ShareAdapter shareAdapter = new ShareAdapter(context);
        this.listAdapter = shareAdapter;
        recyclerListView.setAdapter(shareAdapter);
        recyclerListView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$new$1(resourcesProvider, view, i);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                ChatAttachAlertContactsLayout chatAttachAlertContactsLayout = ChatAttachAlertContactsLayout.this;
                chatAttachAlertContactsLayout.parentAlert.updateLayout(chatAttachAlertContactsLayout, true, i2);
                ChatAttachAlertContactsLayout.this.updateEmptyViewPosition();
            }
        });
        recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                return this.f$0.lambda$new$2(view, i);
            }
        });
        FrameLayout.LayoutParams layoutParamsCreateFrame2 = LayoutHelper.createFrame(-1, 60, 51);
        ((ViewGroup.MarginLayoutParams) layoutParamsCreateFrame2).height += AndroidUtilities.statusBarHeight;
        addView(frameLayout, layoutParamsCreateFrame2);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).addObserver(this, NotificationCenter.contactsDidLoad);
        updateEmptyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Theme.ResourcesProvider resourcesProvider, View view, int i) {
        Object item;
        ContactsController.Contact contact;
        String str;
        String str2;
        String str3;
        String str4;
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        ShareSearchAdapter shareSearchAdapter = this.searchAdapter;
        if (adapter == shareSearchAdapter) {
            item = shareSearchAdapter.getItem(i);
        } else {
            int sectionForPosition = this.listAdapter.getSectionForPosition(i);
            int positionInSectionForPosition = this.listAdapter.getPositionInSectionForPosition(i);
            if (positionInSectionForPosition < 0 || sectionForPosition < 0) {
                return;
            } else {
                item = this.listAdapter.getItem(sectionForPosition, positionInSectionForPosition);
            }
        }
        if (item != null) {
            if (!this.selectedContacts.isEmpty()) {
                addOrRemoveSelectedContact((UserCell) view, item);
                return;
            }
            if (item instanceof ContactsController.Contact) {
                ContactsController.Contact contact2 = (ContactsController.Contact) item;
                TLRPC.User user = contact2.user;
                if (user != null) {
                    str3 = user.first_name;
                    str4 = user.last_name;
                } else {
                    str3 = contact2.first_name;
                    str4 = contact2.last_name;
                }
                contact = contact2;
                str2 = str4;
                str = str3;
            } else {
                TLRPC.User user2 = (TLRPC.User) item;
                ContactsController.Contact contact3 = new ContactsController.Contact();
                String str5 = user2.first_name;
                contact3.first_name = str5;
                String str6 = user2.last_name;
                contact3.last_name = str6;
                contact3.phones.add(user2.phone);
                contact3.user = user2;
                contact = contact3;
                str = str5;
                str2 = str6;
            }
            PhonebookShareAlert phonebookShareAlert = new PhonebookShareAlert(this.parentAlert.baseFragment, contact, (TLRPC.User) null, (Uri) null, (File) null, str, str2, resourcesProvider);
            phonebookShareAlert.setDelegate(new PhonebookShareAlertDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.Components.ChatAttachAlertContactsLayout.PhonebookShareAlertDelegate
                public final void didSelectContact(TLRPC.User user3, boolean z, int i2, long j, boolean z2, long j2) {
                    this.f$0.lambda$new$0(user3, z, i2, j, z2, j2);
                }

                @Override // org.telegram.ui.Components.ChatAttachAlertContactsLayout.PhonebookShareAlertDelegate
                public /* synthetic */ void didSelectContacts(ArrayList arrayList, String str7, boolean z, int i2, long j, boolean z2, long j2) {
                    ChatAttachAlertContactsLayout.PhonebookShareAlertDelegate.CC.$default$didSelectContacts(this, arrayList, str7, z, i2, j, z2, j2);
                }
            });
            phonebookShareAlert.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(TLRPC.User user, boolean z, int i, long j, boolean z2, long j2) {
        this.parentAlert.dismiss(true);
        this.delegate.didSelectContact(user, z, i, j, z2, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2(View view, int i) {
        Object item;
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        ShareSearchAdapter shareSearchAdapter = this.searchAdapter;
        if (adapter == shareSearchAdapter) {
            item = shareSearchAdapter.getItem(i);
        } else {
            item = this.listAdapter.getItem(i);
        }
        if (item == null) {
            return false;
        }
        addOrRemoveSelectedContact((UserCell) view, item);
        return true;
    }

    public void addOrRemoveSelectedContact(UserCell userCell, Object obj) {
        boolean z = false;
        if (this.selectedContacts.isEmpty() && !this.multipleSelectionAllowed) {
            showErrorBox(LocaleController.formatString("AttachContactsSlowMode", C2888R.string.AttachContactsSlowMode, new Object[0]));
            return;
        }
        ListItemID listItemIDM1249of = ListItemID.m1249of(obj);
        if (this.selectedContacts.containsKey(listItemIDM1249of)) {
            this.selectedContacts.remove(listItemIDM1249of);
            this.selectedContactsOrder.remove(listItemIDM1249of);
        } else {
            this.selectedContacts.put(listItemIDM1249of, obj);
            this.selectedContactsOrder.add(listItemIDM1249of);
            z = true;
        }
        userCell.setChecked(z, true);
        this.parentAlert.updateCountButton(z ? 1 : 2);
    }

    public void setupBlurredSearchField(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory) {
        FragmentSearchField fragmentSearchField = this.searchField;
        if (fragmentSearchField != null) {
            fragmentSearchField.setupBlurredBackground(blurredBackgroundDrawableViewFactory.create(fragmentSearchField, BlurredBackgroundProviderImpl.attachMenuSearch(this.resourcesProvider)));
        }
    }

    public void setMultipleSelectionAllowed(boolean z) {
        this.multipleSelectionAllowed = z;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getSelectedItemsCount() {
        return this.selectedContacts.size();
    }

    private void showErrorBox(String str) {
        new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2888R.string.AppName)).setMessage(str).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).show();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TLRPC.User prepareContact(Object obj) {
        String str;
        ContactsController.Contact contact;
        String str2;
        ArrayList<TLRPC.User> arrayListLoadVCardFromStream;
        ArrayList arrayList;
        StringBuilder sb;
        if (obj instanceof ContactsController.Contact) {
            contact = (ContactsController.Contact) obj;
            TLRPC.User user = contact.user;
            if (user != null) {
                str = user.first_name;
                str2 = user.last_name;
            } else {
                str = contact.first_name;
                str2 = contact.last_name;
            }
        } else {
            TLRPC.User user2 = (TLRPC.User) obj;
            ContactsController.Contact contact2 = new ContactsController.Contact();
            str = user2.first_name;
            contact2.first_name = str;
            String str3 = user2.last_name;
            contact2.last_name = str3;
            contact2.phones.add(user2.phone);
            contact2.user = user2;
            contact = contact2;
            str2 = str3;
        }
        String name = ContactsController.formatName(str, str2);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        String str4 = contact.key;
        if (str4 != null) {
            arrayListLoadVCardFromStream = AndroidUtilities.loadVCardFromStream(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, str4), this.parentAlert.currentAccount, true, arrayList2, name);
        } else {
            AndroidUtilities.VcardItem vcardItem = new AndroidUtilities.VcardItem();
            vcardItem.type = 0;
            ArrayList<String> arrayList5 = vcardItem.vcardData;
            String str5 = "TEL;MOBILE:+" + contact.user.phone;
            vcardItem.fullData = str5;
            arrayList5.add(str5);
            arrayList3.add(vcardItem);
            arrayListLoadVCardFromStream = null;
        }
        TLRPC.User user3 = contact.user;
        if (arrayListLoadVCardFromStream != null) {
            for (int i = 0; i < arrayList2.size(); i++) {
                AndroidUtilities.VcardItem vcardItem2 = (AndroidUtilities.VcardItem) arrayList2.get(i);
                if (vcardItem2.type == 0) {
                    int i2 = 0;
                    while (true) {
                        if (i2 < arrayList3.size()) {
                            if (((AndroidUtilities.VcardItem) arrayList3.get(i2)).getValue(false).equals(vcardItem2.getValue(false))) {
                                vcardItem2.checked = false;
                                break;
                            }
                            i2++;
                        } else {
                            arrayList3.add(vcardItem2);
                            break;
                        }
                    }
                } else {
                    arrayList4.add(vcardItem2);
                }
            }
            if (arrayListLoadVCardFromStream.isEmpty()) {
                arrayList = null;
            } else {
                TLRPC.User user4 = arrayListLoadVCardFromStream.get(0);
                arrayList = user4.restriction_reason;
                if (TextUtils.isEmpty(str)) {
                    str = user4.first_name;
                    str2 = user4.last_name;
                }
            }
        }
        TLRPC.TL_userContact_old2 tL_userContact_old2 = new TLRPC.TL_userContact_old2();
        if (user3 != null) {
            tL_userContact_old2.f1825id = user3.f1825id;
            tL_userContact_old2.access_hash = user3.access_hash;
            tL_userContact_old2.photo = user3.photo;
            tL_userContact_old2.status = user3.status;
            tL_userContact_old2.first_name = user3.first_name;
            tL_userContact_old2.last_name = user3.last_name;
            tL_userContact_old2.phone = user3.phone;
            if (arrayList != null) {
                tL_userContact_old2.restriction_reason = arrayList;
            }
        } else {
            tL_userContact_old2.first_name = str;
            tL_userContact_old2.last_name = str2;
        }
        if (!tL_userContact_old2.restriction_reason.isEmpty()) {
            sb = new StringBuilder(((TLRPC.RestrictionReason) tL_userContact_old2.restriction_reason.get(0)).text);
        } else {
            sb = new StringBuilder(String.format(Locale.US, "BEGIN:VCARD\nVERSION:3.0\nFN:%1$s\nEND:VCARD", ContactsController.formatName(tL_userContact_old2.first_name, tL_userContact_old2.last_name)));
        }
        int iLastIndexOf = sb.lastIndexOf("END:VCARD");
        if (iLastIndexOf >= 0) {
            tL_userContact_old2.phone = null;
            for (int size = arrayList3.size() - 1; size >= 0; size--) {
                AndroidUtilities.VcardItem vcardItem3 = (AndroidUtilities.VcardItem) arrayList3.get(size);
                if (vcardItem3.checked) {
                    if (tL_userContact_old2.phone == null) {
                        tL_userContact_old2.phone = vcardItem3.getValue(false);
                    }
                    for (int i3 = 0; i3 < vcardItem3.vcardData.size(); i3++) {
                        sb.insert(iLastIndexOf, vcardItem3.vcardData.get(i3) + "\n");
                    }
                }
            }
            for (int size2 = arrayList4.size() - 1; size2 >= 0; size2--) {
                AndroidUtilities.VcardItem vcardItem4 = (AndroidUtilities.VcardItem) arrayList4.get(size2);
                if (vcardItem4.checked) {
                    for (int size3 = vcardItem4.vcardData.size() - 1; size3 >= 0; size3 += -1) {
                        sb.insert(iLastIndexOf, vcardItem4.vcardData.get(size3) + "\n");
                    }
                }
            }
            tL_userContact_old2.restriction_reason.clear();
            TLRPC.RestrictionReason restrictionReason = new TLRPC.RestrictionReason();
            restrictionReason.text = sb.toString();
            restrictionReason.reason = _UrlKt.FRAGMENT_ENCODE_SET;
            restrictionReason.platform = _UrlKt.FRAGMENT_ENCODE_SET;
            tL_userContact_old2.restriction_reason.add(restrictionReason);
        }
        return tL_userContact_old2;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean sendSelectedItems(final boolean z, final int i, int i2, final long j, final boolean z2) {
        int i3 = 0;
        if ((this.selectedContacts.size() == 0 && this.delegate == null) || this.sendPressed) {
            return false;
        }
        this.sendPressed = true;
        final ArrayList arrayList = new ArrayList(this.selectedContacts.size());
        ArrayList arrayList2 = this.selectedContactsOrder;
        int size = arrayList2.size();
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            arrayList.add(prepareContact(this.selectedContacts.get((ListItemID) obj)));
        }
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        return AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert.currentAccount, chatAttachAlert.getDialogId(), arrayList.size() + this.parentAlert.getAdditionalMessagesCount(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj2) {
                this.f$0.lambda$sendSelectedItems$3(arrayList, z, i, j, z2, (Long) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSelectedItems$3(ArrayList arrayList, boolean z, int i, long j, boolean z2, Long l) {
        this.delegate.didSelectContacts(arrayList, this.parentAlert.getCommentView().getText().toString(), z, i, j, z2, l.longValue());
        this.parentAlert.lambda$new$0();
    }

    public ArrayList<TLRPC.User> getSelected() {
        ArrayList<TLRPC.User> arrayList = new ArrayList<>(this.selectedContacts.size());
        ArrayList arrayList2 = this.selectedContactsOrder;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            arrayList.add(prepareContact(this.selectedContacts.get((ListItemID) obj)));
        }
        return arrayList;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.listView.smoothScrollToPosition(0);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        if (this.listView.getChildCount() <= 0) {
            return Integer.MAX_VALUE;
        }
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = (childAt.getTop() - AndroidUtilities.statusBarHeight) - AndroidUtilities.m1124dp(8.0f);
        int i = (top <= 0 || holder == null || holder.getAdapterPosition() != 0) ? 0 : top;
        if (top >= 0 && holder != null && holder.getAdapterPosition() == 0) {
            this.animatorFadeVisible.setValue(false, true);
        } else {
            this.animatorFadeVisible.setValue(true, true);
            top = i;
        }
        this.frameLayout.setTranslationY(top);
        return top + AndroidUtilities.m1124dp(12.0f);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m1124dp(4.0f);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.listView.getPaddingTop();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreMeasure(int i, int i2) {
        int iM1124dp;
        if (this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight() > AndroidUtilities.m1124dp(20.0f)) {
            iM1124dp = AndroidUtilities.m1124dp(8.0f);
            this.parentAlert.setAllowNestedScroll(false);
        } else if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            iM1124dp = point.x > point.y ? (int) (i2 / 3.5f) : (i2 / 5) * 2;
            this.parentAlert.setAllowNestedScroll(true);
        }
        this.listView.setPaddingWithoutRequestLayout(0, iM1124dp + AndroidUtilities.statusBarHeight, 0, this.listPaddingBottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentTop() {
        if (this.listView.getChildCount() == 0) {
            return -1000;
        }
        int top = 0;
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        if (holder == null) {
            return -1000;
        }
        int paddingTop = this.listView.getPaddingTop();
        if (holder.getAdapterPosition() == 0 && childAt.getTop() >= 0) {
            top = childAt.getTop();
        }
        return paddingTop - top;
    }

    public void setDelegate(PhonebookShareAlertDelegate phonebookShareAlertDelegate) {
        this.delegate = phonebookShareAlertDelegate;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ShareAdapter shareAdapter;
        if (i != NotificationCenter.contactsDidLoad || (shareAdapter = this.listAdapter) == null) {
            return;
        }
        shareAdapter.notifyDataSetChanged();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        NotificationCenter.getInstance(this.parentAlert.currentAccount).removeObserver(this, NotificationCenter.contactsDidLoad);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateEmptyViewPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyViewPosition() {
        View childAt;
        if (this.emptyView.getVisibility() == 0 && (childAt = this.listView.getChildAt(0)) != null) {
            this.emptyView.setTranslationY(((r1.getMeasuredHeight() - getMeasuredHeight()) + childAt.getTop()) / 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView() {
        this.emptyView.setVisibility(this.listView.getAdapter().getItemCount() == 2 ? 0 : 8);
        updateEmptyViewPosition();
    }

    public class ShareAdapter extends RecyclerListView.SectionsAdapter {
        private int currentAccount = UserConfig.selectedAccount;
        private Context mContext;

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            return null;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public View getSectionHeaderView(int i, View view) {
            return null;
        }

        public ShareAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public Object getItem(int i, int i2) {
            if (i == 0) {
                return null;
            }
            int i3 = i - 1;
            HashMap<String, ArrayList<Object>> map = ContactsController.getInstance(this.currentAccount).phoneBookSectionsDict;
            ArrayList<String> arrayList = ContactsController.getInstance(this.currentAccount).phoneBookSectionsArray;
            if (i3 < arrayList.size()) {
                ArrayList<Object> arrayList2 = map.get(arrayList.get(i3));
                if (i2 < arrayList2.size()) {
                    return arrayList2.get(i2);
                }
            }
            return null;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder, int i, int i2) {
            if (i != 0 && i != getSectionCount() - 1) {
                if (i2 < ContactsController.getInstance(this.currentAccount).phoneBookSectionsDict.get(ContactsController.getInstance(this.currentAccount).phoneBookSectionsArray.get(i - 1)).size()) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public int getSectionCount() {
            return ContactsController.getInstance(this.currentAccount).phoneBookSectionsArray.size() + 2;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public int getCountForSection(int i) {
            if (i == 0 || i == getSectionCount() - 1) {
                return 1;
            }
            int i2 = i - 1;
            HashMap<String, ArrayList<Object>> map = ContactsController.getInstance(this.currentAccount).phoneBookSectionsDict;
            ArrayList<String> arrayList = ContactsController.getInstance(this.currentAccount).phoneBookSectionsArray;
            if (i2 < arrayList.size()) {
                return map.get(arrayList.get(i2)).size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View userCell;
            if (i == 0) {
                userCell = new UserCell(this.mContext, ChatAttachAlertContactsLayout.this.resourcesProvider);
            } else if (i == 1) {
                userCell = new View(this.mContext);
                userCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m1124dp(56.0f)));
                userCell.setTag(-33024);
            } else {
                userCell = new View(this.mContext);
                userCell.setTag(-33024);
            }
            return new RecyclerListView.Holder(userCell);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public void onBindViewHolder(int i, int i2, RecyclerView.ViewHolder viewHolder) {
            final TLRPC.User user;
            if (viewHolder.getItemViewType() == 0) {
                UserCell userCell = (UserCell) viewHolder.itemView;
                Object item = getItem(i, i2);
                boolean z = true;
                if (i == getSectionCount() - 2 && i2 == getCountForSection(i) - 1) {
                    z = false;
                }
                if (item instanceof ContactsController.Contact) {
                    final ContactsController.Contact contact = (ContactsController.Contact) item;
                    user = contact.user;
                    if (user == null) {
                        userCell.setCurrentId(contact.contact_id);
                        userCell.setData((TLRPC.User) null, ContactsController.formatName(contact.first_name, contact.last_name), new UserCell.CharSequenceCallback() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$ShareAdapter$$ExternalSyntheticLambda0
                            @Override // org.telegram.ui.Components.ChatAttachAlertContactsLayout.UserCell.CharSequenceCallback
                            public final CharSequence run() {
                                return ChatAttachAlertContactsLayout.ShareAdapter.$r8$lambda$P5ZiTS1sCM5N3fBMSNztNGvaA88(contact);
                            }
                        }, z);
                        user = null;
                    }
                } else {
                    user = (TLRPC.User) item;
                }
                if (user != null) {
                    userCell.setData(user, (CharSequence) null, new UserCell.CharSequenceCallback() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$ShareAdapter$$ExternalSyntheticLambda1
                        @Override // org.telegram.ui.Components.ChatAttachAlertContactsLayout.UserCell.CharSequenceCallback
                        public final CharSequence run() {
                            return PhoneFormat.getInstance().format("+" + user.phone);
                        }
                    }, z);
                }
                userCell.setChecked(ChatAttachAlertContactsLayout.this.selectedContacts.containsKey(ListItemID.m1249of(item)), false);
            }
        }

        public static /* synthetic */ CharSequence $r8$lambda$P5ZiTS1sCM5N3fBMSNztNGvaA88(ContactsController.Contact contact) {
            return contact.phones.isEmpty() ? _UrlKt.FRAGMENT_ENCODE_SET : PhoneFormat.getInstance().format(contact.phones.get(0));
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public int getItemViewType(int i, int i2) {
            if (i == 0) {
                return 1;
            }
            return i == getSectionCount() - 1 ? 2 : 0;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            iArr[0] = 0;
            iArr[1] = 0;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            ChatAttachAlertContactsLayout.this.updateEmptyView();
        }
    }

    public class ShareSearchAdapter extends RecyclerListView.SelectionAdapter {
        private int lastSearchId;
        private Context mContext;
        private ArrayList searchResult = new ArrayList();
        private ArrayList searchResultNames = new ArrayList();
        private Runnable searchRunnable;

        public ShareSearchAdapter(Context context) {
            this.mContext = context;
        }

        public void search(final String str) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            if (str == null) {
                this.searchResult.clear();
                this.searchResultNames.clear();
                notifyDataSetChanged();
            } else {
                final int i = this.lastSearchId + 1;
                this.lastSearchId = i;
                DispatchQueue dispatchQueue = Utilities.searchQueue;
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$search$0(str, i);
                    }
                };
                this.searchRunnable = runnable;
                dispatchQueue.postRunnable(runnable, 300L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: processSearch, reason: merged with bridge method [inline-methods] */
        public void lambda$search$0(final String str, final int i) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processSearch$2(str, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processSearch$2(final String str, final int i) {
            final int i2 = UserConfig.selectedAccount;
            final ArrayList arrayList = new ArrayList(ContactsController.getInstance(i2).contactsBook.values());
            final ArrayList arrayList2 = new ArrayList(ContactsController.getInstance(i2).contacts);
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processSearch$1(str, arrayList, arrayList2, i2, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0258  */
        /* JADX WARN: Removed duplicated region for block: B:127:0x01a8 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:134:0x029a A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0139  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x013e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$processSearch$1(String str, ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
            int i3;
            String lowerCase;
            String translitString;
            int i4;
            char c;
            String publicUsername;
            String lowerCase2 = str.trim().toLowerCase();
            if (lowerCase2.length() == 0) {
                this.lastSearchId = -1;
                updateSearchResults(str, new ArrayList(), new ArrayList(), this.lastSearchId);
                return;
            }
            String translitString2 = LocaleController.getInstance().getTranslitString(lowerCase2);
            if (lowerCase2.equals(translitString2) || translitString2.length() == 0) {
                translitString2 = null;
            }
            int i5 = (translitString2 != null ? 1 : 0) + 1;
            String[] strArr = new String[i5];
            strArr[0] = lowerCase2;
            if (translitString2 != null) {
                strArr[1] = translitString2;
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            LongSparseIntArray longSparseIntArray = new LongSparseIntArray();
            int i6 = 0;
            while (i6 < arrayList.size()) {
                ContactsController.Contact contact = (ContactsController.Contact) arrayList.get(i6);
                String lowerCase3 = ContactsController.formatName(contact.first_name, contact.last_name).toLowerCase();
                String translitString3 = LocaleController.getInstance().getTranslitString(lowerCase3);
                TLRPC.User user = contact.user;
                if (user != null) {
                    lowerCase = ContactsController.formatName(user.first_name, user.last_name).toLowerCase();
                    translitString = LocaleController.getInstance().getTranslitString(lowerCase3);
                } else {
                    lowerCase = null;
                    translitString = null;
                }
                if (lowerCase3.equals(translitString3)) {
                    translitString3 = null;
                }
                String[] strArr2 = strArr;
                int i7 = 0;
                char c2 = 0;
                while (i7 < i5) {
                    int i8 = i7;
                    String str2 = strArr2[i8];
                    i4 = i6;
                    if (lowerCase != null) {
                        if (!lowerCase.startsWith(str2)) {
                            if (!lowerCase.contains(" " + str2)) {
                            }
                        }
                        c = 1;
                        String str3 = lowerCase3;
                        if (c != 0) {
                        }
                        i7 = i8 + 1;
                        lowerCase3 = str3;
                        c2 = c;
                        i6 = i4;
                    } else {
                        if (translitString != null) {
                            if (!translitString.startsWith(str2)) {
                                if (translitString.contains(" " + str2)) {
                                }
                                String str32 = lowerCase3;
                                if (c != 0 || (contact.phones.isEmpty() && contact.shortPhones.isEmpty())) {
                                    i7 = i8 + 1;
                                    lowerCase3 = str32;
                                    c2 = c;
                                    i6 = i4;
                                } else {
                                    if (c == 3) {
                                        arrayList4.add(AndroidUtilities.generateSearchName(contact.first_name, contact.last_name, str2));
                                    } else if (c == 1) {
                                        TLRPC.User user2 = contact.user;
                                        arrayList4.add(AndroidUtilities.generateSearchName(user2.first_name, user2.last_name, str2));
                                    } else {
                                        arrayList4.add(AndroidUtilities.generateSearchName("@" + UserObject.getPublicUsername(contact.user), null, "@" + str2));
                                    }
                                    TLRPC.User user3 = contact.user;
                                    if (user3 != null) {
                                        longSparseIntArray.put(user3.f1825id, 1);
                                    }
                                    arrayList3.add(contact);
                                }
                            }
                            c = 1;
                            String str322 = lowerCase3;
                            if (c != 0) {
                            }
                            i7 = i8 + 1;
                            lowerCase3 = str322;
                            c2 = c;
                            i6 = i4;
                        }
                        TLRPC.User user4 = contact.user;
                        if (user4 != null && (publicUsername = UserObject.getPublicUsername(user4)) != null && publicUsername.startsWith(str2)) {
                            c = 2;
                        } else if (!lowerCase3.startsWith(str2)) {
                            if (lowerCase3.contains(" " + str2)) {
                                c = 3;
                            } else {
                                if (translitString3 != null) {
                                    if (!translitString3.startsWith(str2)) {
                                        if (translitString3.contains(" " + str2)) {
                                        }
                                    }
                                    c = 3;
                                }
                                c = c2;
                            }
                        }
                        String str3222 = lowerCase3;
                        if (c != 0) {
                        }
                        i7 = i8 + 1;
                        lowerCase3 = str3222;
                        c2 = c;
                        i6 = i4;
                    }
                    i6 = i4 + 1;
                    strArr = strArr2;
                }
                i4 = i6;
                i6 = i4 + 1;
                strArr = strArr2;
            }
            String[] strArr3 = strArr;
            int i9 = 0;
            while (i9 < arrayList2.size()) {
                TLRPC.TL_contact tL_contact = (TLRPC.TL_contact) arrayList2.get(i9);
                if (longSparseIntArray.indexOfKey(tL_contact.user_id) >= 0) {
                    i3 = i9;
                } else {
                    TLRPC.User user5 = MessagesController.getInstance(i).getUser(Long.valueOf(tL_contact.user_id));
                    String lowerCase4 = ContactsController.formatName(user5.first_name, user5.last_name).toLowerCase();
                    String translitString4 = LocaleController.getInstance().getTranslitString(lowerCase4);
                    if (lowerCase4.equals(translitString4)) {
                        translitString4 = null;
                    }
                    char c3 = 0;
                    int i10 = 0;
                    while (i10 < i5) {
                        String str4 = strArr3[i10];
                        if (lowerCase4.startsWith(str4)) {
                            i3 = i9;
                        } else {
                            i3 = i9;
                            if (!lowerCase4.contains(" " + str4)) {
                                if (translitString4 != null) {
                                    if (!translitString4.startsWith(str4)) {
                                        if (translitString4.contains(" " + str4)) {
                                        }
                                        if (c3 == 0 || user5.phone == null) {
                                            i10++;
                                            i9 = i3;
                                        } else {
                                            if (c3 == 1) {
                                                arrayList4.add(AndroidUtilities.generateSearchName(user5.first_name, user5.last_name, str4));
                                            } else {
                                                arrayList4.add(AndroidUtilities.generateSearchName("@" + UserObject.getPublicUsername(user5), null, "@" + str4));
                                            }
                                            arrayList3.add(user5);
                                        }
                                    }
                                }
                                String publicUsername2 = UserObject.getPublicUsername(user5);
                                if (publicUsername2 != null && publicUsername2.startsWith(str4)) {
                                    c3 = 2;
                                }
                                if (c3 == 0) {
                                }
                                i10++;
                                i9 = i3;
                            }
                        }
                        c3 = 1;
                        if (c3 == 0) {
                        }
                        i10++;
                        i9 = i3;
                    }
                    i3 = i9;
                }
                i9 = i3 + 1;
            }
            updateSearchResults(str, arrayList3, arrayList4, i2);
        }

        private void updateSearchResults(String str, final ArrayList arrayList, final ArrayList arrayList2, final int i) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$3(i, arrayList, arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$3(int i, ArrayList arrayList, ArrayList arrayList2) {
            if (i != this.lastSearchId) {
                return;
            }
            if (i != -1 && ChatAttachAlertContactsLayout.this.listView.getAdapter() != ChatAttachAlertContactsLayout.this.searchAdapter) {
                ChatAttachAlertContactsLayout.this.listView.setAdapter(ChatAttachAlertContactsLayout.this.searchAdapter);
            }
            this.searchResult = arrayList;
            this.searchResultNames = arrayList2;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.searchResult.size() + 2;
        }

        public Object getItem(int i) {
            int i2 = i - 1;
            if (i2 < 0 || i2 >= this.searchResult.size()) {
                return null;
            }
            return this.searchResult.get(i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View userCell;
            if (i == 0) {
                userCell = new UserCell(this.mContext, ChatAttachAlertContactsLayout.this.resourcesProvider);
            } else if (i == 1) {
                userCell = new View(this.mContext);
                userCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m1124dp(56.0f)));
                userCell.setTag(-33024);
            } else {
                userCell = new View(this.mContext);
                userCell.setTag(-33024);
            }
            return new RecyclerListView.Holder(userCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            final TLRPC.User user;
            if (viewHolder.getItemViewType() == 0) {
                UserCell userCell = (UserCell) viewHolder.itemView;
                boolean z = i != getItemCount() + (-2);
                Object item = getItem(i);
                if (item instanceof ContactsController.Contact) {
                    final ContactsController.Contact contact = (ContactsController.Contact) item;
                    user = contact.user;
                    if (user == null) {
                        userCell.setCurrentId(contact.contact_id);
                        userCell.setData((TLRPC.User) null, (CharSequence) this.searchResultNames.get(i - 1), new UserCell.CharSequenceCallback() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda0
                            @Override // org.telegram.ui.Components.ChatAttachAlertContactsLayout.UserCell.CharSequenceCallback
                            public final CharSequence run() {
                                return ChatAttachAlertContactsLayout.ShareSearchAdapter.$r8$lambda$ohVs6ue6ETDwcw3OZ9SHGpDXFzI(contact);
                            }
                        }, z);
                        user = null;
                    }
                } else {
                    user = (TLRPC.User) item;
                }
                if (user != null) {
                    userCell.setData(user, (CharSequence) this.searchResultNames.get(i - 1), new UserCell.CharSequenceCallback() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda1
                        @Override // org.telegram.ui.Components.ChatAttachAlertContactsLayout.UserCell.CharSequenceCallback
                        public final CharSequence run() {
                            return PhoneFormat.getInstance().format("+" + user.phone);
                        }
                    }, z);
                }
                userCell.setChecked(ChatAttachAlertContactsLayout.this.selectedContacts.containsKey(ListItemID.m1249of(item)), false);
            }
        }

        public static /* synthetic */ CharSequence $r8$lambda$ohVs6ue6ETDwcw3OZ9SHGpDXFzI(ContactsController.Contact contact) {
            return contact.phones.isEmpty() ? _UrlKt.FRAGMENT_ENCODE_SET : PhoneFormat.getInstance().format(contact.phones.get(0));
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 1;
            }
            return i == getItemCount() - 1 ? 2 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            ChatAttachAlertContactsLayout.this.updateEmptyView();
        }
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        if (i == 0) {
            this.fadeView.setAlpha(f);
            this.fadeView.setVisibility(f > 0.0f ? 0 : 4);
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertContactsLayout$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$4();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_progressCircle));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i = Theme.key_dialogTextGray2;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
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
    public /* synthetic */ void lambda$getThemeDescriptions$4() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(0);
                }
            }
        }
        FragmentSearchField fragmentSearchField = this.searchField;
        if (fragmentSearchField != null) {
            fragmentSearchField.updateColors();
        }
    }
}
